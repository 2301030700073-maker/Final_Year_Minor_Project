package defpackage;

import com.google.android.gms.measurement.internal.zzae;
import java.util.List;
import java.util.concurrent.Callable;

/* renamed from: gT, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class CallableC2813gT implements Callable<List<zzae>> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ YS f13178do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f13179do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ String f13180for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ String f13181if;

    public CallableC2813gT(YS ys, String str, String str2, String str3) {
        this.f13179do = str;
        this.f13181if = str2;
        this.f13180for = str3;
        this.f13178do = ys;
    }

    @Override // java.util.concurrent.Callable
    public final List<zzae> call() {
        YS ys = this.f13178do;
        ys.f4740do.p();
        C2868hP c2868hP = ys.f4740do.f4838do;
        ZU.m3016extends(c2868hP);
        return c2868hP.m6807package(this.f13179do, this.f13181if, this.f13180for);
    }
}
