package com.google.android.gms.internal.ads;

import android.util.Base64;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcxn implements com.google.android.gms.ads.internal.overlay.zzr {
    private final zzfgf zzc;
    private final zzffu zzd;
    private final Clock zze;
    private final zzdvi zzf;
    private final ScheduledExecutorService zzg;
    private final Object zzb = new Object();
    final zzfmg zza = zzfmh.zza();
    private boolean zzh = false;
    private boolean zzi = false;

    zzcxn(zzfgf zzfgfVar, zzffu zzffuVar, Clock clock, zzdvi zzdviVar, ScheduledExecutorService scheduledExecutorService) {
        this.zzc = zzfgfVar;
        this.zzd = zzffuVar;
        this.zze = clock;
        this.zzf = zzdviVar;
        this.zzg = scheduledExecutorService;
    }

    private final void zzn() {
        synchronized (this.zzb) {
            zzdvi zzdviVar = this.zzf;
            String str = this.zzc.zzb.zzb.zzb;
            String encodeToString = Base64.encodeToString(((zzfmh) this.zza.zzbu()).zzaN(), 1);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zznS)).booleanValue()) {
                zzdvh zza = zzdviVar.zza();
                zza.zzc("action", "pclma");
                zza.zzc("pclmd", encodeToString);
                zza.zzc("gqi", str);
                zza.zzf();
            }
        }
    }

    private final void zzo(int i) {
        synchronized (this.zzb) {
            if (!this.zzi && this.zzh) {
                zzfmg zzfmgVar = this.zza;
                zzfla zza = zzflb.zza();
                zza.zzb(i);
                zza.zza(this.zze.currentTimeMillis());
                zzfmgVar.zza((zzflb) zza.zzbu());
                if (i == 10) {
                    zzn();
                    this.zzi = true;
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdA() {
        zzo(7);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdB() {
        zzo(8);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdC() {
        zzo(6);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdD() {
        zzo(9);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdE() {
        zzo(10);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdX() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdY(int i) {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdt() {
        zzo(3);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdu() {
        zzo(5);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdv() {
        zzo(4);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzh() {
    }

    public final void zzl() {
        synchronized (this.zzb) {
            if (this.zzd.zzaE > 0 && !this.zzh) {
                this.zza.zzb(this.zze.currentTimeMillis());
                this.zzh = true;
                this.zzg.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcxm
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzcxn.this.zzm();
                    }
                }, this.zzd.zzaE, TimeUnit.MILLISECONDS);
            }
        }
    }

    final /* synthetic */ void zzm() {
        synchronized (this.zzb) {
            if (this.zzi) {
                return;
            }
            this.zzi = true;
            zzn();
        }
    }
}
