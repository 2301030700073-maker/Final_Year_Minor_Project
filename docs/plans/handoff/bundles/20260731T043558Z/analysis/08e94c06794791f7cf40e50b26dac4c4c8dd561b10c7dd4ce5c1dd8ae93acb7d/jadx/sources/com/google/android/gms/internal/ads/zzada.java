package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public interface zzada {
    boolean zza(zzadb zzadbVar) throws IOException;

    default List zzb() {
        return zzgpe.zzi();
    }

    void zzc(zzadd zzaddVar);

    int zzd(zzadb zzadbVar, zzaea zzaeaVar) throws IOException;

    void zze(long j, long j2);

    @SideEffectFree
    default zzada zzf() {
        return this;
    }
}
