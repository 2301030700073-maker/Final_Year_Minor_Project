package curtains.internal;

import android.view.View;
import curtains.OnRootViewRemovedListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RootViewsSpy {
    public final CopyOnWriteArrayList listeners = new CopyOnWriteArrayList();
    public final RootViewsSpy$delegatingViewList$1 delegatingViewList = new ArrayList() { // from class: curtains.internal.RootViewsSpy$delegatingViewList$1
        @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean add(Object obj) {
            View view = (View) obj;
            view.getClass();
            Iterator it = RootViewsSpy.this.listeners.iterator();
            while (it.hasNext()) {
                ((OnRootViewRemovedListener) it.next()).onRootViewsChanged(view, true);
            }
            return super.add(view);
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof View) {
                return super.contains((View) obj);
            }
            return false;
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (obj instanceof View) {
                return super.indexOf((View) obj);
            }
            return -1;
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (obj instanceof View) {
                return super.lastIndexOf((View) obj);
            }
            return -1;
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public final Object remove(int i) {
            Object remove = super.remove(i);
            remove.getClass();
            View view = (View) remove;
            Iterator it = RootViewsSpy.this.listeners.iterator();
            while (it.hasNext()) {
                ((OnRootViewRemovedListener) it.next()).onRootViewsChanged(view, false);
            }
            return view;
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final /* bridge */ boolean remove(Object obj) {
            if (obj instanceof View) {
                return super.remove((View) obj);
            }
            return false;
        }
    };
}
