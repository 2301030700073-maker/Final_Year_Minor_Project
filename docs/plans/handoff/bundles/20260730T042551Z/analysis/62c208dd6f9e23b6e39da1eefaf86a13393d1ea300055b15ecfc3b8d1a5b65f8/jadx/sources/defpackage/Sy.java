package defpackage;

/* loaded from: classes3.dex */
public abstract class Sy extends Exception {

    /* renamed from: do, reason: not valid java name */
    public static final boolean f3566do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final StackTraceElement[] f3567do;

    static {
        f3566do = System.getProperty("surefire.test.class.path") != null;
        f3567do = new StackTraceElement[0];
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return null;
    }
}
