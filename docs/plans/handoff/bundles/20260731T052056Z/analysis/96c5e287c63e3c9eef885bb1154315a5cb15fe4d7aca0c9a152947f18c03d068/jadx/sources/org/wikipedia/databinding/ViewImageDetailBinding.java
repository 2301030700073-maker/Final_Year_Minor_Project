package org.wikipedia.databinding;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewImageDetailBinding {
    public final MaterialButton actionButton;
    public final LinearLayout contentContainer;
    public final TextView contentText;
    public final View divider;
    public final ImageView editButton;
    public final ImageView externalLink;
    public final LinearLayout titleContainer;
    public final TextView titleText;

    public ViewImageDetailBinding(MaterialButton materialButton, LinearLayout linearLayout, TextView textView, View view, ImageView imageView, ImageView imageView2, LinearLayout linearLayout2, TextView textView2) {
        this.actionButton = materialButton;
        this.contentContainer = linearLayout;
        this.contentText = textView;
        this.divider = view;
        this.editButton = imageView;
        this.externalLink = imageView2;
        this.titleContainer = linearLayout2;
        this.titleText = textView2;
    }
}
