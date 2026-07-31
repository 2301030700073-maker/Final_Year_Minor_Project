package org.wikipedia.gallery;

import androidx.activity.result.ActivityResultCallback;
import io.getstream.photoview.OnMatrixChangedListener;
import org.wikipedia.R;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GalleryItemFragment$$ExternalSyntheticLambda0 implements ActivityResultCallback, OnMatrixChangedListener {
    public final /* synthetic */ GalleryItemFragment f$0;

    public /* synthetic */ GalleryItemFragment$$ExternalSyntheticLambda0(GalleryItemFragment galleryItemFragment) {
        this.f$0 = galleryItemFragment;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        GalleryItemFragment galleryItemFragment = this.f$0;
        if (booleanValue) {
            galleryItemFragment.saveImage();
        } else {
            ShareUtil.showMessage(galleryItemFragment.requireActivity(), R.string.gallery_save_image_write_permission_rationale);
        }
    }
}
