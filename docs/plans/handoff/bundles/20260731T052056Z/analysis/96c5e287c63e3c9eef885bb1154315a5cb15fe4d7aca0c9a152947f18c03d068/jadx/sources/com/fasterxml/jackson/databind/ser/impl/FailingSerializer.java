package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.DefaultSerializerProvider$Impl;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FailingSerializer extends StdSerializer {
    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        serializerProvider.getClass();
        throw new JsonMappingException(((DefaultSerializerProvider$Impl) serializerProvider)._generator, "Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)", null);
    }
}
