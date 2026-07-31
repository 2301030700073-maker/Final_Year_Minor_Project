package com.fasterxml.jackson.annotation;

import java.io.Serializable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Set;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonIncludeProperties {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Value implements Serializable {
        public static final Value ALL = new Value(null);
        public final Set _included;

        public Value(Set set) {
            this._included = set;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj != null && obj.getClass() == Value.class) {
                Set set = ((Value) obj)._included;
                Set set2 = this._included;
                if (set2 == null ? set == null : set2.equals(set)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            Set set = this._included;
            if (set == null) {
                return 0;
            }
            return set.size();
        }

        public final String toString() {
            return String.format("JsonIncludeProperties.Value(included=%s)", this._included);
        }
    }

    String[] value() default {};
}
