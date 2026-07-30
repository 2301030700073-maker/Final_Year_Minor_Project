package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzez;

/* loaded from: classes.dex */
public final class zzac extends zzez implements zzaa {
    public zzac(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final IObjectWrapper zzb() {
        Parcel zza = zza(1, a_());
        IObjectWrapper zza2 = zzn.zza(zza.readStrongBinder());
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final int zzc() {
        Parcel zza = zza(2, a_());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }
}
