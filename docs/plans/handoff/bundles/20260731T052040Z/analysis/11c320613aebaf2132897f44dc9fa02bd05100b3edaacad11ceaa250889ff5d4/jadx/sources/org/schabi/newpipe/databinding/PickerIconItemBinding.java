package org.schabi.newpipe.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PickerIconItemBinding implements ViewBinding {
    public final ImageView iconView;
    public final ImageView rootView;

    public PickerIconItemBinding(ImageView imageView, ImageView imageView2) {
        this.rootView = imageView;
        this.iconView = imageView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.rootView;
    }
}
