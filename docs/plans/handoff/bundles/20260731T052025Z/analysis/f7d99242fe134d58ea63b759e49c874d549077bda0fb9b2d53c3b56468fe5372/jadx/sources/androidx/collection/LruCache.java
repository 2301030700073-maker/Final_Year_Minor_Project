package androidx.collection;

import android.view.View;
import androidx.collection.internal.Lock;
import androidx.core.app.NotificationCompat$Action;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.work.Data;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class LruCache {
    public final /* synthetic */ int $r8$classId;
    public int hitCount;
    public Object lock;
    public Object map;
    public int maxSize;
    public int missCount;
    public int size;

    public LruCache() {
        this.$r8$classId = 1;
        this.map = new ArrayList();
        this.maxSize = 1;
        this.lock = new ArrayList();
        this.size = 8388613;
        this.hitCount = -1;
        this.missCount = 80;
    }

    public void addAction(NotificationCompat$Action notificationCompat$Action) {
        ((ArrayList) this.map).add(notificationCompat$Action);
    }

    public void calculateCachedEnd() {
        View view = (View) ((ArrayList) this.map).get(r0.size() - 1);
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

    public Object clone() {
        switch (this.$r8$classId) {
            case 1:
                LruCache lruCache = new LruCache();
                lruCache.map = new ArrayList((ArrayList) this.map);
                lruCache.maxSize = this.maxSize;
                lruCache.lock = new ArrayList((ArrayList) this.lock);
                lruCache.size = this.size;
                lruCache.hitCount = this.hitCount;
                lruCache.missCount = this.missCount;
                return lruCache;
            default:
                return super.clone();
        }
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
        synchronized (((Lock) this.lock)) {
            Data.Builder builder = (Data.Builder) this.map;
            builder.getClass();
            Object obj2 = builder.values.get(obj);
            if (obj2 != null) {
                this.hitCount++;
                return obj2;
            }
            this.missCount++;
            return null;
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
        synchronized (((Lock) this.lock)) {
            this.size++;
            Data.Builder builder = (Data.Builder) this.map;
            builder.getClass();
            put = builder.values.put(obj, obj2);
            if (put != null) {
                this.size--;
            }
        }
        trimToSize(this.maxSize);
        return put;
    }

    public Object remove(Object obj) {
        Object remove;
        synchronized (((Lock) this.lock)) {
            Data.Builder builder = (Data.Builder) this.map;
            builder.getClass();
            remove = builder.values.remove(obj);
            if (remove != null) {
                this.size--;
            }
        }
        return remove;
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

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0071, code lost:
    
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
            if (r1 < 0) goto L6a
            java.lang.Object r1 = r4.map     // Catch: java.lang.Throwable -> L1a
            androidx.work.Data$Builder r1 = (androidx.work.Data.Builder) r1     // Catch: java.lang.Throwable -> L1a
            java.util.LinkedHashMap r1 = r1.values     // Catch: java.lang.Throwable -> L1a
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L1a
            if (r1 == 0) goto L1c
            int r1 = r4.size     // Catch: java.lang.Throwable -> L1a
            if (r1 != 0) goto L6a
            goto L1c
        L1a:
            r4 = move-exception
            goto L72
        L1c:
            int r1 = r4.size     // Catch: java.lang.Throwable -> L1a
            if (r1 <= r5) goto L68
            java.lang.Object r1 = r4.map     // Catch: java.lang.Throwable -> L1a
            androidx.work.Data$Builder r1 = (androidx.work.Data.Builder) r1     // Catch: java.lang.Throwable -> L1a
            java.util.LinkedHashMap r1 = r1.values     // Catch: java.lang.Throwable -> L1a
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L1a
            if (r1 == 0) goto L2d
            goto L68
        L2d:
            java.lang.Object r1 = r4.map     // Catch: java.lang.Throwable -> L1a
            androidx.work.Data$Builder r1 = (androidx.work.Data.Builder) r1     // Catch: java.lang.Throwable -> L1a
            java.util.LinkedHashMap r1 = r1.values     // Catch: java.lang.Throwable -> L1a
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
            androidx.work.Data$Builder r3 = (androidx.work.Data.Builder) r3     // Catch: java.lang.Throwable -> L1a
            r3.getClass()     // Catch: java.lang.Throwable -> L1a
            r2.getClass()     // Catch: java.lang.Throwable -> L1a
            java.util.LinkedHashMap r3 = r3.values     // Catch: java.lang.Throwable -> L1a
            r3.remove(r2)     // Catch: java.lang.Throwable -> L1a
            int r2 = r4.size     // Catch: java.lang.Throwable -> L1a
            r1.getClass()     // Catch: java.lang.Throwable -> L1a
            int r2 = r2 + (-1)
            r4.size = r2     // Catch: java.lang.Throwable -> L1a
            monitor-exit(r0)
            goto L0
        L68:
            monitor-exit(r0)
            return
        L6a:
            java.lang.String r4 = "LruCache.sizeOf() is reporting inconsistent results!"
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L1a
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L1a
            throw r5     // Catch: java.lang.Throwable -> L1a
        L72:
            monitor-exit(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.LruCache.trimToSize(int):void");
    }

    public LruCache(StaggeredGridLayoutManager staggeredGridLayoutManager, int i) {
        this.$r8$classId = 2;
        this.lock = staggeredGridLayoutManager;
        this.map = new ArrayList();
        this.maxSize = Integer.MIN_VALUE;
        this.size = Integer.MIN_VALUE;
        this.hitCount = 0;
        this.missCount = i;
    }

    public LruCache(int i) {
        this.$r8$classId = 0;
        this.maxSize = i;
        if (i > 0) {
            this.map = new Data.Builder(1);
            this.lock = new Lock();
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m("maxSize <= 0");
            throw null;
        }
    }
}
