package org.wikipedia.gallery;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GalleryItemFragment$special$$inlined$viewModels$default$1 extends Lambda implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ GalleryItemFragment $this_viewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ GalleryItemFragment$special$$inlined$viewModels$default$1(GalleryItemFragment galleryItemFragment, int i) {
        super(0);
        this.$r8$classId = i;
        this.$this_viewModels = galleryItemFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        GalleryItemFragment galleryItemFragment = this.$this_viewModels;
        switch (i) {
            case 0:
                return galleryItemFragment;
            case 1:
                return galleryItemFragment.requireActivity().getViewModelStore();
            case 2:
                return galleryItemFragment.requireActivity().getDefaultViewModelCreationExtras();
            default:
                return galleryItemFragment.requireActivity().getDefaultViewModelProviderFactory();
        }
    }
}
