package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.client.zzfk;
import com.google.android.gms.ads.internal.client.zzs;
import com.google.android.gms.internal.ads.zzbpe;

/* renamed from: mP, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3330mP extends AbstractC3154jQ {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f14337do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzba f14338do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzs f14339do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbpe f14340do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f14341do;

    public C3330mP(zzba zzbaVar, Context context, zzs zzsVar, String str, zzbpe zzbpeVar) {
        this.f14337do = context;
        this.f14339do = zzsVar;
        this.f14341do = str;
        this.f14340do = zzbpeVar;
        this.f14338do = zzbaVar;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: do */
    public final /* bridge */ /* synthetic */ Object mo614do() {
        zzba.m5544do(this.f14337do, "app_open");
        return new zzfk();
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: for */
    public final /* bridge */ /* synthetic */ Object mo615for() {
        return this.f14338do.f9578do.zza(this.f14337do, this.f14339do, this.f14341do, this.f14340do, 4);
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: if */
    public final Object mo616if(zzcp zzcpVar) {
        return zzcpVar.zzc(new BinderC3652rv(this.f14337do), this.f14339do, this.f14341do, this.f14340do, 244410000);
    }
}
