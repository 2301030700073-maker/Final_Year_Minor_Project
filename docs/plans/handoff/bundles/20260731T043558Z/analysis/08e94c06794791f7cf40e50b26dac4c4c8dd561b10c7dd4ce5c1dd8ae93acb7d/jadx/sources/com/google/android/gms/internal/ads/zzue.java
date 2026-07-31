package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzue implements zzwm {
    private final zzgpe zza;
    private long zzb;

    public zzue(List list, List list2) {
        int i = zzgpe.zzd;
        zzgpb zzgpbVar = new zzgpb();
        zzgmd.zza(list.size() == list2.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzgpbVar.zzf(new zzud((zzwm) list.get(i2), (List) list2.get(i2)));
        }
        this.zza = zzgpbVar.zzi();
        this.zzb = C.TIME_UNSET;
    }

    @Override // com.google.android.gms.internal.ads.zzwm
    public final void zzg(long j) {
        int i = 0;
        while (true) {
            zzgpe zzgpeVar = this.zza;
            if (i >= zzgpeVar.size()) {
                return;
            }
            ((zzud) zzgpeVar.get(i)).zzg(j);
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwm
    public final long zzi() {
        int i = 0;
        long j = Long.MAX_VALUE;
        long j2 = Long.MAX_VALUE;
        while (true) {
            zzgpe zzgpeVar = this.zza;
            if (i >= zzgpeVar.size()) {
                break;
            }
            zzud zzudVar = (zzud) zzgpeVar.get(i);
            long zzi = zzudVar.zzi();
            if ((zzudVar.zza().contains(1) || zzudVar.zza().contains(2) || zzudVar.zza().contains(4)) && zzi != Long.MIN_VALUE) {
                j = Math.min(j, zzi);
            }
            if (zzi != Long.MIN_VALUE) {
                j2 = Math.min(j2, zzi);
            }
            i++;
        }
        if (j != Long.MAX_VALUE) {
            this.zzb = j;
            return j;
        }
        if (j2 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        long j3 = this.zzb;
        return j3 != C.TIME_UNSET ? j3 : j2;
    }

    @Override // com.google.android.gms.internal.ads.zzwm
    public final long zzl() {
        int i = 0;
        long j = Long.MAX_VALUE;
        while (true) {
            zzgpe zzgpeVar = this.zza;
            if (i >= zzgpeVar.size()) {
                break;
            }
            long zzl = ((zzud) zzgpeVar.get(i)).zzl();
            if (zzl != Long.MIN_VALUE) {
                j = Math.min(j, zzl);
            }
            i++;
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzwm
    public final boolean zzm(zzkn zzknVar) {
        boolean z;
        boolean z2 = false;
        do {
            long zzl = zzl();
            if (zzl == Long.MIN_VALUE) {
                break;
            }
            int i = 0;
            z = false;
            while (true) {
                zzgpe zzgpeVar = this.zza;
                if (i >= zzgpeVar.size()) {
                    break;
                }
                long zzl2 = ((zzud) zzgpeVar.get(i)).zzl();
                boolean z3 = zzl2 != Long.MIN_VALUE && zzl2 <= zzknVar.zza;
                if (zzl2 == zzl || z3) {
                    z |= ((zzud) zzgpeVar.get(i)).zzm(zzknVar);
                }
                i++;
            }
            z2 |= z;
        } while (z);
        return z2;
    }

    @Override // com.google.android.gms.internal.ads.zzwm
    public final boolean zzn() {
        int i = 0;
        while (true) {
            zzgpe zzgpeVar = this.zza;
            if (i >= zzgpeVar.size()) {
                return false;
            }
            if (((zzud) zzgpeVar.get(i)).zzn()) {
                return true;
            }
            i++;
        }
    }
}
