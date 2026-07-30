package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.InterfaceFutureC3942wq;
import j$.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzeya implements zzeld {
    private final Context zza;
    private final Executor zzb;
    private final zzcgx zzc;
    private final zzekn zzd;
    private final zzekr zze;
    private final ViewGroup zzf;
    private zzbdg zzg;
    private final zzcyl zzh;
    private final zzfhk zzi;
    private final zzdar zzj;
    private final zzfch zzk;
    private InterfaceFutureC3942wq zzl;
    private boolean zzm;
    private com.google.android.gms.ads.internal.client.zze zzn;
    private zzelc zzo;

    public zzeya(Context context, Executor executor, com.google.android.gms.ads.internal.client.zzs zzsVar, zzcgx zzcgxVar, zzekn zzeknVar, zzekr zzekrVar, zzfch zzfchVar, zzdar zzdarVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzcgxVar;
        this.zzd = zzeknVar;
        this.zze = zzekrVar;
        this.zzk = zzfchVar;
        this.zzh = zzcgxVar.zzf();
        this.zzi = zzcgxVar.zzz();
        this.zzf = new FrameLayout(context);
        this.zzj = zzdarVar;
        zzfchVar.zzs(zzsVar);
        this.zzm = true;
        this.zzn = null;
        this.zzo = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzt() {
        this.zzl = null;
        final com.google.android.gms.ads.internal.client.zze zzeVar = this.zzn;
        this.zzn = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhZ)).booleanValue() && zzeVar != null) {
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzexw
                @Override // java.lang.Runnable
                public final void run() {
                    zzeya.this.zzj(zzeVar);
                }
            });
        }
        zzelc zzelcVar = this.zzo;
        if (zzelcVar != null) {
            zzelcVar.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeld
    public final boolean zza() {
        InterfaceFutureC3942wq interfaceFutureC3942wq = this.zzl;
        return (interfaceFutureC3942wq == null || interfaceFutureC3942wq.isDone()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeld
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzelb zzelbVar, zzelc zzelcVar) {
        zzcpq zzh;
        if (str == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Ad unit ID should not be null for banner ad.");
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzexy
                @Override // java.lang.Runnable
                public final void run() {
                    zzeya.this.zzk();
                }
            });
            return false;
        }
        if (!zza()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziN)).booleanValue() && zzmVar.zzf) {
                this.zzc.zzl().zzo(true);
            }
            Bundle zza = zzdrg.zza(new Pair(zzdre.PUBLIC_API_CALL.zza(), Long.valueOf(zzmVar.zzz)), new Pair(zzdre.DYNAMITE_ENTER.zza(), Long.valueOf(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis())));
            zzfch zzfchVar = this.zzk;
            zzfchVar.zzt(str);
            zzfchVar.zzH(zzmVar);
            zzfchVar.zzA(zza);
            Context context = this.zza;
            zzfcj zzJ = zzfchVar.zzJ();
            zzfgw zzb = zzfgv.zzb(context, zzfhg.zzf(zzJ), 3, zzmVar);
            zzfhh zzfhhVar = null;
            if (!((Boolean) zzber.zzd.zze()).booleanValue() || !this.zzk.zzh().zzk) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhZ)).booleanValue()) {
                    zzcpp zze = this.zzc.zze();
                    zzcva zzcvaVar = new zzcva();
                    zzcvaVar.zzf(this.zza);
                    zzcvaVar.zzk(zzJ);
                    zze.zzi(zzcvaVar.zzl());
                    zzdbk zzdbkVar = new zzdbk();
                    zzdbkVar.zzj(this.zzd, this.zzb);
                    zzdbkVar.zzk(this.zzd, this.zzb);
                    zze.zzf(zzdbkVar.zzn());
                    zze.zze(new zzeiw(this.zzg));
                    zze.zzd(new zzdgl(zzdiq.zza, null));
                    zze.zzg(new zzcqr(this.zzh, this.zzj));
                    zze.zzc(new zzcoj(this.zzf));
                    zzh = zze.zzh();
                } else {
                    zzcpp zze2 = this.zzc.zze();
                    zzcva zzcvaVar2 = new zzcva();
                    zzcvaVar2.zzf(this.zza);
                    zzcvaVar2.zzk(zzJ);
                    zze2.zzi(zzcvaVar2.zzl());
                    zzdbk zzdbkVar2 = new zzdbk();
                    zzdbkVar2.zzj(this.zzd, this.zzb);
                    zzdbkVar2.zza(this.zzd, this.zzb);
                    zzdbkVar2.zza(this.zze, this.zzb);
                    zzdbkVar2.zzl(this.zzd, this.zzb);
                    zzdbkVar2.zzd(this.zzd, this.zzb);
                    zzdbkVar2.zze(this.zzd, this.zzb);
                    zzdbkVar2.zzf(this.zzd, this.zzb);
                    zzdbkVar2.zzb(this.zzd, this.zzb);
                    zzdbkVar2.zzk(this.zzd, this.zzb);
                    zzdbkVar2.zzi(this.zzd, this.zzb);
                    zze2.zzf(zzdbkVar2.zzn());
                    zze2.zze(new zzeiw(this.zzg));
                    zze2.zzd(new zzdgl(zzdiq.zza, null));
                    zze2.zzg(new zzcqr(this.zzh, this.zzj));
                    zze2.zzc(new zzcoj(this.zzf));
                    zzh = zze2.zzh();
                }
                if (((Boolean) zzbee.zzc.zze()).booleanValue()) {
                    zzfhhVar = zzh.zzj();
                    zzfhhVar.zzi(3);
                    zzfhhVar.zzb(zzmVar.zzp);
                    zzfhhVar.zzf(zzmVar.zzm);
                }
                this.zzo = zzelcVar;
                zzcsd zzd = zzh.zzd();
                InterfaceFutureC3942wq zzh2 = zzd.zzh(zzd.zzi());
                this.zzl = zzh2;
                zzgch.zzr(zzh2, new zzexz(this, zzfhhVar, zzb, zzh), this.zzb);
                return true;
            }
            zzekn zzeknVar = this.zzd;
            if (zzeknVar != null) {
                zzeknVar.zzdz(zzfdk.zzd(7, null, null));
            }
        } else if (!this.zzk.zzS()) {
            this.zzm = true;
        }
        return false;
    }

    public final ViewGroup zzc() {
        return this.zzf;
    }

    public final zzfch zzf() {
        return this.zzk;
    }

    public final /* synthetic */ void zzj(com.google.android.gms.ads.internal.client.zze zzeVar) {
        this.zzd.zzdz(zzeVar);
    }

    public final /* synthetic */ void zzk() {
        this.zzd.zzdz(zzfdk.zzd(6, null, null));
    }

    public final void zzl() {
        this.zzh.zzd(this.zzj.zzc());
    }

    public final void zzm() {
        this.zzh.zze(this.zzj.zzd());
    }

    public final void zzn(com.google.android.gms.ads.internal.client.zzbi zzbiVar) {
        this.zze.zza(zzbiVar);
    }

    public final void zzo(zzcyf zzcyfVar) {
        this.zzh.zzo(zzcyfVar, this.zzb);
    }

    public final void zzp(zzbdg zzbdgVar) {
        this.zzg = zzbdgVar;
    }

    public final void zzq() {
        synchronized (this) {
            InterfaceFutureC3942wq interfaceFutureC3942wq = this.zzl;
            if (interfaceFutureC3942wq != null && interfaceFutureC3942wq.isDone()) {
                try {
                    zzcom zzcomVar = (zzcom) this.zzl.get();
                    this.zzl = null;
                    this.zzf.removeAllViews();
                    if (zzcomVar.zzd() != null) {
                        ViewParent parent = zzcomVar.zzd().getParent();
                        if (parent instanceof ViewGroup) {
                            String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                            if (zzcomVar.zzm() != null) {
                                str = zzcomVar.zzm().zzg();
                            }
                            com.google.android.gms.ads.internal.util.client.zzo.zzj("Banner view provided from " + str + " already has a parent view. Removing its old parent.");
                            ((ViewGroup) parent).removeView(zzcomVar.zzd());
                        }
                    }
                    zzbcc zzbccVar = zzbcl.zzhZ;
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
                        zzczz zzo = zzcomVar.zzo();
                        zzo.zza(this.zzd);
                        zzo.zzc(this.zze);
                    }
                    this.zzf.addView(zzcomVar.zzd());
                    zzelc zzelcVar = this.zzo;
                    if (zzelcVar != null) {
                        zzelcVar.zzb(zzcomVar);
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
                        Executor executor = this.zzb;
                        final zzekn zzeknVar = this.zzd;
                        Objects.requireNonNull(zzeknVar);
                        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzexx
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzekn.this.zzs();
                            }
                        });
                    }
                    if (zzcomVar.zza() >= 0) {
                        this.zzm = false;
                        this.zzh.zzd(zzcomVar.zza());
                        this.zzh.zze(zzcomVar.zzc());
                    } else {
                        this.zzm = true;
                        this.zzh.zzd(zzcomVar.zzc());
                    }
                } catch (InterruptedException | ExecutionException e) {
                    zzt();
                    com.google.android.gms.ads.internal.util.zze.zzb("Error occurred while refreshing the ad. Making a new ad request.", e);
                    this.zzm = true;
                    this.zzh.zza();
                }
            } else if (this.zzl != null) {
                com.google.android.gms.ads.internal.util.zze.zza("Show timer went off but there is an ongoing ad request.");
                this.zzm = true;
            } else {
                com.google.android.gms.ads.internal.util.zze.zza("No ad request was in progress or an ad was cached when show timer went off. Hence requesting a new ad.");
                this.zzm = true;
                this.zzh.zza();
            }
        }
    }

    public final boolean zzs() {
        Object parent = this.zzf.getParent();
        if (!(parent instanceof View)) {
            return false;
        }
        View view = (View) parent;
        com.google.android.gms.ads.internal.zzv.zzq();
        return com.google.android.gms.ads.internal.util.zzs.zzW(view, view.getContext());
    }
}
