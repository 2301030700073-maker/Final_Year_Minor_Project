package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.client.zzfk;
import com.google.android.gms.ads.internal.client.zzs;

/* renamed from: nP, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3389nP extends AbstractC3154jQ {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f14517do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzba f14518do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzs f14519do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f14520do;

    public C3389nP(zzba zzbaVar, Context context, zzs zzsVar, String str) {
        this.f14517do = context;
        this.f14519do = zzsVar;
        this.f14520do = str;
        this.f14518do = zzbaVar;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: do */
    public final /* bridge */ /* synthetic */ Object mo614do() {
        zzba.m5544do(this.f14517do, "search");
        return new zzfk();
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: for */
    public final /* bridge */ /* synthetic */ Object mo615for() {
        return this.f14518do.f9578do.zza(this.f14517do, this.f14519do, this.f14520do, null, 3);
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: if */
    public final Object mo616if(zzcp zzcpVar) {
        return zzcpVar.zzf(new BinderC3652rv(this.f14517do), this.f14519do, this.f14520do, 244410000);
    }
}
