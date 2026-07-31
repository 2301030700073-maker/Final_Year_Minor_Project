package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentState;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.TextAppearance;
import java.io.IOException;
import java.util.Locale;
import org.schabi.newpipe.R;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BadgeState {
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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new FragmentState.AnonymousClass1(27);
        public Integer additionalHorizontalOffset;
        public Integer additionalVerticalOffset;
        public Boolean autoAdjustToWithinGrandparentBounds;
        public Integer backgroundColor;
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
        }
    }

    public BadgeState(Context context) {
        AttributeSet attributeSet;
        int i;
        int next;
        State state = new State();
        int i2 = state.badgeResId;
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
                attributeSet = Xml.asAttributeSet(xml);
                i = attributeSet.getStyleAttribute();
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
        this.badgeRadius = obtainStyledAttributes.getDimensionPixelSize(4, -1);
        this.horizontalInset = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_horizontal_edge_offset);
        this.horizontalInsetWithText = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_text_horizontal_edge_offset);
        this.badgeWithTextRadius = obtainStyledAttributes.getDimensionPixelSize(14, -1);
        this.badgeWidth = obtainStyledAttributes.getDimension(12, resources.getDimension(R.dimen.m3_badge_size));
        this.badgeWithTextWidth = obtainStyledAttributes.getDimension(17, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.badgeHeight = obtainStyledAttributes.getDimension(3, resources.getDimension(R.dimen.m3_badge_size));
        this.badgeWithTextHeight = obtainStyledAttributes.getDimension(13, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.offsetAlignmentMode = obtainStyledAttributes.getInt(24, 1);
        State state2 = this.currentState;
        int i3 = state.alpha;
        state2.alpha = i3 == -2 ? 255 : i3;
        int i4 = state.number;
        if (i4 != -2) {
            state2.number = i4;
        } else {
            boolean hasValue = obtainStyledAttributes.hasValue(23);
            State state3 = this.currentState;
            if (hasValue) {
                state3.number = obtainStyledAttributes.getInt(23, 0);
            } else {
                state3.number = -1;
            }
        }
        String str = state.text;
        if (str != null) {
            this.currentState.text = str;
        } else if (obtainStyledAttributes.hasValue(7)) {
            this.currentState.text = obtainStyledAttributes.getString(7);
        }
        State state4 = this.currentState;
        state4.contentDescriptionForText = state.contentDescriptionForText;
        CharSequence charSequence = state.contentDescriptionNumberless;
        state4.contentDescriptionNumberless = charSequence == null ? context.getString(R.string.mtrl_badge_numberless_content_description) : charSequence;
        State state5 = this.currentState;
        int i5 = state.contentDescriptionQuantityStrings;
        state5.contentDescriptionQuantityStrings = i5 == 0 ? R.plurals.mtrl_badge_content_description : i5;
        int i6 = state.contentDescriptionExceedsMaxBadgeNumberRes;
        state5.contentDescriptionExceedsMaxBadgeNumberRes = i6 == 0 ? R.string.mtrl_exceed_max_badge_number_content_description : i6;
        Boolean bool = state.isVisible;
        state5.isVisible = Boolean.valueOf(bool == null || bool.booleanValue());
        State state6 = this.currentState;
        int i7 = state.maxCharacterCount;
        state6.maxCharacterCount = i7 == -2 ? obtainStyledAttributes.getInt(21, -2) : i7;
        State state7 = this.currentState;
        int i8 = state.maxNumber;
        state7.maxNumber = i8 == -2 ? obtainStyledAttributes.getInt(22, -2) : i8;
        State state8 = this.currentState;
        Integer num = state.badgeShapeAppearanceResId;
        state8.badgeShapeAppearanceResId = Integer.valueOf(num == null ? obtainStyledAttributes.getResourceId(5, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num.intValue());
        State state9 = this.currentState;
        Integer num2 = state.badgeShapeAppearanceOverlayResId;
        state9.badgeShapeAppearanceOverlayResId = Integer.valueOf(num2 == null ? obtainStyledAttributes.getResourceId(6, 0) : num2.intValue());
        State state10 = this.currentState;
        Integer num3 = state.badgeWithTextShapeAppearanceResId;
        state10.badgeWithTextShapeAppearanceResId = Integer.valueOf(num3 == null ? obtainStyledAttributes.getResourceId(15, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num3.intValue());
        State state11 = this.currentState;
        Integer num4 = state.badgeWithTextShapeAppearanceOverlayResId;
        state11.badgeWithTextShapeAppearanceOverlayResId = Integer.valueOf(num4 == null ? obtainStyledAttributes.getResourceId(16, 0) : num4.intValue());
        State state12 = this.currentState;
        Integer num5 = state.backgroundColor;
        state12.backgroundColor = Integer.valueOf(num5 == null ? BundleKt.getColorStateList(context, obtainStyledAttributes, 1).getDefaultColor() : num5.intValue());
        State state13 = this.currentState;
        Integer num6 = state.badgeTextAppearanceResId;
        state13.badgeTextAppearanceResId = Integer.valueOf(num6 == null ? obtainStyledAttributes.getResourceId(8, R.style.TextAppearance_MaterialComponents_Badge) : num6.intValue());
        Integer num7 = state.badgeTextColor;
        if (num7 != null) {
            this.currentState.badgeTextColor = num7;
        } else {
            boolean hasValue2 = obtainStyledAttributes.hasValue(9);
            State state14 = this.currentState;
            if (hasValue2) {
                state14.badgeTextColor = Integer.valueOf(BundleKt.getColorStateList(context, obtainStyledAttributes, 9).getDefaultColor());
            } else {
                this.currentState.badgeTextColor = Integer.valueOf(new TextAppearance(context, state14.badgeTextAppearanceResId.intValue()).textColor.getDefaultColor());
            }
        }
        State state15 = this.currentState;
        Integer num8 = state.badgeGravity;
        state15.badgeGravity = Integer.valueOf(num8 == null ? obtainStyledAttributes.getInt(2, 8388661) : num8.intValue());
        State state16 = this.currentState;
        Integer num9 = state.badgeHorizontalPadding;
        state16.badgeHorizontalPadding = Integer.valueOf(num9 == null ? obtainStyledAttributes.getDimensionPixelSize(11, resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding)) : num9.intValue());
        State state17 = this.currentState;
        Integer num10 = state.badgeVerticalPadding;
        state17.badgeVerticalPadding = Integer.valueOf(num10 == null ? obtainStyledAttributes.getDimensionPixelSize(10, resources.getDimensionPixelSize(R.dimen.m3_badge_with_text_vertical_padding)) : num10.intValue());
        State state18 = this.currentState;
        Integer num11 = state.horizontalOffsetWithoutText;
        state18.horizontalOffsetWithoutText = Integer.valueOf(num11 == null ? obtainStyledAttributes.getDimensionPixelOffset(18, 0) : num11.intValue());
        State state19 = this.currentState;
        Integer num12 = state.verticalOffsetWithoutText;
        state19.verticalOffsetWithoutText = Integer.valueOf(num12 == null ? obtainStyledAttributes.getDimensionPixelOffset(25, 0) : num12.intValue());
        State state20 = this.currentState;
        Integer num13 = state.horizontalOffsetWithText;
        state20.horizontalOffsetWithText = Integer.valueOf(num13 == null ? obtainStyledAttributes.getDimensionPixelOffset(19, state20.horizontalOffsetWithoutText.intValue()) : num13.intValue());
        State state21 = this.currentState;
        Integer num14 = state.verticalOffsetWithText;
        state21.verticalOffsetWithText = Integer.valueOf(num14 == null ? obtainStyledAttributes.getDimensionPixelOffset(26, state21.verticalOffsetWithoutText.intValue()) : num14.intValue());
        State state22 = this.currentState;
        Integer num15 = state.largeFontVerticalOffsetAdjustment;
        state22.largeFontVerticalOffsetAdjustment = Integer.valueOf(num15 == null ? obtainStyledAttributes.getDimensionPixelOffset(20, 0) : num15.intValue());
        State state23 = this.currentState;
        Integer num16 = state.additionalHorizontalOffset;
        state23.additionalHorizontalOffset = Integer.valueOf(num16 == null ? 0 : num16.intValue());
        State state24 = this.currentState;
        Integer num17 = state.additionalVerticalOffset;
        state24.additionalVerticalOffset = Integer.valueOf(num17 == null ? 0 : num17.intValue());
        State state25 = this.currentState;
        Boolean bool2 = state.autoAdjustToWithinGrandparentBounds;
        state25.autoAdjustToWithinGrandparentBounds = Boolean.valueOf(bool2 == null ? obtainStyledAttributes.getBoolean(0, false) : bool2.booleanValue());
        obtainStyledAttributes.recycle();
        Locale locale = state.numberLocale;
        State state26 = this.currentState;
        if (locale == null) {
            state26.numberLocale = Build.VERSION.SDK_INT >= 24 ? Locale.getDefault(Locale.Category.FORMAT) : Locale.getDefault();
        } else {
            state26.numberLocale = locale;
        }
        this.overridingState = state;
    }
}
