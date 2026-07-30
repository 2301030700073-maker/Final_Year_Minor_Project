package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzaya;
import com.google.android.gms.internal.ads.zzayc;

/* loaded from: classes.dex */
public final class zzdz extends zzaya implements zzeb {
    public zzdz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final float zze() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final float zzf() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final float zzg() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final int zzh() {
        Parcel zzcZ = zzcZ(5, zza());
        int readInt = zzcZ.readInt();
        zzcZ.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final zzee zzi() {
        zzee zzecVar;
        Parcel zzcZ = zzcZ(11, zza());
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzecVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            zzecVar = queryLocalInterface instanceof zzee ? (zzee) queryLocalInterface : new zzec(readStrongBinder);
        }
        zzcZ.recycle();
        return zzecVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final void zzj(boolean z) {
        Parcel zza = zza();
        int i = zzayc.zza;
        zza.writeInt(z ? 1 : 0);
        zzda(3, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final void zzk() {
        zzda(2, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final void zzl() {
        zzda(1, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final void zzm(zzee zzeeVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzeeVar);
        zzda(8, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final void zzn() {
        zzda(13, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final boolean zzo() {
        Parcel zzcZ = zzcZ(12, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final boolean zzp() {
        Parcel zzcZ = zzcZ(10, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final boolean zzq() {
        Parcel zzcZ = zzcZ(4, zza());
        boolean zzg = zzayc.zzg(zzcZ);
        zzcZ.recycle();
        return zzg;
    }
}
