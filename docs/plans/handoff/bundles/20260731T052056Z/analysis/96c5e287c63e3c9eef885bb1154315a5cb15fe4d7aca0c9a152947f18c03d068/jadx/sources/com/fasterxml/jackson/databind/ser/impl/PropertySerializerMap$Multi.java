package com.fasterxml.jackson.databind.ser.impl;

import coil3.util.UtilsKt;
import com.fasterxml.jackson.databind.JsonSerializer;
import java.util.Arrays;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PropertySerializerMap$Multi extends UtilsKt {
    public final PropertySerializerMap$TypeAndSerializer[] _entries;

    public PropertySerializerMap$Multi(UtilsKt utilsKt, PropertySerializerMap$TypeAndSerializer[] propertySerializerMap$TypeAndSerializerArr) {
        this._entries = propertySerializerMap$TypeAndSerializerArr;
    }

    @Override // coil3.util.UtilsKt
    public final UtilsKt newWith(Class cls, JsonSerializer jsonSerializer) {
        PropertySerializerMap$TypeAndSerializer[] propertySerializerMap$TypeAndSerializerArr = this._entries;
        int length = propertySerializerMap$TypeAndSerializerArr.length;
        if (length == 8) {
            return this;
        }
        PropertySerializerMap$TypeAndSerializer[] propertySerializerMap$TypeAndSerializerArr2 = (PropertySerializerMap$TypeAndSerializer[]) Arrays.copyOf(propertySerializerMap$TypeAndSerializerArr, length + 1);
        propertySerializerMap$TypeAndSerializerArr2[length] = new PropertySerializerMap$TypeAndSerializer(cls, jsonSerializer);
        return new PropertySerializerMap$Multi(this, propertySerializerMap$TypeAndSerializerArr2);
    }

    @Override // coil3.util.UtilsKt
    public final JsonSerializer serializerFor(Class cls) {
        PropertySerializerMap$TypeAndSerializer[] propertySerializerMap$TypeAndSerializerArr = this._entries;
        PropertySerializerMap$TypeAndSerializer propertySerializerMap$TypeAndSerializer = propertySerializerMap$TypeAndSerializerArr[0];
        if (propertySerializerMap$TypeAndSerializer.type == cls) {
            return propertySerializerMap$TypeAndSerializer.serializer;
        }
        PropertySerializerMap$TypeAndSerializer propertySerializerMap$TypeAndSerializer2 = propertySerializerMap$TypeAndSerializerArr[1];
        if (propertySerializerMap$TypeAndSerializer2.type == cls) {
            return propertySerializerMap$TypeAndSerializer2.serializer;
        }
        PropertySerializerMap$TypeAndSerializer propertySerializerMap$TypeAndSerializer3 = propertySerializerMap$TypeAndSerializerArr[2];
        if (propertySerializerMap$TypeAndSerializer3.type == cls) {
            return propertySerializerMap$TypeAndSerializer3.serializer;
        }
        switch (propertySerializerMap$TypeAndSerializerArr.length) {
            case 8:
                PropertySerializerMap$TypeAndSerializer propertySerializerMap$TypeAndSerializer4 = propertySerializerMap$TypeAndSerializerArr[7];
                if (propertySerializerMap$TypeAndSerializer4.type == cls) {
                    return propertySerializerMap$TypeAndSerializer4.serializer;
                }
            case 7:
                PropertySerializerMap$TypeAndSerializer propertySerializerMap$TypeAndSerializer5 = propertySerializerMap$TypeAndSerializerArr[6];
                if (propertySerializerMap$TypeAndSerializer5.type == cls) {
                    return propertySerializerMap$TypeAndSerializer5.serializer;
                }
            case 6:
                PropertySerializerMap$TypeAndSerializer propertySerializerMap$TypeAndSerializer6 = propertySerializerMap$TypeAndSerializerArr[5];
                if (propertySerializerMap$TypeAndSerializer6.type == cls) {
                    return propertySerializerMap$TypeAndSerializer6.serializer;
                }
            case 5:
                PropertySerializerMap$TypeAndSerializer propertySerializerMap$TypeAndSerializer7 = propertySerializerMap$TypeAndSerializerArr[4];
                if (propertySerializerMap$TypeAndSerializer7.type == cls) {
                    return propertySerializerMap$TypeAndSerializer7.serializer;
                }
            case 4:
                PropertySerializerMap$TypeAndSerializer propertySerializerMap$TypeAndSerializer8 = propertySerializerMap$TypeAndSerializerArr[3];
                if (propertySerializerMap$TypeAndSerializer8.type == cls) {
                    return propertySerializerMap$TypeAndSerializer8.serializer;
                }
                return null;
            default:
                return null;
        }
    }
}
