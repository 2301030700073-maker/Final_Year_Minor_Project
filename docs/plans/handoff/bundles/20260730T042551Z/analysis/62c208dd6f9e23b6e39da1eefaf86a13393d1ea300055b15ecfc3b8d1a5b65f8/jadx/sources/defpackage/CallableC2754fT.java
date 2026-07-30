package defpackage;

import java.util.List;
import java.util.concurrent.Callable;

/* renamed from: fT, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class CallableC2754fT implements Callable<List<C3218kV>> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ YS f12938do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f12939do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ String f12940for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ String f12941if;

    public CallableC2754fT(YS ys, String str, String str2, String str3) {
        this.f12939do = str;
        this.f12941if = str2;
        this.f12940for = str3;
        this.f12938do = ys;
    }

    @Override // java.util.concurrent.Callable
    public final List<C3218kV> call() {
        YS ys = this.f12938do;
        ys.f4740do.p();
        C2868hP c2868hP = ys.f4740do.f4838do;
        ZU.m3016extends(c2868hP);
        return c2868hP.o(this.f12939do, this.f12941if, this.f12940for);
    }
}
