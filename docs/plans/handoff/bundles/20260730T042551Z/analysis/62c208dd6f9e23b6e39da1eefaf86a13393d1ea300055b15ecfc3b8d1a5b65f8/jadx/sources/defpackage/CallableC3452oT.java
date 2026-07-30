package defpackage;

import java.util.List;
import java.util.concurrent.Callable;

/* renamed from: oT, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class CallableC3452oT implements Callable<List<C3218kV>> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ YS f14795do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f14796do;

    public CallableC3452oT(YS ys, String str) {
        this.f14796do = str;
        this.f14795do = ys;
    }

    @Override // java.util.concurrent.Callable
    public final List<C3218kV> call() {
        YS ys = this.f14795do;
        ys.f4740do.p();
        C2868hP c2868hP = ys.f4740do.f4838do;
        ZU.m3016extends(c2868hP);
        return c2868hP.E(this.f14796do);
    }
}
