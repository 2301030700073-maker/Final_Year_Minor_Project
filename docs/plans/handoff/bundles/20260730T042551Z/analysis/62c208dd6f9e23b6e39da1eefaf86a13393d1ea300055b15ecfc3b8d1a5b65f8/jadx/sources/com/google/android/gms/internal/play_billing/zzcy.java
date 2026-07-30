package com.google.android.gms.internal.play_billing;

import j$.util.Iterator;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
final class zzcy implements zzdf, Iterator {
    private final java.util.Iterator zza;
    private boolean zzb;
    private Object zzc;

    public zzcy(java.util.Iterator it) {
        it.getClass();
        this.zza = it;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.zzb || this.zza.hasNext();
    }

    @Override // com.google.android.gms.internal.play_billing.zzdf, java.util.Iterator, j$.util.Iterator
    public final Object next() {
        if (!this.zzb) {
            return this.zza.next();
        }
        Object obj = this.zzc;
        this.zzb = false;
        this.zzc = null;
        return obj;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        if (!(!this.zzb)) {
            throw new IllegalStateException("Can't remove after you've peeked at next");
        }
        this.zza.remove();
    }

    @Override // com.google.android.gms.internal.play_billing.zzdf
    public final Object zza() {
        if (!this.zzb) {
            this.zzc = this.zza.next();
            this.zzb = true;
        }
        return this.zzc;
    }
}
