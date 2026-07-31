package coil3;

import coil3.Extras;
import coil3.decode.ExifOrientationStrategy$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ImageLoaders_androidKt {
    public static final Extras.Key bitmapFactoryMaxParallelismKey = new Extras.Key(4);
    public static final Extras.Key bitmapFactoryExifOrientationStrategyKey = new Extras.Key(ExifOrientationStrategy$$ExternalSyntheticLambda0.RESPECT_PERFORMANCE);
    public static final Extras.Key imageDecoderEnabledKey = new Extras.Key(Boolean.TRUE);
    public static final Extras.Key memoryCacheMaxSizePercentWhileInBackgroundKey = new Extras.Key(Double.valueOf(1.0d));
}
