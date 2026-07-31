package com.fasterxml.jackson.annotation;

import java.io.Serializable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonInclude {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Include {
        private static final /* synthetic */ Include[] $VALUES;
        public static final Include ALWAYS;
        public static final Include CUSTOM;
        public static final Include NON_ABSENT;
        public static final Include NON_DEFAULT;
        public static final Include NON_EMPTY;
        public static final Include NON_NULL;
        public static final Include USE_DEFAULTS;

        static {
            Include include = new Include("ALWAYS", 0);
            ALWAYS = include;
            Include include2 = new Include("NON_NULL", 1);
            NON_NULL = include2;
            Include include3 = new Include("NON_ABSENT", 2);
            NON_ABSENT = include3;
            Include include4 = new Include("NON_EMPTY", 3);
            NON_EMPTY = include4;
            Include include5 = new Include("NON_DEFAULT", 4);
            NON_DEFAULT = include5;
            Include include6 = new Include("CUSTOM", 5);
            CUSTOM = include6;
            Include include7 = new Include("USE_DEFAULTS", 6);
            USE_DEFAULTS = include7;
            $VALUES = new Include[]{include, include2, include3, include4, include5, include6, include7};
        }

        public static Include valueOf(String str) {
            return (Include) Enum.valueOf(Include.class, str);
        }

        public static Include[] values() {
            return (Include[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Value implements Serializable {
        public static final Value EMPTY;
        public final Class _contentFilter;
        public final Include _contentInclusion;
        public final Class _valueFilter;
        public final Include _valueInclusion;

        static {
            Include include = Include.USE_DEFAULTS;
            EMPTY = new Value(include, include, null, null);
        }

        public Value(Include include, Include include2, Class cls, Class cls2) {
            this._valueInclusion = include == null ? Include.USE_DEFAULTS : include;
            this._contentInclusion = include2 == null ? Include.USE_DEFAULTS : include2;
            this._valueFilter = cls == Void.class ? null : cls;
            this._contentFilter = cls2 == Void.class ? null : cls2;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != Value.class) {
                return false;
            }
            Value value = (Value) obj;
            return value._valueInclusion == this._valueInclusion && value._contentInclusion == this._contentInclusion && value._valueFilter == this._valueFilter && value._contentFilter == this._contentFilter;
        }

        public final int hashCode() {
            return this._contentInclusion.hashCode() + (this._valueInclusion.hashCode() << 2);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(80);
            sb.append("JsonInclude.Value(value=");
            sb.append(this._valueInclusion);
            sb.append(",content=");
            sb.append(this._contentInclusion);
            Class cls = this._valueFilter;
            if (cls != null) {
                sb.append(",valueFilter=");
                sb.append(cls.getName());
                sb.append(".class");
            }
            Class cls2 = this._contentFilter;
            if (cls2 != null) {
                sb.append(",contentFilter=");
                sb.append(cls2.getName());
                sb.append(".class");
            }
            sb.append(')');
            return sb.toString();
        }

        public final Value withOverrides(Value value) {
            if (value == null || value == EMPTY) {
                return this;
            }
            Include include = value._valueInclusion;
            Include include2 = value._contentInclusion;
            Class cls = value._valueFilter;
            Class cls2 = value._contentFilter;
            Include include3 = this._valueInclusion;
            boolean z = (include == include3 || include == Include.USE_DEFAULTS) ? false : true;
            Include include4 = this._contentInclusion;
            boolean z2 = (include2 == include4 || include2 == Include.USE_DEFAULTS) ? false : true;
            Class cls3 = this._valueFilter;
            return z ? z2 ? new Value(include, include2, cls, cls2) : new Value(include, include4, cls, cls2) : z2 ? new Value(include3, include2, cls, cls2) : (cls == cls3 && cls2 == cls3) ? false : true ? new Value(include3, include4, cls, cls2) : this;
        }

        public final Value withValueInclusion(Include include) {
            if (include == this._valueInclusion) {
                return this;
            }
            return new Value(include, this._contentInclusion, this._valueFilter, this._contentFilter);
        }
    }

    Include content() default Include.ALWAYS;

    Class contentFilter() default Void.class;

    Include value() default Include.ALWAYS;

    Class valueFilter() default Void.class;
}
