package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.google.android.gms.ads.admanager.AppEventListener;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeot implements AppEventListener, zzdbu, zzdac, zzcyr, zzczi, com.google.android.gms.ads.internal.client.zza, zzcyo, zzdbf, zzcze, zzdgv {
    final zzdvi zza;
    private final AtomicReference zzc = new AtomicReference();
    private final AtomicReference zzd = new AtomicReference();
    private final AtomicReference zze = new AtomicReference();
    private final AtomicReference zzf = new AtomicReference();
    private final AtomicReference zzg = new AtomicReference();
    private final AtomicBoolean zzh = new AtomicBoolean(true);
    private final AtomicBoolean zzi = new AtomicBoolean(false);
    private final AtomicBoolean zzj = new AtomicBoolean(false);
    final BlockingQueue zzb = new ArrayBlockingQueue(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjQ)).intValue());

    public zzeot(zzdvi zzdviVar) {
        this.zza = zzdviVar;
    }

    private final void zzr() {
        if (this.zzi.get() && this.zzj.get()) {
            BlockingQueue<Pair> blockingQueue = this.zzb;
            for (final Pair pair : blockingQueue) {
                zzfdb.zza(this.zzd, new zzfda() { // from class: com.google.android.gms.internal.ads.zzeoe
                    @Override // com.google.android.gms.internal.ads.zzfda
                    public final /* synthetic */ void zza(Object obj) {
                        Pair pair2 = pair;
                        ((com.google.android.gms.ads.internal.client.zzco) obj).zzb((String) pair2.first, (String) pair2.second);
                    }
                });
            }
            blockingQueue.clear();
            this.zzh.set(false);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzlM)).booleanValue()) {
            return;
        }
        zzfdb.zza(this.zzc, zzeoj.zza);
    }

    @Override // com.google.android.gms.ads.admanager.AppEventListener
    public final synchronized void onAppEvent(final String str, final String str2) {
        if (!this.zzh.get()) {
            zzfdb.zza(this.zzd, new zzfda() { // from class: com.google.android.gms.internal.ads.zzeoc
                @Override // com.google.android.gms.internal.ads.zzfda
                public final /* synthetic */ void zza(Object obj) {
                    ((com.google.android.gms.ads.internal.client.zzco) obj).zzb(str, str2);
                }
            });
            return;
        }
        if (!this.zzb.offer(new Pair(str, str2))) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("The queue for app events is full, dropping the new event.");
            zzdvi zzdviVar = this.zza;
            if (zzdviVar != null) {
                zzdvh zza = zzdviVar.zza();
                zza.zzc("action", "dae_action");
                zza.zzc("dae_name", str);
                zza.zzc("dae_data", str2);
                zza.zzd();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyo
    public final void zzd(zzbxv zzbxvVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzcyr
    public final void zzdN(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzfda zzfdaVar = new zzfda() { // from class: com.google.android.gms.internal.ads.zzeof
            @Override // com.google.android.gms.internal.ads.zzfda
            public final /* synthetic */ void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).zzd(com.google.android.gms.ads.internal.client.zze.this);
            }
        };
        AtomicReference atomicReference = this.zzc;
        zzfdb.zza(atomicReference, zzfdaVar);
        zzfdb.zza(atomicReference, new zzfda() { // from class: com.google.android.gms.internal.ads.zzenz
            @Override // com.google.android.gms.internal.ads.zzfda
            public final /* synthetic */ void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).zzc(com.google.android.gms.ads.internal.client.zze.this.zza);
            }
        });
        zzfdb.zza(this.zzf, new zzfda() { // from class: com.google.android.gms.internal.ads.zzeoa
            @Override // com.google.android.gms.internal.ads.zzfda
            public final /* synthetic */ void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbn) obj).zzc(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
        this.zzh.set(false);
        this.zzb.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzcyo
    public final void zzdO() {
        zzfdb.zza(this.zzc, zzeog.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbu
    public final void zzdT(zzbxj zzbxjVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdbu
    public final void zzdU(zzfgf zzfgfVar) {
        this.zzh.set(true);
        this.zzj.set(false);
    }

    @Override // com.google.android.gms.internal.ads.zzdgv
    public final void zzdV() {
        zzfdb.zza(this.zzc, zzeok.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzczi
    public final void zzdw() {
        zzfdb.zza(this.zzc, zzeom.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcyo
    public final void zzdx() {
        zzfdb.zza(this.zzc, zzeon.zza);
        zzfdb.zza(this.zzg, zzeos.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcyo
    public final void zzdy() {
        zzfdb.zza(this.zzc, zzeoi.zza);
        AtomicReference atomicReference = this.zzg;
        zzfdb.zza(atomicReference, zzeop.zza);
        zzfdb.zza(atomicReference, zzeoq.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdgv
    public final void zzdz() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzlM)).booleanValue()) {
            zzfdb.zza(this.zzc, zzeol.zza);
        }
        zzfdb.zza(this.zzg, zzeor.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcyo
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzcyo
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzdac
    public final synchronized void zzg() {
        zzfdb.zza(this.zzc, zzeoh.zza);
        zzfdb.zza(this.zzf, zzeoo.zza);
        this.zzj.set(true);
        zzr();
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzbk zzi() {
        return (com.google.android.gms.ads.internal.client.zzbk) this.zzc.get();
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final void zzj(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzfdb.zza(this.zzg, new zzfda() { // from class: com.google.android.gms.internal.ads.zzeod
            @Override // com.google.android.gms.internal.ads.zzfda
            public final /* synthetic */ void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzcv) obj).zzb(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzco zzk() {
        return (com.google.android.gms.ads.internal.client.zzco) this.zzd.get();
    }

    public final void zzl(com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        this.zzc.set(zzbkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void zzm(final com.google.android.gms.ads.internal.client.zzt zztVar) {
        zzfdb.zza(this.zze, new zzfda() { // from class: com.google.android.gms.internal.ads.zzeob
            @Override // com.google.android.gms.internal.ads.zzfda
            public final /* synthetic */ void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzdt) obj).zze(com.google.android.gms.ads.internal.client.zzt.this);
            }
        });
    }

    public final void zzn(com.google.android.gms.ads.internal.client.zzco zzcoVar) {
        this.zzd.set(zzcoVar);
        this.zzi.set(true);
        zzr();
    }

    public final void zzo(com.google.android.gms.ads.internal.client.zzdt zzdtVar) {
        this.zze.set(zzdtVar);
    }

    public final void zzp(com.google.android.gms.ads.internal.client.zzbn zzbnVar) {
        this.zzf.set(zzbnVar);
    }

    public final void zzq(com.google.android.gms.ads.internal.client.zzcv zzcvVar) {
        this.zzg.set(zzcvVar);
    }
}
