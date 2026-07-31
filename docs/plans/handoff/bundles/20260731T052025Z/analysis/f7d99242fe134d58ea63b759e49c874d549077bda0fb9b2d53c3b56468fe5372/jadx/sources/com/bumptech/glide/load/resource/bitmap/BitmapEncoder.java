package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BitmapEncoder implements ResourceEncoder {
    public final LruArrayPool arrayPool;
    public static final Option COMPRESSION_QUALITY = Option.memory(90, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality");
    public static final Option COMPRESSION_FORMAT = new Option("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat", null, Option.EMPTY_UPDATER);

    public BitmapEncoder(LruArrayPool lruArrayPool) {
        this.arrayPool = lruArrayPool;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0077  */
    @Override // com.bumptech.glide.load.Encoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean encode(java.lang.Object r9, java.io.File r10, com.bumptech.glide.load.Options r11) {
        /*
            r8 = this;
            com.bumptech.glide.load.engine.Resource r9 = (com.bumptech.glide.load.engine.Resource) r9
            java.lang.String r0 = "BitmapEncoder"
            java.lang.Object r9 = r9.get()
            android.graphics.Bitmap r9 = (android.graphics.Bitmap) r9
            com.bumptech.glide.load.Option r1 = com.bumptech.glide.load.resource.bitmap.BitmapEncoder.COMPRESSION_FORMAT
            java.lang.Object r2 = r11.get(r1)
            android.graphics.Bitmap$CompressFormat r2 = (android.graphics.Bitmap.CompressFormat) r2
            if (r2 == 0) goto L15
            goto L20
        L15:
            boolean r2 = r9.hasAlpha()
            if (r2 == 0) goto L1e
            android.graphics.Bitmap$CompressFormat r2 = android.graphics.Bitmap.CompressFormat.PNG
            goto L20
        L1e:
            android.graphics.Bitmap$CompressFormat r2 = android.graphics.Bitmap.CompressFormat.JPEG
        L20:
            r9.getWidth()
            r9.getHeight()
            int r3 = com.bumptech.glide.util.LogTime.$r8$clinit
            long r3 = android.os.SystemClock.elapsedRealtimeNanos()
            com.bumptech.glide.load.Option r5 = com.bumptech.glide.load.resource.bitmap.BitmapEncoder.COMPRESSION_QUALITY
            java.lang.Object r5 = r11.get(r5)
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            r6 = 0
            java.io.FileOutputStream r7 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L5d
            r7.<init>(r10)     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L5d
            com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool r8 = r8.arrayPool
            if (r8 == 0) goto L4f
            com.bumptech.glide.load.data.BufferedOutputStream r10 = new com.bumptech.glide.load.data.BufferedOutputStream     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
            r10.<init>(r7, r8)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4c
            r6 = r10
            goto L50
        L49:
            r8 = move-exception
            r6 = r7
            goto Lb9
        L4c:
            r8 = move-exception
            r6 = r7
            goto L5e
        L4f:
            r6 = r7
        L50:
            r9.compress(r2, r5, r6)     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L5d
            r6.close()     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L5d
            r6.close()     // Catch: java.io.IOException -> L59 java.lang.Throwable -> Lbf
        L59:
            r8 = 1
            goto L70
        L5b:
            r8 = move-exception
            goto Lb9
        L5d:
            r8 = move-exception
        L5e:
            r10 = 3
            boolean r10 = android.util.Log.isLoggable(r0, r10)     // Catch: java.lang.Throwable -> L5b
            if (r10 == 0) goto L6a
            java.lang.String r10 = "Failed to encode Bitmap"
            android.util.Log.d(r0, r10, r8)     // Catch: java.lang.Throwable -> L5b
        L6a:
            if (r6 == 0) goto L6f
            r6.close()     // Catch: java.io.IOException -> L6f java.lang.Throwable -> Lbf
        L6f:
            r8 = 0
        L70:
            r10 = 2
            boolean r10 = android.util.Log.isLoggable(r0, r10)
            if (r10 == 0) goto Lb8
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r5 = "Compressed with type: "
            r10.<init>(r5)
            r10.append(r2)
            java.lang.String r2 = " of size "
            r10.append(r2)
            int r2 = com.bumptech.glide.util.Util.getBitmapByteSize(r9)
            r10.append(r2)
            java.lang.String r2 = " in "
            r10.append(r2)
            double r2 = com.bumptech.glide.util.LogTime.getElapsedMillis(r3)
            r10.append(r2)
            java.lang.String r2 = ", options format: "
            r10.append(r2)
            java.lang.Object r11 = r11.get(r1)
            r10.append(r11)
            java.lang.String r11 = ", hasAlpha: "
            r10.append(r11)
            boolean r9 = r9.hasAlpha()
            r10.append(r9)
            java.lang.String r9 = r10.toString()
            android.util.Log.v(r0, r9)
        Lb8:
            return r8
        Lb9:
            if (r6 == 0) goto Lc1
            r6.close()     // Catch: java.lang.Throwable -> Lbf java.io.IOException -> Lc1
            goto Lc1
        Lbf:
            r8 = move-exception
            throw r8
        Lc1:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.BitmapEncoder.encode(java.lang.Object, java.io.File, com.bumptech.glide.load.Options):boolean");
    }

    @Override // com.bumptech.glide.load.ResourceEncoder
    public final int getEncodeStrategy(Options options) {
        return 2;
    }
}
