package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzbcp extends zzbam implements zzbcq {
    public zzbcp() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    public static zzbcq zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
        return queryLocalInterface instanceof zzbcq ? (zzbcq) queryLocalInterface : new zzbco(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbcn zzbclVar;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbclVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
                zzbclVar = queryLocalInterface instanceof zzbcn ? (zzbcn) queryLocalInterface : new zzbcl(readStrongBinder);
            }
            zzban.zzh(parcel);
            zzb(zzbclVar);
        } else if (i == 2) {
            parcel.readInt();
            zzban.zzh(parcel);
        } else {
            if (i != 3) {
                return false;
            }
            com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
            zzban.zzh(parcel);
            zzd(zzeVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
