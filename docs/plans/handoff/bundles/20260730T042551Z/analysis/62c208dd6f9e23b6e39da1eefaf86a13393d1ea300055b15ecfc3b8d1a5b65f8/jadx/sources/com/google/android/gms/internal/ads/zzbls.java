package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbls extends zzaya implements zzblu {
    public zzbls(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzblu
    public final void zzb(List list) {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzda(1, zza);
    }
}
