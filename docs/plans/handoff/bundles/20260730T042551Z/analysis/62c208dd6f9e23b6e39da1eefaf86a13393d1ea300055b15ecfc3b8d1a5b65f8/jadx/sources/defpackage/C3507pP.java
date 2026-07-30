package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.client.zzfk;
import com.google.android.gms.ads.internal.client.zzs;
import com.google.android.gms.internal.ads.zzbpe;

/* renamed from: pP, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3507pP extends AbstractC3154jQ {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f14919do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzba f14920do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzs f14921do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbpe f14922do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f14923do;

    public C3507pP(zzba zzbaVar, Context context, zzs zzsVar, String str, zzbpe zzbpeVar) {
        this.f14919do = context;
        this.f14921do = zzsVar;
        this.f14923do = str;
        this.f14922do = zzbpeVar;
        this.f14920do = zzbaVar;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: do */
    public final /* bridge */ /* synthetic */ Object mo614do() {
        zzba.m5544do(this.f14919do, "interstitial");
        return new zzfk();
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: for */
    public final /* bridge */ /* synthetic */ Object mo615for() {
        return this.f14920do.f9578do.zza(this.f14919do, this.f14921do, this.f14923do, this.f14922do, 2);
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: if */
    public final Object mo616if(zzcp zzcpVar) {
        return zzcpVar.zze(new BinderC3652rv(this.f14919do), this.f14921do, this.f14923do, this.f14922do, 244410000);
    }
}
