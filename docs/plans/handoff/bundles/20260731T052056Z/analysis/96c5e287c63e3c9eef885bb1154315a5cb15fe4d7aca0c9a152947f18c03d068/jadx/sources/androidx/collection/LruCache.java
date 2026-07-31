package androidx.collection;

import android.view.View;
import androidx.collection.internal.Lock;
import androidx.compose.animation.core.Animation;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import coil3.network.NetworkHeaders;
import java.util.ArrayList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class LruCache {
    public final /* synthetic */ int $r8$classId;
    public int hitCount;
    public final Object lock;
    public final Object map;
    public int maxSize;
    public int missCount;
    public int size;

    public LruCache(int i) {
        this.$r8$classId = 0;
        this.maxSize = i;
        if (i <= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("maxSize <= 0");
            throw null;
        }
        this.map = new NetworkHeaders.Builder(1);
        this.lock = new Lock(0);
    }

    public void calculateCachedEnd() {
        View view = (View) Animation.CC.m(1, (ArrayList) this.map);
        StaggeredGridLayoutManager.LayoutParams layoutParams = (StaggeredGridLayoutManager.LayoutParams) view.getLayoutParams();
        this.size = ((StaggeredGridLayoutManager) this.lock).mPrimaryOrientation.getDecoratedEnd(view);
        layoutParams.getClass();
    }

    public void clear() {
        ((ArrayList) this.map).clear();
        this.maxSize = Integer.MIN_VALUE;
        this.size = Integer.MIN_VALUE;
        this.hitCount = 0;
    }

    public Object create(Object obj) {
        obj.getClass();
        return null;
    }

    public void entryRemoved(Object obj, Object obj2, Object obj3) {
        obj.getClass();
        obj2.getClass();
    }

    public int findFirstPartiallyVisibleItemPosition() {
        return ((StaggeredGridLayoutManager) this.lock).mReverseLayout ? findOnePartiallyVisibleChild(r1.size() - 1, -1) : findOnePartiallyVisibleChild(0, ((ArrayList) this.map).size());
    }

    public int findLastPartiallyVisibleItemPosition() {
        return ((StaggeredGridLayoutManager) this.lock).mReverseLayout ? findOnePartiallyVisibleChild(0, ((ArrayList) this.map).size()) : findOnePartiallyVisibleChild(r1.size() - 1, -1);
    }

    public int findOnePartiallyVisibleChild(int i, int i2) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) this.lock;
        int startAfterPadding = staggeredGridLayoutManager.mPrimaryOrientation.getStartAfterPadding();
        int endAfterPadding = staggeredGridLayoutManager.mPrimaryOrientation.getEndAfterPadding();
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View view = (View) ((ArrayList) this.map).get(i);
            int decoratedStart = staggeredGridLayoutManager.mPrimaryOrientation.getDecoratedStart(view);
            int decoratedEnd = staggeredGridLayoutManager.mPrimaryOrientation.getDecoratedEnd(view);
            boolean z = decoratedStart <= endAfterPadding;
            boolean z2 = decoratedEnd >= startAfterPadding;
            if (z && z2 && (decoratedStart < startAfterPadding || decoratedEnd > endAfterPadding)) {
                return RecyclerView.LayoutManager.getPosition(view);
            }
            i += i3;
        }
        return -1;
    }

    public Object get(Object obj) {
        Object put;
        obj.getClass();
        synchronized (((Lock) this.lock)) {
            Object obj2 = ((NetworkHeaders.Builder) this.map).data.get(obj);
            if (obj2 != null) {
                this.hitCount++;
                return obj2;
            }
            this.missCount++;
            Object create = create(obj);
            if (create == null) {
                return null;
            }
            synchronized (((Lock) this.lock)) {
                put = ((NetworkHeaders.Builder) this.map).data.put(obj, create);
                if (put != null) {
                    ((NetworkHeaders.Builder) this.map).data.put(obj, put);
                } else {
                    int i = this.size;
                    sizeOf(obj, create);
                    this.size = i + 1;
                }
            }
            if (put != null) {
                entryRemoved(obj, create, put);
                return put;
            }
            trimToSize(this.maxSize);
            return create;
        }
    }

    public int getEndLine(int i) {
        int i2 = this.size;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (((ArrayList) this.map).size() == 0) {
            return i;
        }
        calculateCachedEnd();
        return this.size;
    }

    public View getFocusableViewAfter(int i, int i2) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) this.lock;
        ArrayList arrayList = (ArrayList) this.map;
        View view = null;
        if (i2 != -1) {
            int size = arrayList.size() - 1;
            while (size >= 0) {
                View view2 = (View) arrayList.get(size);
                if ((staggeredGridLayoutManager.mReverseLayout && RecyclerView.LayoutManager.getPosition(view2) >= i) || ((!staggeredGridLayoutManager.mReverseLayout && RecyclerView.LayoutManager.getPosition(view2) <= i) || !view2.hasFocusable())) {
                    break;
                }
                size--;
                view = view2;
            }
            return view;
        }
        int size2 = arrayList.size();
        int i3 = 0;
        while (i3 < size2) {
            View view3 = (View) arrayList.get(i3);
            if ((staggeredGridLayoutManager.mReverseLayout && RecyclerView.LayoutManager.getPosition(view3) <= i) || ((!staggeredGridLayoutManager.mReverseLayout && RecyclerView.LayoutManager.getPosition(view3) >= i) || !view3.hasFocusable())) {
                break;
            }
            i3++;
            view = view3;
        }
        return view;
    }

    public int getStartLine(int i) {
        ArrayList arrayList = (ArrayList) this.map;
        int i2 = this.maxSize;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (arrayList.size() == 0) {
            return i;
        }
        View view = (View) arrayList.get(0);
        StaggeredGridLayoutManager.LayoutParams layoutParams = (StaggeredGridLayoutManager.LayoutParams) view.getLayoutParams();
        this.maxSize = ((StaggeredGridLayoutManager) this.lock).mPrimaryOrientation.getDecoratedStart(view);
        layoutParams.getClass();
        return this.maxSize;
    }

    public Object put(Object obj, Object obj2) {
        Object put;
        obj.getClass();
        obj2.getClass();
        synchronized (((Lock) this.lock)) {
            int i = this.size;
            sizeOf(obj, obj2);
            this.size = i + 1;
            put = ((NetworkHeaders.Builder) this.map).data.put(obj, obj2);
            if (put != null) {
                int i2 = this.size;
                sizeOf(obj, put);
                this.size = i2 - 1;
            }
        }
        if (put != null) {
            entryRemoved(obj, put, obj2);
        }
        trimToSize(this.maxSize);
        return put;
    }

    public Object remove(Object obj) {
        Object remove;
        synchronized (((Lock) this.lock)) {
            remove = ((NetworkHeaders.Builder) this.map).data.remove(obj);
            if (remove != null) {
                int i = this.size;
                sizeOf(obj, remove);
                this.size = i - 1;
            }
        }
        if (remove != null) {
            entryRemoved(obj, remove, null);
        }
        return remove;
    }

    public void sizeOf(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
    }

    public String toString() {
        String str;
        switch (this.$r8$classId) {
            case 0:
                synchronized (((Lock) this.lock)) {
                    try {
                        int i = this.hitCount;
                        int i2 = this.missCount + i;
                        str = "LruCache[maxSize=" + this.maxSize + ",hits=" + this.hitCount + ",misses=" + this.missCount + ",hitRate=" + (i2 != 0 ? (i * 100) / i2 : 0) + "%]";
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return str;
            default:
                return super.toString();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0072, code lost:
    
        throw new java.lang.IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void trimToSize(int r5) {
        /*
            r4 = this;
        L0:
            java.lang.Object r0 = r4.lock
            androidx.collection.internal.Lock r0 = (androidx.collection.internal.Lock) r0
            monitor-enter(r0)
            int r1 = r4.size     // Catch: java.lang.Throwable -> L1a
            if (r1 < 0) goto L6b
            java.lang.Object r1 = r4.map     // Catch: java.lang.Throwable -> L1a
            coil3.network.NetworkHeaders$Builder r1 = (coil3.network.NetworkHeaders.Builder) r1     // Catch: java.lang.Throwable -> L1a
            java.util.LinkedHashMap r1 = r1.data     // Catch: java.lang.Throwable -> L1a
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L1a
            if (r1 == 0) goto L1c
            int r1 = r4.size     // Catch: java.lang.Throwable -> L1a
            if (r1 != 0) goto L6b
            goto L1c
        L1a:
            r4 = move-exception
            goto L73
        L1c:
            int r1 = r4.size     // Catch: java.lang.Throwable -> L1a
            if (r1 <= r5) goto L69
            java.lang.Object r1 = r4.map     // Catch: java.lang.Throwable -> L1a
            coil3.network.NetworkHeaders$Builder r1 = (coil3.network.NetworkHeaders.Builder) r1     // Catch: java.lang.Throwable -> L1a
            java.util.LinkedHashMap r1 = r1.data     // Catch: java.lang.Throwable -> L1a
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L1a
            if (r1 == 0) goto L2d
            goto L69
        L2d:
            java.lang.Object r1 = r4.map     // Catch: java.lang.Throwable -> L1a
            coil3.network.NetworkHeaders$Builder r1 = (coil3.network.NetworkHeaders.Builder) r1     // Catch: java.lang.Throwable -> L1a
            java.util.LinkedHashMap r1 = r1.data     // Catch: java.lang.Throwable -> L1a
            java.util.Set r1 = r1.entrySet()     // Catch: java.lang.Throwable -> L1a
            r1.getClass()     // Catch: java.lang.Throwable -> L1a
            java.lang.Iterable r1 = (java.lang.Iterable) r1     // Catch: java.lang.Throwable -> L1a
            java.lang.Object r1 = kotlin.collections.CollectionsKt.firstOrNull(r1)     // Catch: java.lang.Throwable -> L1a
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch: java.lang.Throwable -> L1a
            if (r1 != 0) goto L46
            monitor-exit(r0)
            return
        L46:
            java.lang.Object r2 = r1.getKey()     // Catch: java.lang.Throwable -> L1a
            java.lang.Object r1 = r1.getValue()     // Catch: java.lang.Throwable -> L1a
            java.lang.Object r3 = r4.map     // Catch: java.lang.Throwable -> L1a
            coil3.network.NetworkHeaders$Builder r3 = (coil3.network.NetworkHeaders.Builder) r3     // Catch: java.lang.Throwable -> L1a
            r2.getClass()     // Catch: java.lang.Throwable -> L1a
            java.util.LinkedHashMap r3 = r3.data     // Catch: java.lang.Throwable -> L1a
            r3.remove(r2)     // Catch: java.lang.Throwable -> L1a
            int r3 = r4.size     // Catch: java.lang.Throwable -> L1a
            r4.sizeOf(r2, r1)     // Catch: java.lang.Throwable -> L1a
            int r3 = r3 + (-1)
            r4.size = r3     // Catch: java.lang.Throwable -> L1a
            monitor-exit(r0)
            r0 = 0
            r4.entryRemoved(r2, r1, r0)
            goto L0
        L69:
            monitor-exit(r0)
            return
        L6b:
            java.lang.String r4 = "LruCache.sizeOf() is reporting inconsistent results!"
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L1a
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L1a
            throw r5     // Catch: java.lang.Throwable -> L1a
        L73:
            monitor-exit(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.LruCache.trimToSize(int):void");
    }

    public LruCache(StaggeredGridLayoutManager staggeredGridLayoutManager, int i) {
        this.$r8$classId = 1;
        this.lock = staggeredGridLayoutManager;
        this.map = new ArrayList();
        this.maxSize = Integer.MIN_VALUE;
        this.size = Integer.MIN_VALUE;
        this.hitCount = 0;
        this.missCount = i;
    }
}
