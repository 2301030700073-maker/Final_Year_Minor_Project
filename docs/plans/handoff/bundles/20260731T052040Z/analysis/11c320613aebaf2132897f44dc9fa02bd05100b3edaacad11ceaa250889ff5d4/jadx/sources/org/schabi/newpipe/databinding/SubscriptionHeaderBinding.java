package org.schabi.newpipe.databinding;

import android.view.View;
import androidx.viewbinding.ViewBinding;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionHeaderBinding implements ViewBinding {
    public final NewPipeTextView rootView;

    public SubscriptionHeaderBinding(NewPipeTextView newPipeTextView) {
        this.rootView = newPipeTextView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.rootView;
    }
}
