package org.schabi.newpipe.databinding;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedGroupReorderItemBinding implements ViewBinding {
    public final AppCompatImageView groupIcon;
    public final NewPipeTextView groupName;
    public final AppCompatImageView handle;
    public final CardView rootView;

    public FeedGroupReorderItemBinding(CardView cardView, AppCompatImageView appCompatImageView, NewPipeTextView newPipeTextView, AppCompatImageView appCompatImageView2) {
        this.rootView = cardView;
        this.groupIcon = appCompatImageView;
        this.groupName = newPipeTextView;
        this.handle = appCompatImageView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.rootView;
    }
}
