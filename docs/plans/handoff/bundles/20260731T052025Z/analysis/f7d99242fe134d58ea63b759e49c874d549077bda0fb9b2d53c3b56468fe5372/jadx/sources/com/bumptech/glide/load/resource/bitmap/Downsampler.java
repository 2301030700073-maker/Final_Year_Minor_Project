package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.util.Util;
import com.fsck.k9.backend.imap.ImapSync;
import j$.util.DesugarCollections;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Set;
import okio.AsyncTimeout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Downsampler {
    public static final Option ALLOW_HARDWARE_CONFIG;
    public static final AsyncTimeout.Companion EMPTY_CALLBACKS;
    public static final Option FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS;
    public static final Set NO_DOWNSAMPLE_PRE_N_MIME_TYPES;
    public static final ArrayDeque OPTIONS_QUEUE;
    public final BitmapPool bitmapPool;
    public final LruArrayPool byteArrayPool;
    public final DisplayMetrics displayMetrics;
    public final HardwareConfigState hardwareConfigState = HardwareConfigState.getInstance();
    public final ArrayList parsers;
    public static final Option DECODE_FORMAT = Option.memory(DecodeFormat.DEFAULT, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat");
    public static final Option PREFERRED_COLOR_SPACE = new Option("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", null, Option.EMPTY_UPDATER);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface DecodeCallbacks {
        void onDecodeComplete(Bitmap bitmap, BitmapPool bitmapPool);

        void onObtainBounds();
    }

    static {
        DownsampleStrategy$None downsampleStrategy$None = DownsampleStrategy$None.FIT_CENTER;
        Boolean bool = Boolean.FALSE;
        FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS = Option.memory(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize");
        ALLOW_HARDWARE_CONFIG = Option.memory(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode");
        NO_DOWNSAMPLE_PRE_N_MIME_TYPES = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        EMPTY_CALLBACKS = new AsyncTimeout.Companion(15);
        DesugarCollections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        OPTIONS_QUEUE = new ArrayDeque(0);
    }

    public Downsampler(ArrayList arrayList, DisplayMetrics displayMetrics, BitmapPool bitmapPool, LruArrayPool lruArrayPool) {
        this.parsers = arrayList;
        Util.checkNotNull(displayMetrics, "Argument must not be null");
        this.displayMetrics = displayMetrics;
        Util.checkNotNull(bitmapPool, "Argument must not be null");
        this.bitmapPool = bitmapPool;
        Util.checkNotNull(lruArrayPool, "Argument must not be null");
        this.byteArrayPool = lruArrayPool;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
    
        throw r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap decodeStream(com.fsck.k9.backend.imap.ImapSync r9, android.graphics.BitmapFactory.Options r10, com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks r11, com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool r12) {
        /*
            java.lang.String r0 = "Downsampler"
            boolean r1 = r10.inJustDecodeBounds
            if (r1 != 0) goto L22
            r11.onObtainBounds()
            int r1 = r9.$r8$classId
            switch(r1) {
                case 9: goto L22;
                case 10: goto Lf;
                default: goto Le;
            }
        Le:
            goto L22
        Lf:
            java.lang.Object r1 = r9.accountName
            com.bumptech.glide.load.data.InputStreamRewinder r1 = (com.bumptech.glide.load.data.InputStreamRewinder) r1
            java.lang.Object r1 = r1.bufferedStream
            com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream r1 = (com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream) r1
            monitor-enter(r1)
            byte[] r2 = r1.buf     // Catch: java.lang.Throwable -> L1f
            int r2 = r2.length     // Catch: java.lang.Throwable -> L1f
            r1.marklimit = r2     // Catch: java.lang.Throwable -> L1f
            monitor-exit(r1)
            goto L22
        L1f:
            r9 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1f
            throw r9
        L22:
            int r1 = r10.outWidth
            int r2 = r10.outHeight
            java.lang.String r3 = r10.outMimeType
            java.util.concurrent.locks.Lock r4 = com.bumptech.glide.load.resource.bitmap.TransformationUtils.BITMAP_DRAWABLE_LOCK
            r4.lock()
            android.graphics.Bitmap r9 = r9.decodeBitmap(r10)     // Catch: java.lang.IllegalArgumentException -> L35 java.lang.Throwable -> L7c
            r4.unlock()
            return r9
        L35:
            r4 = move-exception
            java.io.IOException r5 = new java.io.IOException     // Catch: java.lang.Throwable -> L7c
            java.lang.String r6 = "Exception decoding bitmap, outWidth: "
            java.lang.String r7 = ", outHeight: "
            java.lang.String r8 = ", outMimeType: "
            java.lang.StringBuilder r1 = androidx.camera.core.impl.Config.CC.m91m(r6, r1, r7, r2, r8)     // Catch: java.lang.Throwable -> L7c
            r1.append(r3)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r2 = ", inBitmap: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L7c
            android.graphics.Bitmap r2 = r10.inBitmap     // Catch: java.lang.Throwable -> L7c
            java.lang.String r2 = getBitmapString(r2)     // Catch: java.lang.Throwable -> L7c
            r1.append(r2)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L7c
            r5.<init>(r1, r4)     // Catch: java.lang.Throwable -> L7c
            r1 = 3
            boolean r1 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L7c
            if (r1 == 0) goto L66
            java.lang.String r1 = "Failed to decode with inBitmap, trying again without Bitmap re-use"
            android.util.Log.d(r0, r1, r5)     // Catch: java.lang.Throwable -> L7c
        L66:
            android.graphics.Bitmap r0 = r10.inBitmap     // Catch: java.lang.Throwable -> L7c
            if (r0 == 0) goto L7b
            r12.put(r0)     // Catch: java.io.IOException -> L7a java.lang.Throwable -> L7c
            r0 = 0
            r10.inBitmap = r0     // Catch: java.io.IOException -> L7a java.lang.Throwable -> L7c
            android.graphics.Bitmap r9 = decodeStream(r9, r10, r11, r12)     // Catch: java.io.IOException -> L7a java.lang.Throwable -> L7c
            java.util.concurrent.locks.Lock r10 = com.bumptech.glide.load.resource.bitmap.TransformationUtils.BITMAP_DRAWABLE_LOCK
            r10.unlock()
            return r9
        L7a:
            throw r5     // Catch: java.lang.Throwable -> L7c
        L7b:
            throw r5     // Catch: java.lang.Throwable -> L7c
        L7c:
            r9 = move-exception
            java.util.concurrent.locks.Lock r10 = com.bumptech.glide.load.resource.bitmap.TransformationUtils.BITMAP_DRAWABLE_LOCK
            r10.unlock()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.Downsampler.decodeStream(com.fsck.k9.backend.imap.ImapSync, android.graphics.BitmapFactory$Options, com.bumptech.glide.load.resource.bitmap.Downsampler$DecodeCallbacks, com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool):android.graphics.Bitmap");
    }

    public static String getBitmapString(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    public static void releaseOptions(BitmapFactory.Options options) {
        resetOptions(options);
        ArrayDeque arrayDeque = OPTIONS_QUEUE;
        synchronized (arrayDeque) {
            arrayDeque.offer(options);
        }
    }

    public static void resetOptions(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    public final BitmapResource decode(ImapSync imapSync, int i, int i2, Options options, DecodeCallbacks decodeCallbacks) {
        BitmapFactory.Options options2;
        BitmapFactory.Options options3;
        byte[] bArr = (byte[]) this.byteArrayPool.get(65536, byte[].class);
        synchronized (Downsampler.class) {
            ArrayDeque arrayDeque = OPTIONS_QUEUE;
            synchronized (arrayDeque) {
                options2 = (BitmapFactory.Options) arrayDeque.poll();
            }
            if (options2 == null) {
                options2 = new BitmapFactory.Options();
                resetOptions(options2);
            }
            options3 = options2;
        }
        options3.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) options.get(DECODE_FORMAT);
        PreferredColorSpace preferredColorSpace = (PreferredColorSpace) options.get(PREFERRED_COLOR_SPACE);
        DownsampleStrategy$None downsampleStrategy$None = (DownsampleStrategy$None) options.get(DownsampleStrategy$None.OPTION);
        boolean booleanValue = ((Boolean) options.get(FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS)).booleanValue();
        Option option = ALLOW_HARDWARE_CONFIG;
        try {
            return BitmapResource.obtain(decodeFromWrappedStreams(imapSync, options3, downsampleStrategy$None, decodeFormat, preferredColorSpace, options.get(option) != null && ((Boolean) options.get(option)).booleanValue(), i, i2, booleanValue, decodeCallbacks), this.bitmapPool);
        } finally {
            releaseOptions(options3);
            this.byteArrayPool.put(bArr);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x03ea A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x045c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0462  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0474  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x054d  */
    /* JADX WARN: Removed duplicated region for block: B:155:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0470  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03f3  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0425  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03a6  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0158 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02c1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap decodeFromWrappedStreams(com.fsck.k9.backend.imap.ImapSync r44, android.graphics.BitmapFactory.Options r45, com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$None r46, com.bumptech.glide.load.DecodeFormat r47, com.bumptech.glide.load.PreferredColorSpace r48, boolean r49, int r50, int r51, boolean r52, com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks r53) {
        /*
            Method dump skipped, instructions count: 1594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.Downsampler.decodeFromWrappedStreams(com.fsck.k9.backend.imap.ImapSync, android.graphics.BitmapFactory$Options, com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$None, com.bumptech.glide.load.DecodeFormat, com.bumptech.glide.load.PreferredColorSpace, boolean, int, int, boolean, com.bumptech.glide.load.resource.bitmap.Downsampler$DecodeCallbacks):android.graphics.Bitmap");
    }
}
