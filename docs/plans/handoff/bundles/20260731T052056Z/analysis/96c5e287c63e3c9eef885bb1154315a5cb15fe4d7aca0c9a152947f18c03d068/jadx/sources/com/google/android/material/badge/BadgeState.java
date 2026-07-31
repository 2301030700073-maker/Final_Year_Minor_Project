package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.fragment.app.FragmentState;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.OperationKt;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ViewUtils;
import java.io.IOException;
import java.util.Locale;
import org.wikipedia.R;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BadgeState {
    public int badgeFixedEdge;
    public final float badgeHeight;
    public final float badgeRadius;
    public final float badgeWidth;
    public final float badgeWithTextHeight;
    public final float badgeWithTextRadius;
    public final float badgeWithTextWidth;
    public final State currentState = new State();
    public final int horizontalInset;
    public final int horizontalInsetWithText;
    public final int offsetAlignmentMode;
    public final State overridingState;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new FragmentState.AnonymousClass1(25);
        public Integer additionalHorizontalOffset;
        public Integer additionalVerticalOffset;
        public Boolean autoAdjustToWithinGrandparentBounds;
        public Integer backgroundColor;
        public Integer badgeFixedEdge;
        public Integer badgeGravity;
        public Integer badgeHorizontalPadding;
        public int badgeResId;
        public Integer badgeShapeAppearanceOverlayResId;
        public Integer badgeShapeAppearanceResId;
        public Integer badgeTextAppearanceResId;
        public Integer badgeTextColor;
        public Integer badgeVerticalPadding;
        public Integer badgeWithTextShapeAppearanceOverlayResId;
        public Integer badgeWithTextShapeAppearanceResId;
        public int contentDescriptionExceedsMaxBadgeNumberRes;
        public CharSequence contentDescriptionForText;
        public CharSequence contentDescriptionNumberless;
        public int contentDescriptionQuantityStrings;
        public Integer horizontalOffsetWithText;
        public Integer horizontalOffsetWithoutText;
        public Integer largeFontVerticalOffsetAdjustment;
        public Locale numberLocale;
        public String text;
        public Integer verticalOffsetWithText;
        public Integer verticalOffsetWithoutText;
        public int alpha = 255;
        public int number = -2;
        public int maxCharacterCount = -2;
        public int maxNumber = -2;
        public Boolean isVisible = Boolean.TRUE;

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.badgeResId);
            parcel.writeSerializable(this.backgroundColor);
            parcel.writeSerializable(this.badgeTextColor);
            parcel.writeSerializable(this.badgeTextAppearanceResId);
            parcel.writeSerializable(this.badgeShapeAppearanceResId);
            parcel.writeSerializable(this.badgeShapeAppearanceOverlayResId);
            parcel.writeSerializable(this.badgeWithTextShapeAppearanceResId);
            parcel.writeSerializable(this.badgeWithTextShapeAppearanceOverlayResId);
            parcel.writeInt(this.alpha);
            parcel.writeString(this.text);
            parcel.writeInt(this.number);
            parcel.writeInt(this.maxCharacterCount);
            parcel.writeInt(this.maxNumber);
            CharSequence charSequence = this.contentDescriptionForText;
            parcel.writeString(charSequence != null ? charSequence.toString() : null);
            CharSequence charSequence2 = this.contentDescriptionNumberless;
            parcel.writeString(charSequence2 != null ? charSequence2.toString() : null);
            parcel.writeInt(this.contentDescriptionQuantityStrings);
            parcel.writeSerializable(this.badgeGravity);
            parcel.writeSerializable(this.badgeHorizontalPadding);
            parcel.writeSerializable(this.badgeVerticalPadding);
            parcel.writeSerializable(this.horizontalOffsetWithoutText);
            parcel.writeSerializable(this.verticalOffsetWithoutText);
            parcel.writeSerializable(this.horizontalOffsetWithText);
            parcel.writeSerializable(this.verticalOffsetWithText);
            parcel.writeSerializable(this.largeFontVerticalOffsetAdjustment);
            parcel.writeSerializable(this.additionalHorizontalOffset);
            parcel.writeSerializable(this.additionalVerticalOffset);
            parcel.writeSerializable(this.isVisible);
            parcel.writeSerializable(this.numberLocale);
            parcel.writeSerializable(this.autoAdjustToWithinGrandparentBounds);
            parcel.writeSerializable(this.badgeFixedEdge);
        }
    }

    public BadgeState(Context context, State state) {
        AttributeSet attributeSet;
        int i;
        int next;
        State state2 = state == null ? new State() : state;
        int i2 = state2.badgeResId;
        if (i2 != 0) {
            try {
                XmlResourceParser xml = context.getResources().getXml(i2);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                if (!TextUtils.equals(xml.getName(), "badge")) {
                    throw new XmlPullParserException("Must have a <" + ((Object) "badge") + "> start tag");
                }
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                attributeSet = asAttributeSet;
                i = asAttributeSet.getStyleAttribute();
            } catch (IOException | XmlPullParserException e) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load badge resource ID #0x" + Integer.toHexString(i2));
                notFoundException.initCause(e);
                throw notFoundException;
            }
        } else {
            attributeSet = null;
            i = 0;
        }
        TypedArray obtainStyledAttributes = ViewUtils.obtainStyledAttributes(context, attributeSet, R$styleable.Badge, R.attr.badgeStyle, i == 0 ? R.style.Widget_MaterialComponents_Badge : i, new int[0]);
        Resources resources = context.getResources();
        this.badgeRadius = obtainStyledAttributes.getDimensionPixelSize(5, -1);
        this.horizontalInset = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_horizontal_edge_offset);
        this.horizontalInsetWithText = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_text_horizontal_edge_offset);
        this.badgeWithTextRadius = obtainStyledAttributes.getDimensionPixelSize(15, -1);
        this.badgeWidth = obtainStyledAttributes.getDimension(13, resources.getDimension(R.dimen.m3_badge_size));
        this.badgeWithTextWidth = obtainStyledAttributes.getDimension(18, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.badgeHeight = obtainStyledAttributes.getDimension(4, resources.getDimension(R.dimen.m3_badge_size));
        this.badgeWithTextHeight = obtainStyledAttributes.getDimension(14, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.offsetAlignmentMode = obtainStyledAttributes.getInt(25, 1);
        this.badgeFixedEdge = obtainStyledAttributes.getInt(2, 0);
        State state3 = this.currentState;
        int i3 = state2.alpha;
        state3.alpha = i3 == -2 ? 255 : i3;
        int i4 = state2.number;
        if (i4 != -2) {
            state3.number = i4;
        } else {
            boolean hasValue = obtainStyledAttributes.hasValue(24);
            State state4 = this.currentState;
            if (hasValue) {
                state4.number = obtainStyledAttributes.getInt(24, 0);
            } else {
                state4.number = -1;
            }
        }
        String str = state2.text;
        if (str != null) {
            this.currentState.text = str;
        } else if (obtainStyledAttributes.hasValue(8)) {
            this.currentState.text = obtainStyledAttributes.getString(8);
        }
        State state5 = this.currentState;
        state5.contentDescriptionForText = state2.contentDescriptionForText;
        CharSequence charSequence = state2.contentDescriptionNumberless;
        state5.contentDescriptionNumberless = charSequence == null ? context.getString(R.string.mtrl_badge_numberless_content_description) : charSequence;
        State state6 = this.currentState;
        int i5 = state2.contentDescriptionQuantityStrings;
        state6.contentDescriptionQuantityStrings = i5 == 0 ? R.plurals.mtrl_badge_content_description : i5;
        int i6 = state2.contentDescriptionExceedsMaxBadgeNumberRes;
        state6.contentDescriptionExceedsMaxBadgeNumberRes = i6 == 0 ? R.string.mtrl_exceed_max_badge_number_content_description : i6;
        Boolean bool = state2.isVisible;
        state6.isVisible = Boolean.valueOf(bool == null || bool.booleanValue());
        State state7 = this.currentState;
        int i7 = state2.maxCharacterCount;
        state7.maxCharacterCount = i7 == -2 ? obtainStyledAttributes.getInt(22, -2) : i7;
        State state8 = this.currentState;
        int i8 = state2.maxNumber;
        state8.maxNumber = i8 == -2 ? obtainStyledAttributes.getInt(23, -2) : i8;
        State state9 = this.currentState;
        Integer num = state2.badgeShapeAppearanceResId;
        state9.badgeShapeAppearanceResId = Integer.valueOf(num == null ? obtainStyledAttributes.getResourceId(6, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num.intValue());
        State state10 = this.currentState;
        Integer num2 = state2.badgeShapeAppearanceOverlayResId;
        state10.badgeShapeAppearanceOverlayResId = Integer.valueOf(num2 == null ? obtainStyledAttributes.getResourceId(7, 0) : num2.intValue());
        State state11 = this.currentState;
        Integer num3 = state2.badgeWithTextShapeAppearanceResId;
        state11.badgeWithTextShapeAppearanceResId = Integer.valueOf(num3 == null ? obtainStyledAttributes.getResourceId(16, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num3.intValue());
        State state12 = this.currentState;
        Integer num4 = state2.badgeWithTextShapeAppearanceOverlayResId;
        state12.badgeWithTextShapeAppearanceOverlayResId = Integer.valueOf(num4 == null ? obtainStyledAttributes.getResourceId(17, 0) : num4.intValue());
        State state13 = this.currentState;
        Integer num5 = state2.backgroundColor;
        state13.backgroundColor = Integer.valueOf(num5 == null ? OperationKt.getColorStateList(context, obtainStyledAttributes, 1).getDefaultColor() : num5.intValue());
        State state14 = this.currentState;
        Integer num6 = state2.badgeTextAppearanceResId;
        state14.badgeTextAppearanceResId = Integer.valueOf(num6 == null ? obtainStyledAttributes.getResourceId(9, R.style.TextAppearance_MaterialComponents_Badge) : num6.intValue());
        Integer num7 = state2.badgeTextColor;
        if (num7 != null) {
            this.currentState.badgeTextColor = num7;
        } else {
            boolean hasValue2 = obtainStyledAttributes.hasValue(10);
            State state15 = this.currentState;
            if (hasValue2) {
                state15.badgeTextColor = Integer.valueOf(OperationKt.getColorStateList(context, obtainStyledAttributes, 10).getDefaultColor());
            } else {
                int intValue = state15.badgeTextAppearanceResId.intValue();
                TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(intValue, androidx.appcompat.R$styleable.TextAppearance);
                obtainStyledAttributes2.getDimension(0, RecyclerView.DECELERATION_RATE);
                ColorStateList colorStateList = OperationKt.getColorStateList(context, obtainStyledAttributes2, 3);
                OperationKt.getColorStateList(context, obtainStyledAttributes2, 4);
                OperationKt.getColorStateList(context, obtainStyledAttributes2, 5);
                obtainStyledAttributes2.getInt(2, 0);
                obtainStyledAttributes2.getInt(1, 1);
                int i9 = obtainStyledAttributes2.hasValue(12) ? 12 : 10;
                obtainStyledAttributes2.getResourceId(i9, 0);
                obtainStyledAttributes2.getString(i9);
                obtainStyledAttributes2.getBoolean(14, false);
                OperationKt.getColorStateList(context, obtainStyledAttributes2, 6);
                obtainStyledAttributes2.getFloat(7, RecyclerView.DECELERATION_RATE);
                obtainStyledAttributes2.getFloat(8, RecyclerView.DECELERATION_RATE);
                obtainStyledAttributes2.getFloat(9, RecyclerView.DECELERATION_RATE);
                obtainStyledAttributes2.recycle();
                TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(intValue, R$styleable.MaterialTextAppearance);
                obtainStyledAttributes3.hasValue(0);
                obtainStyledAttributes3.getFloat(0, RecyclerView.DECELERATION_RATE);
                if (Build.VERSION.SDK_INT >= 26) {
                    obtainStyledAttributes3.getString(obtainStyledAttributes3.hasValue(3) ? 3 : 1);
                }
                obtainStyledAttributes3.recycle();
                this.currentState.badgeTextColor = Integer.valueOf(colorStateList.getDefaultColor());
            }
        }
        State state16 = this.currentState;
        Integer num8 = state2.badgeGravity;
        state16.badgeGravity = Integer.valueOf(num8 == null ? obtainStyledAttributes.getInt(3, 8388661) : num8.intValue());
        State state17 = this.currentState;
        Integer num9 = state2.badgeHorizontalPadding;
        state17.badgeHorizontalPadding = Integer.valueOf(num9 == null ? obtainStyledAttributes.getDimensionPixelSize(12, resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding)) : num9.intValue());
        State state18 = this.currentState;
        Integer num10 = state2.badgeVerticalPadding;
        state18.badgeVerticalPadding = Integer.valueOf(num10 == null ? obtainStyledAttributes.getDimensionPixelSize(11, resources.getDimensionPixelSize(R.dimen.m3_badge_with_text_vertical_padding)) : num10.intValue());
        State state19 = this.currentState;
        Integer num11 = state2.horizontalOffsetWithoutText;
        state19.horizontalOffsetWithoutText = Integer.valueOf(num11 == null ? obtainStyledAttributes.getDimensionPixelOffset(19, 0) : num11.intValue());
        State state20 = this.currentState;
        Integer num12 = state2.verticalOffsetWithoutText;
        state20.verticalOffsetWithoutText = Integer.valueOf(num12 == null ? obtainStyledAttributes.getDimensionPixelOffset(26, 0) : num12.intValue());
        State state21 = this.currentState;
        Integer num13 = state2.horizontalOffsetWithText;
        state21.horizontalOffsetWithText = Integer.valueOf(num13 == null ? obtainStyledAttributes.getDimensionPixelOffset(20, state21.horizontalOffsetWithoutText.intValue()) : num13.intValue());
        State state22 = this.currentState;
        Integer num14 = state2.verticalOffsetWithText;
        state22.verticalOffsetWithText = Integer.valueOf(num14 == null ? obtainStyledAttributes.getDimensionPixelOffset(27, state22.verticalOffsetWithoutText.intValue()) : num14.intValue());
        State state23 = this.currentState;
        Integer num15 = state2.largeFontVerticalOffsetAdjustment;
        state23.largeFontVerticalOffsetAdjustment = Integer.valueOf(num15 == null ? obtainStyledAttributes.getDimensionPixelOffset(21, 0) : num15.intValue());
        State state24 = this.currentState;
        Integer num16 = state2.additionalHorizontalOffset;
        state24.additionalHorizontalOffset = Integer.valueOf(num16 == null ? 0 : num16.intValue());
        State state25 = this.currentState;
        Integer num17 = state2.additionalVerticalOffset;
        state25.additionalVerticalOffset = Integer.valueOf(num17 == null ? 0 : num17.intValue());
        State state26 = this.currentState;
        Boolean bool2 = state2.autoAdjustToWithinGrandparentBounds;
        state26.autoAdjustToWithinGrandparentBounds = Boolean.valueOf(bool2 == null ? obtainStyledAttributes.getBoolean(0, false) : bool2.booleanValue());
        obtainStyledAttributes.recycle();
        Locale locale = state2.numberLocale;
        State state27 = this.currentState;
        if (locale == null) {
            state27.numberLocale = Build.VERSION.SDK_INT >= 24 ? Locale.getDefault(Locale.Category.FORMAT) : Locale.getDefault();
        } else {
            state27.numberLocale = locale;
        }
        this.overridingState = state2;
    }
}
