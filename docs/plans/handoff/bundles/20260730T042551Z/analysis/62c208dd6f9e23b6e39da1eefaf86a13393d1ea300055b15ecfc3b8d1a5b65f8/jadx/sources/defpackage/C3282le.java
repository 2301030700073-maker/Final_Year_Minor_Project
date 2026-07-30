package defpackage;

/* renamed from: le, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3282le extends RuntimeException {

    /* renamed from: do, reason: not valid java name */
    public final transient InterfaceC3161jb f14176do;

    public C3282le(InterfaceC3161jb interfaceC3161jb) {
        this.f14176do = interfaceC3161jb;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        return this.f14176do.toString();
    }
}
