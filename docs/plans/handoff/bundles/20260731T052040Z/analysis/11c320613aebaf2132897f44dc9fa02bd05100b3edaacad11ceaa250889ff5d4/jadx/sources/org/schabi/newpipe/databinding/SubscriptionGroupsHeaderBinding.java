package org.schabi.newpipe.databinding;

import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionGroupsHeaderBinding implements ViewBinding {
    public final ImageButton headerSort;
    public final NewPipeTextView headerTitle;
    public final ImageButton headerToggleViewMode;
    public final LinearLayout rootView;

    public SubscriptionGroupsHeaderBinding(LinearLayout linearLayout, ImageButton imageButton, NewPipeTextView newPipeTextView, ImageButton imageButton2) {
        this.rootView = linearLayout;
        this.headerSort = imageButton;
        this.headerTitle = newPipeTextView;
        this.headerToggleViewMode = imageButton2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.rootView;
    }
}
