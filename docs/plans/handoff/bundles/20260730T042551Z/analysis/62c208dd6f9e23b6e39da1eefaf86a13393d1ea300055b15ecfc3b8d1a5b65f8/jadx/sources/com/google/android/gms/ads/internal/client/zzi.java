package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbpe;
import defpackage.AbstractC3539pz;
import defpackage.BinderC3652rv;

/* loaded from: classes.dex */
public final class zzi extends AbstractC3539pz {
    public zzi() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    @Override // defpackage.AbstractC3539pz
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
        return queryLocalInterface instanceof zzbv ? (zzbv) queryLocalInterface : new zzbv(iBinder);
    }

    public final zzbu zza(Context context, String str, zzbpe zzbpeVar) {
        try {
            IBinder zze = ((zzbv) getRemoteCreatorInstance(context)).zze(new BinderC3652rv(context), str, zzbpeVar, 244410000);
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            return queryLocalInterface instanceof zzbu ? (zzbu) queryLocalInterface : new zzbs(zze);
        } catch (RemoteException | AbstractC3539pz.Cdo e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not create remote builder for AdLoader.", e);
            return null;
        }
    }
}
