package com.bumptech.glide.load.engine.bitmap_recycle;

import android.util.Log;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;
import androidx.compose.foundation.lazy.grid.LazyGridMeasuredItem;
import androidx.compose.foundation.lazy.grid.LazyGridMeasuredLine;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.InlineClassHelperKt;
import androidx.core.provider.FontsContractCompat$FontFamilyResult;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy;
import com.bumptech.glide.util.Util;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.List;
import java.util.NavigableMap;
import java.util.TreeMap;
import okhttp3.internal.http.RealInterceptorChain;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LruArrayPool {
    public final Object adapters;
    public int currentSize;
    public final Object groupedMap;
    public final Object keyPool;
    public final int maxSize;
    public final Object sortedSizes;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Key implements Poolable {
        public Class arrayClass;
        public final KeyPool pool;
        public int size;

        public Key(KeyPool keyPool) {
            this.pool = keyPool;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Key) {
                Key key = (Key) obj;
                if (this.size == key.size && this.arrayClass == key.arrayClass) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int i = this.size * 31;
            Class cls = this.arrayClass;
            return i + (cls != null ? cls.hashCode() : 0);
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public final void offer() {
            this.pool.offer(this);
        }

        public final String toString() {
            return "Key{size=" + this.size + "array=" + this.arrayClass + '}';
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class KeyPool extends DnsQueryResult {
        public final /* synthetic */ int $r8$classId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ KeyPool(int i) {
            super(6);
            this.$r8$classId = i;
        }

        public final Poolable create() {
            switch (this.$r8$classId) {
                case 0:
                    return new Key(this);
                default:
                    return new SizeConfigStrategy.Key(this);
            }
        }
    }

    public LruArrayPool(int i) {
        this.groupedMap = new Base64Util(15);
        this.keyPool = new KeyPool(0);
        this.sortedSizes = new HashMap();
        this.adapters = new HashMap();
        this.maxSize = i;
    }

    /* renamed from: childConstraints-JhjzzOo$foundation, reason: not valid java name */
    public long m928childConstraintsJhjzzOo$foundation(int i, int i2) {
        int i3;
        CardView.AnonymousClass1 anonymousClass1 = (CardView.AnonymousClass1) this.groupedMap;
        int[] iArr = (int[]) anonymousClass1.mCardBackground;
        if (i2 == 1) {
            i3 = iArr[i];
        } else {
            int i4 = (i2 + i) - 1;
            int[] iArr2 = (int[]) anonymousClass1.this$0;
            i3 = (iArr2[i4] + iArr[i4]) - iArr2[i];
        }
        if (i3 < 0) {
            i3 = 0;
        }
        if (i3 < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("width must be >= 0");
        }
        return ConstraintsKt.createConstraints(i3, i3, 0, Integer.MAX_VALUE);
    }

    public synchronized void clearMemory() {
        evictToSize(0);
    }

    public void decrementArrayOfSize(int i, Class cls) {
        NavigableMap sizesForAdapter = getSizesForAdapter(cls);
        Integer num = (Integer) sizesForAdapter.get(Integer.valueOf(i));
        if (num != null) {
            if (num.intValue() == 1) {
                sizesForAdapter.remove(Integer.valueOf(i));
                return;
            } else {
                sizesForAdapter.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
    }

    public void evictToSize(int i) {
        while (this.currentSize > i) {
            Object removeLast = ((Base64Util) this.groupedMap).removeLast();
            Util.checkNotNull(removeLast);
            ByteArrayAdapter adapterFromType = getAdapterFromType(removeLast.getClass());
            this.currentSize -= adapterFromType.getElementSizeInBytes() * adapterFromType.getArrayLength(removeLast);
            decrementArrayOfSize(adapterFromType.getArrayLength(removeLast), removeLast.getClass());
            if (Log.isLoggable(adapterFromType.getTag(), 2)) {
                Log.v(adapterFromType.getTag(), "evicted: " + adapterFromType.getArrayLength(removeLast));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002d A[Catch: all -> 0x0048, TRY_ENTER, TryCatch #0 {all -> 0x0048, blocks: (B:3:0x0001, B:5:0x0011, B:7:0x0015, B:10:0x001c, B:16:0x002d, B:18:0x003d, B:19:0x0041, B:20:0x0060, B:25:0x004a, B:27:0x0056, B:28:0x005a), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004a A[Catch: all -> 0x0048, TryCatch #0 {all -> 0x0048, blocks: (B:3:0x0001, B:5:0x0011, B:7:0x0015, B:10:0x001c, B:16:0x002d, B:18:0x003d, B:19:0x0041, B:20:0x0060, B:25:0x004a, B:27:0x0056, B:28:0x005a), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.lang.Object get(int r4, java.lang.Class r5) {
        /*
            r3 = this;
            monitor-enter(r3)
            java.util.NavigableMap r0 = r3.getSizesForAdapter(r5)     // Catch: java.lang.Throwable -> L48
            java.lang.Integer r1 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L48
            java.lang.Object r0 = r0.ceilingKey(r1)     // Catch: java.lang.Throwable -> L48
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Throwable -> L48
            if (r0 == 0) goto L26
            int r1 = r3.currentSize     // Catch: java.lang.Throwable -> L48
            if (r1 == 0) goto L24
            int r2 = r3.maxSize     // Catch: java.lang.Throwable -> L48
            int r2 = r2 / r1
            r1 = 2
            if (r2 < r1) goto L1c
            goto L24
        L1c:
            int r1 = r0.intValue()     // Catch: java.lang.Throwable -> L48
            int r2 = r4 * 8
            if (r1 > r2) goto L26
        L24:
            r1 = 1
            goto L27
        L26:
            r1 = 0
        L27:
            java.lang.Object r2 = r3.keyPool
            com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool$KeyPool r2 = (com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool.KeyPool) r2
            if (r1 == 0) goto L4a
            int r4 = r0.intValue()     // Catch: java.lang.Throwable -> L48
            java.lang.Object r0 = r2.response     // Catch: java.lang.Throwable -> L48
            java.util.ArrayDeque r0 = (java.util.ArrayDeque) r0     // Catch: java.lang.Throwable -> L48
            java.lang.Object r0 = r0.poll()     // Catch: java.lang.Throwable -> L48
            com.bumptech.glide.load.engine.bitmap_recycle.Poolable r0 = (com.bumptech.glide.load.engine.bitmap_recycle.Poolable) r0     // Catch: java.lang.Throwable -> L48
            if (r0 != 0) goto L41
            com.bumptech.glide.load.engine.bitmap_recycle.Poolable r0 = r2.create()     // Catch: java.lang.Throwable -> L48
        L41:
            com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool$Key r0 = (com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool.Key) r0     // Catch: java.lang.Throwable -> L48
            r0.size = r4     // Catch: java.lang.Throwable -> L48
            r0.arrayClass = r5     // Catch: java.lang.Throwable -> L48
            goto L60
        L48:
            r4 = move-exception
            goto L66
        L4a:
            java.lang.Object r0 = r2.response     // Catch: java.lang.Throwable -> L48
            java.util.ArrayDeque r0 = (java.util.ArrayDeque) r0     // Catch: java.lang.Throwable -> L48
            java.lang.Object r0 = r0.poll()     // Catch: java.lang.Throwable -> L48
            com.bumptech.glide.load.engine.bitmap_recycle.Poolable r0 = (com.bumptech.glide.load.engine.bitmap_recycle.Poolable) r0     // Catch: java.lang.Throwable -> L48
            if (r0 != 0) goto L5a
            com.bumptech.glide.load.engine.bitmap_recycle.Poolable r0 = r2.create()     // Catch: java.lang.Throwable -> L48
        L5a:
            com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool$Key r0 = (com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool.Key) r0     // Catch: java.lang.Throwable -> L48
            r0.size = r4     // Catch: java.lang.Throwable -> L48
            r0.arrayClass = r5     // Catch: java.lang.Throwable -> L48
        L60:
            java.lang.Object r4 = r3.getForKey(r0, r5)     // Catch: java.lang.Throwable -> L48
            monitor-exit(r3)
            return r4
        L66:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L48
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool.get(int, java.lang.Class):java.lang.Object");
    }

    public ByteArrayAdapter getAdapterFromType(Class cls) {
        ByteArrayAdapter byteArrayAdapter;
        HashMap hashMap = (HashMap) this.adapters;
        ByteArrayAdapter byteArrayAdapter2 = (ByteArrayAdapter) hashMap.get(cls);
        if (byteArrayAdapter2 != null) {
            return byteArrayAdapter2;
        }
        if (cls.equals(int[].class)) {
            byteArrayAdapter = new ByteArrayAdapter(1);
        } else {
            if (!cls.equals(byte[].class)) {
                UriKt$$ExternalSyntheticBUOutline0.m("No array pool found for: ".concat(cls.getSimpleName()));
                return null;
            }
            byteArrayAdapter = new ByteArrayAdapter(0);
        }
        hashMap.put(cls, byteArrayAdapter);
        return byteArrayAdapter;
    }

    public LazyGridMeasuredLine getAndMeasure(int i) {
        FontsContractCompat$FontFamilyResult lineConfiguration = ((RealInterceptorChain) this.sortedSizes).getLineConfiguration(i);
        int i2 = lineConfiguration.mStatusCode;
        int size = lineConfiguration.mFonts.size();
        int i3 = 0;
        int i4 = (size == 0 || i2 + size == this.maxSize) ? 0 : this.currentSize;
        LazyGridMeasuredItem[] lazyGridMeasuredItemArr = new LazyGridMeasuredItem[size];
        int i5 = 0;
        while (true) {
            List list = lineConfiguration.mFonts;
            if (i3 >= size) {
                return new LazyGridMeasuredLine(i, lazyGridMeasuredItemArr, (CardView.AnonymousClass1) this.adapters, list, i4);
            }
            int i6 = (int) ((GridItemSpan) list.get(i3)).packedValue;
            int i7 = i4;
            LazyGridMeasuredItem m249getAndMeasurem8Kt_7k = ((LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1) this.keyPool).m249getAndMeasurem8Kt_7k(i2 + i3, m928childConstraintsJhjzzOo$foundation(i5, i6), i5, i6, i7);
            i5 += i6;
            lazyGridMeasuredItemArr[i3] = m249getAndMeasurem8Kt_7k;
            i3++;
            i4 = i7;
        }
    }

    public Object getForKey(Key key, Class cls) {
        ByteArrayAdapter adapterFromType = getAdapterFromType(cls);
        Object obj = ((Base64Util) this.groupedMap).get(key);
        if (obj != null) {
            this.currentSize -= adapterFromType.getElementSizeInBytes() * adapterFromType.getArrayLength(obj);
            decrementArrayOfSize(adapterFromType.getArrayLength(obj), cls);
        }
        if (obj != null) {
            return obj;
        }
        if (Log.isLoggable(adapterFromType.getTag(), 2)) {
            Log.v(adapterFromType.getTag(), "Allocated " + key.size + " bytes");
        }
        int i = key.size;
        switch (adapterFromType.$r8$classId) {
            case 0:
                return new byte[i];
            default:
                return new int[i];
        }
    }

    public NavigableMap getSizesForAdapter(Class cls) {
        HashMap hashMap = (HashMap) this.sortedSizes;
        NavigableMap navigableMap = (NavigableMap) hashMap.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        hashMap.put(cls, treeMap);
        return treeMap;
    }

    public synchronized void put(Object obj) {
        Class<?> cls = obj.getClass();
        ByteArrayAdapter adapterFromType = getAdapterFromType(cls);
        int arrayLength = adapterFromType.getArrayLength(obj);
        int elementSizeInBytes = adapterFromType.getElementSizeInBytes() * arrayLength;
        if (elementSizeInBytes <= this.maxSize / 2) {
            KeyPool keyPool = (KeyPool) this.keyPool;
            Poolable poolable = (Poolable) ((ArrayDeque) keyPool.response).poll();
            if (poolable == null) {
                poolable = keyPool.create();
            }
            Key key = (Key) poolable;
            key.size = arrayLength;
            key.arrayClass = cls;
            ((Base64Util) this.groupedMap).put(key, obj);
            NavigableMap sizesForAdapter = getSizesForAdapter(cls);
            Integer num = (Integer) sizesForAdapter.get(Integer.valueOf(key.size));
            Integer valueOf = Integer.valueOf(key.size);
            int i = 1;
            if (num != null) {
                i = 1 + num.intValue();
            }
            sizesForAdapter.put(valueOf, Integer.valueOf(i));
            this.currentSize += elementSizeInBytes;
            evictToSize(this.maxSize);
        }
    }

    public synchronized void trimMemory(int i) {
        try {
            if (i >= 40) {
                clearMemory();
            } else if (i >= 20 || i == 15) {
                evictToSize(this.maxSize / 2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public LruArrayPool(CardView.AnonymousClass1 anonymousClass1, int i, int i2, LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1, RealInterceptorChain realInterceptorChain) {
        this.adapters = anonymousClass1;
        this.groupedMap = anonymousClass1;
        this.maxSize = i;
        this.currentSize = i2;
        this.keyPool = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;
        this.sortedSizes = realInterceptorChain;
    }
}
