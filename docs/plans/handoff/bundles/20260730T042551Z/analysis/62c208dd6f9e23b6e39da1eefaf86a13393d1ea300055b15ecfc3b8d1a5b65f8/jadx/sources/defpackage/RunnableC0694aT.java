package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.measurement.internal.zzae;
import com.google.android.gms.measurement.internal.zzo;

/* renamed from: aT, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class RunnableC0694aT implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ YS f4950do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Parcelable f4951do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f4952do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f4953for;

    public /* synthetic */ RunnableC0694aT(YS ys, Parcelable parcelable, Object obj, int i) {
        this.f4953for = i;
        this.f4950do = ys;
        this.f4951do = parcelable;
        this.f4952do = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f4953for;
        YS ys = this.f4950do;
        Object obj = this.f4952do;
        Parcelable parcelable = this.f4951do;
        switch (i) {
            case 0:
                Bundle bundle = (Bundle) parcelable;
                String str = (String) obj;
                ys.getClass();
                boolean isEmpty = bundle.isEmpty();
                ZU zu = ys.f4740do;
                if (!isEmpty) {
                    C2868hP c2868hP = zu.f4838do;
                    ZU.m3016extends(c2868hP);
                    c2868hP.p(bundle, str);
                    C2868hP c2868hP2 = zu.f4838do;
                    ZU.m3016extends(c2868hP2);
                    c2868hP2.m6817transient(str, bundle);
                    break;
                } else {
                    C2868hP c2868hP3 = zu.f4838do;
                    ZU.m3016extends(c2868hP3);
                    c2868hP3.G(str);
                    break;
                }
            default:
                ys.f4740do.p();
                zzae zzaeVar = (zzae) parcelable;
                Object f = zzaeVar.f10305do.f();
                ZU zu2 = ys.f4740do;
                if (f != null) {
                    zu2.m3037protected(zzaeVar, (zzo) obj);
                    break;
                } else {
                    zu2.m3048while(zzaeVar, (zzo) obj);
                    break;
                }
        }
    }
}
