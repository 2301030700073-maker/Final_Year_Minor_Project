package org.schabi.newpipe.local.subscription.item;

import android.view.View;
import androidx.viewbinding.ViewBinding;
import com.xwray.groupie.viewbinding.BindableItem;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.SubscriptionHeaderBinding;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Header extends BindableItem {
    public final String title;

    public Header(String str) {
        this.title = str;
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final void bind(ViewBinding viewBinding) {
        SubscriptionHeaderBinding subscriptionHeaderBinding = (SubscriptionHeaderBinding) viewBinding;
        subscriptionHeaderBinding.getClass();
        subscriptionHeaderBinding.rootView.setText(this.title);
    }

    @Override // com.xwray.groupie.Item
    public final int getLayout() {
        return R.layout.subscription_header;
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final ViewBinding initializeViewBinding(View view) {
        view.getClass();
        return new SubscriptionHeaderBinding((NewPipeTextView) view);
    }
}
