package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes.dex */
public final class zzflk {
    private static final zzflk zza = new zzflk();
    private final ArrayList zzb = new ArrayList();
    private final ArrayList zzc = new ArrayList();

    private zzflk() {
    }

    public static zzflk zza() {
        return zza;
    }

    public final Collection zzb() {
        return DesugarCollections.unmodifiableCollection(this.zzc);
    }

    public final Collection zzc() {
        return DesugarCollections.unmodifiableCollection(this.zzb);
    }

    public final void zzd(zzfkt zzfktVar) {
        this.zzb.add(zzfktVar);
    }

    public final void zze(zzfkt zzfktVar) {
        ArrayList arrayList = this.zzb;
        boolean zzg = zzg();
        arrayList.remove(zzfktVar);
        this.zzc.remove(zzfktVar);
        if (!zzg || zzg()) {
            return;
        }
        zzfls.zzb().zzg();
    }

    public final void zzf(zzfkt zzfktVar) {
        ArrayList arrayList = this.zzc;
        boolean zzg = zzg();
        arrayList.add(zzfktVar);
        if (zzg) {
            return;
        }
        zzfls.zzb().zzf();
    }

    public final boolean zzg() {
        return this.zzc.size() > 0;
    }
}
