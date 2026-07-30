package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.client.zzcg;
import com.google.android.gms.ads.internal.client.zzci;
import com.google.android.gms.ads.internal.client.zzcj;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbuh;

/* renamed from: yP, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4037yP extends AbstractC3154jQ {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f16737do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzba f16738do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbpe f16739do;

    public C4037yP(zzba zzbaVar, Context context, zzbpe zzbpeVar) {
        this.f16737do = context;
        this.f16739do = zzbpeVar;
        this.f16738do = zzbaVar;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: do */
    public final /* bridge */ /* synthetic */ Object mo614do() {
        zzba.m5544do(this.f16737do, "ads_preloader");
        return null;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: for */
    public final Object mo615for() {
        zzci zzcgVar;
        Context context = this.f16737do;
        BinderC3652rv binderC3652rv = new BinderC3652rv(context);
        zzbcl.zza(context);
        boolean booleanValue = ((Boolean) zzbe.zzc().zza(zzbcl.zzkA)).booleanValue();
        zzbpe zzbpeVar = this.f16739do;
        zzba zzbaVar = this.f16738do;
        if (!booleanValue) {
            return zzbaVar.f9579do.zza(context, zzbpeVar);
        }
        try {
            IBinder zze = ((zzcj) zzs.zzb(context, "com.google.android.gms.ads.ChimeraAdPreloaderCreatorImpl", new zzq() { // from class: com.google.android.gms.ads.internal.client.zzas
                @Override // com.google.android.gms.ads.internal.util.client.zzq
                public final Object zza(Object obj) {
                    IBinder iBinder = (IBinder) obj;
                    if (iBinder == null) {
                        return null;
                    }
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloaderCreator");
                    return queryLocalInterface instanceof zzcj ? (zzcj) queryLocalInterface : new zzcj(iBinder);
                }
            })).zze(binderC3652rv, zzbpeVar, 244410000);
            if (zze == null) {
                zzcgVar = null;
            } else {
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloader");
                zzcgVar = queryLocalInterface instanceof zzci ? (zzci) queryLocalInterface : new zzcg(zze);
            }
            zzcgVar.zzh(zzbpeVar);
            return zzcgVar;
        } catch (RemoteException | zzr | NullPointerException e) {
            zzbaVar.f9583do = zzbuh.zza(context);
            zzbaVar.f9583do.zzh(e, "ClientApiBroker.getAdPreloader");
            return null;
        }
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: if */
    public final Object mo616if(zzcp zzcpVar) {
        BinderC3652rv binderC3652rv = new BinderC3652rv(this.f16737do);
        zzbpe zzbpeVar = this.f16739do;
        zzci zzg = zzcpVar.zzg(binderC3652rv, zzbpeVar, 244410000);
        zzg.zzh(zzbpeVar);
        return zzg;
    }
}
