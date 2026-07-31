package org.schabi.newpipe.databinding;

import android.view.View;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ListEmptyViewBinding implements ViewBinding {
    public final LinearLayout rootView;

    public ListEmptyViewBinding(LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }

    public static ListEmptyViewBinding bind(View view) {
        if (view != null) {
            return new ListEmptyViewBinding((LinearLayout) view);
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("rootView");
        return null;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.rootView;
    }
}
