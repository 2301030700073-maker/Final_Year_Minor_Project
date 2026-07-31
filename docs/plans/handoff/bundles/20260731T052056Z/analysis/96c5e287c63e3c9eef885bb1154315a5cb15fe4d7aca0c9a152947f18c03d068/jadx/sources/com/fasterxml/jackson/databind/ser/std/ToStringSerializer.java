package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.DefaultSerializerProvider$Impl;
import java.math.BigDecimal;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ToStringSerializer extends StdScalarSerializer {
    public static final ToStringSerializer BD_INSTANCE = new ToStringSerializer(1);
    public static final ToStringSerializer instance = new ToStringSerializer(0);
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ToStringSerializer(int i) {
        super(0, Object.class);
        this.$r8$classId = i;
        switch (i) {
            case 1:
                super(0, BigDecimal.class);
                break;
            default:
                break;
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        switch (this.$r8$classId) {
            case 1:
                return false;
            default:
                return super.isEmpty(serializerProvider, obj);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        String obj2;
        switch (this.$r8$classId) {
            case 1:
                if (jsonGenerator.isEnabled(JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN)) {
                    BigDecimal bigDecimal = (BigDecimal) obj;
                    int scale = bigDecimal.scale();
                    if (scale < -9999 || scale > 9999) {
                        String format = String.format("Attempt to write plain `java.math.BigDecimal` (see JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN) with illegal scale (%d): needs to be between [-%d, %d]", Integer.valueOf(bigDecimal.scale()), 9999, 9999);
                        serializerProvider.getClass();
                        throw new JsonMappingException(((DefaultSerializerProvider$Impl) serializerProvider)._generator, format, null);
                    }
                    obj2 = bigDecimal.toPlainString();
                } else {
                    obj2 = obj.toString();
                }
                jsonGenerator.writeString(obj2);
                return;
            default:
                super.serialize(obj, jsonGenerator, serializerProvider);
                return;
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer
    public final String valueToString(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return obj.toString();
            default:
                throw new IllegalStateException();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ToStringSerializer(int i, Class cls) {
        super(i, cls);
        this.$r8$classId = 0;
    }
}
