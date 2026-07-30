package com.google.android.gms.internal.play_billing;

import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
final class zzcz extends zzdw {
    private final Object zza;
    private boolean zzb;

    public zzcz(Object obj) {
        this.zza = obj;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return !this.zzb;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final Object next() {
        if (this.zzb) {
            throw new NoSuchElementException();
        }
        this.zzb = true;
        return this.zza;
    }
}
