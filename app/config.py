"""MNPortal development configuration."""

import pathlib

# Root of this application, useful if it doesn't occupy an entire domain
APPLICATION_ROOT = '/'

# j = b'\xc9\x85\x08\xe3\x05\xf7\x84\x8a\xf2'\
#     b'\xa4VSC\x8e\xb5)\x16@\x82L\xd3\xde#\xe4'
# 
# # Secret key for encrypting cookies
# SECRET_KEY = j
# SESSION_COOKIE_NAME = 'login'

# File Upload to var/uploads/
MNPORTAL_ROOT = pathlib.Path(__file__).resolve().parent.parent
# UPLOAD_FOLDER = INSTA485_ROOT/'var'/'uploads'
# ALLOWED_EXTENSIONS = set(['png', 'jpg', 'jpeg', 'gif'])
# MAX_CONTENT_LENGTH = 16 * 1024 * 1024

# Database file is var/insta485.sqlite3
DATABASE_FILENAME = MNPORTAL_ROOT/'var'/'mnportal.sqlite3'
