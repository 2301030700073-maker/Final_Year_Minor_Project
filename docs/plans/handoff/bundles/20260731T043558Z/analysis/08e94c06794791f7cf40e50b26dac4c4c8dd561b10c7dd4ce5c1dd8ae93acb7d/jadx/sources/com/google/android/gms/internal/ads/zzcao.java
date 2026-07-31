package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzcao extends zzbam implements zzcap {
    public zzcao() {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            parcel.readString();
            parcel.readString();
            zzban.zzh(parcel);
        } else if (i == 2) {
            String readString = parcel.readString();
            zzban.zzh(parcel);
            zzb(readString);
        } else {
            if (i != 3) {
                return false;
            }
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            Bundle bundle = (Bundle) zzban.zzb(parcel, Bundle.CREATOR);
            zzban.zzh(parcel);
            zzc(readString2, readString3, bundle);
        }
        parcel2.writeNoException();
        return true;
    }
}
