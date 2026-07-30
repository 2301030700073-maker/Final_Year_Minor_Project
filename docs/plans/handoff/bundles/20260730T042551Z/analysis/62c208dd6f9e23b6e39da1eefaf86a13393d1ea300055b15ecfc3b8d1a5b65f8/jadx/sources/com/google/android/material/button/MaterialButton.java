package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.widget.AppCompatButton;
import androidx.customview.view.AbsSavedState;
import defpackage.C0308Jr;
import defpackage.C0426Pe;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.C2775fs;
import defpackage.C3385nL;
import defpackage.C3554qD;
import defpackage.C3645ro;
import defpackage.C3738tL;
import defpackage.C3836v1;
import defpackage.InterfaceC3789uD;
import defpackage.O2;
import defpackage.O4;
import defpackage.QK;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class MaterialButton extends AppCompatButton implements Checkable, InterfaceC3789uD {

    /* renamed from: do, reason: not valid java name */
    public static final int[] f10670do = {R.attr.state_checkable};

    /* renamed from: if, reason: not valid java name */
    public static final int[] f10671if = {R.attr.state_checked};

    /* renamed from: break, reason: not valid java name */
    public String f10672break;

    /* renamed from: case, reason: not valid java name */
    public final int f10673case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0308Jr f10674do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ColorStateList f10675do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PorterDuff.Mode f10676do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f10677do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f10678do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashSet<Cdo> f10679do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f10680do;

    /* renamed from: else, reason: not valid java name */
    public final int f10681else;

    /* renamed from: for, reason: not valid java name */
    public final int f10682for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f10683if;

    /* renamed from: new, reason: not valid java name */
    public int f10684new;

    /* renamed from: try, reason: not valid java name */
    public int f10685try;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public boolean f10686do;

        /* renamed from: com.google.android.material.button.MaterialButton$SavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(super.f6568do, i);
            parcel.writeInt(this.f10686do ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            this.f10686do = parcel.readInt() == 1;
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButton$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do, reason: not valid java name */
        void m5712do();
    }

    /* renamed from: com.google.android.material.button.MaterialButton$if, reason: invalid class name */
    public interface Cif {
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.joeykrim.rootcheck.R.attr.materialButtonStyle);
    }

    /* renamed from: break, reason: not valid java name */
    public final void m5705break(boolean z) {
        Drawable drawable = this.f10677do;
        boolean z2 = true;
        if (drawable != null) {
            Drawable mutate = C0426Pe.m1779goto(drawable).mutate();
            this.f10677do = mutate;
            C0426Pe.Cdo.m1787goto(mutate, this.f10675do);
            PorterDuff.Mode mode = this.f10676do;
            if (mode != null) {
                C0426Pe.Cdo.m1790this(this.f10677do, mode);
            }
            int i = this.f10682for;
            int intrinsicWidth = i != 0 ? i : this.f10677do.getIntrinsicWidth();
            if (i == 0) {
                i = this.f10677do.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f10677do;
            int i2 = this.f10684new;
            int i3 = this.f10685try;
            drawable2.setBounds(i2, i3, intrinsicWidth + i2, i + i3);
            this.f10677do.setVisible(true, z);
        }
        if (z) {
            m5706case();
            return;
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        int i4 = this.f10681else;
        if (!(i4 == 1 || i4 == 2) || drawable3 == this.f10677do) {
            if (!(i4 == 3 || i4 == 4) || drawable5 == this.f10677do) {
                if (!(i4 == 16 || i4 == 32) || drawable4 == this.f10677do) {
                    z2 = false;
                }
            }
        }
        if (z2) {
            m5706case();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final void m5706case() {
        int i = this.f10681else;
        if (i == 1 || i == 2) {
            setCompoundDrawablesRelative(this.f10677do, null, null, null);
            return;
        }
        if (i == 3 || i == 4) {
            setCompoundDrawablesRelative(null, null, this.f10677do, null);
            return;
        }
        if (i == 16 || i == 32) {
            setCompoundDrawablesRelative(null, this.f10677do, null, null);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m5707catch(int i, int i2) {
        Layout.Alignment alignment;
        int min;
        if (this.f10677do == null || getLayout() == null) {
            return;
        }
        int i3 = this.f10681else;
        boolean z = i3 == 1 || i3 == 2;
        int i4 = this.f10673case;
        int i5 = this.f10682for;
        if (!z) {
            if (!(i3 == 3 || i3 == 4)) {
                if (i3 == 16 || i3 == 32) {
                    this.f10684new = 0;
                    if (i3 == 16) {
                        this.f10685try = 0;
                        m5705break(false);
                        return;
                    }
                    if (i5 == 0) {
                        i5 = this.f10677do.getIntrinsicHeight();
                    }
                    if (getLineCount() > 1) {
                        min = getLayout().getHeight();
                    } else {
                        TextPaint paint = getPaint();
                        String charSequence = getText().toString();
                        if (getTransformationMethod() != null) {
                            charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
                        }
                        Rect rect = new Rect();
                        paint.getTextBounds(charSequence, 0, charSequence.length(), rect);
                        min = Math.min(rect.height(), getLayout().getHeight());
                    }
                    int max = Math.max(0, (((((i2 - min) - getPaddingTop()) - i5) - i4) - getPaddingBottom()) / 2);
                    if (this.f10685try != max) {
                        this.f10685try = max;
                        m5705break(false);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        this.f10685try = 0;
        int textAlignment = getTextAlignment();
        if (textAlignment != 1) {
            alignment = (textAlignment == 6 || textAlignment == 3) ? Layout.Alignment.ALIGN_OPPOSITE : textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
        } else {
            int gravity = getGravity() & 8388615;
            alignment = gravity != 1 ? (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
        }
        if (i3 == 1 || i3 == 3 || ((i3 == 2 && alignment == Layout.Alignment.ALIGN_NORMAL) || (i3 == 4 && alignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.f10684new = 0;
            m5705break(false);
            return;
        }
        if (i5 == 0) {
            i5 = this.f10677do.getIntrinsicWidth();
        }
        int lineCount = getLineCount();
        float f = 0.0f;
        for (int i6 = 0; i6 < lineCount; i6++) {
            f = Math.max(f, getLayout().getLineWidth(i6));
        }
        int ceil = i - ((int) Math.ceil(f));
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        int paddingEnd = (((ceil - getPaddingEnd()) - i5) - i4) - getPaddingStart();
        if (alignment == Layout.Alignment.ALIGN_CENTER) {
            paddingEnd /= 2;
        }
        if ((getLayoutDirection() == 1) != (i3 == 4)) {
            paddingEnd = -paddingEnd;
        }
        if (this.f10684new != paddingEnd) {
            this.f10684new = paddingEnd;
            m5705break(false);
        }
    }

    @Override // defpackage.InterfaceC3789uD
    /* renamed from: do */
    public final void mo4768do(C3554qD c3554qD) {
        if (!m5710if()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f10674do.m1072for(c3554qD);
    }

    /* renamed from: else, reason: not valid java name */
    public final void m5708else(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public final ColorStateList getBackgroundTintList() {
        if (m5710if()) {
            return this.f10674do.f1705do;
        }
        C3836v1 c3836v1 = ((AppCompatButton) this).f5683do;
        if (c3836v1 != null) {
            return c3836v1.m8418if();
        }
        return null;
    }

    @Override // android.view.View
    public final PorterDuff.Mode getBackgroundTintMode() {
        if (m5710if()) {
            return this.f10674do.f1706do;
        }
        C3836v1 c3836v1 = ((AppCompatButton) this).f5683do;
        if (c3836v1 != null) {
            return c3836v1.m8416for();
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m5709goto(ColorStateList colorStateList) {
        if (!m5710if()) {
            C3836v1 c3836v1 = ((AppCompatButton) this).f5683do;
            if (c3836v1 != null) {
                c3836v1.m8417goto(colorStateList);
                return;
            }
            return;
        }
        C0308Jr c0308Jr = this.f10674do;
        if (c0308Jr.f1705do != colorStateList) {
            c0308Jr.f1705do = colorStateList;
            if (c0308Jr.m1073if(false) != null) {
                C0426Pe.Cdo.m1787goto(c0308Jr.m1073if(false), c0308Jr.f1705do);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m5710if() {
        C0308Jr c0308Jr = this.f10674do;
        return (c0308Jr == null || c0308Jr.f1717if) ? false : true;
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f10680do;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (m5710if()) {
            O4.m1613instanceof(this, this.f10674do.m1073if(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        C0308Jr c0308Jr = this.f10674do;
        if (c0308Jr != null && c0308Jr.f1714for) {
            View.mergeDrawableStates(onCreateDrawableState, f10670do);
        }
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f10671if);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        String name;
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (TextUtils.isEmpty(this.f10672break)) {
            C0308Jr c0308Jr = this.f10674do;
            name = (c0308Jr != null && c0308Jr.f1714for ? CompoundButton.class : Button.class).getName();
        } else {
            name = this.f10672break;
        }
        accessibilityEvent.setClassName(name);
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        String name;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        boolean isEmpty = TextUtils.isEmpty(this.f10672break);
        C0308Jr c0308Jr = this.f10674do;
        if (isEmpty) {
            name = (c0308Jr != null && c0308Jr.f1714for ? CompoundButton.class : Button.class).getName();
        } else {
            name = this.f10672break;
        }
        accessibilityNodeInfo.setClassName(name);
        accessibilityNodeInfo.setCheckable(c0308Jr != null && c0308Jr.f1714for);
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C0308Jr c0308Jr;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT == 21 && (c0308Jr = this.f10674do) != null) {
            int i5 = i4 - i2;
            int i6 = i3 - i;
            Drawable drawable = c0308Jr.f1707do;
            if (drawable != null) {
                drawable.setBounds(c0308Jr.f1704do, c0308Jr.f1712for, i6 - c0308Jr.f1715if, i5 - c0308Jr.f1718new);
            }
        }
        m5707catch(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(((AbsSavedState) savedState).f6568do);
        setChecked(savedState.f10686do);
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f10686do = this.f10680do;
        return savedState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        m5707catch(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (this.f10674do.f1719new) {
            toggle();
        }
        return super.performClick();
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f10677do != null) {
            if (this.f10677do.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    @Override // android.view.View
    public final void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i) {
        if (!m5710if()) {
            super.setBackgroundColor(i);
            return;
        }
        C0308Jr c0308Jr = this.f10674do;
        if (c0308Jr.m1073if(false) != null) {
            c0308Jr.m1073if(false).setTint(i);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        if (!m5710if()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        C0308Jr c0308Jr = this.f10674do;
        c0308Jr.f1717if = true;
        ColorStateList colorStateList = c0308Jr.f1705do;
        MaterialButton materialButton = c0308Jr.f1709do;
        materialButton.m5709goto(colorStateList);
        materialButton.m5711this(c0308Jr.f1706do);
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? C3645ro.m7997extends(getContext(), i) : null);
    }

    @Override // android.view.View
    public final void setBackgroundTintList(ColorStateList colorStateList) {
        m5709goto(colorStateList);
    }

    @Override // android.view.View
    public final void setBackgroundTintMode(PorterDuff.Mode mode) {
        m5711this(mode);
    }

    @Override // android.widget.Checkable
    public final void setChecked(boolean z) {
        C0308Jr c0308Jr = this.f10674do;
        if ((c0308Jr != null && c0308Jr.f1714for) && isEnabled() && this.f10680do != z) {
            this.f10680do = z;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
                boolean z2 = this.f10680do;
                if (!materialButtonToggleGroup.f10693do) {
                    materialButtonToggleGroup.m5716if(getId(), z2);
                }
            }
            if (this.f10683if) {
                return;
            }
            this.f10683if = true;
            Iterator<Cdo> it = this.f10679do.iterator();
            while (it.hasNext()) {
                it.next().m5712do();
            }
            this.f10683if = false;
        }
    }

    @Override // android.view.View
    public final void setElevation(float f) {
        super.setElevation(f);
        if (m5710if()) {
            this.f10674do.m1073if(false).m4770final(f);
        }
    }

    @Override // android.view.View
    public final void setPressed(boolean z) {
        Cif cif = this.f10678do;
        if (cif != null) {
            MaterialButtonToggleGroup.this.invalidate();
        }
        super.setPressed(z);
    }

    @Override // android.view.View
    public final void setTextAlignment(int i) {
        super.setTextAlignment(i);
        m5707catch(getMeasuredWidth(), getMeasuredHeight());
    }

    /* renamed from: this, reason: not valid java name */
    public final void m5711this(PorterDuff.Mode mode) {
        if (!m5710if()) {
            C3836v1 c3836v1 = ((AppCompatButton) this).f5683do;
            if (c3836v1 != null) {
                c3836v1.m8420this(mode);
                return;
            }
            return;
        }
        C0308Jr c0308Jr = this.f10674do;
        if (c0308Jr.f1706do != mode) {
            c0308Jr.f1706do = mode;
            if (c0308Jr.m1073if(false) == null || c0308Jr.f1706do == null) {
                return;
            }
            C0426Pe.Cdo.m1790this(c0308Jr.m1073if(false), c0308Jr.f1706do);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f10680do);
    }

    public MaterialButton(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, com.joeykrim.rootcheck.R.style.Widget_MaterialComponents_Button), attributeSet, i);
        this.f10679do = new LinkedHashSet<>();
        this.f10680do = false;
        this.f10683if = false;
        Context context2 = getContext();
        TypedArray m3115new = C0682aH.m3115new(context2, attributeSet, O2.f2486extends, i, com.joeykrim.rootcheck.R.style.Widget_MaterialComponents_Button, new int[0]);
        int dimensionPixelSize = m3115new.getDimensionPixelSize(12, 0);
        this.f10673case = dimensionPixelSize;
        this.f10676do = C3738tL.m8284goto(m3115new.getInt(15, -1), PorterDuff.Mode.SRC_IN);
        this.f10675do = C0659Zr.m3071if(getContext(), m3115new, 14);
        this.f10677do = C0659Zr.m3072new(getContext(), m3115new, 10);
        this.f10681else = m3115new.getInteger(11, 1);
        this.f10682for = m3115new.getDimensionPixelSize(13, 0);
        C0308Jr c0308Jr = new C0308Jr(this, new C3554qD(C3554qD.m7859for(context2, attributeSet, i, com.joeykrim.rootcheck.R.style.Widget_MaterialComponents_Button)));
        this.f10674do = c0308Jr;
        c0308Jr.f1704do = m3115new.getDimensionPixelOffset(1, 0);
        c0308Jr.f1715if = m3115new.getDimensionPixelOffset(2, 0);
        c0308Jr.f1712for = m3115new.getDimensionPixelOffset(3, 0);
        c0308Jr.f1718new = m3115new.getDimensionPixelOffset(4, 0);
        if (m3115new.hasValue(8)) {
            int dimensionPixelSize2 = m3115new.getDimensionPixelSize(8, -1);
            C3554qD c3554qD = c0308Jr.f1710do;
            c3554qD.getClass();
            C3554qD.Cdo cdo = new C3554qD.Cdo(c3554qD);
            cdo.m7868if(dimensionPixelSize2);
            c0308Jr.m1072for(new C3554qD(cdo));
        }
        c0308Jr.f1720try = m3115new.getDimensionPixelSize(20, 0);
        c0308Jr.f1706do = C3738tL.m8284goto(m3115new.getInt(7, -1), PorterDuff.Mode.SRC_IN);
        c0308Jr.f1705do = C0659Zr.m3071if(getContext(), m3115new, 6);
        c0308Jr.f1716if = C0659Zr.m3071if(getContext(), m3115new, 19);
        c0308Jr.f1713for = C0659Zr.m3071if(getContext(), m3115new, 16);
        c0308Jr.f1714for = m3115new.getBoolean(5, false);
        c0308Jr.f1703case = m3115new.getDimensionPixelSize(9, 0);
        c0308Jr.f1719new = m3115new.getBoolean(21, true);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        int paddingStart = getPaddingStart();
        int paddingTop = getPaddingTop();
        int paddingEnd = getPaddingEnd();
        int paddingBottom = getPaddingBottom();
        if (m3115new.hasValue(0)) {
            c0308Jr.f1717if = true;
            m5709goto(c0308Jr.f1705do);
            m5711this(c0308Jr.f1706do);
        } else {
            c0308Jr.m1074new();
        }
        setPaddingRelative(paddingStart + c0308Jr.f1704do, paddingTop + c0308Jr.f1712for, paddingEnd + c0308Jr.f1715if, paddingBottom + c0308Jr.f1718new);
        m3115new.recycle();
        setCompoundDrawablePadding(dimensionPixelSize);
        m5705break(this.f10677do != null);
    }
}
