package com.fasterxml.jackson.annotation;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonCreator {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Mode {
        private static final /* synthetic */ Mode[] $VALUES;
        public static final Mode DEFAULT;
        public static final Mode DELEGATING;
        public static final Mode DISABLED;
        public static final Mode PROPERTIES;

        static {
            Mode mode = new Mode("DEFAULT", 0);
            DEFAULT = mode;
            Mode mode2 = new Mode("DELEGATING", 1);
            DELEGATING = mode2;
            Mode mode3 = new Mode("PROPERTIES", 2);
            PROPERTIES = mode3;
            Mode mode4 = new Mode("DISABLED", 3);
            DISABLED = mode4;
            $VALUES = new Mode[]{mode, mode2, mode3, mode4};
        }

        public static Mode valueOf(String str) {
            return (Mode) Enum.valueOf(Mode.class, str);
        }

        public static Mode[] values() {
            return (Mode[]) $VALUES.clone();
        }
    }

    Mode mode() default Mode.DEFAULT;
}
