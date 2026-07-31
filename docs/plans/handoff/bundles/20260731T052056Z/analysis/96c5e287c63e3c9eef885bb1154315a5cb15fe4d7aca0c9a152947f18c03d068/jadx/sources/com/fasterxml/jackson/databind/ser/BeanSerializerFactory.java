package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.cfg.SerializerFactoryConfig;
import com.fasterxml.jackson.databind.util.ArrayIterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BeanSerializerFactory extends BasicSerializerFactory {
    public static final BeanSerializerFactory instance = new BeanSerializerFactory();

    /* JADX WARN: Removed duplicated region for block: B:118:0x025c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.databind.ser.BeanPropertyWriter _constructWriter(com.fasterxml.jackson.databind.SerializerProvider r21, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition r22, com.fasterxml.jackson.databind.ser.PropertyBuilder r23, boolean r24, com.fasterxml.jackson.databind.introspect.AnnotatedMember r25) {
        /*
            Method dump skipped, instructions count: 731
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.BeanSerializerFactory._constructWriter(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition, com.fasterxml.jackson.databind.ser.PropertyBuilder, boolean, com.fasterxml.jackson.databind.introspect.AnnotatedMember):com.fasterxml.jackson.databind.ser.BeanPropertyWriter");
    }

    public final ArrayIterator customSerializers() {
        return new ArrayIterator(SerializerFactoryConfig.NO_SERIALIZERS);
    }
}
