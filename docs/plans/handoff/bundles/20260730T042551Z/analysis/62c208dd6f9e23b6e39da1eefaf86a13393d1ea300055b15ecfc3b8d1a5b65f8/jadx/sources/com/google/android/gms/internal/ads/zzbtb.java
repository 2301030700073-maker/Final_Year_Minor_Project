package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import defpackage.AbstractC3539pz;
import defpackage.BinderC3652rv;

/* loaded from: classes.dex */
public final class zzbtb extends AbstractC3539pz {
    public zzbtb() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    @Override // defpackage.AbstractC3539pz
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        return queryLocalInterface instanceof zzbth ? (zzbth) queryLocalInterface : new zzbtf(iBinder);
    }

    public final zzbte zza(Activity activity) {
        try {
            IBinder zze = ((zzbth) getRemoteCreatorInstance(activity)).zze(new BinderC3652rv(activity));
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            return queryLocalInterface instanceof zzbte ? (zzbte) queryLocalInterface : new zzbtc(zze);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not create remote AdOverlay.", e);
            return null;
        } catch (AbstractC3539pz.Cdo e2) {
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not create remote AdOverlay.", e2);
            return null;
        }
    }
}
