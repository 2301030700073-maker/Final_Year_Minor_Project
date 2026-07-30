package defpackage;

import java.util.concurrent.CancellationException;

/* renamed from: Zo, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0656Zo extends CancellationException {

    /* renamed from: do, reason: not valid java name */
    public final transient InterfaceC0634Yo f4901do;

    public C0656Zo(String str, Throwable th, InterfaceC0634Yo interfaceC0634Yo) {
        super(str);
        this.f4901do = interfaceC0634Yo;
        if (th != null) {
            initCause(th);
        }
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof C0656Zo) {
                C0656Zo c0656Zo = (C0656Zo) obj;
                if (!C0173Do.m394do(c0656Zo.getMessage(), getMessage()) || !C0173Do.m394do(c0656Zo.f4901do, this.f4901do) || !C0173Do.m394do(c0656Zo.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public final int hashCode() {
        String message = getMessage();
        C0173Do.m398if(message);
        int hashCode = (this.f4901do.hashCode() + (message.hashCode() * 31)) * 31;
        Throwable cause = getCause();
        return hashCode + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return super.toString() + "; job=" + this.f4901do;
    }
}
