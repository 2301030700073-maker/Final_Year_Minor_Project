package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbuh;
import com.google.android.gms.internal.ads.zzbuj;
import defpackage.AbstractC3539pz;
import defpackage.BinderC3652rv;

/* loaded from: classes.dex */
public final class zzk extends AbstractC3539pz {

    /* renamed from: do, reason: not valid java name */
    public zzbuj f9676do;

    public zzk() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    @Override // defpackage.AbstractC3539pz
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        return queryLocalInterface instanceof zzbz ? (zzbz) queryLocalInterface : new zzbz(iBinder);
    }

    public final zzby zza(Context context, zzs zzsVar, String str, zzbpe zzbpeVar, int i) {
        zzbcl.zza(context);
        if (!((Boolean) zzbe.zzc().zza(zzbcl.zzkA)).booleanValue()) {
            try {
                IBinder zze = ((zzbz) getRemoteCreatorInstance(context)).zze(new BinderC3652rv(context), zzsVar, str, zzbpeVar, 244410000, i);
                if (zze == null) {
                    return null;
                }
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                return queryLocalInterface instanceof zzby ? (zzby) queryLocalInterface : new zzbw(zze);
            } catch (RemoteException | AbstractC3539pz.Cdo e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzf("Could not create remote AdManager.", e);
                return null;
            }
        }
        try {
            IBinder zze2 = ((zzbz) com.google.android.gms.ads.internal.util.client.zzs.zzb(context, "com.google.android.gms.ads.ChimeraAdManagerCreatorImpl", new com.google.android.gms.ads.internal.util.client.zzq() { // from class: com.google.android.gms.ads.internal.client.zzj
                @Override // com.google.android.gms.ads.internal.util.client.zzq
                public final Object zza(Object obj) {
                    IBinder iBinder = (IBinder) obj;
                    if (iBinder == null) {
                        return null;
                    }
                    IInterface queryLocalInterface2 = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                    return queryLocalInterface2 instanceof zzbz ? (zzbz) queryLocalInterface2 : new zzbz(iBinder);
                }
            })).zze(new BinderC3652rv(context), zzsVar, str, zzbpeVar, 244410000, i);
            if (zze2 == null) {
                return null;
            }
            IInterface queryLocalInterface2 = zze2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            return queryLocalInterface2 instanceof zzby ? (zzby) queryLocalInterface2 : new zzbw(zze2);
        } catch (RemoteException | com.google.android.gms.ads.internal.util.client.zzr | NullPointerException e2) {
            zzbuj zza = zzbuh.zza(context);
            this.f9676do = zza;
            zza.zzh(e2, "AdManagerCreator.newAdManagerByDynamiteLoader");
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e2);
            return null;
        }
    }
}
