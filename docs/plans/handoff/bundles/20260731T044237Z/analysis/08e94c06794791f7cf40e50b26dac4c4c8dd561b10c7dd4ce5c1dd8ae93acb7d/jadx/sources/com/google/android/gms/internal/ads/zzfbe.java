package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzfbe implements zzepj {
    protected final zzcjn zza;
    private final Context zzb;
    private final Executor zzc;
    private final zzfbu zzd;
    private final zzfdm zze;
    private final VersionInfoParcel zzf;
    private final ViewGroup zzg;
    private final zzflp zzh;
    private final zzfgm zzi;

    @Nullable
    private ListenableFuture zzj;

    protected zzfbe(Context context, Executor executor, zzcjn zzcjnVar, zzfdm zzfdmVar, zzfbu zzfbuVar, zzfgm zzfgmVar, VersionInfoParcel versionInfoParcel) {
        this.zzb = context;
        this.zzc = executor;
        this.zza = zzcjnVar;
        this.zze = zzfdmVar;
        this.zzd = zzfbuVar;
        this.zzi = zzfgmVar;
        this.zzf = versionInfoParcel;
        this.zzg = new FrameLayout(context);
        this.zzh = zzcjnVar.zzx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzm, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final synchronized zzcxu zzg(zzfdk zzfdkVar) {
        zzfbb zzfbbVar = (zzfbb) zzfdkVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzja)).booleanValue()) {
            zzcrd zzcrdVar = new zzcrd(this.zzg);
            zzcxw zzcxwVar = new zzcxw();
            zzcxwVar.zza(this.zzb);
            zzcxwVar.zzb(zzfbbVar.zza);
            zzcxx zze = zzcxwVar.zze();
            zzden zzdenVar = new zzden();
            zzfbu zzfbuVar = this.zzd;
            Executor executor = this.zzc;
            zzdenVar.zzd(zzfbuVar, executor);
            zzdenVar.zzg(zzfbuVar, executor);
            return zzc(zzcrdVar, zze, zzdenVar.zzn());
        }
        zzfbu zzn = zzfbu.zzn(this.zzd);
        zzden zzdenVar2 = new zzden();
        Executor executor2 = this.zzc;
        zzdenVar2.zzc(zzn, executor2);
        zzdenVar2.zzi(zzn, executor2);
        zzdenVar2.zzj(zzn, executor2);
        zzdenVar2.zzk(zzn, executor2);
        zzdenVar2.zzd(zzn, executor2);
        zzdenVar2.zzg(zzn, executor2);
        zzdenVar2.zzl(zzn);
        zzcrd zzcrdVar2 = new zzcrd(this.zzg);
        zzcxw zzcxwVar2 = new zzcxw();
        zzcxwVar2.zza(this.zzb);
        zzcxwVar2.zzb(zzfbbVar.zza);
        return zzc(zzcrdVar2, zzcxwVar2.zze(), zzdenVar2.zzn());
    }

    @Override // com.google.android.gms.internal.ads.zzepj
    public final synchronized boolean zza(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzeph zzephVar, zzepi zzepiVar) throws RemoteException {
        zzflm zzflmVar;
        zzcqq zzcqqVar;
        if (!zzmVar.zzb()) {
            boolean z = ((Boolean) zzbgs.zzd.zze()).booleanValue() && ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzmi)).booleanValue();
            if (this.zzf.clientJarVersion < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzmj)).intValue() || !z) {
                Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            }
        }
        if (str == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Ad unit ID should not be null for app open ad.");
            this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbd
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfbe.this.zze();
                }
            });
            return false;
        }
        if (this.zzj != null) {
            return false;
        }
        if (!((Boolean) zzbgn.zzc.zze()).booleanValue() || (zzcqqVar = (zzcqq) this.zze.zzd()) == null) {
            zzflmVar = null;
        } else {
            zzflm zzd = zzcqqVar.zzd();
            zzd.zzi(7);
            zzd.zzc(zzmVar.zzp);
            zzd.zzd(zzmVar.zzm);
            zzflmVar = zzd;
        }
        Context context = this.zzb;
        boolean z2 = zzmVar.zzf;
        zzfhk.zzb(context, z2);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjT)).booleanValue() && z2) {
            this.zza.zzw().zzc(true);
        }
        Bundle zza = zzdus.zza(new Pair(zzduq.PUBLIC_API_CALL.zza(), Long.valueOf(zzmVar.zzz)), new Pair(zzduq.DYNAMITE_ENTER.zza(), Long.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis())));
        zzfgm zzfgmVar = this.zzi;
        zzfgmVar.zzg(str);
        zzfgmVar.zzc(com.google.android.gms.ads.internal.client.zzr.zzd());
        zzfgmVar.zza(zzmVar);
        zzfgmVar.zzv(zza);
        zzfgn zzz = zzfgmVar.zzz();
        zzflc zzo = zzflc.zzo(context, zzfll.zzg(zzz), 7, zzmVar);
        zzfbb zzfbbVar = new zzfbb(null);
        zzfbbVar.zza = zzz;
        ListenableFuture zzc = this.zze.zzc(new zzfdn(zzfbbVar, null), new zzfdl() { // from class: com.google.android.gms.internal.ads.zzfbc
            @Override // com.google.android.gms.internal.ads.zzfdl
            public final /* synthetic */ zzcxu zza(zzfdk zzfdkVar) {
                return zzfbe.this.zzf(zzfdkVar);
            }
        }, null);
        this.zzj = zzc;
        zzgui.zzr(zzc, new zzfba(this, zzepiVar, zzflmVar, zzo, zzfbbVar), this.zzc);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzepj
    public final boolean zzb() {
        ListenableFuture listenableFuture = this.zzj;
        return (listenableFuture == null || listenableFuture.isDone()) ? false : true;
    }

    protected abstract zzcxu zzc(zzcrd zzcrdVar, zzcxx zzcxxVar, zzdeo zzdeoVar);

    public final void zzd(com.google.android.gms.ads.internal.client.zzx zzxVar) {
        this.zzi.zzp(zzxVar);
    }

    final /* synthetic */ void zze() {
        this.zzd.zzdN(zzfhp.zzd(6, null, null));
    }

    final /* synthetic */ Executor zzh() {
        return this.zzc;
    }

    final /* synthetic */ zzfbu zzi() {
        return this.zzd;
    }

    final /* synthetic */ zzfdm zzj() {
        return this.zze;
    }

    final /* synthetic */ zzflp zzk() {
        return this.zzh;
    }

    final /* synthetic */ void zzl(ListenableFuture listenableFuture) {
        this.zzj = null;
    }
}
