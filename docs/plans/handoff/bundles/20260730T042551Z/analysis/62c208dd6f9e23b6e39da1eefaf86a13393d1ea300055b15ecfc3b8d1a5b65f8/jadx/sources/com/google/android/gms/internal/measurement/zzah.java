package com.google.android.gms.internal.measurement;

import defpackage.V1;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
final class zzah implements Iterator<zzaq> {
    private int zza = 0;
    private final /* synthetic */ zzaf zzb;

    public zzah(zzaf zzafVar) {
        this.zzb = zzafVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza < this.zzb.zzb();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ zzaq next() {
        if (this.zza >= this.zzb.zzb()) {
            throw new NoSuchElementException(V1.m2494case("Out of bounds index: ", this.zza));
        }
        zzaf zzafVar = this.zzb;
        int i = this.zza;
        this.zza = i + 1;
        return zzafVar.zza(i);
    }
}
