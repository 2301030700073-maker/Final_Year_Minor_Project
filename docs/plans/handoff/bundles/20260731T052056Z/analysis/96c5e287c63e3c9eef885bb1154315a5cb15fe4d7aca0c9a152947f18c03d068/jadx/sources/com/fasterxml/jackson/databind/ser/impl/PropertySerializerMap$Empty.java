package com.fasterxml.jackson.databind.ser.impl;

import coil3.util.UtilsKt;
import com.fasterxml.jackson.databind.JsonSerializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PropertySerializerMap$Empty extends UtilsKt {
    public static final PropertySerializerMap$Empty FOR_PROPERTIES = new PropertySerializerMap$Empty();

    @Override // coil3.util.UtilsKt
    public final UtilsKt newWith(final Class cls, final JsonSerializer jsonSerializer) {
        return new UtilsKt(this, cls, jsonSerializer) { // from class: com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap$Single
            public final JsonSerializer _serializer;
            public final Class _type;

            {
                this._type = cls;
                this._serializer = jsonSerializer;
            }

            @Override // coil3.util.UtilsKt
            public final UtilsKt newWith(Class cls2, JsonSerializer jsonSerializer2) {
                return new UtilsKt(this, this._type, this._serializer, cls2, jsonSerializer2) { // from class: com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap$Double
                    public final JsonSerializer _serializer1;
                    public final JsonSerializer _serializer2;
                    public final Class _type1;
                    public final Class _type2;

                    {
                        this._type1 = r2;
                        this._serializer1 = r3;
                        this._type2 = cls2;
                        this._serializer2 = jsonSerializer2;
                    }

                    @Override // coil3.util.UtilsKt
                    public final UtilsKt newWith(Class cls3, JsonSerializer jsonSerializer3) {
                        return new PropertySerializerMap$Multi(this, new PropertySerializerMap$TypeAndSerializer[]{new PropertySerializerMap$TypeAndSerializer(this._type1, this._serializer1), new PropertySerializerMap$TypeAndSerializer(this._type2, this._serializer2), new PropertySerializerMap$TypeAndSerializer(cls3, jsonSerializer3)});
                    }

                    @Override // coil3.util.UtilsKt
                    public final JsonSerializer serializerFor(Class cls3) {
                        if (cls3 == this._type1) {
                            return this._serializer1;
                        }
                        if (cls3 == this._type2) {
                            return this._serializer2;
                        }
                        return null;
                    }
                };
            }

            @Override // coil3.util.UtilsKt
            public final JsonSerializer serializerFor(Class cls2) {
                if (cls2 == this._type) {
                    return this._serializer;
                }
                return null;
            }
        };
    }

    @Override // coil3.util.UtilsKt
    public final JsonSerializer serializerFor(Class cls) {
        return null;
    }
}
