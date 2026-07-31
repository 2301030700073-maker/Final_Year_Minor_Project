package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import java.lang.reflect.Method;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WritableObjectId {
    public final ObjectIdGenerator generator;
    public Object id;
    public boolean idWritten = false;

    public WritableObjectId(ObjectIdGenerator objectIdGenerator) {
        this.generator = objectIdGenerator;
    }

    public final Object generateId(Object obj) {
        Object obj2 = this.id;
        if (obj2 != null) {
            return obj2;
        }
        BeanPropertyWriter beanPropertyWriter = ((PropertyBasedObjectIdGenerator) this.generator)._property;
        try {
            Method method = beanPropertyWriter._accessorMethod;
            Object invoke = method == null ? beanPropertyWriter._field.get(obj) : method.invoke(obj, null);
            this.id = invoke;
            return invoke;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new IllegalStateException("Problem accessing property '" + beanPropertyWriter._name._value + "': " + e2.getMessage(), e2);
        }
    }
}
