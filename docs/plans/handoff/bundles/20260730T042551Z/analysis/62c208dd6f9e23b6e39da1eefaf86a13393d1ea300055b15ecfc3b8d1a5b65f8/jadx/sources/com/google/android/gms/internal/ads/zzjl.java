package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.view.SurfaceHolder;
import android.view.TextureView;

/* loaded from: classes.dex */
final class zzjl implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, zzabc, zzpf, zzwm, zzte, zzhp, zzhk {
    public static final /* synthetic */ int zzb = 0;
    final /* synthetic */ zzjp zza;

    public /* synthetic */ zzjl(zzjp zzjpVar, zzjo zzjoVar) {
        this.zza = zzjpVar;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zzjp.zzK(this.zza, surfaceTexture);
        this.zza.zzZ(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.zza.zzac(null);
        this.zza.zzZ(0, 0);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        this.zza.zzZ(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        this.zza.zzZ(i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.zza.zzZ(0, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final void zza(Exception exc) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzv(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final void zzb(String str, long j, long j2) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzw(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final void zzc(String str) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzx(str);
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final void zzd(zzhs zzhsVar) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzy(zzhsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final void zze(zzhs zzhsVar) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzz(zzhsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final void zzf(zzab zzabVar, zzht zzhtVar) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzA(zzabVar, zzhtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final void zzg(long j) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzB(j);
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final void zzh(Exception exc) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzC(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final void zzi(zzpg zzpgVar) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzD(zzpgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final void zzj(zzpg zzpgVar) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzE(zzpgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final void zzk(int i, long j, long j2) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzF(i, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzabc
    public final void zzl(int i, long j) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzG(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzabc
    public final void zzm(Object obj, long j) {
        zzlt zzltVar;
        Object obj2;
        zzdn zzdnVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzH(obj, j);
        zzjp zzjpVar = this.zza;
        obj2 = zzjpVar.zzF;
        if (obj2 == obj) {
            zzdnVar = zzjpVar.zzl;
            zzdnVar.zzd(26, new zzdk() { // from class: com.google.android.gms.internal.ads.zzjk
                @Override // com.google.android.gms.internal.ads.zzdk
                public final void zza(Object obj3) {
                }
            });
            zzdnVar.zzc();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpf
    public final void zzn(final boolean z) {
        boolean z2;
        zzdn zzdnVar;
        zzjp zzjpVar = this.zza;
        z2 = zzjpVar.zzM;
        if (z2 == z) {
            return;
        }
        zzjpVar.zzM = z;
        zzdnVar = this.zza.zzl;
        zzdnVar.zzd(23, new zzdk() { // from class: com.google.android.gms.internal.ads.zzji
            @Override // com.google.android.gms.internal.ads.zzdk
            public final void zza(Object obj) {
                ((zzbh) obj).zzn(z);
            }
        });
        zzdnVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzabc
    public final void zzo(Exception exc) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzJ(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzabc
    public final void zzp(String str, long j, long j2) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzK(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzabc
    public final void zzq(String str) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzL(str);
    }

    @Override // com.google.android.gms.internal.ads.zzabc
    public final void zzr(zzhs zzhsVar) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzM(zzhsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzabc
    public final void zzs(zzhs zzhsVar) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzN(zzhsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzabc
    public final void zzt(long j, int i) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzO(j, i);
    }

    @Override // com.google.android.gms.internal.ads.zzabc
    public final void zzu(zzab zzabVar, zzht zzhtVar) {
        zzlt zzltVar;
        zzltVar = this.zza.zzq;
        zzltVar.zzP(zzabVar, zzhtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzabc
    public final void zzv(final zzcd zzcdVar) {
        zzdn zzdnVar;
        zzdnVar = this.zza.zzl;
        zzdnVar.zzd(25, new zzdk() { // from class: com.google.android.gms.internal.ads.zzjj
            @Override // com.google.android.gms.internal.ads.zzdk
            public final void zza(Object obj) {
                ((zzbh) obj).zzr(zzcd.this);
            }
        });
        zzdnVar.zzc();
    }
}
