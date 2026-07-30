package defpackage;

import defpackage.C2642dc;
import j$.util.Objects;
import java.util.concurrent.TimeoutException;

/* renamed from: Gb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0226Gb implements C2642dc.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C0357Mb f1205do;

    public C0226Gb(C0357Mb c0357Mb) {
        this.f1205do = c0357Mb;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m741do(InterfaceC3200kD interfaceC3200kD, Thread thread, Throwable th) {
        C0357Mb c0357Mb = this.f1205do;
        synchronized (c0357Mb) {
            Objects.toString(th);
            thread.getName();
            try {
                C0804cK.m4898do(c0357Mb.f2207do.f13734do.m6568if(new CallableC0270Ib(c0357Mb, System.currentTimeMillis(), th, thread, interfaceC3200kD)));
            } catch (TimeoutException | Exception unused) {
            }
        }
    }
}
