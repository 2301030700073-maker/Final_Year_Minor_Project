package org.schabi.newpipe.databinding;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.RoundedCornerTreatment;
import com.google.android.material.shape.ShapeAppearanceModel;
import io.noties.markwon.BlockHandlerDef;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FragmentChannelBinding implements ViewBinding {
    public Object channelAvatarView;
    public Object channelBannerImage;
    public Object channelSubscribeButton;
    public Object rootView;
    public Object subChannelAvatarView;
    public Object subChannelTitleView;
    public Object tabLayout;
    public Object viewPager;
    public Object channelKaomoji = new AbsoluteCornerSize(0.0f);
    public Object channelSubscriberView = new AbsoluteCornerSize(0.0f);
    public Object channelTitleView = new AbsoluteCornerSize(0.0f);
    public Object errorContentNotSupported = new AbsoluteCornerSize(0.0f);

    public FragmentChannelBinding() {
        int i = 13;
        this.rootView = new RoundedCornerTreatment(i);
        this.channelAvatarView = new RoundedCornerTreatment(i);
        this.subChannelAvatarView = new RoundedCornerTreatment(i);
        this.channelBannerImage = new RoundedCornerTreatment(i);
        int i2 = 1;
        this.subChannelTitleView = new BlockHandlerDef(i2);
        this.channelSubscribeButton = new BlockHandlerDef(i2);
        this.tabLayout = new BlockHandlerDef(i2);
        this.viewPager = new BlockHandlerDef(i2);
    }

    public ShapeAppearanceModel build() {
        ShapeAppearanceModel shapeAppearanceModel = new ShapeAppearanceModel();
        shapeAppearanceModel.topLeftCorner = (Jsoup) this.rootView;
        shapeAppearanceModel.topRightCorner = (Jsoup) this.channelAvatarView;
        shapeAppearanceModel.bottomRightCorner = (Jsoup) this.subChannelAvatarView;
        shapeAppearanceModel.bottomLeftCorner = (Jsoup) this.channelBannerImage;
        shapeAppearanceModel.topLeftCornerSize = (CornerSize) this.channelKaomoji;
        shapeAppearanceModel.topRightCornerSize = (CornerSize) this.channelSubscriberView;
        shapeAppearanceModel.bottomRightCornerSize = (CornerSize) this.channelTitleView;
        shapeAppearanceModel.bottomLeftCornerSize = (CornerSize) this.errorContentNotSupported;
        shapeAppearanceModel.topEdge = (BlockHandlerDef) this.subChannelTitleView;
        shapeAppearanceModel.rightEdge = (BlockHandlerDef) this.channelSubscribeButton;
        shapeAppearanceModel.bottomEdge = (BlockHandlerDef) this.tabLayout;
        shapeAppearanceModel.leftEdge = (BlockHandlerDef) this.viewPager;
        return shapeAppearanceModel;
    }

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return (CoordinatorLayout) this.rootView;
    }
}
