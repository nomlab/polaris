[loggers]
keys=root

[handlers]
keys=fileHandler

[logger_root]
handlers=fileHandler
level=DEBUG

[handler_fileHandler]
class=logging.handlers.RotatingFileHandler
level=DEBUG
formatter=logFormatter
args=('APPLICATION_ROOT/log/app_log', 'a', 1000000, 5)

[formatters]
keys=logFormatter

[formatter_logFormatter]
class=logging.Formatter
format=%(asctime)s:%(lineno)d:%(levelname)s:%(message)s