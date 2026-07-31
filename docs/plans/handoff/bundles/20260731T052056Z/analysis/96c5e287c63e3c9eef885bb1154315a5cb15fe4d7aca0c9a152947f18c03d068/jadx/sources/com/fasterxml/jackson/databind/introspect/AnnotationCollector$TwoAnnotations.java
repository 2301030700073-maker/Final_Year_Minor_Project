package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.util.Annotations;
import java.io.Serializable;
import java.lang.annotation.Annotation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnnotationCollector$TwoAnnotations implements Annotations, Serializable {
    public final Class _type1;
    public final Class _type2;
    public final Annotation _value1;
    public final Annotation _value2;

    public AnnotationCollector$TwoAnnotations(Class cls, Annotation annotation, Class cls2, Annotation annotation2) {
        this._type1 = cls;
        this._value1 = annotation;
        this._type2 = cls2;
        this._value2 = annotation2;
    }

    @Override // com.fasterxml.jackson.databind.util.Annotations
    public final Annotation get(Class cls) {
        if (this._type1 == cls) {
            return this._value1;
        }
        if (this._type2 == cls) {
            return this._value2;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.util.Annotations
    public final int size() {
        return 2;
    }
}
