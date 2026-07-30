package com.google.protobuf;

import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public enum WireFormat$JavaType {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(RecentsState.NO_OFFSET)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(ByteString.f3492a),
    ENUM(null),
    MESSAGE(null);

    public final Object defaultDefault;

    WireFormat$JavaType(Object obj) {
        this.defaultDefault = obj;
    }
}
