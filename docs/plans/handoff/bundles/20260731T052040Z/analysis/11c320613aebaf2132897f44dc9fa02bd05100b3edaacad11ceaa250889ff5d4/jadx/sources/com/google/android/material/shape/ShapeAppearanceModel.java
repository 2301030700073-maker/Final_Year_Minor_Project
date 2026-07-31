package com.google.android.material.shape;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import com.google.android.material.R$styleable;
import io.noties.markwon.BlockHandlerDef;
import kotlin.ranges.RangesKt;
import org.jsoup.Jsoup;
import org.schabi.newpipe.databinding.FragmentChannelBinding;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ShapeAppearanceModel {
    public static final RelativeCornerSize PILL = new RelativeCornerSize(0.5f);
    public BlockHandlerDef bottomEdge;
    public Jsoup bottomLeftCorner;
    public Jsoup bottomRightCorner;
    public BlockHandlerDef leftEdge;
    public BlockHandlerDef rightEdge;
    public BlockHandlerDef topEdge;
    public Jsoup topLeftCorner;
    public Jsoup topRightCorner;
    public CornerSize topLeftCornerSize = new AbsoluteCornerSize(0.0f);
    public CornerSize topRightCornerSize = new AbsoluteCornerSize(0.0f);
    public CornerSize bottomRightCornerSize = new AbsoluteCornerSize(0.0f);
    public CornerSize bottomLeftCornerSize = new AbsoluteCornerSize(0.0f);

    public ShapeAppearanceModel() {
        int i = 13;
        this.topLeftCorner = new RoundedCornerTreatment(i);
        this.topRightCorner = new RoundedCornerTreatment(i);
        this.bottomRightCorner = new RoundedCornerTreatment(i);
        this.bottomLeftCorner = new RoundedCornerTreatment(i);
        int i2 = 1;
        this.topEdge = new BlockHandlerDef(i2);
        this.rightEdge = new BlockHandlerDef(i2);
        this.bottomEdge = new BlockHandlerDef(i2);
        this.leftEdge = new BlockHandlerDef(i2);
    }

    public static FragmentChannelBinding builder(Context context, int i, int i2, CornerSize cornerSize) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
        if (i2 != 0) {
            contextThemeWrapper = new ContextThemeWrapper(contextThemeWrapper, i2);
        }
        TypedArray obtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(R$styleable.ShapeAppearance);
        try {
            int i3 = obtainStyledAttributes.getInt(0, 0);
            int i4 = obtainStyledAttributes.getInt(3, i3);
            int i5 = obtainStyledAttributes.getInt(4, i3);
            int i6 = obtainStyledAttributes.getInt(2, i3);
            int i7 = obtainStyledAttributes.getInt(1, i3);
            CornerSize cornerSize2 = getCornerSize(obtainStyledAttributes, 5, cornerSize);
            CornerSize cornerSize3 = getCornerSize(obtainStyledAttributes, 8, cornerSize2);
            CornerSize cornerSize4 = getCornerSize(obtainStyledAttributes, 9, cornerSize2);
            CornerSize cornerSize5 = getCornerSize(obtainStyledAttributes, 7, cornerSize2);
            CornerSize cornerSize6 = getCornerSize(obtainStyledAttributes, 6, cornerSize2);
            FragmentChannelBinding fragmentChannelBinding = new FragmentChannelBinding();
            fragmentChannelBinding.rootView = RangesKt.createCornerTreatment(i4);
            fragmentChannelBinding.channelKaomoji = cornerSize3;
            fragmentChannelBinding.channelAvatarView = RangesKt.createCornerTreatment(i5);
            fragmentChannelBinding.channelSubscriberView = cornerSize4;
            fragmentChannelBinding.subChannelAvatarView = RangesKt.createCornerTreatment(i6);
            fragmentChannelBinding.channelTitleView = cornerSize5;
            fragmentChannelBinding.channelBannerImage = RangesKt.createCornerTreatment(i7);
            fragmentChannelBinding.errorContentNotSupported = cornerSize6;
            return fragmentChannelBinding;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static CornerSize getCornerSize(TypedArray typedArray, int i, CornerSize cornerSize) {
        TypedValue peekValue = typedArray.peekValue(i);
        if (peekValue != null) {
            int i2 = peekValue.type;
            if (i2 == 5) {
                return new AbsoluteCornerSize(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics()));
            }
            if (i2 == 6) {
                return new RelativeCornerSize(peekValue.getFraction(1.0f, 1.0f));
            }
        }
        return cornerSize;
    }

    public final boolean isRoundRect(RectF rectF) {
        boolean z = this.leftEdge.getClass().equals(BlockHandlerDef.class) && this.rightEdge.getClass().equals(BlockHandlerDef.class) && this.topEdge.getClass().equals(BlockHandlerDef.class) && this.bottomEdge.getClass().equals(BlockHandlerDef.class);
        float cornerSize = this.topLeftCornerSize.getCornerSize(rectF);
        return z && ((this.topRightCornerSize.getCornerSize(rectF) > cornerSize ? 1 : (this.topRightCornerSize.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0 && (this.bottomLeftCornerSize.getCornerSize(rectF) > cornerSize ? 1 : (this.bottomLeftCornerSize.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0 && (this.bottomRightCornerSize.getCornerSize(rectF) > cornerSize ? 1 : (this.bottomRightCornerSize.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0) && ((this.topRightCorner instanceof RoundedCornerTreatment) && (this.topLeftCorner instanceof RoundedCornerTreatment) && (this.bottomRightCorner instanceof RoundedCornerTreatment) && (this.bottomLeftCorner instanceof RoundedCornerTreatment));
    }

    public final FragmentChannelBinding toBuilder() {
        FragmentChannelBinding fragmentChannelBinding = new FragmentChannelBinding();
        fragmentChannelBinding.rootView = this.topLeftCorner;
        fragmentChannelBinding.channelAvatarView = this.topRightCorner;
        fragmentChannelBinding.subChannelAvatarView = this.bottomRightCorner;
        fragmentChannelBinding.channelBannerImage = this.bottomLeftCorner;
        fragmentChannelBinding.channelKaomoji = this.topLeftCornerSize;
        fragmentChannelBinding.channelSubscriberView = this.topRightCornerSize;
        fragmentChannelBinding.channelTitleView = this.bottomRightCornerSize;
        fragmentChannelBinding.errorContentNotSupported = this.bottomLeftCornerSize;
        fragmentChannelBinding.subChannelTitleView = this.topEdge;
        fragmentChannelBinding.channelSubscribeButton = this.rightEdge;
        fragmentChannelBinding.tabLayout = this.bottomEdge;
        fragmentChannelBinding.viewPager = this.leftEdge;
        return fragmentChannelBinding;
    }

    public static FragmentChannelBinding builder(Context context, AttributeSet attributeSet, int i, int i2) {
        AbsoluteCornerSize absoluteCornerSize = new AbsoluteCornerSize(0.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MaterialShape, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        return builder(context, resourceId, resourceId2, absoluteCornerSize);
    }
}
