package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import defpackage.AbstractC3539pz;
import defpackage.BinderC3652rv;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzbhw extends AbstractC3539pz {
    public zzbhw() {
        super("com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl");
    }

    @Override // defpackage.AbstractC3539pz
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
        return queryLocalInterface instanceof zzbgj ? (zzbgj) queryLocalInterface : new zzbgh(iBinder);
    }

    public final zzbgg zza(View view, HashMap hashMap, HashMap hashMap2) {
        try {
            IBinder zze = ((zzbgj) getRemoteCreatorInstance(view.getContext())).zze(new BinderC3652rv(view), new BinderC3652rv(hashMap), new BinderC3652rv(hashMap2));
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
            return queryLocalInterface instanceof zzbgg ? (zzbgg) queryLocalInterface : new zzbge(zze);
        } catch (RemoteException | AbstractC3539pz.Cdo e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not create remote NativeAdViewHolderDelegate.", e);
            return null;
        }
    }
}
