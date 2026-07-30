package com.google.android.gms.wearable.internal;

import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class zzet extends com.google.android.gms.internal.wearable.zzb implements zzeu {
    public zzet() {
        super("com.google.android.gms.wearable.internal.IChannelStreamCallbacks");
    }

    @Override // com.google.android.gms.internal.wearable.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            return false;
        }
        int readInt = parcel.readInt();
        int readInt2 = parcel.readInt();
        com.google.android.gms.internal.wearable.zzc.zzb(parcel);
        zzb(readInt, readInt2);
        parcel2.writeNoException();
        return true;
    }
}
