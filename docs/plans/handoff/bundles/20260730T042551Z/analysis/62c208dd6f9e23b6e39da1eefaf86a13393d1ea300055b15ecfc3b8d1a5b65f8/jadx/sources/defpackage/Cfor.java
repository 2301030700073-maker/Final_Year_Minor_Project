package defpackage;

import java.util.concurrent.CancellationException;

/* renamed from: for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor extends CancellationException {

    /* renamed from: do, reason: not valid java name */
    public final transient InterfaceC0650Zi<?> f12989do;

    public Cfor(InterfaceC0650Zi<?> interfaceC0650Zi) {
        super("Flow was aborted, no more elements needed");
        this.f12989do = interfaceC0650Zi;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
