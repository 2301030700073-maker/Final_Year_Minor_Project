package defpackage;

import android.view.View;
import android.view.ViewGroup;
import j$.util.Iterator;
import java.util.Iterator;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class YK implements Iterator<View>, InterfaceC3941wp, j$.util.Iterator {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ViewGroup f4727do;

    /* renamed from: for, reason: not valid java name */
    public int f4728for;

    public YK(ViewGroup viewGroup) {
        this.f4727do = viewGroup;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.f4728for < this.f4727do.getChildCount();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final Object next() {
        int i = this.f4728for;
        this.f4728for = i + 1;
        View childAt = this.f4727do.getChildAt(i);
        if (childAt != null) {
            return childAt;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        int i = this.f4728for - 1;
        this.f4728for = i;
        this.f4727do.removeViewAt(i);
    }
}
