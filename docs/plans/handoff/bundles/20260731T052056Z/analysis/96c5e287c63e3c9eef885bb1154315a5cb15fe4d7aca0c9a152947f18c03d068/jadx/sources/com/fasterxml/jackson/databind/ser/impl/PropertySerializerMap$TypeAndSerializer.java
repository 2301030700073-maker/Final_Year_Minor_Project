package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.databind.JsonSerializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PropertySerializerMap$TypeAndSerializer {
    public final JsonSerializer serializer;
    public final Class type;

    public PropertySerializerMap$TypeAndSerializer(Class cls, JsonSerializer jsonSerializer) {
        this.type = cls;
        this.serializer = jsonSerializer;
    }
}
