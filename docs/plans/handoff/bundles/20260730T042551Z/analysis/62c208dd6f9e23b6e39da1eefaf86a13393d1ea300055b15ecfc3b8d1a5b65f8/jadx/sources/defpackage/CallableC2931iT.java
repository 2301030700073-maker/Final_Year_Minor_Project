package defpackage;

import com.google.android.gms.measurement.internal.zzbf;
import java.util.concurrent.Callable;

/* renamed from: iT, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class CallableC2931iT implements Callable<byte[]> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ YS f13520do;

    public CallableC2931iT(YS ys, zzbf zzbfVar, String str) {
        this.f13520do = ys;
    }

    @Override // java.util.concurrent.Callable
    public final byte[] call() {
        YS ys = this.f13520do;
        ys.f4740do.p();
        C0814cU c0814cU = ys.f4740do.f4836do;
        ZU.m3016extends(c0814cU);
        c0814cU.mo1960catch();
        ((TS) ((C3393nT) c0814cU).f14527do).getClass();
        throw new IllegalStateException("Unexpected call on client side");
    }
}
