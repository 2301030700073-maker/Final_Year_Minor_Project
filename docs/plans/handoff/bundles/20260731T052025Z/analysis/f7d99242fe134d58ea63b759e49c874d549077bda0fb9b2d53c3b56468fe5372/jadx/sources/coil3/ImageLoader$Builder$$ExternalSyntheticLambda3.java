package coil3;

import coil3.ImageLoader;
import coil3.request.ImageRequest;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ImageLoader$Builder$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Image f$0;

    public /* synthetic */ ImageLoader$Builder$$ExternalSyntheticLambda3(Image image, int i) {
        this.$r8$classId = i;
        this.f$0 = image;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Image error$lambda$0;
        Image fallback$lambda$0;
        Image placeholder$lambda$0;
        Image fallback$lambda$02;
        Image error$lambda$02;
        Image placeholder$lambda$02;
        int i = this.$r8$classId;
        Image image = this.f$0;
        ImageRequest imageRequest = (ImageRequest) obj;
        switch (i) {
            case 0:
                error$lambda$0 = ImageLoader.Builder.error$lambda$0(image, imageRequest);
                return error$lambda$0;
            case 1:
                fallback$lambda$0 = ImageLoader.Builder.fallback$lambda$0(image, imageRequest);
                return fallback$lambda$0;
            case 2:
                placeholder$lambda$0 = ImageLoader.Builder.placeholder$lambda$0(image, imageRequest);
                return placeholder$lambda$0;
            case 3:
                fallback$lambda$02 = ImageRequest.Builder.fallback$lambda$0(image, imageRequest);
                return fallback$lambda$02;
            case 4:
                error$lambda$02 = ImageRequest.Builder.error$lambda$0(image, imageRequest);
                return error$lambda$02;
            default:
                placeholder$lambda$02 = ImageRequest.Builder.placeholder$lambda$0(image, imageRequest);
                return placeholder$lambda$02;
        }
    }
}
