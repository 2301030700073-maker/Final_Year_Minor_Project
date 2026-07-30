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
import com.joeykrim.rootcheck.R;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.O2;
import java.io.IOException;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public final class BadgeState {

    /* renamed from: case, reason: not valid java name */
    public final float f10473case;

    /* renamed from: do, reason: not valid java name */
    public final float f10474do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f10475do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final State f10476do;

    /* renamed from: for, reason: not valid java name */
    public final float f10477for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int f10478for;

    /* renamed from: if, reason: not valid java name */
    public final float f10479if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final int f10480if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final State f10481if = new State();

    /* renamed from: new, reason: not valid java name */
    public final float f10482new;

    /* renamed from: try, reason: not valid java name */
    public final float f10483try;

    public BadgeState(Context context, State state) {
        AttributeSet attributeSet;
        int i;
        Locale locale;
        Locale.Category category;
        int next;
        int i2 = state.f10498for;
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
                i = asAttributeSet.getStyleAttribute();
                attributeSet = asAttributeSet;
            } catch (IOException | XmlPullParserException e) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load badge resource ID #0x" + Integer.toHexString(i2));
                notFoundException.initCause(e);
                throw notFoundException;
            }
        } else {
            attributeSet = null;
            i = 0;
        }
        TypedArray m3115new = C0682aH.m3115new(context, attributeSet, O2.f2490for, R.attr.badgeStyle, i == 0 ? R.style.Widget_MaterialComponents_Badge : i, new int[0]);
        Resources resources = context.getResources();
        this.f10474do = m3115new.getDimensionPixelSize(4, -1);
        this.f10475do = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_horizontal_edge_offset);
        this.f10480if = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_text_horizontal_edge_offset);
        this.f10479if = m3115new.getDimensionPixelSize(14, -1);
        this.f10477for = m3115new.getDimension(12, resources.getDimension(R.dimen.m3_badge_size));
        this.f10483try = m3115new.getDimension(17, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.f10482new = m3115new.getDimension(3, resources.getDimension(R.dimen.m3_badge_size));
        this.f10473case = m3115new.getDimension(13, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.f10478for = m3115new.getInt(24, 1);
        State state2 = this.f10481if;
        int i3 = state.f10505new;
        state2.f10505new = i3 == -2 ? 255 : i3;
        int i4 = state.f10511try;
        if (i4 != -2) {
            state2.f10511try = i4;
        } else if (m3115new.hasValue(23)) {
            this.f10481if.f10511try = m3115new.getInt(23, 0);
        } else {
            this.f10481if.f10511try = -1;
        }
        String str = state.f10485break;
        if (str != null) {
            this.f10481if.f10485break = str;
        } else if (m3115new.hasValue(7)) {
            this.f10481if.f10485break = m3115new.getString(7);
        }
        State state3 = this.f10481if;
        state3.f10492do = state.f10492do;
        CharSequence charSequence = state.f10503if;
        state3.f10503if = charSequence == null ? context.getString(R.string.mtrl_badge_numberless_content_description) : charSequence;
        State state4 = this.f10481if;
        int i5 = state.f10500goto;
        state4.f10500goto = i5 == 0 ? R.plurals.mtrl_badge_content_description : i5;
        int i6 = state.f10508this;
        state4.f10508this = i6 == 0 ? R.string.mtrl_exceed_max_badge_number_content_description : i6;
        Boolean bool = state.f10491do;
        state4.f10491do = Boolean.valueOf(bool == null || bool.booleanValue());
        State state5 = this.f10481if;
        int i7 = state.f10486case;
        state5.f10486case = i7 == -2 ? m3115new.getInt(21, -2) : i7;
        State state6 = this.f10481if;
        int i8 = state.f10495else;
        state6.f10495else = i8 == -2 ? m3115new.getInt(22, -2) : i8;
        State state7 = this.f10481if;
        Integer num = state.f10506new;
        state7.f10506new = Integer.valueOf(num == null ? m3115new.getResourceId(5, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num.intValue());
        State state8 = this.f10481if;
        Integer num2 = state.f10512try;
        state8.f10512try = Integer.valueOf(num2 == null ? m3115new.getResourceId(6, 0) : num2.intValue());
        State state9 = this.f10481if;
        Integer num3 = state.f10487case;
        state9.f10487case = Integer.valueOf(num3 == null ? m3115new.getResourceId(15, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num3.intValue());
        State state10 = this.f10481if;
        Integer num4 = state.f10496else;
        state10.f10496else = Integer.valueOf(num4 == null ? m3115new.getResourceId(16, 0) : num4.intValue());
        State state11 = this.f10481if;
        Integer num5 = state.f10493do;
        state11.f10493do = Integer.valueOf(num5 == null ? C0659Zr.m3071if(context, m3115new, 1).getDefaultColor() : num5.intValue());
        State state12 = this.f10481if;
        Integer num6 = state.f10499for;
        state12.f10499for = Integer.valueOf(num6 == null ? m3115new.getResourceId(8, R.style.TextAppearance_MaterialComponents_Badge) : num6.intValue());
        Integer num7 = state.f10504if;
        if (num7 != null) {
            this.f10481if.f10504if = num7;
        } else if (m3115new.hasValue(9)) {
            this.f10481if.f10504if = Integer.valueOf(C0659Zr.m3071if(context, m3115new, 9).getDefaultColor());
        } else {
            int intValue = this.f10481if.f10499for.intValue();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(intValue, O2.r);
            obtainStyledAttributes.getDimension(0, 0.0f);
            ColorStateList m3071if = C0659Zr.m3071if(context, obtainStyledAttributes, 3);
            C0659Zr.m3071if(context, obtainStyledAttributes, 4);
            C0659Zr.m3071if(context, obtainStyledAttributes, 5);
            obtainStyledAttributes.getInt(2, 0);
            obtainStyledAttributes.getInt(1, 1);
            int i9 = obtainStyledAttributes.hasValue(12) ? 12 : 10;
            obtainStyledAttributes.getResourceId(i9, 0);
            obtainStyledAttributes.getString(i9);
            obtainStyledAttributes.getBoolean(14, false);
            C0659Zr.m3071if(context, obtainStyledAttributes, 6);
            obtainStyledAttributes.getFloat(7, 0.0f);
            obtainStyledAttributes.getFloat(8, 0.0f);
            obtainStyledAttributes.getFloat(9, 0.0f);
            obtainStyledAttributes.recycle();
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(intValue, O2.f2518transient);
            obtainStyledAttributes2.hasValue(0);
            obtainStyledAttributes2.getFloat(0, 0.0f);
            obtainStyledAttributes2.recycle();
            this.f10481if.f10504if = Integer.valueOf(m3071if.getDefaultColor());
        }
        State state13 = this.f10481if;
        Integer num8 = state.f10501goto;
        state13.f10501goto = Integer.valueOf(num8 == null ? m3115new.getInt(2, 8388661) : num8.intValue());
        State state14 = this.f10481if;
        Integer num9 = state.f10509this;
        state14.f10509this = Integer.valueOf(num9 == null ? m3115new.getDimensionPixelSize(11, resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding)) : num9.intValue());
        State state15 = this.f10481if;
        Integer num10 = state.f10484break;
        state15.f10484break = Integer.valueOf(num10 == null ? m3115new.getDimensionPixelSize(10, resources.getDimensionPixelSize(R.dimen.m3_badge_with_text_vertical_padding)) : num10.intValue());
        State state16 = this.f10481if;
        Integer num11 = state.f10488catch;
        state16.f10488catch = Integer.valueOf(num11 == null ? m3115new.getDimensionPixelOffset(18, 0) : num11.intValue());
        State state17 = this.f10481if;
        Integer num12 = state.f10489class;
        state17.f10489class = Integer.valueOf(num12 == null ? m3115new.getDimensionPixelOffset(25, 0) : num12.intValue());
        State state18 = this.f10481if;
        Integer num13 = state.f10490const;
        state18.f10490const = Integer.valueOf(num13 == null ? m3115new.getDimensionPixelOffset(19, state18.f10488catch.intValue()) : num13.intValue());
        State state19 = this.f10481if;
        Integer num14 = state.f10497final;
        state19.f10497final = Integer.valueOf(num14 == null ? m3115new.getDimensionPixelOffset(26, state19.f10489class.intValue()) : num14.intValue());
        State state20 = this.f10481if;
        Integer num15 = state.f10513while;
        state20.f10513while = Integer.valueOf(num15 == null ? m3115new.getDimensionPixelOffset(20, 0) : num15.intValue());
        State state21 = this.f10481if;
        Integer num16 = state.f10507super;
        state21.f10507super = Integer.valueOf(num16 == null ? 0 : num16.intValue());
        State state22 = this.f10481if;
        Integer num17 = state.f10510throw;
        state22.f10510throw = Integer.valueOf(num17 == null ? 0 : num17.intValue());
        State state23 = this.f10481if;
        Boolean bool2 = state.f10502if;
        state23.f10502if = Boolean.valueOf(bool2 == null ? m3115new.getBoolean(0, false) : bool2.booleanValue());
        m3115new.recycle();
        Locale locale2 = state.f10494do;
        if (locale2 == null) {
            State state24 = this.f10481if;
            if (Build.VERSION.SDK_INT >= 24) {
                category = Locale.Category.FORMAT;
                locale = Locale.getDefault(category);
            } else {
                locale = Locale.getDefault();
            }
            state24.f10494do = locale;
        } else {
            this.f10481if.f10494do = locale2;
        }
        this.f10476do = state;
    }

    public static final class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new Cdo();

        /* renamed from: break, reason: not valid java name */
        public Integer f10484break;

        /* renamed from: break, reason: not valid java name and collision with other field name */
        public String f10485break;

        /* renamed from: case, reason: not valid java name */
        public int f10486case;

        /* renamed from: case, reason: not valid java name and collision with other field name */
        public Integer f10487case;

        /* renamed from: catch, reason: not valid java name */
        public Integer f10488catch;

        /* renamed from: class, reason: not valid java name */
        public Integer f10489class;

        /* renamed from: const, reason: not valid java name */
        public Integer f10490const;

        /* renamed from: do, reason: not valid java name */
        public Boolean f10491do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public CharSequence f10492do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Integer f10493do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Locale f10494do;

        /* renamed from: else, reason: not valid java name */
        public int f10495else;

        /* renamed from: else, reason: not valid java name and collision with other field name */
        public Integer f10496else;

        /* renamed from: final, reason: not valid java name */
        public Integer f10497final;

        /* renamed from: for, reason: not valid java name */
        public int f10498for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public Integer f10499for;

        /* renamed from: goto, reason: not valid java name */
        public int f10500goto;

        /* renamed from: goto, reason: not valid java name and collision with other field name */
        public Integer f10501goto;

        /* renamed from: if, reason: not valid java name */
        public Boolean f10502if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public CharSequence f10503if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public Integer f10504if;

        /* renamed from: new, reason: not valid java name */
        public int f10505new;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public Integer f10506new;

        /* renamed from: super, reason: not valid java name */
        public Integer f10507super;

        /* renamed from: this, reason: not valid java name */
        public int f10508this;

        /* renamed from: this, reason: not valid java name and collision with other field name */
        public Integer f10509this;

        /* renamed from: throw, reason: not valid java name */
        public Integer f10510throw;

        /* renamed from: try, reason: not valid java name */
        public int f10511try;

        /* renamed from: try, reason: not valid java name and collision with other field name */
        public Integer f10512try;

        /* renamed from: while, reason: not valid java name */
        public Integer f10513while;

        /* renamed from: com.google.android.material.badge.BadgeState$State$do, reason: invalid class name */
        public class Cdo implements Parcelable.Creator<State> {
            @Override // android.os.Parcelable.Creator
            public final State createFromParcel(Parcel parcel) {
                return new State(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final State[] newArray(int i) {
                return new State[i];
            }
        }

        public State() {
            this.f10505new = 255;
            this.f10511try = -2;
            this.f10486case = -2;
            this.f10495else = -2;
            this.f10491do = Boolean.TRUE;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f10498for);
            parcel.writeSerializable(this.f10493do);
            parcel.writeSerializable(this.f10504if);
            parcel.writeSerializable(this.f10499for);
            parcel.writeSerializable(this.f10506new);
            parcel.writeSerializable(this.f10512try);
            parcel.writeSerializable(this.f10487case);
            parcel.writeSerializable(this.f10496else);
            parcel.writeInt(this.f10505new);
            parcel.writeString(this.f10485break);
            parcel.writeInt(this.f10511try);
            parcel.writeInt(this.f10486case);
            parcel.writeInt(this.f10495else);
            CharSequence charSequence = this.f10492do;
            parcel.writeString(charSequence != null ? charSequence.toString() : null);
            CharSequence charSequence2 = this.f10503if;
            parcel.writeString(charSequence2 != null ? charSequence2.toString() : null);
            parcel.writeInt(this.f10500goto);
            parcel.writeSerializable(this.f10501goto);
            parcel.writeSerializable(this.f10509this);
            parcel.writeSerializable(this.f10484break);
            parcel.writeSerializable(this.f10488catch);
            parcel.writeSerializable(this.f10489class);
            parcel.writeSerializable(this.f10490const);
            parcel.writeSerializable(this.f10497final);
            parcel.writeSerializable(this.f10513while);
            parcel.writeSerializable(this.f10507super);
            parcel.writeSerializable(this.f10510throw);
            parcel.writeSerializable(this.f10491do);
            parcel.writeSerializable(this.f10494do);
            parcel.writeSerializable(this.f10502if);
        }

        public State(Parcel parcel) {
            this.f10505new = 255;
            this.f10511try = -2;
            this.f10486case = -2;
            this.f10495else = -2;
            this.f10491do = Boolean.TRUE;
            this.f10498for = parcel.readInt();
            this.f10493do = (Integer) parcel.readSerializable();
            this.f10504if = (Integer) parcel.readSerializable();
            this.f10499for = (Integer) parcel.readSerializable();
            this.f10506new = (Integer) parcel.readSerializable();
            this.f10512try = (Integer) parcel.readSerializable();
            this.f10487case = (Integer) parcel.readSerializable();
            this.f10496else = (Integer) parcel.readSerializable();
            this.f10505new = parcel.readInt();
            this.f10485break = parcel.readString();
            this.f10511try = parcel.readInt();
            this.f10486case = parcel.readInt();
            this.f10495else = parcel.readInt();
            this.f10492do = parcel.readString();
            this.f10503if = parcel.readString();
            this.f10500goto = parcel.readInt();
            this.f10501goto = (Integer) parcel.readSerializable();
            this.f10509this = (Integer) parcel.readSerializable();
            this.f10484break = (Integer) parcel.readSerializable();
            this.f10488catch = (Integer) parcel.readSerializable();
            this.f10489class = (Integer) parcel.readSerializable();
            this.f10490const = (Integer) parcel.readSerializable();
            this.f10497final = (Integer) parcel.readSerializable();
            this.f10513while = (Integer) parcel.readSerializable();
            this.f10507super = (Integer) parcel.readSerializable();
            this.f10510throw = (Integer) parcel.readSerializable();
            this.f10491do = (Boolean) parcel.readSerializable();
            this.f10494do = (Locale) parcel.readSerializable();
            this.f10502if = (Boolean) parcel.readSerializable();
        }
    }
}
