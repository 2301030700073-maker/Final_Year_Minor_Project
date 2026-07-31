package org.wikipedia.databinding;

import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.chip.Chip;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewMessageCardBinding {
    public final FlexboxLayout buttonsContainer;
    public final LinearLayout containerClickArea;
    public final ImageView imageView;
    public final Chip messageLabel;
    public final TextView messageTextView;
    public final TextView messageTitleView;
    public final MaterialButton negativeButton;
    public final MaterialButton positiveButton;

    public ViewMessageCardBinding(FlexboxLayout flexboxLayout, LinearLayout linearLayout, ImageView imageView, Chip chip, TextView textView, TextView textView2, MaterialButton materialButton, MaterialButton materialButton2) {
        this.buttonsContainer = flexboxLayout;
        this.containerClickArea = linearLayout;
        this.imageView = imageView;
        this.messageLabel = chip;
        this.messageTextView = textView;
        this.messageTitleView = textView2;
        this.negativeButton = materialButton;
        this.positiveButton = materialButton2;
    }
}
