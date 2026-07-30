package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: hw, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2897hw<T> {

    /* renamed from: do, reason: not valid java name */
    public final Class<?> f13406do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f13407do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Class[] f13408do;

    public C2897hw(Class<?> cls, String str, Class... clsArr) {
        this.f13406do = cls;
        this.f13407do = str;
        this.f13408do = clsArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0011, code lost:
    
        if ((r4.getModifiers() & 1) == 0) goto L12;
     */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.reflect.Method m6844do(java.lang.Class<?> r4) {
        /*
            r3 = this;
            r0 = 0
            java.lang.String r1 = r3.f13407do
            if (r1 == 0) goto L2a
            java.lang.Class[] r2 = r3.f13408do
            java.lang.reflect.Method r4 = r4.getMethod(r1, r2)     // Catch: java.lang.NoSuchMethodException -> L16
            int r1 = r4.getModifiers()     // Catch: java.lang.NoSuchMethodException -> L14
            r1 = r1 & 1
            if (r1 != 0) goto L18
            goto L17
        L14:
            goto L18
        L16:
        L17:
            r4 = r0
        L18:
            if (r4 == 0) goto L29
            java.lang.Class<?> r1 = r3.f13406do
            if (r1 == 0) goto L29
            java.lang.Class r2 = r4.getReturnType()
            boolean r1 = r1.isAssignableFrom(r2)
            if (r1 != 0) goto L29
            goto L2a
        L29:
            r0 = r4
        L2a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2897hw.m6844do(java.lang.Class):java.lang.reflect.Method");
    }

    /* renamed from: for, reason: not valid java name */
    public final void m6845for(Object[] objArr, Object obj) {
        try {
            Method m6844do = m6844do(obj.getClass());
            if (m6844do == null) {
                return;
            }
            try {
                m6844do.invoke(obj, objArr);
            } catch (IllegalAccessException unused) {
            }
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final Object m6846if(Object[] objArr, Object obj) {
        Method m6844do = m6844do(obj.getClass());
        if (m6844do == null) {
            throw new AssertionError("Method " + this.f13407do + " not supported for object " + obj);
        }
        try {
            return m6844do.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + m6844do);
            assertionError.initCause(e);
            throw assertionError;
        }
    }
}
