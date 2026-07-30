package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.widget.FrameLayout;
import defpackage.AbstractC3539pz;
import defpackage.BinderC3652rv;

/* loaded from: classes.dex */
public final class zzbhv extends AbstractC3539pz {
    public zzbhv() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    @Override // defpackage.AbstractC3539pz
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
        return queryLocalInterface instanceof zzbgd ? (zzbgd) queryLocalInterface : new zzbgb(iBinder);
    }

    public final zzbga zza(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        try {
            IBinder zze = ((zzbgd) getRemoteCreatorInstance(context)).zze(new BinderC3652rv(context), new BinderC3652rv(frameLayout), new BinderC3652rv(frameLayout2), 244410000);
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
            return queryLocalInterface instanceof zzbga ? (zzbga) queryLocalInterface : new zzbfy(zze);
        } catch (RemoteException | AbstractC3539pz.Cdo e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }
}
