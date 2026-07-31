package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzant {
    private final List zza;
    private final zzaem[] zzc;
    private final String zzb = MimeTypes.VIDEO_MP2T;
    private final zzfq zzd = new zzfq(new zzfp() { // from class: com.google.android.gms.internal.ads.zzans
        @Override // com.google.android.gms.internal.ads.zzfp
        public final /* synthetic */ void zza(long j, zzeg zzegVar) {
            zzant.this.zzf(j, zzegVar);
        }
    });

    public zzant(List list, String str) {
        this.zza = list;
        this.zzc = new zzaem[list.size()];
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
            String str2 = zzvVar.zza;
            if (str2 == null) {
                str2 = zzaoeVar.zzc();
            }
            zzt zztVar = new zzt();
            zztVar.zza(str2);
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

    public final void zzb(int i) {
        this.zzd.zza(i);
    }

    public final void zzc(long j, zzeg zzegVar) {
        this.zzd.zzc(j, zzegVar);
    }

    public final void zzd() {
        this.zzd.zze();
    }

    public final void zze() {
        this.zzd.zze();
    }

    final /* synthetic */ void zzf(long j, zzeg zzegVar) {
        zzacn.zza(j, zzegVar, this.zzc);
    }
}
