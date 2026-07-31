package coil3.request;

import coil3.Extras;
import coil3.size.Dimension;
import coil3.size.Size;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ImageRequestsKt {
    public static final Extras.Key transformationsKey = new Extras.Key(EmptyList.INSTANCE);
    public static final Extras.Key maxBitmapSizeKey = new Extras.Key(new Size(new Dimension.Pixels(4096), new Dimension.Pixels(4096)));
    public static final Extras.Key addLastModifiedToFileCacheKeyKey = new Extras.Key(Boolean.FALSE);
    public static final Extras.Key allowConversionToBitmapKey = new Extras.Key(Boolean.TRUE);
}
