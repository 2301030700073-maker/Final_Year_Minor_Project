package org.schabi.newpipe.local.subscription.item;

import android.view.View;
import androidx.viewbinding.ViewBinding;
import com.xwray.groupie.viewbinding.BindableItem;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.ListEmptyViewBinding;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ImportSubscriptionsHintPlaceholderItem extends BindableItem {
    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final void bind(ViewBinding viewBinding) {
        ((ListEmptyViewBinding) viewBinding).getClass();
    }

    @Override // com.xwray.groupie.Item
    public final int getLayout() {
        return R.layout.list_empty_view_subscriptions;
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final ViewBinding initializeViewBinding(View view) {
        view.getClass();
        return ListEmptyViewBinding.bind(view);
    }

    @Override // com.xwray.groupie.Item
    public final int getSpanSize(int i) {
        return i;
    }
}
