package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzdq extends zzbu implements zzdo {
    public zzdq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.zzdo
    public final void zza(Bundle bundle) {
        Parcel a_ = a_();
        zzbw.zza(a_, bundle);
        zzb(1, a_);
    }
}
