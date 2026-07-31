package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzbrr extends zzbam implements zzbrs {
    public zzbrr() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
    }

    public static zzbrs zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
        return queryLocalInterface instanceof zzbrs ? (zzbrs) queryLocalInterface : new zzbrq(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            IObjectWrapper zze = zze();
            parcel2.writeNoException();
            zzban.zze(parcel2, zze);
        } else {
            if (i != 2) {
                return false;
            }
            boolean zzf = zzf();
            parcel2.writeNoException();
            int i3 = zzban.zza;
            parcel2.writeInt(zzf ? 1 : 0);
        }
        return true;
    }
}
