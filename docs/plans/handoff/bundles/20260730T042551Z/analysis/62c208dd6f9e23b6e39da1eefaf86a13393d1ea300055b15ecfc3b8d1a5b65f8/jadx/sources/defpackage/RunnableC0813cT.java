package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzo;

/* renamed from: cT, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC0813cT implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ YS f8550do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzo f8551do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f8552for;

    public /* synthetic */ RunnableC0813cT(YS ys, zzo zzoVar, int i) {
        this.f8552for = i;
        this.f8551do = zzoVar;
        this.f8550do = ys;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f8552for;
        zzo zzoVar = this.f8551do;
        YS ys = this.f8550do;
        switch (i) {
            case 0:
                ys.f4740do.p();
                ZU zu = ys.f4740do;
                zu.mo2253do().mo1960catch();
                zu.q();
                Preconditions.checkNotEmpty(zzoVar.f10320break);
                zu.m3023class(zzoVar);
                break;
            default:
                ys.f4740do.p();
                ZU zu2 = ys.f4740do;
                zu2.mo2253do().mo1960catch();
                zu2.q();
                Preconditions.checkNotEmpty(zzoVar.f10320break);
                zu2.j(zzoVar);
                zu2.i(zzoVar);
                break;
        }
    }
}
