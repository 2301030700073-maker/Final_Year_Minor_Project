package org.schabi.newpipe.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ItemStreamSegmentBinding implements ViewBinding {
    public final ImageView previewImage;
    public final ConstraintLayout rootView;
    public final NewPipeTextView textViewChannel;
    public final NewPipeTextView textViewStartSeconds;
    public final NewPipeTextView textViewTitle;

    public ItemStreamSegmentBinding(ConstraintLayout constraintLayout, ImageView imageView, NewPipeTextView newPipeTextView, NewPipeTextView newPipeTextView2, NewPipeTextView newPipeTextView3) {
        this.rootView = constraintLayout;
        this.previewImage = imageView;
        this.textViewChannel = newPipeTextView;
        this.textViewStartSeconds = newPipeTextView2;
        this.textViewTitle = newPipeTextView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.rootView;
    }
}
