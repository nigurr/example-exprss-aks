#!/bin/sh

echo "********** Building application **********"
npm run build

echo "********** Running tests **********"
npm run test

echo "********** Starting application **********"
npm run start