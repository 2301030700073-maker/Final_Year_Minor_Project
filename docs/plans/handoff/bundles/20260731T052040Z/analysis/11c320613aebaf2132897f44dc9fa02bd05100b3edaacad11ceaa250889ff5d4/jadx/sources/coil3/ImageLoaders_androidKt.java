package coil3;

import coil3.Extras;
import coil3.decode.ExifOrientationStrategy$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ImageLoaders_androidKt {
    public static final Extras.Key bitmapFactoryMaxParallelismKey = new Extras.Key(4);
    public static final Extras.Key bitmapFactoryExifOrientationStrategyKey = new Extras.Key(ExifOrientationStrategy$$ExternalSyntheticLambda0.RESPECT_PERFORMANCE);
    public static final Extras.Key imageDecoderEnabledKey = new Extras.Key(Boolean.TRUE);
    public static final Extras.Key memoryCacheMaxSizePercentWhileInBackgroundKey = new Extras.Key(Double.valueOf(1.0d));
}
