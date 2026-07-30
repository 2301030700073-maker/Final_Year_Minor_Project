package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.client.zzfk;
import com.google.android.gms.ads.internal.client.zzs;
import com.google.android.gms.internal.ads.zzbpa;
import com.google.android.gms.internal.ads.zzbpe;

/* renamed from: kP, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3212kP extends AbstractC3154jQ {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f13977do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzba f13978do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzs f13979do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbpe f13980do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f13981do;

    public C3212kP(zzba zzbaVar, Context context, zzs zzsVar, String str, zzbpa zzbpaVar) {
        this.f13977do = context;
        this.f13979do = zzsVar;
        this.f13981do = str;
        this.f13980do = zzbpaVar;
        this.f13978do = zzbaVar;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: do */
    public final /* bridge */ /* synthetic */ Object mo614do() {
        zzba.m5544do(this.f13977do, "banner");
        return new zzfk();
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: for */
    public final /* bridge */ /* synthetic */ Object mo615for() {
        return this.f13978do.f9578do.zza(this.f13977do, this.f13979do, this.f13981do, this.f13980do, 1);
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: if */
    public final Object mo616if(zzcp zzcpVar) {
        return zzcpVar.zzd(new BinderC3652rv(this.f13977do), this.f13979do, this.f13981do, this.f13980do, 244410000);
    }
}
