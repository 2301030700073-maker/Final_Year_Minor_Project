package org.acra.collections;

import androidx.core.view.TreeIterator;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WeakStack extends AbstractCollection {
    public final ArrayList contents = new ArrayList();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        return this.contents.add(new WeakReference(obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.contents.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        Iterator it = this.contents.iterator();
        while (it.hasNext()) {
            if (obj.equals(((WeakReference) it.next()).get())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new TreeIterator(this.contents.iterator(), 3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        if (obj != null) {
            ArrayList arrayList = this.contents;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (obj.equals(((WeakReference) arrayList.get(i)).get())) {
                    arrayList.remove(i);
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        ArrayList arrayList = this.contents;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            if (weakReference.get() == null) {
                arrayList.remove(weakReference);
            }
        }
        return arrayList.size();
    }
}
