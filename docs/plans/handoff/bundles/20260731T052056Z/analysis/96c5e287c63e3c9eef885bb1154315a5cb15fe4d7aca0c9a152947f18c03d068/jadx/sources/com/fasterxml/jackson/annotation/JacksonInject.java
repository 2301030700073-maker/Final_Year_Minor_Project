package com.fasterxml.jackson.annotation;

import java.io.Serializable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JacksonInject {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Value implements Serializable {
        public static final Value EMPTY = new Value(null, null);
        public final Object _id;
        public final Boolean _useInput;

        public Value(Object obj, Boolean bool) {
            this._id = obj;
            this._useInput = bool;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj != null && obj.getClass() == Value.class) {
                Value value = (Value) obj;
                Boolean bool = value._useInput;
                Boolean bool2 = this._useInput;
                if (bool2 == null ? bool == null : bool2.equals(bool)) {
                    Object obj2 = value._id;
                    Object obj3 = this._id;
                    return obj3 == null ? obj2 == null : obj3.equals(obj2);
                }
            }
            return false;
        }

        public final int hashCode() {
            Object obj = this._id;
            int hashCode = obj != null ? 1 + obj.hashCode() : 1;
            Boolean bool = this._useInput;
            return bool != null ? bool.hashCode() + hashCode : hashCode;
        }

        public final String toString() {
            return String.format("JacksonInject.Value(id=%s,useInput=%s)", this._id, this._useInput);
        }
    }

    OptBoolean useInput() default OptBoolean.DEFAULT;

    String value() default "";
}
