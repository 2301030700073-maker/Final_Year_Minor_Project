package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PropertyBasedObjectIdGenerator extends ObjectIdGenerator {
    public final BeanPropertyWriter _property;
    public final Class _scope;

    public PropertyBasedObjectIdGenerator(Class cls, BeanPropertyWriter beanPropertyWriter) {
        this._scope = cls;
        this._property = beanPropertyWriter;
    }
}
