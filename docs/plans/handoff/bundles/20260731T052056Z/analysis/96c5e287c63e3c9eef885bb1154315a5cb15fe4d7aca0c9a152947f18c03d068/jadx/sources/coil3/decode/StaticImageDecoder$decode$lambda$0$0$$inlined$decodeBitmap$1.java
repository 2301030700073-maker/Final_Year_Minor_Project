package coil3.decode;

import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.util.Size;
import coil3.Extras;
import coil3.UriKt;
import coil3.gif.AnimatedImageDecoder;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1 implements ImageDecoder$OnHeaderDecodedListener {
    public final /* synthetic */ Ref$BooleanRef $isSampled$inlined;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Decoder this$0;

    public /* synthetic */ StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1(Decoder decoder, Ref$BooleanRef ref$BooleanRef, int i) {
        this.$r8$classId = i;
        this.this$0 = decoder;
        this.$isSampled$inlined = ref$BooleanRef;
    }

    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        int i = this.$r8$classId;
        Ref$BooleanRef ref$BooleanRef = this.$isSampled$inlined;
        Decoder decoder = this.this$0;
        switch (i) {
            case 0:
                Size size = imageInfo.getSize();
                int width = size.getWidth();
                int height = size.getHeight();
                Options options = ((StaticImageDecoder) decoder).options;
                coil3.size.Size size2 = options.size;
                Scale scale = options.scale;
                Extras.Key key = ImageRequestsKt.maxBitmapSizeKey;
                long m821computeDstSizesEdh43o = UnsignedKt.m821computeDstSizesEdh43o(width, height, size2, scale, (coil3.size.Size) UriKt.getExtra(options, key));
                int i2 = (int) (m821computeDstSizesEdh43o >> 32);
                int i3 = (int) (m821computeDstSizesEdh43o & 4294967295L);
                if (width > 0 && height > 0 && (width != i2 || height != i3)) {
                    Options options2 = ((StaticImageDecoder) decoder).options;
                    double computeSizeMultiplier = UnsignedKt.computeSizeMultiplier(width, height, i2, i3, options2.scale, (coil3.size.Size) UriKt.getExtra(options2, key));
                    boolean z = computeSizeMultiplier < 1.0d;
                    ref$BooleanRef.element = z;
                    if (z || ((StaticImageDecoder) decoder).options.precision == Precision.EXACT) {
                        imageDecoder.setTargetSize(UnsignedKt.roundToInt(width * computeSizeMultiplier), UnsignedKt.roundToInt(computeSizeMultiplier * height));
                    }
                }
                imageDecoder.setOnPartialImageListener(new StaticImageDecoder$$ExternalSyntheticLambda0());
                Options options3 = ((StaticImageDecoder) decoder).options;
                imageDecoder.setAllocator(BitmapsKt.isHardware(ImageRequests_androidKt.getBitmapConfig(options3)) ? 3 : 1);
                imageDecoder.setMemorySizePolicy(!((Boolean) UriKt.getExtra(options3, ImageRequests_androidKt.allowRgb565Key)).booleanValue() ? 1 : 0);
                Extras.Key key2 = ImageRequests_androidKt.colorSpaceKey;
                if (ContextsKt$$ExternalSyntheticBUOutline0.m(UriKt.getExtra(options3, key2)) != null) {
                    imageDecoder.setTargetColorSpace(ContextsKt$$ExternalSyntheticBUOutline0.m(UriKt.getExtra(options3, key2)));
                }
                imageDecoder.setUnpremultipliedRequired(!((Boolean) UriKt.getExtra(options3, ImageRequests_androidKt.premultipliedAlphaKey)).booleanValue());
                break;
            default:
                Size size3 = imageInfo.getSize();
                int width2 = size3.getWidth();
                int height2 = size3.getHeight();
                Options options4 = ((AnimatedImageDecoder) decoder).options;
                coil3.size.Size size4 = options4.size;
                Scale scale2 = options4.scale;
                Extras.Key key3 = ImageRequestsKt.maxBitmapSizeKey;
                long m821computeDstSizesEdh43o2 = UnsignedKt.m821computeDstSizesEdh43o(width2, height2, size4, scale2, (coil3.size.Size) UriKt.getExtra(options4, key3));
                int i4 = (int) (m821computeDstSizesEdh43o2 >> 32);
                int i5 = (int) (m821computeDstSizesEdh43o2 & 4294967295L);
                if (width2 > 0 && height2 > 0 && (width2 != i4 || height2 != i5)) {
                    Options options5 = ((AnimatedImageDecoder) decoder).options;
                    double computeSizeMultiplier2 = UnsignedKt.computeSizeMultiplier(width2, height2, i4, i5, options5.scale, (coil3.size.Size) UriKt.getExtra(options5, key3));
                    boolean z2 = computeSizeMultiplier2 < 1.0d;
                    ref$BooleanRef.element = z2;
                    if (z2 || ((AnimatedImageDecoder) decoder).options.precision == Precision.EXACT) {
                        imageDecoder.setTargetSize(UnsignedKt.roundToInt(width2 * computeSizeMultiplier2), UnsignedKt.roundToInt(computeSizeMultiplier2 * height2));
                    }
                }
                Options options6 = ((AnimatedImageDecoder) decoder).options;
                imageDecoder.setAllocator(BitmapsKt.isHardware(ImageRequests_androidKt.getBitmapConfig(options6)) ? 3 : 1);
                imageDecoder.setMemorySizePolicy(!((Boolean) UriKt.getExtra(options6, ImageRequests_androidKt.allowRgb565Key)).booleanValue() ? 1 : 0);
                Extras.Key key4 = ImageRequests_androidKt.colorSpaceKey;
                if (ContextsKt$$ExternalSyntheticBUOutline0.m(UriKt.getExtra(options6, key4)) != null) {
                    imageDecoder.setTargetColorSpace(ContextsKt$$ExternalSyntheticBUOutline0.m(UriKt.getExtra(options6, key4)));
                }
                if (UriKt.getExtra(options6, coil3.gif.ImageRequestsKt.animatedTransformationKey) != null) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                    break;
                } else {
                    imageDecoder.setPostProcessor(null);
                    break;
                }
                break;
        }
    }
}
