import os
from threading import Timer
import greengrasssdk


counter = 0
client = greengrasssdk.client('iot-data')


def telemetry():
    '''Publish incrementing value to telemetry topic every 2 seconds'''
    global counter
    counter += 1
    client.publish(
        topic='{}/telem'.format(os.environ['CORE_NAME']),
        payload='Example telemetry counter, value: {}'.format(counter)
    )
    Timer(5, telemetry).start()
# Call telemetry() to start telemetry publish
telemetry()


def function_handler(event, context):
    '''Echo message on /in topic to /out topic'''
    client.publish(
        topic='{}/out'.format(os.environ['CORE_NAME']),
        payload=event
    )
