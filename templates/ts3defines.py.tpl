from collections import namedtuple

TS3Vector = namedtuple('TS3Vecor', 'x y')

PLUGIN_MENU_BUFSZ = 128
PLUGIN_HOTKEY_BUFSZ = 128

TS3_MAX_SIZE_CHANNEL_NAME = 40
TS3_MAX_SIZE_VIRTUALSERVER_NAME = 64
TS3_MAX_SIZE_CLIENT_NICKNAME = 64
TS3_MIN_SIZE_CLIENT_NICKNAME = 3
TS3_MAX_SIZE_REASON_MESSAGE = 80

TS3_MAX_SIZE_TEXTMESSAGE = 1024
TS3_MAX_SIZE_CHANNEL_TOPIC = 255
TS3_MAX_SIZE_CHANNEL_DESCRIPTION = 8192
TS3_MAX_SIZE_VIRTUALSERVER_WELCOMEMESSAGE = 1024

TS3_MIN_SECONDS_CLIENTID_REUSE = 300

MAX_VARIABLES_EXPORT_COUNT = 64

BANDWIDTH_LIMIT_UNLIMITED = 0xFFFFFFFFFFFFFFFF

SPEAKER_FRONT_LEFT = 0x1
SPEAKER_FRONT_RIGHT = 0x2
SPEAKER_FRONT_CENTER = 0x4
SPEAKER_LOW_FREQUENCY = 0x8
SPEAKER_BACK_LEFT = 0x10
SPEAKER_BACK_RIGHT = 0x20
SPEAKER_FRONT_LEFT_OF_CENTER = 0x40
SPEAKER_FRONT_RIGHT_OF_CENTER = 0x80
SPEAKER_BACK_CENTER = 0x100
SPEAKER_SIDE_LEFT = 0x200
SPEAKER_SIDE_RIGHT = 0x400
SPEAKER_TOP_CENTER = 0x800
SPEAKER_TOP_FRONT_LEFT = 0x1000
SPEAKER_TOP_FRONT_CENTER = 0x2000
SPEAKER_TOP_FRONT_RIGHT = 0x4000
SPEAKER_TOP_BACK_LEFT = 0x8000
SPEAKER_TOP_BACK_CENTER = 0x10000
SPEAKER_TOP_BACK_RIGHT = 0x20000
SPEAKER_HEADPHONES_LEFT = 0x10000000
SPEAKER_HEADPHONES_RIGHT = 0x20000000
SPEAKER_MONO = 0x40000000

TS3_MAX_SIZE_CLIENT_NICKNAME_NONSDK = 30
TS3_MIN_SIZE_CLIENT_NICKNAME_NONSDK = 3
TS3_MAX_SIZE_AWAY_MESSAGE = 80
TS3_MAX_SIZE_GROUP_NAME = 30
TS3_MAX_SIZE_TALK_REQUEST_MESSAGE = 50
TS3_MAX_SIZE_COMPLAIN_MESSAGE = 200
TS3_MAX_SIZE_CLIENT_DESCRIPTION = 200
TS3_MAX_SIZE_HOST_MESSAGE = 200
TS3_MAX_SIZE_HOSTBUTTON_TOOLTIP = 50
TS3_MAX_SIZE_POKE_MESSAGE = 100
TS3_MAX_SIZE_OFFLINE_MESSAGE = 4096
TS3_MAX_SIZE_OFFLINE_MESSAGE_SUBJECT = 200

TS3_MAX_SIZE_PLUGIN_COMMAND = 1024 * 8
TS3_MAX_SIZE_VIRTUALSERVER_HOSTBANNER_GFX_URL = 2000

{% for key, value in constants|dictsort %}
{{key}} = {{value}}

{% endfor %}
{% for name, e in enums|dictsort %}


class {{name}}(object):
    {% for (n, v) in e %}
    {{n}} = {{v}}
    {% endfor %}

{%- endfor -%}
