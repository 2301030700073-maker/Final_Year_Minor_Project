package defpackage;

import com.google.android.gms.measurement.internal.zzae;
import java.util.List;
import java.util.concurrent.Callable;

/* renamed from: hT, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class CallableC2872hT implements Callable<List<zzae>> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ YS f13324do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f13325do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ String f13326for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ String f13327if;

    public CallableC2872hT(YS ys, String str, String str2, String str3) {
        this.f13325do = str;
        this.f13327if = str2;
        this.f13326for = str3;
        this.f13324do = ys;
    }

    @Override // java.util.concurrent.Callable
    public final List<zzae> call() {
        YS ys = this.f13324do;
        ys.f4740do.p();
        C2868hP c2868hP = ys.f4740do.f4838do;
        ZU.m3016extends(c2868hP);
        return c2868hP.m6807package(this.f13325do, this.f13327if, this.f13326for);
    }
}
