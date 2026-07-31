package org.wikipedia.databinding;

import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import org.wikipedia.commons.FilePageView;
import org.wikipedia.views.ImageDetailView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewFilePageBinding {
    public final LinearLayout detailsContainer;
    public final ImageDetailView filenameView;
    public final ImageView imageView;
    public final FrameLayout imageViewPlaceholder;

    public ViewFilePageBinding(FilePageView filePageView, LinearLayout linearLayout, ImageDetailView imageDetailView, ImageView imageView, FrameLayout frameLayout) {
        this.detailsContainer = linearLayout;
        this.filenameView = imageDetailView;
        this.imageView = imageView;
        this.imageViewPlaceholder = frameLayout;
    }
}
