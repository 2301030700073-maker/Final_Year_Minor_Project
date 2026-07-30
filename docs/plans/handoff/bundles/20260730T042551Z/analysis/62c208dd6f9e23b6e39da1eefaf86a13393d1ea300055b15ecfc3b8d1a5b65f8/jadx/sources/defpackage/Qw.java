package defpackage;

/* loaded from: classes3.dex */
public final class Qw {

    /* renamed from: do, reason: not valid java name */
    public static final Pw f3084do;

    static {
        Pw pw;
        try {
            Object newInstance = C0458Qo.class.newInstance();
            C0173Do.m399new(newInstance, "forName(\"kotlin.internal…entations\").newInstance()");
            try {
                try {
                    pw = (Pw) newInstance;
                } catch (ClassCastException e) {
                    ClassLoader classLoader = newInstance.getClass().getClassLoader();
                    ClassLoader classLoader2 = Pw.class.getClassLoader();
                    if (C0173Do.m394do(classLoader, classLoader2)) {
                        throw e;
                    }
                    throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader + ", base type classloader: " + classLoader2, e);
                }
            } catch (ClassNotFoundException unused) {
                Object newInstance2 = C0436Po.class.newInstance();
                C0173Do.m399new(newInstance2, "forName(\"kotlin.internal…entations\").newInstance()");
                try {
                    try {
                        pw = (Pw) newInstance2;
                    } catch (ClassNotFoundException unused2) {
                        pw = new Pw();
                    }
                } catch (ClassCastException e2) {
                    ClassLoader classLoader3 = newInstance2.getClass().getClassLoader();
                    ClassLoader classLoader4 = Pw.class.getClassLoader();
                    if (C0173Do.m394do(classLoader3, classLoader4)) {
                        throw e2;
                    }
                    throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader3 + ", base type classloader: " + classLoader4, e2);
                }
            }
        } catch (ClassNotFoundException unused3) {
            Object newInstance3 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
            C0173Do.m399new(newInstance3, "forName(\"kotlin.internal…entations\").newInstance()");
            try {
                try {
                    pw = (Pw) newInstance3;
                } catch (ClassNotFoundException unused4) {
                    Object newInstance4 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                    C0173Do.m399new(newInstance4, "forName(\"kotlin.internal…entations\").newInstance()");
                    try {
                        pw = (Pw) newInstance4;
                    } catch (ClassCastException e3) {
                        ClassLoader classLoader5 = newInstance4.getClass().getClassLoader();
                        ClassLoader classLoader6 = Pw.class.getClassLoader();
                        if (C0173Do.m394do(classLoader5, classLoader6)) {
                            throw e3;
                        }
                        throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader5 + ", base type classloader: " + classLoader6, e3);
                    }
                }
            } catch (ClassCastException e4) {
                ClassLoader classLoader7 = newInstance3.getClass().getClassLoader();
                ClassLoader classLoader8 = Pw.class.getClassLoader();
                if (C0173Do.m394do(classLoader7, classLoader8)) {
                    throw e4;
                }
                throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader7 + ", base type classloader: " + classLoader8, e4);
            }
        }
        f3084do = pw;
    }
}
