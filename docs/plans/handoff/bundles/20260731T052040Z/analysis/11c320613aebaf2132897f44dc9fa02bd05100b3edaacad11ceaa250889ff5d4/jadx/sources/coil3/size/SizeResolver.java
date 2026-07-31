package coil3.size;

import coil3.RealImageLoader$execute$3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface SizeResolver {
    public static final RealSizeResolver ORIGINAL;

    static {
        Size size = Size.ORIGINAL;
        ORIGINAL = new RealSizeResolver();
    }

    Object size(RealImageLoader$execute$3 realImageLoader$execute$3);
}
