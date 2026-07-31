package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzaoi {
    private final List zza;
    private final String zzb = MimeTypes.VIDEO_MP2T;
    private final zzaem[] zzc;
    private final zzfq zzd;

    public zzaoi(List list, String str) {
        this.zza = list;
        this.zzc = new zzaem[list.size()];
        zzfq zzfqVar = new zzfq(new zzfp() { // from class: com.google.android.gms.internal.ads.zzaoh
            @Override // com.google.android.gms.internal.ads.zzfp
            public final /* synthetic */ void zza(long j, zzeg zzegVar) {
                zzaoi.this.zzc(j, zzegVar);
            }
        });
        this.zzd = zzfqVar;
        zzfqVar.zza(3);
    }

    public final void zza(zzadd zzaddVar, zzaoe zzaoeVar) {
        int i = 0;
        while (true) {
            zzaem[] zzaemVarArr = this.zzc;
            if (i >= zzaemVarArr.length) {
                return;
            }
            zzaoeVar.zza();
            zzaem zzu = zzaddVar.zzu(zzaoeVar.zzb(), 3);
            zzv zzvVar = (zzv) this.zza.get(i);
            String str = zzvVar.zzo;
            boolean z = true;
            if (!MimeTypes.APPLICATION_CEA608.equals(str) && !MimeTypes.APPLICATION_CEA708.equals(str)) {
                z = false;
            }
            zzgmd.zzf(z, "Invalid closed caption MIME type provided: %s", str);
            zzt zztVar = new zzt();
            zztVar.zza(zzaoeVar.zzc());
            zztVar.zzl(this.zzb);
            zztVar.zzm(str);
            zztVar.zzf(zzvVar.zze);
            zztVar.zze(zzvVar.zzd);
            zztVar.zzJ(zzvVar.zzL);
            zztVar.zzp(zzvVar.zzr);
            zzu.zzu(zztVar.zzM());
            zzaemVarArr[i] = zzu;
            i++;
        }
    }

    public final void zzb(long j, zzeg zzegVar) {
        if (zzegVar.zzd() < 9) {
            return;
        }
        int zzB = zzegVar.zzB();
        int zzB2 = zzegVar.zzB();
        int zzs = zzegVar.zzs();
        if (zzB == 434 && zzB2 == 1195456820 && zzs == 3) {
            this.zzd.zzc(j, zzegVar);
        }
    }

    final /* synthetic */ void zzc(long j, zzeg zzegVar) {
        zzacn.zzb(j, zzegVar, this.zzc);
    }
}
