package org.schabi.newpipe.local.subscription.item;

import android.view.View;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.imageview.ShapeableImageView;
import com.xwray.groupie.GroupieViewHolder;
import com.xwray.groupie.viewbinding.BindableItem;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cookie;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.databinding.PickerSubscriptionItemBinding;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PickerSubscriptionItem extends BindableItem {
    public boolean isSelected;
    public final SubscriptionEntity subscriptionEntity;

    public PickerSubscriptionItem(SubscriptionEntity subscriptionEntity) {
        subscriptionEntity.getClass();
        this.subscriptionEntity = subscriptionEntity;
        this.isSelected = false;
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final void bind(ViewBinding viewBinding) {
        PickerSubscriptionItemBinding pickerSubscriptionItemBinding = (PickerSubscriptionItemBinding) viewBinding;
        pickerSubscriptionItemBinding.getClass();
        ShapeableImageView shapeableImageView = pickerSubscriptionItemBinding.thumbnailView;
        SubscriptionEntity subscriptionEntity = this.subscriptionEntity;
        Cookie.Companion.loadImageDefault(shapeableImageView, subscriptionEntity.avatarUrl, R.drawable.placeholder_person, true);
        pickerSubscriptionItemBinding.titleView.setText(subscriptionEntity.name);
        pickerSubscriptionItemBinding.selectedHighlight.setVisibility(this.isSelected ? 0 : 8);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PickerSubscriptionItem)) {
            return false;
        }
        PickerSubscriptionItem pickerSubscriptionItem = (PickerSubscriptionItem) obj;
        return Intrinsics.areEqual(this.subscriptionEntity, pickerSubscriptionItem.subscriptionEntity) && this.isSelected == pickerSubscriptionItem.isSelected;
    }

    @Override // com.xwray.groupie.Item
    public final long getId() {
        return this.subscriptionEntity.uid;
    }

    @Override // com.xwray.groupie.Item
    public final int getLayout() {
        return R.layout.picker_subscription_item;
    }

    @Override // com.xwray.groupie.Item
    public final int getSpanSize(int i) {
        return 1;
    }

    public final int hashCode() {
        return (this.subscriptionEntity.hashCode() * 31) + (this.isSelected ? 1231 : 1237);
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final ViewBinding initializeViewBinding(View view) {
        view.getClass();
        return PickerSubscriptionItemBinding.bind(view);
    }

    public final String toString() {
        return "PickerSubscriptionItem(subscriptionEntity=" + this.subscriptionEntity + ", isSelected=" + this.isSelected + ")";
    }

    @Override // com.xwray.groupie.Item
    public final void unbind(GroupieViewHolder groupieViewHolder) {
        com.xwray.groupie.viewbinding.GroupieViewHolder groupieViewHolder2 = (com.xwray.groupie.viewbinding.GroupieViewHolder) groupieViewHolder;
        groupieViewHolder2.getClass();
        super.unbind(groupieViewHolder2);
        FrameLayout frameLayout = ((PickerSubscriptionItemBinding) groupieViewHolder2.binding).selectedHighlight;
        frameLayout.animate().setListener(null).cancel();
        frameLayout.setVisibility(8);
        frameLayout.setAlpha(1.0f);
    }
}
