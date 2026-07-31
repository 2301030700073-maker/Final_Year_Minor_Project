package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.util.ClassUtil;
import kotlin.ResultKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ObjectIdInfo {
    public static final ObjectIdInfo EMPTY = new ObjectIdInfo(PropertyName.NO_NAME, Object.class, null, false, null);
    public final boolean _alwaysAsId;
    public final Class _generator;
    public final PropertyName _propertyName;
    public final Class _resolver;
    public final Class _scope;

    public ObjectIdInfo(PropertyName propertyName, Class cls, Class cls2, boolean z, Class cls3) {
        this._propertyName = propertyName;
        this._scope = cls;
        this._generator = cls2;
        this._alwaysAsId = z;
        this._resolver = cls3 == null ? ResultKt.class : cls3;
    }

    public final String toString() {
        return "ObjectIdInfo: propName=" + this._propertyName + ", scope=" + ClassUtil.nameOf(this._scope) + ", generatorType=" + ClassUtil.nameOf(this._generator) + ", alwaysAsId=" + this._alwaysAsId;
    }
}
