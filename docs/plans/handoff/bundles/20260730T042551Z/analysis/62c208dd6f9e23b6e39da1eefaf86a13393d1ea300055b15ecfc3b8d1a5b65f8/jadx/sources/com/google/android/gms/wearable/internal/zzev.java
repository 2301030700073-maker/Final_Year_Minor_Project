package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes3.dex */
public final class zzev extends com.google.android.gms.internal.wearable.zza {
    public zzev(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.wearable.internal.IRpcResponseCallback");
    }

    public final void zzd(boolean z, byte[] bArr) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zzc(zza, z);
        zza.writeByteArray(bArr);
        zzK(1, zza);
    }
}
