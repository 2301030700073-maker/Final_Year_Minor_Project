package defpackage;

import android.os.OutcomeReceiver;
import java.lang.Throwable;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: ab, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0699ab<R, E extends Throwable> extends AtomicBoolean implements OutcomeReceiver<R, E> {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0576Wa<R> f4964do;

    public C0699ab(U6 u6) {
        super(false);
        this.f4964do = u6;
    }

    @Override // android.os.OutcomeReceiver
    public final void onError(E e) {
        if (compareAndSet(false, true)) {
            this.f4964do.mo1746while(C3645ro.m8004import(e));
        }
    }

    @Override // android.os.OutcomeReceiver
    public final void onResult(R r) {
        if (compareAndSet(false, true)) {
            this.f4964do.mo1746while(r);
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public final String toString() {
        return "ContinuationOutcomeReceiver(outcomeReceived = " + get() + ')';
    }
}
