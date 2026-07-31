package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfps {
    private static final zzfps zza = new zzfps();
    private final ArrayList zzb = new ArrayList();
    private final ArrayList zzc = new ArrayList();

    private zzfps() {
    }

    public static zzfps zza() {
        return zza;
    }

    public final void zzb(zzfoy zzfoyVar) {
        this.zzb.add(zzfoyVar);
    }

    public final void zzc(zzfoy zzfoyVar) {
        ArrayList arrayList = this.zzc;
        boolean zzg = zzg();
        arrayList.add(zzfoyVar);
        if (zzg) {
            return;
        }
        zzfqa.zza().zzc();
    }

    public final void zzd(zzfoy zzfoyVar) {
        ArrayList arrayList = this.zzb;
        boolean zzg = zzg();
        arrayList.remove(zzfoyVar);
        this.zzc.remove(zzfoyVar);
        if (!zzg || zzg()) {
            return;
        }
        zzfqa.zza().zze();
    }

    public final Collection zze() {
        return Collections.unmodifiableCollection(this.zzb);
    }

    public final Collection zzf() {
        return Collections.unmodifiableCollection(this.zzc);
    }

    public final boolean zzg() {
        return this.zzc.size() > 0;
    }
}
