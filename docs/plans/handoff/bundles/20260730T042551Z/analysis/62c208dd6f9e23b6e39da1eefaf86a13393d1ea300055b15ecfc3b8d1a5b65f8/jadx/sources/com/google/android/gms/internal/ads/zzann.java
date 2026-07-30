package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
public final class zzann {
    private final List zza;
    private final zzadt[] zzb;
    private final zzfo zzc = new zzfo(new zzfm() { // from class: com.google.android.gms.internal.ads.zzanm
        @Override // com.google.android.gms.internal.ads.zzfm
        public final void zza(long j, zzdy zzdyVar) {
            zzann.this.zzd(j, zzdyVar);
        }
    });

    public zzann(List list) {
        this.zza = list;
        this.zzb = new zzadt[list.size()];
    }

    public final void zza(long j, zzdy zzdyVar) {
        this.zzc.zzb(j, zzdyVar);
    }

    public final void zzb(zzacq zzacqVar, zzanx zzanxVar) {
        for (int i = 0; i < this.zzb.length; i++) {
            zzanxVar.zzc();
            zzadt zzw = zzacqVar.zzw(zzanxVar.zza(), 3);
            zzab zzabVar = (zzab) this.zza.get(i);
            String str = zzabVar.zzo;
            boolean z = true;
            if (!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) {
                z = false;
            }
            zzcw.zze(z, "Invalid closed caption MIME type provided: ".concat(String.valueOf(str)));
            String str2 = zzabVar.zza;
            if (str2 == null) {
                str2 = zzanxVar.zzb();
            }
            zzz zzzVar = new zzz();
            zzzVar.zzM(str2);
            zzzVar.zzaa(str);
            zzzVar.zzac(zzabVar.zze);
            zzzVar.zzQ(zzabVar.zzd);
            zzzVar.zzx(zzabVar.zzI);
            zzzVar.zzN(zzabVar.zzr);
            zzw.zzm(zzzVar.zzag());
            this.zzb[i] = zzw;
        }
    }

    public final void zzc() {
        this.zzc.zzc();
    }

    public final /* synthetic */ void zzd(long j, zzdy zzdyVar) {
        zzabz.zza(j, zzdyVar, this.zzb);
    }

    public final void zze(int i) {
        this.zzc.zzd(i);
    }
}
