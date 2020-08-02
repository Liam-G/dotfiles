#!/bin/bash
monitor=$(bspc query -M --names -m focused);
bspc $1 $monitor:'^'$2
