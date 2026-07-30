package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
final class zzcig extends zzeuu {
    private final zzevx zza;
    private final zzcih zzb;
    private final zzhfa zzc;
    private final zzhfa zzd;
    private final zzhfa zze;
    private final zzhfa zzf;
    private final zzhfa zzg;
    private final zzhfa zzh;
    private final zzhfa zzi;
    private final zzhfa zzj;
    private final zzhfa zzk;
    private final zzhfa zzl;
    private final zzhfa zzm;
    private final zzhfa zzn;
    private final zzhfa zzo;
    private final zzhfa zzp;
    private final zzhfa zzq;
    private final zzhfa zzr;
    private final zzhfa zzs;
    private final zzhfa zzt;
    private final zzhfa zzu;
    private final zzhfa zzv;
    private final zzhfa zzw;
    private final zzhfa zzx;
    private final zzhfa zzy;

    public /* synthetic */ zzcig(zzcih zzcihVar, zzevx zzevxVar, zzcjm zzcjmVar) {
        zzhfa zzhfaVar;
        zzckt zzcktVar;
        zzhfa zzhfaVar2;
        zzhfa zzhfaVar3;
        zzckn zzcknVar;
        zzhfa zzhfaVar4;
        zzckp zzckpVar;
        zzckr zzckrVar;
        zzhfa zzhfaVar5;
        zzhfa zzhfaVar6;
        zzhfa zzhfaVar7;
        zzckv zzckvVar;
        zzhfa zzhfaVar8;
        zzckl zzcklVar;
        zzhfa zzhfaVar9;
        zzhfa zzhfaVar10;
        zzhfa zzhfaVar11;
        zzhfa zzhfaVar12;
        this.zzb = zzcihVar;
        this.zza = zzevxVar;
        zzhfaVar = zzcihVar.zzz;
        this.zzc = zzheq.zzc(new zzfhi(zzhfaVar));
        zzevz zzevzVar = new zzevz(zzevxVar);
        this.zzd = zzevzVar;
        zzewa zzewaVar = new zzewa(zzevxVar);
        this.zze = zzewaVar;
        zzewc zzewcVar = new zzewc(zzevxVar);
        this.zzf = zzewcVar;
        zzcktVar = zzcks.zza;
        zzhfaVar2 = zzcihVar.zzh;
        zzhfaVar3 = zzcihVar.zze;
        this.zzg = new zzeut(zzcktVar, zzhfaVar2, zzhfaVar3, zzffh.zza(), zzevzVar, zzewaVar, zzewcVar);
        zzcknVar = zzckm.zza;
        zzffh zza = zzffh.zza();
        zzhfaVar4 = zzcihVar.zzh;
        this.zzh = new zzevh(zzcknVar, zza, zzhfaVar4);
        zzevy zzevyVar = new zzevy(zzevxVar);
        this.zzi = zzevyVar;
        zzckpVar = zzcko.zza;
        this.zzj = new zzevp(zzckpVar, zzffh.zza(), zzevyVar);
        zzckrVar = zzckq.zza;
        zzhfaVar5 = zzcihVar.zze;
        zzhfaVar6 = zzcihVar.zzh;
        this.zzk = new zzevw(zzckrVar, zzhfaVar5, zzhfaVar6);
        this.zzl = new zzewn(zzffh.zza());
        zzewb zzewbVar = new zzewb(zzevxVar);
        this.zzm = zzewbVar;
        zzhfaVar7 = zzcihVar.zzal;
        zzckvVar = zzcku.zza;
        zzffh zza2 = zzffh.zza();
        zzhfaVar8 = zzcihVar.zze;
        this.zzn = new zzewj(zzhfaVar7, zzewbVar, zzewcVar, zzckvVar, zza2, zzevyVar, zzhfaVar8);
        zzcklVar = zzckk.zza;
        zzhfaVar9 = zzcihVar.zzal;
        zzhfaVar10 = zzcihVar.zze;
        this.zzo = new zzevd(zzevyVar, zzcklVar, zzhfaVar9, zzhfaVar10, zzffh.zza());
        zzewd zzewdVar = new zzewd(zzevxVar);
        this.zzp = zzewdVar;
        zzhfa zzc = zzheq.zzc(zzdqq.zza());
        this.zzq = zzc;
        zzhfa zzc2 = zzheq.zzc(zzdqo.zza());
        this.zzr = zzc2;
        zzhfa zzc3 = zzheq.zzc(zzdqs.zza());
        this.zzs = zzc3;
        zzhfa zzc4 = zzheq.zzc(zzdqu.zza());
        this.zzt = zzc4;
        zzheu zzc5 = zzhev.zzc(4);
        zzc5.zzb(zzfgh.GMS_SIGNALS, zzc);
        zzc5.zzb(zzfgh.BUILD_URL, zzc2);
        zzc5.zzb(zzfgh.HTTP, zzc3);
        zzc5.zzb(zzfgh.PRE_PROCESS, zzc4);
        zzhev zzc6 = zzc5.zzc();
        this.zzu = zzc6;
        zzhfaVar11 = zzcihVar.zzh;
        zzhfa zzc7 = zzheq.zzc(new zzdqv(zzewdVar, zzhfaVar11, zzffh.zza(), zzc6));
        this.zzv = zzc7;
        zzhfe zza3 = zzhff.zza(0, 1);
        zza3.zza(zzc7);
        zzhff zzc8 = zza3.zzc();
        this.zzw = zzc8;
        zzfgq zzfgqVar = new zzfgq(zzc8);
        this.zzx = zzfgqVar;
        zzffh zza4 = zzffh.zza();
        zzhfaVar12 = zzcihVar.zze;
        this.zzy = zzheq.zzc(new zzfgp(zza4, zzhfaVar12, zzfgqVar));
    }

    private final zzeux zze() {
        zzevx zzevxVar = this.zza;
        zzbzd zza = zzckt.zza();
        zzgcs zzc = zzffh.zzc();
        String zzd = zzevxVar.zzd();
        zzevx zzevxVar2 = this.zza;
        return new zzeux(zza, zzc, zzd, zzevxVar2.zzb(), zzevxVar2.zza());
    }

    private final zzevr zzf() {
        zzevx zzevxVar = this.zza;
        zzbbu zza = zzcki.zza();
        zzgcs zzc = zzffh.zzc();
        List zzf = zzevxVar.zzf();
        zzhez.zzb(zzf);
        return new zzevr(zza, zzc, zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzeuu
    public final zzetu zza() {
        zzcha zzchaVar;
        zzhfa zzhfaVar;
        zzhfa zzhfaVar2;
        zzchaVar = this.zzb.zza;
        Context zzc = zzche.zzc(zzchaVar);
        zzcih zzcihVar = this.zzb;
        zzbza zza = zzckp.zza();
        zzbzb zza2 = zzckv.zza();
        zzhfaVar = zzcihVar.zzbo;
        Object zzb = zzhfaVar.zzb();
        zzhfa zzhfaVar3 = this.zzc;
        zzhfa zzhfaVar4 = this.zzo;
        zzhfa zzhfaVar5 = this.zzn;
        zzhfa zzhfaVar6 = this.zzl;
        zzhfa zzhfaVar7 = this.zzk;
        zzhfa zzhfaVar8 = this.zzj;
        zzhfa zzhfaVar9 = this.zzh;
        zzhfa zzhfaVar10 = this.zzg;
        zzeux zze = zze();
        zzevr zzf = zzf();
        zzhel zza3 = zzheq.zza(zzhfaVar10);
        zzhel zza4 = zzheq.zza(zzhfaVar9);
        zzhel zza5 = zzheq.zza(zzhfaVar8);
        zzhel zza6 = zzheq.zza(zzhfaVar7);
        zzhel zza7 = zzheq.zza(zzhfaVar6);
        zzhel zza8 = zzheq.zza(zzhfaVar5);
        zzhel zza9 = zzheq.zza(zzhfaVar4);
        zzgcs zzc2 = zzffh.zzc();
        zzfhh zzfhhVar = (zzfhh) zzhfaVar3.zzb();
        zzhfaVar2 = this.zzb.zzM;
        return zzewe.zza(zzc, zza, zza2, zzb, zze, zzf, zza3, zza4, zza5, zza6, zza7, zza8, zza9, zzc2, zzfhhVar, (zzdrw) zzhfaVar2.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzeuu
    public final zzetu zzb() {
        zzcha zzchaVar;
        zzhfa zzhfaVar;
        zzhfa zzhfaVar2;
        zzcha zzchaVar2;
        zzhfa zzhfaVar3;
        zzcha zzchaVar3;
        zzhfa zzhfaVar4;
        zzhfa zzhfaVar5;
        zzhfa zzhfaVar6;
        zzcha zzchaVar4;
        zzhfa zzhfaVar7;
        zzhfa zzhfaVar8;
        zzhfa zzhfaVar9;
        zzhfa zzhfaVar10;
        zzchaVar = this.zzb.zza;
        Context zzc = zzche.zzc(zzchaVar);
        zzevx zzevxVar = this.zza;
        zzgcs zzc2 = zzffh.zzc();
        zzevn zzevnVar = new zzevn(zzckp.zza(), zzffh.zzc(), zzevy.zzc(zzevxVar));
        zzhfaVar = this.zzb.zze;
        zzesd zzesdVar = new zzesd(zzevnVar, 0L, (ScheduledExecutorService) zzhfaVar.zzb());
        zzcih zzcihVar = this.zzb;
        zzbti zza = zzckr.zza();
        zzhfaVar2 = zzcihVar.zze;
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) zzhfaVar2.zzb();
        zzchaVar2 = this.zzb.zza;
        zzevu zzevuVar = new zzevu(zza, scheduledExecutorService, zzche.zzc(zzchaVar2));
        zzhfaVar3 = this.zzb.zze;
        zzesd zzesdVar2 = new zzesd(zzevuVar, ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzek)).longValue(), (ScheduledExecutorService) zzhfaVar3.zzb());
        zzcih zzcihVar2 = this.zzb;
        zzbzd zza2 = zzckt.zza();
        zzchaVar3 = zzcihVar2.zza;
        Context zzc3 = zzche.zzc(zzchaVar3);
        zzhfaVar4 = this.zzb.zze;
        ScheduledExecutorService scheduledExecutorService2 = (ScheduledExecutorService) zzhfaVar4.zzb();
        zzevx zzevxVar2 = this.zza;
        zzeur zza3 = zzeut.zza(zza2, zzc3, scheduledExecutorService2, zzffh.zzc(), zzevxVar2.zza(), zzewa.zzc(zzevxVar2), zzewc.zzc(zzevxVar2));
        zzhfaVar5 = this.zzb.zze;
        zzesd zzesdVar3 = new zzesd(zza3, 0L, (ScheduledExecutorService) zzhfaVar5.zzb());
        zzewl zzewlVar = new zzewl(zzffh.zzc());
        zzhfaVar6 = this.zzb.zze;
        zzesd zzesdVar4 = new zzesd(zzewlVar, 0L, (ScheduledExecutorService) zzhfaVar6.zzb());
        zzcih zzcihVar3 = this.zzb;
        zzbay zza4 = zzckn.zza();
        zzgcs zzc4 = zzffh.zzc();
        zzchaVar4 = zzcihVar3.zza;
        zzevf zzevfVar = new zzevf(zza4, zzc4, zzche.zzc(zzchaVar4));
        zzevr zzf = zzf();
        zzhfaVar7 = this.zzb.zzbo;
        String zzc5 = zzevy.zzc(this.zza);
        zzbam zza5 = zzckl.zza();
        zzhfaVar8 = this.zzb.zzal;
        zzbzm zzbzmVar = (zzbzm) zzhfaVar8.zzb();
        zzhfaVar9 = this.zzb.zze;
        zzfxs zzs = zzfxs.zzs(zzesdVar, zzesdVar2, zzesdVar3, zzesdVar4, zzevfVar, zzf, zze(), (zzetr) zzhfaVar7.zzb(), zzevd.zza(zzc5, zza5, zzbzmVar, (ScheduledExecutorService) zzhfaVar9.zzb(), zzffh.zzc()));
        zzfhh zzfhhVar = (zzfhh) this.zzc.zzb();
        zzhfaVar10 = this.zzb.zzM;
        return new zzetu(zzc, zzc2, zzs, zzfhhVar, (zzdrw) zzhfaVar10.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzeuu
    public final zzfgn zzc() {
        return (zzfgn) this.zzy.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzeuu
    public final zzfhh zzd() {
        return (zzfhh) this.zzc.zzb();
    }
}
