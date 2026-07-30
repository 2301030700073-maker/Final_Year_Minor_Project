package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzbyq extends zzayb implements zzbyr {
    public zzbyq() {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            parcel.readString();
            parcel.readString();
            zzayc.zzc(parcel);
        } else if (i == 2) {
            String readString = parcel.readString();
            zzayc.zzc(parcel);
            zzb(readString);
        } else {
            if (i != 3) {
                return false;
            }
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            Bundle bundle = (Bundle) zzayc.zza(parcel, Bundle.CREATOR);
            zzayc.zzc(parcel);
            zzc(readString2, readString3, bundle);
        }
        parcel2.writeNoException();
        return true;
    }
}
