def handler(event, content):
    message = 'Hello {} {}!'.format(event['first_name']), event['last_name'])
    return {
        'message' : message
    }