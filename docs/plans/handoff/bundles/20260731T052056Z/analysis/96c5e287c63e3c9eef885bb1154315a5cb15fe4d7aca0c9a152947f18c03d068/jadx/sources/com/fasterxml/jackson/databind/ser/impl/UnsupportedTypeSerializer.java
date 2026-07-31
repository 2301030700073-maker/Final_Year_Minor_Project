package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import com.fasterxml.jackson.databind.type.TypeBase;
import java.io.Serializable;
import kotlin.UnsafeLazyImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UnsupportedTypeSerializer extends StdSerializer {
    public final /* synthetic */ int $r8$classId = 0;
    public final Serializable _message;

    public UnsupportedTypeSerializer(TypeBase typeBase, String str) {
        super(Object.class);
        this._message = str;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        int i = this.$r8$classId;
        Serializable serializable = this._message;
        switch (i) {
            case 0:
                serializerProvider.reportBadDefinition((String) serializable);
                throw null;
            default:
                if (serializerProvider._config.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING)) {
                    jsonGenerator.writeFieldName(obj.toString());
                    return;
                }
                Enum r3 = (Enum) obj;
                if (serializerProvider._config.isEnabled(SerializationFeature.WRITE_ENUM_KEYS_USING_INDEX)) {
                    jsonGenerator.writeFieldName(String.valueOf(r3.ordinal()));
                    return;
                } else {
                    jsonGenerator.writeFieldName(((SerializedString[]) ((UnsafeLazyImpl) serializable)._value)[r3.ordinal()]);
                    return;
                }
        }
    }

    public UnsupportedTypeSerializer(Class cls, UnsafeLazyImpl unsafeLazyImpl) {
        super(0, cls);
        this._message = unsafeLazyImpl;
    }
}
