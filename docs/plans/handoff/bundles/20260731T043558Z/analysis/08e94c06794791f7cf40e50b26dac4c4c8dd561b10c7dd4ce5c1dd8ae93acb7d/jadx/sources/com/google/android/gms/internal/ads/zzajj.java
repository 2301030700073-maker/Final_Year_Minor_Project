package com.google.android.gms.internal.ads;

import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzajj implements zzaeh {
    public final int zza;
    public final zzgsr zzb;

    public zzajj(int i, int[] iArr) {
        this.zza = i;
        this.zzb = iArr != null ? zzgsr.zzb(iArr) : zzgsr.zza();
    }

    public final String toString() {
        zzgsr zzgsrVar = this.zzb;
        ArrayList arrayList = new ArrayList(zzgsrVar.zzc());
        for (int i = 0; i < zzgsrVar.zzc(); i++) {
            arrayList.add(zzep.zzx(zzgsrVar.zzd(i)));
        }
        String zzx = zzep.zzx(this.zza);
        String obj = arrayList.toString();
        StringBuilder sb = new StringBuilder(zzx.length() + 37 + obj.length() + 1);
        sb.append("UnsupportedBrands{major=");
        sb.append(zzx);
        sb.append(", compatible=");
        sb.append(obj);
        sb.append("}");
        return sb.toString();
    }
}
