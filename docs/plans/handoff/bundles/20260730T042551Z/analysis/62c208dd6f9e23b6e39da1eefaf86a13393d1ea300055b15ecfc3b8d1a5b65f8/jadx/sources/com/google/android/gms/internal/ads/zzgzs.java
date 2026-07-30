package com.google.android.gms.internal.ads;

import j$.util.Iterator;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;

/* loaded from: classes.dex */
final class zzgzs implements Iterator, j$.util.Iterator {
    private final ArrayDeque zza;
    private zzgwf zzb;

    public /* synthetic */ zzgzs(zzgwj zzgwjVar, zzgzt zzgztVar) {
        if (!(zzgwjVar instanceof zzgzu)) {
            this.zza = null;
            this.zzb = (zzgwf) zzgwjVar;
            return;
        }
        zzgzu zzgzuVar = (zzgzu) zzgwjVar;
        ArrayDeque arrayDeque = new ArrayDeque(zzgzuVar.zzf());
        this.zza = arrayDeque;
        arrayDeque.push(zzgzuVar);
        this.zzb = zzb(zzgzuVar.zzd);
    }

    private final zzgwf zzb(zzgwj zzgwjVar) {
        while (zzgwjVar instanceof zzgzu) {
            zzgzu zzgzuVar = (zzgzu) zzgwjVar;
            this.zza.push(zzgzuVar);
            zzgwjVar = zzgzuVar.zzd;
        }
        return (zzgwf) zzgwjVar;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.zzb != null;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzgwf next() {
        zzgwf zzgwfVar;
        zzgwf zzgwfVar2 = this.zzb;
        if (zzgwfVar2 == null) {
            throw new NoSuchElementException();
        }
        do {
            ArrayDeque arrayDeque = this.zza;
            zzgwfVar = null;
            if (arrayDeque == null || arrayDeque.isEmpty()) {
                break;
            }
            zzgwfVar = zzb(((zzgzu) this.zza.pop()).zze);
        } while (zzgwfVar.zzd() == 0);
        this.zzb = zzgwfVar;
        return zzgwfVar2;
    }
}
