package coil3.video;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.Uri_androidKt;
import coil3.decode.AssetMetadata;
import coil3.decode.ContentMetadata;
import coil3.decode.DecodeResult;
import coil3.decode.DecodeUtils;
import coil3.decode.Decoder;
import coil3.decode.ImageSource;
import coil3.decode.ResourceMetadata;
import coil3.fetch.SourceFetchResult;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Dimension;
import coil3.size.Precision;
import coil3.size.Size;
import coil3.size.SizeKt;
import coil3.util.IntPair;
import coil3.video.MediaDataSourceFetcher;
import coil3.video.internal.FileHandleMediaDataSource;
import coil3.video.internal.UtilsKt;
import java.util.concurrent.ExecutorService;
import kotlin.coroutines.Continuation;
import kotlin.io.CloseableKt;
import kotlin.math.MathKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.FileSystem;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VideoFrameDecoder implements Decoder {
    private final Options options;
    private final ImageSource source;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Factory implements Decoder.Factory {
        private final boolean isApplicable(String str) {
            return str != null && StringsKt__StringsJVMKt.startsWith(str, "video/", false);
        }

        @Override // coil3.decode.Decoder.Factory
        public Decoder create(SourceFetchResult sourceFetchResult, Options options, ImageLoader imageLoader) {
            if (isApplicable(sourceFetchResult.getMimeType())) {
                return new VideoFrameDecoder(sourceFetchResult.getSource(), options);
            }
            return null;
        }
    }

    public VideoFrameDecoder(ImageSource imageSource, Options options) {
        this.source = imageSource;
        this.options = options;
    }

    private final long computeFrameMicros(MediaMetadataRetriever mediaMetadataRetriever) {
        Long longOrNull;
        long videoFrameMicros = ImageRequestsKt.getVideoFrameMicros(this.options);
        long j = 0;
        if (videoFrameMicros >= 0) {
            return videoFrameMicros;
        }
        double videoFramePercent = ImageRequestsKt.getVideoFramePercent(this.options);
        if (videoFramePercent < 0.0d) {
            return 0L;
        }
        String extractMetadata = mediaMetadataRetriever.extractMetadata(9);
        if (extractMetadata != null && (longOrNull = StringsKt__StringsJVMKt.toLongOrNull(extractMetadata)) != null) {
            j = longOrNull.longValue();
        }
        return MathKt.roundToLong(videoFramePercent * j) * 1000;
    }

    private final boolean isConfigValid(Bitmap bitmap, Options options) {
        Bitmap.Config config;
        if (Build.VERSION.SDK_INT < 26) {
            return true;
        }
        Bitmap.Config config2 = bitmap.getConfig();
        config = Bitmap.Config.HARDWARE;
        return config2 != config || ImageRequests_androidKt.getBitmapConfig(options) == config;
    }

    private final boolean isSizeValid(Bitmap bitmap, Options options, Size size) {
        if (options.getPrecision() == Precision.INEXACT) {
            return true;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Dimension width2 = size.getWidth();
        int m908unboximpl = width2 instanceof Dimension.Pixels ? ((Dimension.Pixels) width2).m908unboximpl() : bitmap.getWidth();
        Dimension height2 = size.getHeight();
        return DecodeUtils.computeSizeMultiplier(width, height, m908unboximpl, height2 instanceof Dimension.Pixels ? ((Dimension.Pixels) height2).m908unboximpl() : bitmap.getHeight(), options.getScale(), coil3.request.ImageRequestsKt.getMaxBitmapSize(options)) == 1.0d;
    }

    private final Bitmap normalizeBitmap(Bitmap bitmap, Size size) {
        Bitmap.Config bitmapConfig;
        Bitmap.Config config;
        if (isConfigValid(bitmap, this.options) && isSizeValid(bitmap, this.options, size)) {
            return bitmap;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Dimension width2 = size.getWidth();
        int m908unboximpl = width2 instanceof Dimension.Pixels ? ((Dimension.Pixels) width2).m908unboximpl() : bitmap.getWidth();
        Dimension height2 = size.getHeight();
        float computeSizeMultiplier = (float) DecodeUtils.computeSizeMultiplier(width, height, m908unboximpl, height2 instanceof Dimension.Pixels ? ((Dimension.Pixels) height2).m908unboximpl() : bitmap.getHeight(), this.options.getScale(), coil3.request.ImageRequestsKt.getMaxBitmapSize(this.options));
        int roundToInt = MathKt.roundToInt(bitmap.getWidth() * computeSizeMultiplier);
        int roundToInt2 = MathKt.roundToInt(bitmap.getHeight() * computeSizeMultiplier);
        if (Build.VERSION.SDK_INT >= 26) {
            Bitmap.Config bitmapConfig2 = ImageRequests_androidKt.getBitmapConfig(this.options);
            config = Bitmap.Config.HARDWARE;
            if (bitmapConfig2 == config) {
                bitmapConfig = Bitmap.Config.ARGB_8888;
                Paint paint = new Paint(3);
                Bitmap createBitmap = Bitmap.createBitmap(roundToInt, roundToInt2, bitmapConfig);
                Canvas canvas = new Canvas(createBitmap);
                canvas.scale(computeSizeMultiplier, computeSizeMultiplier);
                canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
                bitmap.recycle();
                return createBitmap;
            }
        }
        bitmapConfig = ImageRequests_androidKt.getBitmapConfig(this.options);
        Paint paint2 = new Paint(3);
        Bitmap createBitmap2 = Bitmap.createBitmap(roundToInt, roundToInt2, bitmapConfig);
        Canvas canvas2 = new Canvas(createBitmap2);
        canvas2.scale(computeSizeMultiplier, computeSizeMultiplier);
        canvas2.drawBitmap(bitmap, 0.0f, 0.0f, paint2);
        bitmap.recycle();
        return createBitmap2;
    }

    private final void setDataSource(MediaMetadataRetriever mediaMetadataRetriever, ImageSource imageSource) {
        ImageSource.Metadata metadata = imageSource.getMetadata();
        if (metadata instanceof MediaDataSourceFetcher.MediaSourceMetadata) {
            mediaMetadataRetriever.setDataSource(((MediaDataSourceFetcher.MediaSourceMetadata) metadata).getMediaDataSource());
            return;
        }
        if (!(metadata instanceof AssetMetadata)) {
            if (metadata instanceof ContentMetadata) {
                mediaMetadataRetriever.setDataSource(this.options.getContext(), Uri_androidKt.toAndroidUri(((ContentMetadata) metadata).getUri()));
                return;
            }
            if (!(metadata instanceof ResourceMetadata)) {
                if (imageSource.getFileSystem() == FileSystem.SYSTEM) {
                    mediaMetadataRetriever.setDataSource(imageSource.file().toFile().getPath());
                    return;
                } else {
                    mediaMetadataRetriever.setDataSource(new FileHandleMediaDataSource(imageSource.getFileSystem().openReadOnly(imageSource.file())));
                    return;
                }
            }
            ResourceMetadata resourceMetadata = (ResourceMetadata) metadata;
            mediaMetadataRetriever.setDataSource("android.resource://" + resourceMetadata.getPackageName() + "/" + resourceMetadata.getResId());
            return;
        }
        AssetFileDescriptor openFd = this.options.getContext().getAssets().openFd(((AssetMetadata) metadata).getFilePath());
        try {
            mediaMetadataRetriever.setDataSource(openFd.getFileDescriptor(), openFd.getStartOffset(), openFd.getLength());
            CloseableKt.closeFinally(openFd, null);
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // coil3.decode.Decoder
    public Object decode(Continuation continuation) {
        int intValue;
        Integer intOrNull;
        int intValue2;
        Integer intOrNull2;
        Size size;
        Bitmap bitmap;
        Bitmap frameAtTime;
        byte[] embeddedPicture;
        Integer intOrNull3;
        Integer intOrNull4;
        Integer intOrNull5;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            setDataSource(mediaMetadataRetriever, this.source);
            String extractMetadata = mediaMetadataRetriever.extractMetadata(24);
            int intValue3 = (extractMetadata == null || (intOrNull5 = StringsKt__StringsJVMKt.toIntOrNull(extractMetadata)) == null) ? 0 : intOrNull5.intValue();
            if (intValue3 == 90 || intValue3 == 270) {
                String extractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
                intValue = (extractMetadata2 == null || (intOrNull2 = StringsKt__StringsJVMKt.toIntOrNull(extractMetadata2)) == null) ? 0 : intOrNull2.intValue();
                String extractMetadata3 = mediaMetadataRetriever.extractMetadata(18);
                if (extractMetadata3 != null && (intOrNull = StringsKt__StringsJVMKt.toIntOrNull(extractMetadata3)) != null) {
                    intValue2 = intOrNull.intValue();
                }
                intValue2 = 0;
            } else {
                String extractMetadata4 = mediaMetadataRetriever.extractMetadata(18);
                intValue = (extractMetadata4 == null || (intOrNull4 = StringsKt__StringsJVMKt.toIntOrNull(extractMetadata4)) == null) ? 0 : intOrNull4.intValue();
                String extractMetadata5 = mediaMetadataRetriever.extractMetadata(19);
                if (extractMetadata5 != null && (intOrNull3 = StringsKt__StringsJVMKt.toIntOrNull(extractMetadata5)) != null) {
                    intValue2 = intOrNull3.intValue();
                }
                intValue2 = 0;
            }
            int i = intValue;
            int i2 = intValue2;
            if (i <= 0 || i2 <= 0) {
                size = Size.ORIGINAL;
            } else {
                long m858computeDstSizesEdh43o = DecodeUtils.m858computeDstSizesEdh43o(i, i2, this.options.getSize(), this.options.getScale(), coil3.request.ImageRequestsKt.getMaxBitmapSize(this.options));
                double computeSizeMultiplier = DecodeUtils.computeSizeMultiplier(i, i2, IntPair.m917getFirstimpl(m858computeDstSizesEdh43o), IntPair.m918getSecondimpl(m858computeDstSizesEdh43o), this.options.getScale(), coil3.request.ImageRequestsKt.getMaxBitmapSize(this.options));
                if (this.options.getPrecision() == Precision.INEXACT && computeSizeMultiplier > 1.0d) {
                    computeSizeMultiplier = 1.0d;
                }
                size = SizeKt.Size(MathKt.roundToInt(i * computeSizeMultiplier), MathKt.roundToInt(computeSizeMultiplier * i2));
            }
            Size size2 = size;
            long computeFrameMicros = computeFrameMicros(mediaMetadataRetriever);
            Dimension component1 = size2.component1();
            Dimension component2 = size2.component2();
            Bitmap bitmap2 = null;
            if (!ImageRequestsKt.getPreferVideoFrameEmbeddedThumbnail(this.options) || (embeddedPicture = mediaMetadataRetriever.getEmbeddedPicture()) == null || (bitmap = BitmapFactory.decodeByteArray(embeddedPicture, 0, embeddedPicture.length)) == null) {
                bitmap = null;
            } else {
                i = bitmap.getWidth();
                i2 = bitmap.getHeight();
            }
            if (bitmap == null) {
                int i3 = Build.VERSION.SDK_INT;
                if (i3 < 28 || ImageRequestsKt.getVideoFrameIndex(this.options) < 0) {
                    if (i3 >= 27 && (component1 instanceof Dimension.Pixels) && (component2 instanceof Dimension.Pixels)) {
                        bitmap2 = UtilsKt.getScaledFrameAtTime(mediaMetadataRetriever, computeFrameMicros, ImageRequestsKt.getVideoFrameOption(this.options), ((Dimension.Pixels) component1).m908unboximpl(), ((Dimension.Pixels) component2).m908unboximpl(), ImageRequests_androidKt.getBitmapConfig(this.options));
                    } else {
                        frameAtTime = UtilsKt.getFrameAtTime(mediaMetadataRetriever, computeFrameMicros, ImageRequestsKt.getVideoFrameOption(this.options), ImageRequests_androidKt.getBitmapConfig(this.options));
                        if (frameAtTime != null) {
                            i = frameAtTime.getWidth();
                            i2 = frameAtTime.getHeight();
                            bitmap2 = frameAtTime;
                        }
                    }
                    bitmap = bitmap2;
                } else {
                    frameAtTime = UtilsKt.getFrameAtIndex(mediaMetadataRetriever, ImageRequestsKt.getVideoFrameIndex(this.options), ImageRequests_androidKt.getBitmapConfig(this.options));
                    if (frameAtTime != null) {
                        i = frameAtTime.getWidth();
                        i2 = frameAtTime.getHeight();
                        bitmap2 = frameAtTime;
                    }
                    bitmap = bitmap2;
                }
            }
            int i4 = i;
            int i5 = i2;
            if (bitmap == null) {
                throw new IllegalStateException(("Failed to decode frame at " + computeFrameMicros + " microseconds.").toString());
            }
            Bitmap normalizeBitmap = normalizeBitmap(bitmap, size2);
            DecodeResult decodeResult = new DecodeResult(Image_androidKt.asImage(new BitmapDrawable(this.options.getContext().getResources(), normalizeBitmap)), i4 <= 0 || i5 <= 0 || DecodeUtils.computeSizeMultiplier(i4, i5, normalizeBitmap.getWidth(), normalizeBitmap.getHeight(), this.options.getScale(), coil3.request.ImageRequestsKt.getMaxBitmapSize(this.options)) < 1.0d);
            if (Build.VERSION.SDK_INT < 29) {
                mediaMetadataRetriever.release();
                return decodeResult;
            }
            if (mediaMetadataRetriever instanceof AutoCloseable) {
                mediaMetadataRetriever.close();
                return decodeResult;
            }
            if (mediaMetadataRetriever instanceof ExecutorService) {
                OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) mediaMetadataRetriever);
                return decodeResult;
            }
            mediaMetadataRetriever.release();
            return decodeResult;
        } catch (Throwable th) {
            if (Build.VERSION.SDK_INT < 29) {
                mediaMetadataRetriever.release();
            } else if (mediaMetadataRetriever instanceof AutoCloseable) {
                mediaMetadataRetriever.close();
            } else if (mediaMetadataRetriever instanceof ExecutorService) {
                OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) mediaMetadataRetriever);
            } else {
                mediaMetadataRetriever.release();
            }
            throw th;
        }
    }
}
