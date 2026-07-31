package org.wikipedia.databinding;

import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewWikiErrorBinding {
    public final Space viewWikiErrorArticleContentTopOffset;
    public final Space viewWikiErrorArticleTabLayoutOffset;
    public final Button viewWikiErrorButton;
    public final LinearLayout viewWikiErrorFooterLayout;
    public final TextView viewWikiErrorFooterText;
    public final ImageView viewWikiErrorIcon;
    public final TextView viewWikiErrorText;

    public ViewWikiErrorBinding(WikiErrorView wikiErrorView, Space space, Space space2, Button button, LinearLayout linearLayout, TextView textView, ImageView imageView, TextView textView2) {
        this.viewWikiErrorArticleContentTopOffset = space;
        this.viewWikiErrorArticleTabLayoutOffset = space2;
        this.viewWikiErrorButton = button;
        this.viewWikiErrorFooterLayout = linearLayout;
        this.viewWikiErrorFooterText = textView;
        this.viewWikiErrorIcon = imageView;
        this.viewWikiErrorText = textView2;
    }
}
