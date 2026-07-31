package org.schabi.newpipe.util.image;

import kotlin.jvm.functions.Function1;
import org.schabi.newpipe.extractor.Image;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class ImageStrategy$$ExternalSyntheticLambda5 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ double f$0;

    public /* synthetic */ ImageStrategy$$ExternalSyntheticLambda5(double d, int i) {
        this.$r8$classId = i;
        this.f$0 = d;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        double abs;
        int i = this.$r8$classId;
        double d = this.f$0;
        Image image = (Image) obj;
        switch (i) {
            case 0:
                image.getClass();
                abs = Math.abs(ImageStrategy.estimatePixelCount(image, d) - (5625.0d * d));
                break;
            case 1:
                image.getClass();
                abs = Math.abs(ImageStrategy.estimatePixelCount(image, d) - (62500.0d * d));
                break;
            default:
                image.getClass();
                abs = -ImageStrategy.estimatePixelCount(image, d);
                break;
        }
        return Double.valueOf(abs);
    }
}
