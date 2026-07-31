package org.wikipedia.databinding;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.GoneIfEmptyTextView;
import org.wikipedia.views.WikiArticleCardView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewWikiArticleCardBinding {
    public final GoneIfEmptyTextView articleDescription;
    public final View articleDivider;
    public final FaceAndColorDetectImageView articleImage;
    public final FrameLayout articleImageContainer;
    public final TextView articleTitle;

    public ViewWikiArticleCardBinding(WikiArticleCardView wikiArticleCardView, GoneIfEmptyTextView goneIfEmptyTextView, View view, FaceAndColorDetectImageView faceAndColorDetectImageView, FrameLayout frameLayout, TextView textView) {
        this.articleDescription = goneIfEmptyTextView;
        this.articleDivider = view;
        this.articleImage = faceAndColorDetectImageView;
        this.articleImageContainer = frameLayout;
        this.articleTitle = textView;
    }
}
