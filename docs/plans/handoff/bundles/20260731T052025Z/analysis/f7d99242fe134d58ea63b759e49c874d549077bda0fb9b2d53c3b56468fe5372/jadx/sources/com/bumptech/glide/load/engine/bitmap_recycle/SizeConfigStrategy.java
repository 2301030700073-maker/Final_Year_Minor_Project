package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import android.os.Build;
import androidx.compose.ui.Modifier;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.util.Util;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SizeConfigStrategy {
    public static final Bitmap.Config[] ALPHA_8_IN_CONFIGS;
    public static final Bitmap.Config[] ARGB_4444_IN_CONFIGS;
    public static final Bitmap.Config[] ARGB_8888_IN_CONFIGS;
    public static final Bitmap.Config[] RGBA_F16_IN_CONFIGS;
    public static final Bitmap.Config[] RGB_565_IN_CONFIGS;
    public final LruArrayPool.KeyPool keyPool = new LruArrayPool.KeyPool(1);
    public final Base64Util groupedMap = new Base64Util(15);
    public final HashMap sortedSizes = new HashMap();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            $SwitchMap$android$graphics$Bitmap$Config = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Key implements Poolable {
        public Bitmap.Config config;
        public final LruArrayPool.KeyPool pool;
        public int size;

        public Key(LruArrayPool.KeyPool keyPool) {
            this.pool = keyPool;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Key) {
                Key key = (Key) obj;
                if (this.size == key.size && Util.bothNullOrEqual(this.config, key.config)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int i = this.size * 31;
            Bitmap.Config config = this.config;
            return i + (config != null ? config.hashCode() : 0);
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public final void offer() {
            this.pool.offer(this);
        }

        public final String toString() {
            return SizeConfigStrategy.getBitmapString(this.size, this.config);
        }
    }

    static {
        Bitmap.Config config;
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            int length = configArr.length - 1;
            config = Bitmap.Config.RGBA_F16;
            configArr[length] = config;
        }
        ARGB_8888_IN_CONFIGS = configArr;
        RGBA_F16_IN_CONFIGS = configArr;
        RGB_565_IN_CONFIGS = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        ARGB_4444_IN_CONFIGS = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        ALPHA_8_IN_CONFIGS = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    public static String getBitmapString(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    public final void decrementBitmapOfSize(Integer num, Bitmap bitmap) {
        NavigableMap sizesForConfig = getSizesForConfig(bitmap.getConfig());
        Integer num2 = (Integer) sizesForConfig.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                sizesForConfig.remove(num);
                return;
            } else {
                sizesForConfig.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        StringBuilder sb = new StringBuilder("Tried to decrement empty size, size: ");
        sb.append(num);
        String bitmapString = getBitmapString(Util.getBitmapByteSize(bitmap), bitmap.getConfig());
        sb.append(", removed: ");
        sb.append(bitmapString);
        sb.append(", this: ");
        sb.append(this);
        throw new NullPointerException(sb.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a6 A[EDGE_INSN: B:34:0x00a6->B:20:0x00a6 BREAK  A[LOOP:0: B:10:0x0058->B:32:0x00a3], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap get(int r11, int r12, android.graphics.Bitmap.Config r13) {
        /*
            r10 = this;
            int r0 = r11 * r12
            int r1 = com.bumptech.glide.util.Util.getBytesPerPixel(r13)
            int r1 = r1 * r0
            com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool$KeyPool r0 = r10.keyPool
            java.lang.Object r2 = r0.response
            java.util.ArrayDeque r2 = (java.util.ArrayDeque) r2
            java.lang.Object r2 = r2.poll()
            com.bumptech.glide.load.engine.bitmap_recycle.Poolable r2 = (com.bumptech.glide.load.engine.bitmap_recycle.Poolable) r2
            if (r2 != 0) goto L19
            com.bumptech.glide.load.engine.bitmap_recycle.Poolable r2 = r0.create()
        L19:
            com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy$Key r2 = (com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.Key) r2
            r2.size = r1
            r2.config = r13
            int r3 = android.os.Build.VERSION.SDK_INT
            r4 = 26
            r5 = 0
            if (r3 < r4) goto L33
            android.graphics.Bitmap$Config r3 = androidx.compose.ui.graphics.colorspace.Rgb$$ExternalSyntheticLambda2.m()
            boolean r3 = r3.equals(r13)
            if (r3 == 0) goto L33
            android.graphics.Bitmap$Config[] r3 = com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.RGBA_F16_IN_CONFIGS
            goto L57
        L33:
            int[] r3 = com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.AnonymousClass1.$SwitchMap$android$graphics$Bitmap$Config
            int r4 = r13.ordinal()
            r3 = r3[r4]
            r4 = 1
            if (r3 == r4) goto L55
            r6 = 2
            if (r3 == r6) goto L52
            r6 = 3
            if (r3 == r6) goto L4f
            r6 = 4
            if (r3 == r6) goto L4c
            android.graphics.Bitmap$Config[] r3 = new android.graphics.Bitmap.Config[r4]
            r3[r5] = r13
            goto L57
        L4c:
            android.graphics.Bitmap$Config[] r3 = com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.ALPHA_8_IN_CONFIGS
            goto L57
        L4f:
            android.graphics.Bitmap$Config[] r3 = com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.ARGB_4444_IN_CONFIGS
            goto L57
        L52:
            android.graphics.Bitmap$Config[] r3 = com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.RGB_565_IN_CONFIGS
            goto L57
        L55:
            android.graphics.Bitmap$Config[] r3 = com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.ARGB_8888_IN_CONFIGS
        L57:
            int r4 = r3.length
        L58:
            if (r5 >= r4) goto La6
            r6 = r3[r5]
            java.util.NavigableMap r7 = r10.getSizesForConfig(r6)
            java.lang.Integer r8 = java.lang.Integer.valueOf(r1)
            java.lang.Object r7 = r7.ceilingKey(r8)
            java.lang.Integer r7 = (java.lang.Integer) r7
            if (r7 == 0) goto La3
            int r8 = r7.intValue()
            int r9 = r1 * 8
            if (r8 > r9) goto La3
            int r3 = r7.intValue()
            if (r3 != r1) goto L85
            if (r6 != 0) goto L7f
            if (r13 == 0) goto La6
            goto L85
        L7f:
            boolean r1 = r6.equals(r13)
            if (r1 != 0) goto La6
        L85:
            r0.offer(r2)
            int r1 = r7.intValue()
            java.lang.Object r2 = r0.response
            java.util.ArrayDeque r2 = (java.util.ArrayDeque) r2
            java.lang.Object r2 = r2.poll()
            com.bumptech.glide.load.engine.bitmap_recycle.Poolable r2 = (com.bumptech.glide.load.engine.bitmap_recycle.Poolable) r2
            if (r2 != 0) goto L9c
            com.bumptech.glide.load.engine.bitmap_recycle.Poolable r2 = r0.create()
        L9c:
            com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy$Key r2 = (com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.Key) r2
            r2.size = r1
            r2.config = r6
            goto La6
        La3:
            int r5 = r5 + 1
            goto L58
        La6:
            com.beetstra.jutf7.Base64Util r0 = r10.groupedMap
            java.lang.Object r0 = r0.get(r2)
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0
            if (r0 == 0) goto Lbc
            int r1 = r2.size
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r10.decrementBitmapOfSize(r1, r0)
            r0.reconfigure(r11, r12, r13)
        Lbc:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.get(int, int, android.graphics.Bitmap$Config):android.graphics.Bitmap");
    }

    public final NavigableMap getSizesForConfig(Bitmap.Config config) {
        HashMap hashMap = this.sortedSizes;
        NavigableMap navigableMap = (NavigableMap) hashMap.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        hashMap.put(config, treeMap);
        return treeMap;
    }

    public final void put(Bitmap bitmap) {
        int bitmapByteSize = Util.getBitmapByteSize(bitmap);
        Bitmap.Config config = bitmap.getConfig();
        LruArrayPool.KeyPool keyPool = this.keyPool;
        Poolable poolable = (Poolable) ((ArrayDeque) keyPool.response).poll();
        if (poolable == null) {
            poolable = keyPool.create();
        }
        Key key = (Key) poolable;
        key.size = bitmapByteSize;
        key.config = config;
        this.groupedMap.put(key, bitmap);
        NavigableMap sizesForConfig = getSizesForConfig(bitmap.getConfig());
        Integer num = (Integer) sizesForConfig.get(Integer.valueOf(key.size));
        sizesForConfig.put(Integer.valueOf(key.size), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    public final String toString() {
        StringBuilder m = Modifier.CC.m("SizeConfigStrategy{groupedMap=");
        m.append(this.groupedMap);
        m.append(", sortedSizes=(");
        HashMap hashMap = this.sortedSizes;
        for (Map.Entry entry : hashMap.entrySet()) {
            m.append(entry.getKey());
            m.append('[');
            m.append(entry.getValue());
            m.append("], ");
        }
        if (!hashMap.isEmpty()) {
            m.replace(m.length() - 2, m.length(), "");
        }
        m.append(")}");
        return m.toString();
    }
}
