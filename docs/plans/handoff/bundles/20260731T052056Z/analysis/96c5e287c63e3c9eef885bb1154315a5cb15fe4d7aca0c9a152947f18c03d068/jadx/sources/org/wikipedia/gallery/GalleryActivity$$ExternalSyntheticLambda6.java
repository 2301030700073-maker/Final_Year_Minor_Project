package org.wikipedia.gallery;

import android.widget.ImageView;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.bridge.JavaScriptActionHandler$ImageHitInfo;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GalleryActivity$$ExternalSyntheticLambda6 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ GalleryActivity f$0;

    public /* synthetic */ GalleryActivity$$ExternalSyntheticLambda6(GalleryActivity galleryActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = galleryActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        GalleryActivity galleryActivity = this.f$0;
        switch (i) {
            case 0:
                JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo = GalleryActivity.TRANSITION_INFO;
                if (galleryActivity.isDestroyed()) {
                    return;
                }
                galleryActivity.setControlsShowing(galleryActivity.controlsShowing);
                return;
            case 1:
                JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo2 = GalleryActivity.TRANSITION_INFO;
                if (galleryActivity.isDestroyed()) {
                    return;
                }
                ActivityGalleryBinding activityGalleryBinding = galleryActivity.binding;
                if (activityGalleryBinding != null) {
                    ((ImageView) activityGalleryBinding.transitionReceiver).setVisibility(8);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
            default:
                JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo3 = GalleryActivity.TRANSITION_INFO;
                if (galleryActivity.isDestroyed()) {
                    return;
                }
                galleryActivity.getViewModel().fetchGalleryItems();
                return;
        }
    }
}
