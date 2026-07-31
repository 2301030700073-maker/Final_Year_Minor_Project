package org.schabi.newpipe.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedGroupCardItemBinding implements ViewBinding {
    public final ImageView icon;
    public final CardView rootView;
    public final NewPipeTextView title;

    public FeedGroupCardItemBinding(CardView cardView, ImageView imageView, NewPipeTextView newPipeTextView) {
        this.rootView = cardView;
        this.icon = imageView;
        this.title = newPipeTextView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.rootView;
    }
}
