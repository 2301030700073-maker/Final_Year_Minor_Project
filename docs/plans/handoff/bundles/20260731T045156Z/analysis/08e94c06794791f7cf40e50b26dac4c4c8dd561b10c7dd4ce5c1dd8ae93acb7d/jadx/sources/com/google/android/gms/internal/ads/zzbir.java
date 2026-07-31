package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzbir extends zzbam implements zzbis {
    public zzbir() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    public static zzbis zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
        return queryLocalInterface instanceof zzbis ? (zzbis) queryLocalInterface : new zzbiq(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            zzban.zzh(parcel);
            zzb(asInterface);
        } else if (i == 2) {
            zzc();
        } else {
            if (i != 3) {
                return false;
            }
            IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            zzban.zzh(parcel);
            zzd(asInterface2);
        }
        parcel2.writeNoException();
        return true;
    }
}
