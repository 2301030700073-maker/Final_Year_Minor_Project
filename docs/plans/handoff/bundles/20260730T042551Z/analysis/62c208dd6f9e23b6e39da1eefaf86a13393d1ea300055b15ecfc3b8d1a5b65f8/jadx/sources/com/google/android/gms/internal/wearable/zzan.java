package com.google.android.gms.internal.wearable;

import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
final class zzan extends zzap {
    final /* synthetic */ zzaw zza;
    private int zzb = 0;
    private final int zzc;

    public zzan(zzaw zzawVar) {
        this.zza = zzawVar;
        this.zzc = zzawVar.zzd();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.android.gms.internal.wearable.zzar
    public final byte zza() {
        int i = this.zzb;
        if (i >= this.zzc) {
            throw new NoSuchElementException();
        }
        this.zzb = i + 1;
        return this.zza.zzb(i);
    }
}
