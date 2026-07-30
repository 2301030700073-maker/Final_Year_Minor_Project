package com.google.common.util.concurrent;

/* loaded from: classes.dex */
final class Platform {
    static boolean isInstanceOfThrowableClass(Throwable th, Class<? extends Throwable> cls) {
        return cls.isInstance(th);
    }

    private Platform() {
    }
}
