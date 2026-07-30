package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzblq extends zzayb implements zzblr {
    public zzblq() {
        super("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    public static zzblr zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
        return queryLocalInterface instanceof zzblr ? (zzblr) queryLocalInterface : new zzblp(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            zzf();
        } else {
            if (i != 3) {
                return false;
            }
            String readString = parcel.readString();
            zzayc.zzc(parcel);
            zze(readString);
        }
        parcel2.writeNoException();
        return true;
    }
}
