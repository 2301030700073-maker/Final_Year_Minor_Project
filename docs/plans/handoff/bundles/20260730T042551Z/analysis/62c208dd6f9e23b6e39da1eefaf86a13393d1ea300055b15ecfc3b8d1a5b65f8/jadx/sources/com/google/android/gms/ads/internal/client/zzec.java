package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzaya;
import com.google.android.gms.internal.ads.zzayc;

/* loaded from: classes.dex */
public final class zzec extends zzaya implements zzee {
    public zzec(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.ads.internal.client.zzee
    public final void zze() {
        zzda(4, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzee
    public final void zzf(boolean z) {
        Parcel zza = zza();
        int i = zzayc.zza;
        zza.writeInt(z ? 1 : 0);
        zzda(5, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzee
    public final void zzg() {
        zzda(3, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzee
    public final void zzh() {
        zzda(2, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzee
    public final void zzi() {
        zzda(1, zza());
    }
}
