package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbpe;
import defpackage.AbstractC3539pz;
import defpackage.BinderC3652rv;

/* loaded from: classes.dex */
public final class zzl extends AbstractC3539pz {
    public zzl() {
        super("com.google.android.gms.ads.AdPreloaderRemoteCreatorImpl");
    }

    @Override // defpackage.AbstractC3539pz
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloaderCreator");
        return queryLocalInterface instanceof zzcj ? (zzcj) queryLocalInterface : new zzcj(iBinder);
    }

    public final zzci zza(Context context, zzbpe zzbpeVar) {
        zzci zzcgVar;
        try {
            IBinder zze = ((zzcj) getRemoteCreatorInstance(context)).zze(new BinderC3652rv(context), zzbpeVar, 244410000);
            if (zze == null) {
                zzcgVar = null;
            } else {
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloader");
                zzcgVar = queryLocalInterface instanceof zzci ? (zzci) queryLocalInterface : new zzcg(zze);
            }
            zzcgVar.zzh(zzbpeVar);
            return zzcgVar;
        } catch (RemoteException | AbstractC3539pz.Cdo e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not get remote AdPreloaderCreator.", e);
            return null;
        }
    }
}
