package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import defpackage.AbstractC3539pz;
import defpackage.BinderC3652rv;

/* loaded from: classes.dex */
public final class zzfe extends AbstractC3539pz {
    public zzfe() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    @Override // defpackage.AbstractC3539pz
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
        return queryLocalInterface instanceof zzda ? (zzda) queryLocalInterface : new zzda(iBinder);
    }

    public final zzcz zza(Context context) {
        try {
            IBinder zze = ((zzda) getRemoteCreatorInstance(context)).zze(new BinderC3652rv(context), 244410000);
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            return queryLocalInterface instanceof zzcz ? (zzcz) queryLocalInterface : new zzcx(zze);
        } catch (RemoteException | AbstractC3539pz.Cdo e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not get remote MobileAdsSettingManager.", e);
            return null;
        }
    }
}
