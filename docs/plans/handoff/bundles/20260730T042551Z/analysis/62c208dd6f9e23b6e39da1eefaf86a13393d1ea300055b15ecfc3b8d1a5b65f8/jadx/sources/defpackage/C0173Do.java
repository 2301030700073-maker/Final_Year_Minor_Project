package defpackage;

import java.util.Arrays;

/* renamed from: Do, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0173Do {
    /* renamed from: case, reason: not valid java name */
    public static int m393case(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m394do(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m395else(String str, RuntimeException runtimeException) {
        StackTraceElement[] stackTrace = runtimeException.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(stackTrace[i2].getClassName())) {
                i = i2;
            }
        }
        runtimeException.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i + 1, length));
    }

    /* renamed from: for, reason: not valid java name */
    public static void m396for(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str);
        m395else(C0173Do.class.getName(), nullPointerException);
        throw nullPointerException;
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m397goto(Object obj, String str) {
        return str + obj;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m398if(Object obj) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException();
        m395else(C0173Do.class.getName(), nullPointerException);
        throw nullPointerException;
    }

    /* renamed from: new, reason: not valid java name */
    public static void m399new(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str.concat(" must not be null"));
        m395else(C0173Do.class.getName(), nullPointerException);
        throw nullPointerException;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m400this(String str) {
        C3147jJ c3147jJ = new C3147jJ(Cif.m6908case("lateinit property ", str, " has not been initialized"));
        m395else(C0173Do.class.getName(), c3147jJ);
        throw c3147jJ;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m401try(Object obj, String str) {
        if (obj == null) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            String name = C0173Do.class.getName();
            int i = 0;
            while (!stackTrace[i].getClassName().equals(name)) {
                i++;
            }
            while (stackTrace[i].getClassName().equals(name)) {
                i++;
            }
            StackTraceElement stackTraceElement = stackTrace[i];
            StringBuilder m6919this = Cif.m6919this("Parameter specified as non-null is null: method ", stackTraceElement.getClassName(), ".", stackTraceElement.getMethodName(), ", parameter ");
            m6919this.append(str);
            NullPointerException nullPointerException = new NullPointerException(m6919this.toString());
            m395else(C0173Do.class.getName(), nullPointerException);
            throw nullPointerException;
        }
    }
}
