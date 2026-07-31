package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzffh implements zzepj {
    private final Context zza;
    private final Executor zzb;
    private final zzcjn zzc;
    private final zzfey zzd;
    private final zzfdm zze;
    private final zzfgg zzf;
    private final zzflp zzg;
    private final zzfgm zzh;
    private ListenableFuture zzi;

    public zzffh(Context context, Executor executor, zzcjn zzcjnVar, zzfdm zzfdmVar, zzfey zzfeyVar, zzfgm zzfgmVar, zzfgg zzfggVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzcjnVar;
        this.zze = zzfdmVar;
        this.zzd = zzfeyVar;
        this.zzh = zzfgmVar;
        this.zzf = zzfggVar;
        this.zzg = zzcjnVar.zzx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzk, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final zzdrm zze(zzfdk zzfdkVar) {
        zzdrm zzp = this.zzc.zzp();
        zzcxw zzcxwVar = new zzcxw();
        zzcxwVar.zza(this.zza);
        zzcxwVar.zzb(((zzffg) zzfdkVar).zza);
        zzcxwVar.zzf(this.zzf);
        zzp.zzd(zzcxwVar.zze());
        zzp.zze(new zzden().zzn());
        return zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzepj
    public final boolean zza(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzeph zzephVar, zzepi zzepiVar) throws RemoteException {
        zzflm zzflmVar;
        zzbyc zzbycVar = new zzbyc(zzmVar, str);
        String str2 = zzbycVar.zzb;
        if (str2 == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Ad unit ID should not be null for rewarded video ad.");
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfff
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzffh.this.zzc();
                }
            });
            return false;
        }
        ListenableFuture listenableFuture = this.zzi;
        if (listenableFuture != null && !listenableFuture.isDone()) {
            return false;
        }
        if (((Boolean) zzbgn.zzc.zze()).booleanValue()) {
            zzfdm zzfdmVar = this.zze;
            if (zzfdmVar.zzd() != null) {
                zzflm zzd = ((zzdrn) zzfdmVar.zzd()).zzd();
                zzd.zzi(5);
                com.google.android.gms.ads.internal.client.zzm zzmVar2 = zzbycVar.zza;
                zzd.zzc(zzmVar2.zzp);
                zzd.zzd(zzmVar2.zzm);
                zzflmVar = zzd;
                Context context = this.zza;
                com.google.android.gms.ads.internal.client.zzm zzmVar3 = zzbycVar.zza;
                boolean z = zzmVar3.zzf;
                zzfhk.zzb(context, z);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjT)).booleanValue() && z) {
                    this.zzc.zzw().zzc(true);
                }
                Bundle zza = zzdus.zza(new Pair(zzduq.PUBLIC_API_CALL.zza(), Long.valueOf(zzmVar3.zzz)), new Pair(zzduq.DYNAMITE_ENTER.zza(), Long.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis())));
                zzfgm zzfgmVar = this.zzh;
                zzfgmVar.zzg(str2);
                zzfgmVar.zzc(com.google.android.gms.ads.internal.client.zzr.zzc());
                zzfgmVar.zza(zzmVar3);
                zzfgmVar.zzv(zza);
                zzfgn zzz = zzfgmVar.zzz();
                zzflc zzo = zzflc.zzo(context, zzfll.zzg(zzz), 5, zzmVar3);
                zzffg zzffgVar = new zzffg(null);
                zzffgVar.zza = zzz;
                ListenableFuture zzc = this.zze.zzc(new zzfdn(zzffgVar, null), new zzfdl() { // from class: com.google.android.gms.internal.ads.zzffe
                    @Override // com.google.android.gms.internal.ads.zzfdl
                    public final /* synthetic */ zzcxu zza(zzfdk zzfdkVar) {
                        return zzffh.this.zzd(zzfdkVar);
                    }
                }, null);
                this.zzi = zzc;
                zzgui.zzr(zzc, new zzffd(this, zzepiVar, zzflmVar, zzo, zzffgVar), this.zzb);
                return true;
            }
        }
        zzflmVar = null;
        Context context2 = this.zza;
        com.google.android.gms.ads.internal.client.zzm zzmVar32 = zzbycVar.zza;
        boolean z2 = zzmVar32.zzf;
        zzfhk.zzb(context2, z2);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjT)).booleanValue()) {
            this.zzc.zzw().zzc(true);
        }
        Bundle zza2 = zzdus.zza(new Pair(zzduq.PUBLIC_API_CALL.zza(), Long.valueOf(zzmVar32.zzz)), new Pair(zzduq.DYNAMITE_ENTER.zza(), Long.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis())));
        zzfgm zzfgmVar2 = this.zzh;
        zzfgmVar2.zzg(str2);
        zzfgmVar2.zzc(com.google.android.gms.ads.internal.client.zzr.zzc());
        zzfgmVar2.zza(zzmVar32);
        zzfgmVar2.zzv(zza2);
        zzfgn zzz2 = zzfgmVar2.zzz();
        zzflc zzo2 = zzflc.zzo(context2, zzfll.zzg(zzz2), 5, zzmVar32);
        zzffg zzffgVar2 = new zzffg(null);
        zzffgVar2.zza = zzz2;
        ListenableFuture zzc2 = this.zze.zzc(new zzfdn(zzffgVar2, null), new zzfdl() { // from class: com.google.android.gms.internal.ads.zzffe
            @Override // com.google.android.gms.internal.ads.zzfdl
            public final /* synthetic */ zzcxu zza(zzfdk zzfdkVar) {
                return zzffh.this.zzd(zzfdkVar);
            }
        }, null);
        this.zzi = zzc2;
        zzgui.zzr(zzc2, new zzffd(this, zzepiVar, zzflmVar, zzo2, zzffgVar2), this.zzb);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzepj
    public final boolean zzb() {
        throw null;
    }

    final /* synthetic */ void zzc() {
        this.zzd.zzdN(zzfhp.zzd(6, null, null));
    }

    final /* synthetic */ Executor zzf() {
        return this.zzb;
    }

    final /* synthetic */ zzfey zzg() {
        return this.zzd;
    }

    final /* synthetic */ zzfdm zzh() {
        return this.zze;
    }

    final /* synthetic */ zzflp zzi() {
        return this.zzg;
    }

    final void zzj(int i) {
        this.zzh.zzj().zza(i);
    }
}
