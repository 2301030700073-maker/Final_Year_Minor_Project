package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.mikepenz.fastadapter.VerboseLogger;
import j$.util.DesugarCollections;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VideoDecoder implements ResourceDecoder {
    public final BitmapPool bitmapPool;
    public final VerboseLogger factory = DEFAULT_FACTORY;
    public final MediaInitializer initializer;
    public static final Option TARGET_FRAME = new Option("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new AnonymousClass1(0));
    public static final Option FRAME_OPTION = new Option("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new AnonymousClass1(2));
    public static final VerboseLogger DEFAULT_FACTORY = new VerboseLogger();
    public static final List PIXEL_T_BUILD_ID_PREFIXES_REQUIRING_HDR_180_ROTATION_FIX = DesugarCollections.unmodifiableList(Arrays.asList("TP1A", "TD1A.220804.031"));

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface MediaInitializer {
        void initializeExtractor(MediaExtractor mediaExtractor, Object obj);

        void initializeRetriever(MediaMetadataRetriever mediaMetadataRetriever, Object obj);
    }

    public VideoDecoder(BitmapPool bitmapPool, MediaInitializer mediaInitializer) {
        this.bitmapPool = bitmapPool;
        this.initializer = mediaInitializer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource decode(Object obj, int i, int i2, Options options) {
        long longValue = ((Long) options.get(TARGET_FRAME)).longValue();
        if (longValue < 0 && longValue != -1) {
            UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(longValue, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "));
            return null;
        }
        Integer num = (Integer) options.get(FRAME_OPTION);
        if (num == null) {
            num = 2;
        }
        DownsampleStrategy$None downsampleStrategy$None = (DownsampleStrategy$None) options.get(DownsampleStrategy$None.OPTION);
        if (downsampleStrategy$None == null) {
            downsampleStrategy$None = DownsampleStrategy$None.DEFAULT;
        }
        DownsampleStrategy$None downsampleStrategy$None2 = downsampleStrategy$None;
        this.factory.getClass();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            this.initializer.initializeRetriever(mediaMetadataRetriever, obj);
            Bitmap decodeFrame = decodeFrame(obj, mediaMetadataRetriever, longValue, num.intValue(), i, i2, downsampleStrategy$None2);
            if (Build.VERSION.SDK_INT < 29) {
                mediaMetadataRetriever.release();
            } else if (mediaMetadataRetriever instanceof AutoCloseable) {
                mediaMetadataRetriever.close();
            } else if (mediaMetadataRetriever instanceof ExecutorService) {
                OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) mediaMetadataRetriever);
            } else {
                mediaMetadataRetriever.release();
            }
            return BitmapResource.obtain(decodeFrame, this.bitmapPool);
        } catch (Throwable th) {
            if (Build.VERSION.SDK_INT < 29) {
                mediaMetadataRetriever.release();
                throw th;
            }
            if (mediaMetadataRetriever instanceof AutoCloseable) {
                mediaMetadataRetriever.close();
                throw th;
            }
            if (mediaMetadataRetriever instanceof ExecutorService) {
                OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) mediaMetadataRetriever);
                throw th;
            }
            mediaMetadataRetriever.release();
            throw th;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:0|1|(4:5|6|7|(1:9)(6:10|11|12|(2:14|(1:16)(3:17|18|19))|22|23))|38|(5:45|46|47|(1:53)|51)|(1:59)|60|(3:93|(0)|(1:76)(2:77|78))(4:64|(3:67|(1:69)(1:91)|65)|92|(0)(0))|70|71|72|(3:80|81|(3:83|(1:85)|86))|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006c, code lost:
    
        if (r5 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x017c, code lost:
    
        if (android.util.Log.isLoggable("VideoDecoder", 3) != false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x017e, code lost:
    
        android.util.Log.d("VideoDecoder", "Exception trying to extract HDR transfer function or rotation");
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x010c, code lost:
    
        if (r0 < 33) goto L68;
     */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0185 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0186  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap decodeFrame(java.lang.Object r14, android.media.MediaMetadataRetriever r15, long r16, int r18, int r19, int r20, com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$None r21) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.VideoDecoder.decodeFrame(java.lang.Object, android.media.MediaMetadataRetriever, long, int, int, int, com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$None):android.graphics.Bitmap");
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean handles(Object obj, Options options) {
        return true;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$1, reason: invalid class name */
    public final class AnonymousClass1 implements DefaultImageHeaderParser.Reader, Option.CacheKeyUpdater, DataRewinder {
        public final /* synthetic */ int $r8$classId;
        public final ByteBuffer buffer;

        public AnonymousClass1(int i) {
            this.$r8$classId = i;
            switch (i) {
                case 2:
                    this.buffer = ByteBuffer.allocate(4);
                    break;
                default:
                    this.buffer = ByteBuffer.allocate(8);
                    break;
            }
        }

        private final void update$com$bumptech$glide$load$resource$bitmap$VideoDecoder$1(byte[] bArr, Object obj, MessageDigest messageDigest) {
            Long l = (Long) obj;
            messageDigest.update(bArr);
            synchronized (this.buffer) {
                this.buffer.position(0);
                messageDigest.update(this.buffer.putLong(l.longValue()).array());
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int getUInt16() {
            return getUInt8() | (getUInt8() << 8);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public short getUInt8() {
            ByteBuffer byteBuffer = this.buffer;
            if (byteBuffer.remaining() >= 1) {
                return (short) (byteBuffer.get() & 255);
            }
            throw new DefaultImageHeaderParser.Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int read(int i, byte[] bArr) {
            ByteBuffer byteBuffer = this.buffer;
            int min = Math.min(i, byteBuffer.remaining());
            if (min == 0) {
                return -1;
            }
            byteBuffer.get(bArr, 0, min);
            return min;
        }

        @Override // com.bumptech.glide.load.data.DataRewinder
        public Object rewindAndGet() {
            ByteBuffer byteBuffer = this.buffer;
            byteBuffer.position(0);
            return byteBuffer;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long skip(long j) {
            ByteBuffer byteBuffer = this.buffer;
            int min = (int) Math.min(byteBuffer.remaining(), j);
            byteBuffer.position(byteBuffer.position() + min);
            return min;
        }

        @Override // com.bumptech.glide.load.Option.CacheKeyUpdater
        public void update(byte[] bArr, Object obj, MessageDigest messageDigest) {
            switch (this.$r8$classId) {
                case 0:
                    update$com$bumptech$glide$load$resource$bitmap$VideoDecoder$1(bArr, obj, messageDigest);
                    return;
                default:
                    Integer num = (Integer) obj;
                    if (num == null) {
                        return;
                    }
                    messageDigest.update(bArr);
                    synchronized (this.buffer) {
                        this.buffer.position(0);
                        messageDigest.update(this.buffer.putInt(num.intValue()).array());
                    }
                    return;
            }
        }

        @Override // com.bumptech.glide.load.data.DataRewinder
        public void cleanup() {
        }

        public AnonymousClass1(ByteBuffer byteBuffer, int i) {
            this.$r8$classId = i;
            switch (i) {
                case 3:
                    this.buffer = byteBuffer;
                    break;
                default:
                    this.buffer = byteBuffer;
                    byteBuffer.order(ByteOrder.BIG_ENDIAN);
                    break;
            }
        }
    }
}
