package com.fasterxml.jackson.annotation;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonTypeInfo {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class As {
        private static final /* synthetic */ As[] $VALUES;
        public static final As EXISTING_PROPERTY;
        public static final As EXTERNAL_PROPERTY;
        public static final As PROPERTY;
        public static final As WRAPPER_ARRAY;
        public static final As WRAPPER_OBJECT;

        static {
            As as = new As("PROPERTY", 0);
            PROPERTY = as;
            As as2 = new As("WRAPPER_OBJECT", 1);
            WRAPPER_OBJECT = as2;
            As as3 = new As("WRAPPER_ARRAY", 2);
            WRAPPER_ARRAY = as3;
            As as4 = new As("EXTERNAL_PROPERTY", 3);
            EXTERNAL_PROPERTY = as4;
            As as5 = new As("EXISTING_PROPERTY", 4);
            EXISTING_PROPERTY = as5;
            $VALUES = new As[]{as, as2, as3, as4, as5};
        }

        public static As valueOf(String str) {
            return (As) Enum.valueOf(As.class, str);
        }

        public static As[] values() {
            return (As[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public enum Id {
        NONE(null),
        CLASS("@class"),
        MINIMAL_CLASS("@c"),
        NAME("@type"),
        DEDUCTION(null),
        CUSTOM(null);

        private final String _defaultPropertyName;

        Id(String str) {
            this._defaultPropertyName = str;
        }

        public final String getDefaultPropertyName() {
            return this._defaultPropertyName;
        }
    }

    Class defaultImpl() default JsonTypeInfo.class;

    As include() default As.PROPERTY;

    String property() default "";

    Id use();

    boolean visible() default false;
}
