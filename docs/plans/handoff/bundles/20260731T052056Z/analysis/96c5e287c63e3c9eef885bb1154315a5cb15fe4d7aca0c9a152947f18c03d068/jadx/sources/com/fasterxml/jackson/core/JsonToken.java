package com.fasterxml.jackson.core;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public enum JsonToken {
    NOT_AVAILABLE("NOT_AVAILABLE", null),
    START_OBJECT("START_OBJECT", "{"),
    END_OBJECT("END_OBJECT", "}"),
    START_ARRAY("START_ARRAY", "["),
    END_ARRAY("END_ARRAY", "]"),
    FIELD_NAME("FIELD_NAME", null),
    VALUE_EMBEDDED_OBJECT("VALUE_EMBEDDED_OBJECT", null),
    VALUE_STRING("VALUE_STRING", null),
    VALUE_NUMBER_INT("VALUE_NUMBER_INT", null),
    VALUE_NUMBER_FLOAT("VALUE_NUMBER_FLOAT", null),
    VALUE_TRUE("VALUE_TRUE", "true"),
    VALUE_FALSE("VALUE_FALSE", "false"),
    VALUE_NULL("VALUE_NULL", "null");

    final int _id;
    final boolean _isBoolean;
    final boolean _isNumber;
    final boolean _isScalar;
    final boolean _isStructEnd;
    final boolean _isStructStart;
    final String _serialized;
    final byte[] _serializedBytes;
    final char[] _serializedChars;

    JsonToken(String str, String str2) {
        boolean z = false;
        if (str2 == null) {
            this._serialized = null;
            this._serializedChars = null;
            this._serializedBytes = null;
        } else {
            this._serialized = str2;
            char[] charArray = str2.toCharArray();
            this._serializedChars = charArray;
            int length = charArray.length;
            this._serializedBytes = new byte[length];
            for (int i = 0; i < length; i++) {
                this._serializedBytes[i] = (byte) this._serializedChars[i];
            }
        }
        this._id = r4;
        this._isBoolean = r4 == 10 || r4 == 9;
        this._isNumber = r4 == 7 || r4 == 8;
        boolean z2 = r4 == 1 || r4 == 3;
        this._isStructStart = z2;
        boolean z3 = r4 == 2 || r4 == 4;
        this._isStructEnd = z3;
        if (!z2 && !z3 && r4 != 5 && r4 != -1) {
            z = true;
        }
        this._isScalar = z;
    }
}
