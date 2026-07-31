package org.wikipedia.databinding;

import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import org.wikipedia.gallery.GalleryThumbnailScrollView;
import org.wikipedia.page.linkpreview.LinkPreviewErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DialogLinkPreviewBinding {
    public final LinearLayout dialogLinkPreviewContainer;
    public final LinearLayout dialogLinkPreviewContentContainer;
    public final LinkPreviewErrorView dialogLinkPreviewErrorContainer;
    public final TextView linkPreviewDistance;
    public final MaterialButton linkPreviewEditButton;
    public final TextView linkPreviewExtract;
    public final ImageView linkPreviewOverflowButton;
    public final ProgressBar linkPreviewProgress;
    public final ImageView linkPreviewThumbnail;
    public final GalleryThumbnailScrollView linkPreviewThumbnailGallery;
    public final TextView linkPreviewTitle;
    public final LinearLayout linkPreviewToolbar;
    public final FrameLayout rootView;

    public DialogLinkPreviewBinding(FrameLayout frameLayout, LinearLayout linearLayout, LinearLayout linearLayout2, LinkPreviewErrorView linkPreviewErrorView, TextView textView, MaterialButton materialButton, TextView textView2, ImageView imageView, ProgressBar progressBar, ImageView imageView2, GalleryThumbnailScrollView galleryThumbnailScrollView, TextView textView3, LinearLayout linearLayout3) {
        this.rootView = frameLayout;
        this.dialogLinkPreviewContainer = linearLayout;
        this.dialogLinkPreviewContentContainer = linearLayout2;
        this.dialogLinkPreviewErrorContainer = linkPreviewErrorView;
        this.linkPreviewDistance = textView;
        this.linkPreviewEditButton = materialButton;
        this.linkPreviewExtract = textView2;
        this.linkPreviewOverflowButton = imageView;
        this.linkPreviewProgress = progressBar;
        this.linkPreviewThumbnail = imageView2;
        this.linkPreviewThumbnailGallery = galleryThumbnailScrollView;
        this.linkPreviewTitle = textView3;
        this.linkPreviewToolbar = linearLayout3;
    }
}
