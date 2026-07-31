package org.schabi.newpipe.databinding;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.viewbinding.ViewBinding;
import org.schabi.newpipe.views.player.SecondsView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PlayerFastSeekSecondsViewBinding implements ViewBinding {
    public final AppCompatImageView icon1;
    public final AppCompatImageView icon2;
    public final AppCompatImageView icon3;
    public final SecondsView rootView;
    public final LinearLayout triangleContainer;
    public final TextView tvSeconds;

    public PlayerFastSeekSecondsViewBinding(SecondsView secondsView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, LinearLayout linearLayout, TextView textView) {
        this.rootView = secondsView;
        this.icon1 = appCompatImageView;
        this.icon2 = appCompatImageView2;
        this.icon3 = appCompatImageView3;
        this.triangleContainer = linearLayout;
        this.tvSeconds = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.rootView;
    }
}
