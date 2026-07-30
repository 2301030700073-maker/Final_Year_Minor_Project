package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.client.zzfq;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbxb;

/* loaded from: classes.dex */
public final class OO extends AbstractC3154jQ {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f2640do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbpe f2641do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f2642do;

    public OO(Context context, String str, zzbpe zzbpeVar) {
        this.f2640do = context;
        this.f2642do = str;
        this.f2641do = zzbpeVar;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: do */
    public final /* bridge */ /* synthetic */ Object mo614do() {
        zzba.m5544do(this.f2640do, "rewarded");
        return new zzfq();
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: for */
    public final /* bridge */ /* synthetic */ Object mo615for() {
        return zzbxb.zza(this.f2640do, this.f2642do, this.f2641do);
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: if */
    public final Object mo616if(zzcp zzcpVar) {
        return zzcpVar.zzp(new BinderC3652rv(this.f2640do), this.f2642do, this.f2641do, 244410000);
    }
}
