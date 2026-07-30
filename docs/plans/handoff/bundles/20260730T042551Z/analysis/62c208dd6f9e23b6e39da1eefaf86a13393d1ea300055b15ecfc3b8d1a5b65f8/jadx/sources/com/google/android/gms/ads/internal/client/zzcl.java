package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayb;
import com.google.android.gms.internal.ads.zzayc;

/* loaded from: classes.dex */
public abstract class zzcl extends zzayb implements zzcm {
    public zzcl() {
        super("com.google.android.gms.ads.internal.client.IAppEventListener");
    }

    public static zzcm zzd(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
        return queryLocalInterface instanceof zzcm ? (zzcm) queryLocalInterface : new zzck(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        String readString = parcel.readString();
        String readString2 = parcel.readString();
        zzayc.zzc(parcel);
        zzc(readString, readString2);
        parcel2.writeNoException();
        return true;
    }
}
