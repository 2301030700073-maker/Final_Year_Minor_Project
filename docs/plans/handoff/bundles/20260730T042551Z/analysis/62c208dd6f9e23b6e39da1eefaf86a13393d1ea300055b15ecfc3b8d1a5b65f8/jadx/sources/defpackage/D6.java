package defpackage;

/* loaded from: classes.dex */
public final class D6 extends Throwable {
    public D6(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return this;
    }
}
