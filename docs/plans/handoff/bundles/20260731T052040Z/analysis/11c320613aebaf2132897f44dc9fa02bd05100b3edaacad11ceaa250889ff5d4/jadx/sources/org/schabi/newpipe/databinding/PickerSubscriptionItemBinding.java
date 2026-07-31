package org.schabi.newpipe.databinding;

import android.view.View;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PickerSubscriptionItemBinding implements ViewBinding {
    public final FrameLayout rootView;
    public final FrameLayout selectedHighlight;
    public final ShapeableImageView thumbnailView;
    public final NewPipeTextView titleView;

    public PickerSubscriptionItemBinding(FrameLayout frameLayout, FrameLayout frameLayout2, ShapeableImageView shapeableImageView, NewPipeTextView newPipeTextView) {
        this.rootView = frameLayout;
        this.selectedHighlight = frameLayout2;
        this.thumbnailView = shapeableImageView;
        this.titleView = newPipeTextView;
    }

    public static PickerSubscriptionItemBinding bind(View view) {
        int i = R.id.selected_highlight;
        FrameLayout frameLayout = (FrameLayout) Options.Companion.findChildViewById(R.id.selected_highlight, view);
        if (frameLayout != null) {
            i = R.id.thumbnail_view;
            ShapeableImageView shapeableImageView = (ShapeableImageView) Options.Companion.findChildViewById(R.id.thumbnail_view, view);
            if (shapeableImageView != null) {
                i = R.id.title_view;
                NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.title_view, view);
                if (newPipeTextView != null) {
                    return new PickerSubscriptionItemBinding((FrameLayout) view, frameLayout, shapeableImageView, newPipeTextView);
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.rootView;
    }
}
