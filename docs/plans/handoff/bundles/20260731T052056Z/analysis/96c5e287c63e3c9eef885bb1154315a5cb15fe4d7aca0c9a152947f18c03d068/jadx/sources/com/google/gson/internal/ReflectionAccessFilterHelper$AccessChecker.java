package com.google.gson.internal;

import java.lang.reflect.AccessibleObject;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ReflectionAccessFilterHelper$AccessChecker {
    public static final ReflectionAccessFilterHelper$AccessChecker INSTANCE;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.gson.internal.ReflectionAccessFilterHelper$AccessChecker$2, reason: invalid class name */
    public final class AnonymousClass2 extends ReflectionAccessFilterHelper$AccessChecker {
        @Override // com.google.gson.internal.ReflectionAccessFilterHelper$AccessChecker
        public final boolean canAccess(Object obj, AccessibleObject accessibleObject) {
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x001f  */
    static {
        /*
            int r0 = com.google.gson.internal.JavaVersion.majorJavaVersion
            r1 = 9
            if (r0 < r1) goto L1c
            java.lang.Class<java.lang.reflect.AccessibleObject> r0 = java.lang.reflect.AccessibleObject.class
            java.lang.String r1 = "canAccess"
            r2 = 1
            java.lang.Class[] r2 = new java.lang.Class[r2]     // Catch: java.lang.NoSuchMethodException -> L1c
            java.lang.Class<java.lang.Object> r3 = java.lang.Object.class
            r4 = 0
            r2[r4] = r3     // Catch: java.lang.NoSuchMethodException -> L1c
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r1, r2)     // Catch: java.lang.NoSuchMethodException -> L1c
            com.google.gson.internal.ReflectionAccessFilterHelper$AccessChecker$1 r1 = new com.google.gson.internal.ReflectionAccessFilterHelper$AccessChecker$1     // Catch: java.lang.NoSuchMethodException -> L1c
            r1.<init>()     // Catch: java.lang.NoSuchMethodException -> L1c
            goto L1d
        L1c:
            r1 = 0
        L1d:
            if (r1 != 0) goto L24
            com.google.gson.internal.ReflectionAccessFilterHelper$AccessChecker$2 r1 = new com.google.gson.internal.ReflectionAccessFilterHelper$AccessChecker$2
            r1.<init>()
        L24:
            com.google.gson.internal.ReflectionAccessFilterHelper$AccessChecker.INSTANCE = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.ReflectionAccessFilterHelper$AccessChecker.<clinit>():void");
    }

    public abstract boolean canAccess(Object obj, AccessibleObject accessibleObject);
}
