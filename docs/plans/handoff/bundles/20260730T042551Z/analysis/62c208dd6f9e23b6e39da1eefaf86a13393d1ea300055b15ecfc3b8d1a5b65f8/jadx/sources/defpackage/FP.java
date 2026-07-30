package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.client.zzcx;
import com.google.android.gms.ads.internal.client.zzcz;
import com.google.android.gms.ads.internal.client.zzda;
import com.google.android.gms.ads.internal.client.zzfm;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbuh;

/* loaded from: classes.dex */
public final class FP extends AbstractC3154jQ {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f1050do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzba f1051do;

    public FP(zzba zzbaVar, Context context) {
        this.f1050do = context;
        this.f1051do = zzbaVar;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: do, reason: not valid java name */
    public final /* bridge */ /* synthetic */ Object mo614do() {
        zzba.m5544do(this.f1050do, "mobile_ads_settings");
        return new zzfm();
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: for, reason: not valid java name */
    public final Object mo615for() {
        Context context = this.f1050do;
        zzbcl.zza(context);
        boolean booleanValue = ((Boolean) zzbe.zzc().zza(zzbcl.zzkA)).booleanValue();
        zzba zzbaVar = this.f1051do;
        if (!booleanValue) {
            return zzbaVar.f9576do.zza(context);
        }
        try {
            IBinder zze = ((zzda) zzs.zzb(context, "com.google.android.gms.ads.ChimeraMobileAdsSettingManagerCreatorImpl", new zzq() { // from class: com.google.android.gms.ads.internal.client.zzau
                @Override // com.google.android.gms.ads.internal.util.client.zzq
                public final Object zza(Object obj) {
                    IBinder iBinder = (IBinder) obj;
                    if (iBinder == null) {
                        return null;
                    }
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
                    return queryLocalInterface instanceof zzda ? (zzda) queryLocalInterface : new zzda(iBinder);
                }
            })).zze(new BinderC3652rv(context), 244410000);
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            return queryLocalInterface instanceof zzcz ? (zzcz) queryLocalInterface : new zzcx(zze);
        } catch (RemoteException | zzr | NullPointerException e) {
            zzbaVar.f9583do = zzbuh.zza(context);
            zzbaVar.f9583do.zzh(e, "ClientApiBroker.getMobileAdsSettingsManager");
            return null;
        }
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: if, reason: not valid java name */
    public final Object mo616if(zzcp zzcpVar) {
        return zzcpVar.zzh(new BinderC3652rv(this.f1050do), 244410000);
    }
}
