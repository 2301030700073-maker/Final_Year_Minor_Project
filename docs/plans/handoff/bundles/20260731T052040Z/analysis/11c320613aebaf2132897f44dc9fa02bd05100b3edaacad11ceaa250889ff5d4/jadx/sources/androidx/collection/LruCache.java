package androidx.collection;

import android.view.View;
import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.transition.Transition;
import androidx.work.Data;
import java.util.ArrayList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("maxSize <= 0");
            throw null;
        }
        this.map = new Data.Builder(1);
        this.lock = new Transition.AnonymousClass1(3);
    }

    public void calculateCachedEnd() {
        View view = (View) Modifier.CC.m(1, (ArrayList) this.map);
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
    }

    public int findFirstPartiallyVisibleItemPosition() {
        boolean z = ((StaggeredGridLayoutManager) this.lock).mReverseLayout;
        ArrayList arrayList = (ArrayList) this.map;
        return z ? findOnePartiallyOrCompletelyVisibleChild(arrayList.size() - 1, -1, false, true) : findOnePartiallyOrCompletelyVisibleChild(0, arrayList.size(), false, true);
    }

    public int findLastPartiallyVisibleItemPosition() {
        boolean z = ((StaggeredGridLayoutManager) this.lock).mReverseLayout;
        ArrayList arrayList = (ArrayList) this.map;
        return z ? findOnePartiallyOrCompletelyVisibleChild(0, arrayList.size(), false, true) : findOnePartiallyOrCompletelyVisibleChild(arrayList.size() - 1, -1, false, true);
    }

    public int findOnePartiallyOrCompletelyVisibleChild(int i, int i2, boolean z, boolean z2) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) this.lock;
        int startAfterPadding = staggeredGridLayoutManager.mPrimaryOrientation.getStartAfterPadding();
        int endAfterPadding = staggeredGridLayoutManager.mPrimaryOrientation.getEndAfterPadding();
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View view = (View) ((ArrayList) this.map).get(i);
            int decoratedStart = staggeredGridLayoutManager.mPrimaryOrientation.getDecoratedStart(view);
            int decoratedEnd = staggeredGridLayoutManager.mPrimaryOrientation.getDecoratedEnd(view);
            boolean z3 = false;
            boolean z4 = !z2 ? decoratedStart >= endAfterPadding : decoratedStart > endAfterPadding;
            if (!z2 ? decoratedEnd > startAfterPadding : decoratedEnd >= startAfterPadding) {
                z3 = true;
            }
            if (z4 && z3) {
                if (z) {
                    return RecyclerView.LayoutManager.getPosition(view);
                }
                if (decoratedStart < startAfterPadding || decoratedEnd > endAfterPadding) {
                    return RecyclerView.LayoutManager.getPosition(view);
                }
            }
            i += i3;
        }
        return -1;
    }

    public Object get(Object obj) {
        Object put;
        obj.getClass();
        synchronized (((Transition.AnonymousClass1) this.lock)) {
            Data.Builder builder = (Data.Builder) this.map;
            builder.getClass();
            Object obj2 = builder.values.get(obj);
            if (obj2 != null) {
                this.hitCount++;
                return obj2;
            }
            this.missCount++;
            Object create = create(obj);
            if (create == null) {
                return null;
            }
            synchronized (((Transition.AnonymousClass1) this.lock)) {
                Data.Builder builder2 = (Data.Builder) this.map;
                builder2.getClass();
                put = builder2.values.put(obj, create);
                if (put != null) {
                    Data.Builder builder3 = (Data.Builder) this.map;
                    builder3.getClass();
                    builder3.values.put(obj, put);
                } else {
                    this.size++;
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
        synchronized (((Transition.AnonymousClass1) this.lock)) {
            this.size++;
            Data.Builder builder = (Data.Builder) this.map;
            builder.getClass();
            put = builder.values.put(obj, obj2);
            if (put != null) {
                this.size--;
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
        obj.getClass();
        synchronized (((Transition.AnonymousClass1) this.lock)) {
            Data.Builder builder = (Data.Builder) this.map;
            builder.getClass();
            remove = builder.values.remove(obj);
            if (remove != null) {
                this.size--;
            }
        }
        if (remove != null) {
            entryRemoved(obj, remove, null);
        }
        return remove;
    }

    public String toString() {
        String str;
        switch (this.$r8$classId) {
            case 0:
                synchronized (((Transition.AnonymousClass1) this.lock)) {
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

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0096, code lost:
    
        throw new java.lang.IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!");
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0067 A[Catch: all -> 0x001a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x001a, blocks: (B:4:0x0005, B:6:0x0009, B:8:0x0015, B:16:0x001d, B:18:0x0021, B:20:0x002e, B:22:0x0042, B:25:0x0061, B:27:0x0067, B:33:0x004c, B:34:0x0052, B:37:0x005d, B:12:0x008f, B:13:0x0096), top: B:3:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0065 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void trimToSize(int r6) {
        /*
            r5 = this;
        L0:
            java.lang.Object r0 = r5.lock
            androidx.transition.Transition$1 r0 = (androidx.transition.Transition.AnonymousClass1) r0
            monitor-enter(r0)
            int r1 = r5.size     // Catch: java.lang.Throwable -> L1a
            if (r1 < 0) goto L8f
            java.lang.Object r1 = r5.map     // Catch: java.lang.Throwable -> L1a
            androidx.work.Data$Builder r1 = (androidx.work.Data.Builder) r1     // Catch: java.lang.Throwable -> L1a
            java.util.LinkedHashMap r1 = r1.values     // Catch: java.lang.Throwable -> L1a
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L1a
            if (r1 == 0) goto L1d
            int r1 = r5.size     // Catch: java.lang.Throwable -> L1a
            if (r1 != 0) goto L8f
            goto L1d
        L1a:
            r5 = move-exception
            goto L97
        L1d:
            int r1 = r5.size     // Catch: java.lang.Throwable -> L1a
            if (r1 <= r6) goto L8d
            java.lang.Object r1 = r5.map     // Catch: java.lang.Throwable -> L1a
            androidx.work.Data$Builder r1 = (androidx.work.Data.Builder) r1     // Catch: java.lang.Throwable -> L1a
            java.util.LinkedHashMap r1 = r1.values     // Catch: java.lang.Throwable -> L1a
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L1a
            if (r1 == 0) goto L2e
            goto L8d
        L2e:
            java.lang.Object r1 = r5.map     // Catch: java.lang.Throwable -> L1a
            androidx.work.Data$Builder r1 = (androidx.work.Data.Builder) r1     // Catch: java.lang.Throwable -> L1a
            java.util.LinkedHashMap r1 = r1.values     // Catch: java.lang.Throwable -> L1a
            java.util.Set r1 = r1.entrySet()     // Catch: java.lang.Throwable -> L1a
            r1.getClass()     // Catch: java.lang.Throwable -> L1a
            java.lang.Iterable r1 = (java.lang.Iterable) r1     // Catch: java.lang.Throwable -> L1a
            boolean r2 = r1 instanceof java.util.List     // Catch: java.lang.Throwable -> L1a
            r3 = 0
            if (r2 == 0) goto L52
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Throwable -> L1a
            boolean r2 = r1.isEmpty()     // Catch: java.lang.Throwable -> L1a
            if (r2 == 0) goto L4c
        L4a:
            r1 = r3
            goto L61
        L4c:
            r2 = 0
            java.lang.Object r1 = r1.get(r2)     // Catch: java.lang.Throwable -> L1a
            goto L61
        L52:
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L1a
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L1a
            if (r2 != 0) goto L5d
            goto L4a
        L5d:
            java.lang.Object r1 = r1.next()     // Catch: java.lang.Throwable -> L1a
        L61:
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch: java.lang.Throwable -> L1a
            if (r1 != 0) goto L67
            monitor-exit(r0)
            return
        L67:
            java.lang.Object r2 = r1.getKey()     // Catch: java.lang.Throwable -> L1a
            java.lang.Object r1 = r1.getValue()     // Catch: java.lang.Throwable -> L1a
            java.lang.Object r4 = r5.map     // Catch: java.lang.Throwable -> L1a
            androidx.work.Data$Builder r4 = (androidx.work.Data.Builder) r4     // Catch: java.lang.Throwable -> L1a
            r4.getClass()     // Catch: java.lang.Throwable -> L1a
            r2.getClass()     // Catch: java.lang.Throwable -> L1a
            java.util.LinkedHashMap r4 = r4.values     // Catch: java.lang.Throwable -> L1a
            r4.remove(r2)     // Catch: java.lang.Throwable -> L1a
            int r4 = r5.size     // Catch: java.lang.Throwable -> L1a
            r1.getClass()     // Catch: java.lang.Throwable -> L1a
            int r4 = r4 + (-1)
            r5.size = r4     // Catch: java.lang.Throwable -> L1a
            monitor-exit(r0)
            r5.entryRemoved(r2, r1, r3)
            goto L0
        L8d:
            monitor-exit(r0)
            return
        L8f:
            java.lang.String r5 = "LruCache.sizeOf() is reporting inconsistent results!"
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L1a
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L1a
            throw r6     // Catch: java.lang.Throwable -> L1a
        L97:
            monitor-exit(r0)
            throw r5
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
