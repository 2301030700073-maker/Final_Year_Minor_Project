package org.schabi.newpipe.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import org.schabi.newpipe.views.AnimatedProgressBar;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ListStreamItemBinding implements ViewBinding {
    public final NewPipeTextView itemAdditionalDetails;
    public final NewPipeTextView itemDurationView;
    public final AnimatedProgressBar itemProgressView;
    public final ConstraintLayout itemRoot;
    public final ImageView itemThumbnailView;
    public final NewPipeTextView itemUploaderView;
    public final NewPipeTextView itemVideoTitleView;
    public final ConstraintLayout rootView;

    public ListStreamItemBinding(ConstraintLayout constraintLayout, NewPipeTextView newPipeTextView, NewPipeTextView newPipeTextView2, AnimatedProgressBar animatedProgressBar, ConstraintLayout constraintLayout2, ImageView imageView, NewPipeTextView newPipeTextView3, NewPipeTextView newPipeTextView4) {
        this.rootView = constraintLayout;
        this.itemAdditionalDetails = newPipeTextView;
        this.itemDurationView = newPipeTextView2;
        this.itemProgressView = animatedProgressBar;
        this.itemRoot = constraintLayout2;
        this.itemThumbnailView = imageView;
        this.itemUploaderView = newPipeTextView3;
        this.itemVideoTitleView = newPipeTextView4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.rootView;
    }
}
