package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzdie extends com.google.android.gms.ads.internal.client.zzea {
    private final Object zza = new Object();
    private final com.google.android.gms.ads.internal.client.zzeb zzb;
    private final zzbpt zzc;

    public zzdie(com.google.android.gms.ads.internal.client.zzeb zzebVar, zzbpt zzbptVar) {
        this.zzb = zzebVar;
        this.zzc = zzbptVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final float zze() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final float zzf() {
        zzbpt zzbptVar = this.zzc;
        if (zzbptVar != null) {
            return zzbptVar.zzg();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final float zzg() {
        zzbpt zzbptVar = this.zzc;
        if (zzbptVar != null) {
            return zzbptVar.zzh();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final int zzh() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final com.google.android.gms.ads.internal.client.zzee zzi() {
        synchronized (this.zza) {
            com.google.android.gms.ads.internal.client.zzeb zzebVar = this.zzb;
            if (zzebVar == null) {
                return null;
            }
            return zzebVar.zzi();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final void zzj(boolean z) {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final void zzk() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final void zzl() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final void zzm(com.google.android.gms.ads.internal.client.zzee zzeeVar) {
        synchronized (this.zza) {
            com.google.android.gms.ads.internal.client.zzeb zzebVar = this.zzb;
            if (zzebVar != null) {
                zzebVar.zzm(zzeeVar);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final void zzn() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final boolean zzo() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final boolean zzp() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final boolean zzq() {
        throw new RemoteException();
    }
}
