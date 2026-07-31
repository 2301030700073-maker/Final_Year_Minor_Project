package org.schabi.newpipe.local.subscription.item;

import android.view.View;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.xwray.groupie.viewbinding.BindableItem;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.PickerIconItemBinding;
import org.schabi.newpipe.local.subscription.FeedGroupIcon;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PickerIconItem extends BindableItem {
    public final FeedGroupIcon icon;
    public final int iconRes;

    public PickerIconItem(FeedGroupIcon feedGroupIcon) {
        feedGroupIcon.getClass();
        this.icon = feedGroupIcon;
        this.iconRes = feedGroupIcon.getDrawableRes();
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final void bind(ViewBinding viewBinding) {
        PickerIconItemBinding pickerIconItemBinding = (PickerIconItemBinding) viewBinding;
        pickerIconItemBinding.getClass();
        pickerIconItemBinding.iconView.setImageResource(this.iconRes);
    }

    @Override // com.xwray.groupie.Item
    public final int getLayout() {
        return R.layout.picker_icon_item;
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final ViewBinding initializeViewBinding(View view) {
        view.getClass();
        ImageView imageView = (ImageView) view;
        return new PickerIconItemBinding(imageView, imageView);
    }
}
