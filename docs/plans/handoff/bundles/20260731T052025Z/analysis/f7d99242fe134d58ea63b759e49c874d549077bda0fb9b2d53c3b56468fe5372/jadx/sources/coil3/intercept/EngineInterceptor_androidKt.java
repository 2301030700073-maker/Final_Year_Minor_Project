package coil3.intercept;

import android.graphics.Bitmap;
import coil3.BitmapImage;
import coil3.Image;
import coil3.Image_androidKt;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Precision;
import coil3.transform.Transformation;
import coil3.util.BitmapsKt;
import coil3.util.DrawableUtils;
import coil3.util.Logger;
import coil3.util.Utils_androidKt;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EngineInterceptor_androidKt {
    public static final Bitmap convertImageToBitmap(Image image, Options options, List<? extends Transformation> list, Logger logger) {
        if (image instanceof BitmapImage) {
            Bitmap bitmap = ((BitmapImage) image).getBitmap();
            Bitmap.Config safeConfig = BitmapsKt.getSafeConfig(bitmap);
            if (ArraysKt___ArraysKt.contains(Utils_androidKt.getVALID_TRANSFORMATION_CONFIGS(), safeConfig)) {
                return bitmap;
            }
            if (logger != null) {
                Logger.Level level = Logger.Level.Info;
                if (logger.getMinLevel().compareTo(level) <= 0) {
                    logger.log(EngineInterceptor.TAG, level, "Converting bitmap with config " + safeConfig + " to apply transformations: " + list + ".", null);
                }
            }
        } else if (logger != null) {
            Logger.Level level2 = Logger.Level.Info;
            if (logger.getMinLevel().compareTo(level2) <= 0) {
                logger.log(EngineInterceptor.TAG, level2, "Converting image of type " + Reflection.getOrCreateKotlinClass(image.getClass()).getQualifiedName() + " to apply transformations: " + list + ".", null);
            }
        }
        return DrawableUtils.INSTANCE.convertToBitmap(Image_androidKt.asDrawable(image, options.getContext().getResources()), ImageRequests_androidKt.getBitmapConfig(options), options.getSize(), options.getScale(), ImageRequestsKt.getMaxBitmapSize(options), options.getPrecision() == Precision.INEXACT);
    }
}
