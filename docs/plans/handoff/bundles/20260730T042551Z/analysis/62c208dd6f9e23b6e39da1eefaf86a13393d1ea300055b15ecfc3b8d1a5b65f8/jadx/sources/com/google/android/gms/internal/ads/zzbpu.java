package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzbpu extends com.google.android.gms.ads.internal.client.zzea {
    private final Object zza = new Object();
    private volatile com.google.android.gms.ads.internal.client.zzee zzb;

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final float zze() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final float zzf() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final float zzg() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final int zzh() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzeb
    public final com.google.android.gms.ads.internal.client.zzee zzi() {
        com.google.android.gms.ads.internal.client.zzee zzeeVar;
        synchronized (this.zza) {
            zzeeVar = this.zzb;
        }
        return zzeeVar;
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
            this.zzb = zzeeVar;
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
