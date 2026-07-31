package coil3.transition;

import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.request.ErrorResult;
import coil3.request.ImageResult;
import coil3.request.SuccessResult;
import coil3.target.ImageViewTarget;
import coil3.transition.Transition;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NoneTransition implements Transition {
    public final ImageResult result;
    public final ImageViewTarget target;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Factory implements Transition.Factory {
        @Override // coil3.transition.Transition.Factory
        public final Transition create(ImageViewTarget imageViewTarget, ImageResult imageResult) {
            return new NoneTransition(imageViewTarget, imageResult);
        }
    }

    public NoneTransition(ImageViewTarget imageViewTarget, ImageResult imageResult) {
        this.target = imageViewTarget;
        this.result = imageResult;
    }

    @Override // coil3.transition.Transition
    public final void transition() {
        ImageResult imageResult = this.result;
        boolean z = imageResult instanceof SuccessResult;
        ImageViewTarget imageViewTarget = this.target;
        if (z) {
            imageViewTarget.updateImage(((SuccessResult) imageResult).image);
        } else if (imageResult instanceof ErrorResult) {
            imageViewTarget.updateImage(((ErrorResult) imageResult).image);
        } else {
            DecodeUtils$$ExternalSyntheticBUOutline0.m();
        }
    }
}
