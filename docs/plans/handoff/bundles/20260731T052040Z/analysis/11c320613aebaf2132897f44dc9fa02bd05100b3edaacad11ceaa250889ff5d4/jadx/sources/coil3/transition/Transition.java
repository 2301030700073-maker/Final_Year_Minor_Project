package coil3.transition;

import coil3.request.ImageResult;
import coil3.target.ImageViewTarget;
import coil3.transition.NoneTransition;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface Transition {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface Factory {
        public static final NoneTransition.Factory NONE = new NoneTransition.Factory();

        Transition create(ImageViewTarget imageViewTarget, ImageResult imageResult);
    }

    void transition();
}
