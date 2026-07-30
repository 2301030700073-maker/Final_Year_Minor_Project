package defpackage;

import android.app.Activity;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbtd;
import com.google.android.gms.internal.ads.zzbtg;
import com.google.android.gms.internal.ads.zzbth;
import com.google.android.gms.internal.ads.zzbuh;

/* loaded from: classes.dex */
public final class TO extends AbstractC3154jQ {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Activity f3670do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzba f3671do;

    public TO(zzba zzbaVar, Activity activity) {
        this.f3670do = activity;
        this.f3671do = zzbaVar;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: do */
    public final /* bridge */ /* synthetic */ Object mo614do() {
        zzba.m5544do(this.f3670do, "ad_overlay");
        return null;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: for */
    public final Object mo615for() {
        Activity activity = this.f3670do;
        zzbcl.zza(activity);
        boolean booleanValue = ((Boolean) zzbe.zzc().zza(zzbcl.zzkA)).booleanValue();
        zzba zzbaVar = this.f3671do;
        if (!booleanValue) {
            return zzbaVar.f9582do.zza(activity);
        }
        try {
            return zzbtd.zzI(((zzbth) zzs.zzb(activity, "com.google.android.gms.ads.ChimeraAdOverlayCreatorImpl", new zzq() { // from class: com.google.android.gms.ads.internal.client.zzac
                @Override // com.google.android.gms.ads.internal.util.client.zzq
                public final Object zza(Object obj) {
                    return zzbtg.zzb((IBinder) obj);
                }
            })).zze(new BinderC3652rv(activity)));
        } catch (RemoteException | zzr | NullPointerException e) {
            zzbaVar.f9583do = zzbuh.zza(activity.getApplicationContext());
            zzbaVar.f9583do.zzh(e, "ClientApiBroker.createAdOverlay");
            return null;
        }
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: if */
    public final Object mo616if(zzcp zzcpVar) {
        return zzcpVar.zzn(new BinderC3652rv(this.f3670do));
    }
}
