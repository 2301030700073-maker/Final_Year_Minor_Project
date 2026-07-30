package com.google.common.collect;

import java.lang.reflect.Field;

/* renamed from: com.google.common.collect.class, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cclass {

    /* renamed from: com.google.common.collect.class$do, reason: invalid class name */
    public static final class Cdo<T> {

        /* renamed from: do, reason: not valid java name */
        public final Field f11810do;

        public Cdo(Field field) {
            this.f11810do = field;
            field.setAccessible(true);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Cdo<T> m6048do(Class<T> cls, String str) {
        try {
            return new Cdo<>(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e) {
            throw new AssertionError(e);
        }
    }
}
