package com.fasterxml.jackson.annotation;

import java.io.Serializable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonSetter {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Value implements Serializable {
        public static final /* synthetic */ int $r8$clinit = 0;
        public final Nulls _contentNulls;
        public final Nulls _nulls;

        public Value(Nulls nulls, Nulls nulls2) {
            this._nulls = nulls;
            this._contentNulls = nulls2;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj != null && obj.getClass() == Value.class) {
                Value value = (Value) obj;
                if (value._nulls == this._nulls && value._contentNulls == this._contentNulls) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return this._nulls.ordinal() + (this._contentNulls.ordinal() << 2);
        }

        public final String toString() {
            return "JsonSetter.Value(valueNulls=" + this._nulls + ",contentNulls=" + this._contentNulls + ")";
        }
    }

    String value() default "";
}
