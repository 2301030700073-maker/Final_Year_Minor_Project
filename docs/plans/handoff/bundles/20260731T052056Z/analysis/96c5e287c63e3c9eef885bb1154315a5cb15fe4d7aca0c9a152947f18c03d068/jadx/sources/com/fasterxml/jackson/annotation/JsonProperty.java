package com.fasterxml.jackson.annotation;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonProperty {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Access {
        private static final /* synthetic */ Access[] $VALUES;
        public static final Access AUTO;
        public static final Access READ_ONLY;
        public static final Access READ_WRITE;
        public static final Access WRITE_ONLY;

        static {
            Access access = new Access("AUTO", 0);
            AUTO = access;
            Access access2 = new Access("READ_ONLY", 1);
            READ_ONLY = access2;
            Access access3 = new Access("WRITE_ONLY", 2);
            WRITE_ONLY = access3;
            Access access4 = new Access("READ_WRITE", 3);
            READ_WRITE = access4;
            $VALUES = new Access[]{access, access2, access3, access4};
        }

        public static Access valueOf(String str) {
            return (Access) Enum.valueOf(Access.class, str);
        }

        public static Access[] values() {
            return (Access[]) $VALUES.clone();
        }
    }

    Access access() default Access.AUTO;

    String defaultValue() default "";

    int index() default -1;

    String namespace() default "";

    boolean required() default false;

    String value() default "";
}
