package defpackage;

import com.google.android.gms.measurement.internal.zzbe;
import j$.util.Iterator;
import java.util.Iterator;
import java.util.function.Consumer;

/* renamed from: mQ, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3331mQ implements Iterator<String>, j$.util.Iterator {

    /* renamed from: do, reason: not valid java name */
    public final Iterator<String> f14342do;

    public C3331mQ(zzbe zzbeVar) {
        this.f14342do = zzbeVar.f10312do.keySet().iterator();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.f14342do.hasNext();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f14342do.next();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
