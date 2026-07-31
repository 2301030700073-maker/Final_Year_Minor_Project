package com.google.android.gms.internal.ads;

import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzbdz;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzfid implements zzfic {
    private final ConcurrentHashMap zza;
    private final zzfij zzb;
    private final zzfif zzc = new zzfif();

    public zzfid(zzfij zzfijVar) {
        this.zza = new ConcurrentHashMap(zzfijVar.zzd);
        this.zzb = zzfijVar;
    }

    private final void zzf() {
        Parcelable.Creator<zzfij> creator = zzfij.CREATOR;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzgR)).booleanValue()) {
            StringBuilder sb = new StringBuilder();
            zzfij zzfijVar = this.zzb;
            sb.append(zzfijVar.zzb);
            sb.append(" PoolCollection");
            sb.append(this.zzc.zzg());
            int i = 0;
            for (Map.Entry entry : this.zza.entrySet()) {
                i++;
                sb.append(i);
                sb.append(". ");
                sb.append(entry.getValue());
                sb.append("#");
                sb.append(((zzfim) entry.getKey()).hashCode());
                sb.append("    ");
                for (int i2 = 0; i2 < ((zzfib) entry.getValue()).zzc(); i2++) {
                    sb.append("[O]");
                }
                for (int zzc = ((zzfib) entry.getValue()).zzc(); zzc < zzfijVar.zzd; zzc++) {
                    sb.append("[ ]");
                }
                sb.append("\n");
                sb.append(((zzfib) entry.getValue()).zzg());
                sb.append("\n");
            }
            while (i < zzfijVar.zzc) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            String sb2 = sb.toString();
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd(sb2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfic
    public final synchronized zzfil zza(zzfim zzfimVar) {
        zzfil zzfilVar;
        zzfib zzfibVar = (zzfib) this.zza.get(zzfimVar);
        if (zzfibVar != null) {
            zzfilVar = zzfibVar.zzb();
            if (zzfilVar == null) {
                this.zzc.zzb();
            }
            zzfiz zzh = zzfibVar.zzh();
            if (zzfilVar != null) {
                zzbdz.zzb.zzc zzs = zzbdz.zzb.zzs();
                zzbdz.zzb.zza.C0017zza zzs2 = zzbdz.zzb.zza.zzs();
                zzs2.zzc(zzbdz.zzb.zzd.IN_MEMORY);
                zzbdz.zzb.zze.zza zzq = zzbdz.zzb.zze.zzq();
                zzq.zzc(zzh.zza);
                zzq.zzg(zzh.zzb);
                zzs2.zzh(zzq);
                zzs.zzh(zzs2);
                zzfilVar.zza.zza().zzd().zzj(zzs.zzbu());
            }
            zzf();
        } else {
            this.zzc.zza();
            zzf();
            zzfilVar = null;
        }
        return zzfilVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfic
    public final synchronized boolean zzb(zzfim zzfimVar, zzfil zzfilVar) {
        boolean zza;
        ConcurrentHashMap concurrentHashMap = this.zza;
        zzfib zzfibVar = (zzfib) concurrentHashMap.get(zzfimVar);
        zzfilVar.zzd = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
        if (zzfibVar == null) {
            zzfij zzfijVar = this.zzb;
            zzfib zzfibVar2 = new zzfib(zzfijVar.zzd, zzfijVar.zze * 1000);
            if (concurrentHashMap.size() == zzfijVar.zzc) {
                int i = zzfijVar.zzg;
                int i2 = i - 1;
                zzfim zzfimVar2 = null;
                if (i == 0) {
                    throw null;
                }
                long j = Long.MAX_VALUE;
                if (i2 == 0) {
                    for (Map.Entry entry : concurrentHashMap.entrySet()) {
                        if (((zzfib) entry.getValue()).zzd() < j) {
                            j = ((zzfib) entry.getValue()).zzd();
                            zzfimVar2 = (zzfim) entry.getKey();
                        }
                    }
                    if (zzfimVar2 != null) {
                        concurrentHashMap.remove(zzfimVar2);
                    }
                } else if (i2 == 1) {
                    for (Map.Entry entry2 : concurrentHashMap.entrySet()) {
                        if (((zzfib) entry2.getValue()).zze() < j) {
                            j = ((zzfib) entry2.getValue()).zze();
                            zzfimVar2 = (zzfim) entry2.getKey();
                        }
                    }
                    if (zzfimVar2 != null) {
                        concurrentHashMap.remove(zzfimVar2);
                    }
                } else if (i2 == 2) {
                    int i3 = Integer.MAX_VALUE;
                    for (Map.Entry entry3 : concurrentHashMap.entrySet()) {
                        if (((zzfib) entry3.getValue()).zzf() < i3) {
                            i3 = ((zzfib) entry3.getValue()).zzf();
                            zzfimVar2 = (zzfim) entry3.getKey();
                        }
                    }
                    if (zzfimVar2 != null) {
                        concurrentHashMap.remove(zzfimVar2);
                    }
                }
                this.zzc.zzd();
            }
            concurrentHashMap.put(zzfimVar, zzfibVar2);
            this.zzc.zzc();
            zzfibVar = zzfibVar2;
        }
        zza = zzfibVar.zza(zzfilVar);
        zzfif zzfifVar = this.zzc;
        zzfifVar.zze();
        zzfie zzf = zzfifVar.zzf();
        zzfiz zzh = zzfibVar.zzh();
        if (zzfilVar != null) {
            zzbdz.zzb.zzc zzs = zzbdz.zzb.zzs();
            zzbdz.zzb.zza.C0017zza zzs2 = zzbdz.zzb.zza.zzs();
            zzs2.zzc(zzbdz.zzb.zzd.IN_MEMORY);
            zzbdz.zzb.zzg.zza zzs3 = zzbdz.zzb.zzg.zzs();
            zzs3.zzc(zzf.zza);
            zzs3.zzg(zzf.zzb);
            zzs3.zzk(zzh.zzb);
            zzs2.zzn(zzs3);
            zzs.zzh(zzs2);
            zzfilVar.zza.zza().zzd().zzk(zzs.zzbu());
        }
        zzf();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfic
    public final synchronized boolean zzc(zzfim zzfimVar) {
        zzfib zzfibVar = (zzfib) this.zza.get(zzfimVar);
        if (zzfibVar == null) {
            return true;
        }
        return zzfibVar.zzc() < this.zzb.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzfic
    @Deprecated
    public final zzfim zzd(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, com.google.android.gms.ads.internal.client.zzx zzxVar) {
        zzfij zzfijVar = this.zzb;
        return new zzfin(zzmVar, str, new zzbxm(zzfijVar.zza).zza().zzj, zzfijVar.zzf, zzxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfic
    public final zzfij zze() {
        return this.zzb;
    }
}
