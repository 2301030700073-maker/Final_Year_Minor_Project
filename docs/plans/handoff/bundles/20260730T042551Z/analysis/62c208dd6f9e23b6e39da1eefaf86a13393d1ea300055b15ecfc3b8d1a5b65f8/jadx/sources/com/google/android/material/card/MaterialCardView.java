package com.google.android.material.card;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import androidx.cardview.widget.CardView;
import defpackage.C0426Pe;
import defpackage.C0461Qr;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.C0716as;
import defpackage.C2775fs;
import defpackage.C3385nL;
import defpackage.C3554qD;
import defpackage.InterfaceC3789uD;
import defpackage.NA;
import defpackage.O2;
import defpackage.O4;
import defpackage.OA;
import defpackage.QK;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class MaterialCardView extends CardView implements Checkable, InterfaceC3789uD {

    /* renamed from: do, reason: not valid java name */
    public final C0461Qr f10708do;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final boolean f10709for;

    /* renamed from: new, reason: not valid java name */
    public boolean f10710new;

    /* renamed from: if, reason: not valid java name */
    public static final int[] f10707if = {R.attr.state_checkable};

    /* renamed from: for, reason: not valid java name */
    public static final int[] f10706for = {R.attr.state_checked};

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.joeykrim.rootcheck.R.attr.materialCardViewStyle);
    }

    @Override // defpackage.InterfaceC3789uD
    /* renamed from: do */
    public final void mo4768do(C3554qD c3554qD) {
        RectF rectF = new RectF();
        C0461Qr c0461Qr = this.f10708do;
        rectF.set(c0461Qr.f3069do.getBounds());
        setClipToOutline(c3554qD.m7863case(rectF));
        c0461Qr.m1995case(c3554qD);
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f10710new;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        C0461Qr c0461Qr = this.f10708do;
        c0461Qr.m2001this();
        O4.m1613instanceof(this, c0461Qr.f3069do);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 3);
        C0461Qr c0461Qr = this.f10708do;
        if (c0461Qr != null && c0461Qr.f3080if) {
            View.mergeDrawableStates(onCreateDrawableState, f10707if);
        }
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f10706for);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.cardview.widget.CardView");
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.cardview.widget.CardView");
        C0461Qr c0461Qr = this.f10708do;
        accessibilityNodeInfo.setCheckable(c0461Qr != null && c0461Qr.f3080if);
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        C0461Qr c0461Qr = this.f10708do;
        if (c0461Qr.f3067do != null) {
            MaterialCardView materialCardView = c0461Qr.f3070do;
            if (((CardView) materialCardView).f6031do) {
                i3 = (int) Math.ceil(((((NA) ((CardView) materialCardView).f6030do.f6034do).f2334if * 1.5f) + (c0461Qr.m1997else() ? c0461Qr.m1996do() : 0.0f)) * 2.0f);
                i4 = (int) Math.ceil((((NA) ((CardView) materialCardView).f6030do.f6034do).f2334if + (c0461Qr.m1997else() ? c0461Qr.m1996do() : 0.0f)) * 2.0f);
            } else {
                i3 = 0;
                i4 = 0;
            }
            int i7 = c0461Qr.f3073for;
            int i8 = (i7 & 8388613) == 8388613 ? ((measuredWidth - c0461Qr.f3061do) - c0461Qr.f3076if) - i4 : c0461Qr.f3061do;
            int i9 = (i7 & 80) == 80 ? c0461Qr.f3061do : ((measuredHeight - c0461Qr.f3061do) - c0461Qr.f3076if) - i3;
            int i10 = (i7 & 8388613) == 8388613 ? c0461Qr.f3061do : ((measuredWidth - c0461Qr.f3061do) - c0461Qr.f3076if) - i4;
            int i11 = (i7 & 80) == 80 ? ((measuredHeight - c0461Qr.f3061do) - c0461Qr.f3076if) - i3 : c0461Qr.f3061do;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (materialCardView.getLayoutDirection() == 1) {
                i6 = i10;
                i5 = i8;
            } else {
                i5 = i10;
                i6 = i8;
            }
            c0461Qr.f3067do.setLayerInset(2, i6, i11, i5, i9);
        }
    }

    @Override // android.view.View
    public final void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        if (this.f10709for) {
            C0461Qr c0461Qr = this.f10708do;
            if (!c0461Qr.f3072do) {
                c0461Qr.f3072do = true;
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Checkable
    public final void setChecked(boolean z) {
        if (this.f10710new != z) {
            toggle();
        }
    }

    @Override // android.view.View
    public final void setClickable(boolean z) {
        super.setClickable(z);
        C0461Qr c0461Qr = this.f10708do;
        if (c0461Qr != null) {
            c0461Qr.m2001this();
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        RippleDrawable rippleDrawable;
        C0461Qr c0461Qr = this.f10708do;
        if ((c0461Qr != null && c0461Qr.f3080if) && isEnabled()) {
            this.f10710new = !this.f10710new;
            refreshDrawableState();
            if (Build.VERSION.SDK_INT > 26 && (rippleDrawable = c0461Qr.f3068do) != null) {
                Rect bounds = rippleDrawable.getBounds();
                int i = bounds.bottom;
                c0461Qr.f3068do.setBounds(bounds.left, bounds.top, bounds.right, i - 1);
                c0461Qr.f3068do.setBounds(bounds.left, bounds.top, bounds.right, i);
            }
            c0461Qr.m2002try(this.f10710new, true);
        }
    }

    public MaterialCardView(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, com.joeykrim.rootcheck.R.style.Widget_MaterialComponents_CardView), attributeSet, i);
        float f;
        this.f10710new = false;
        this.f10709for = true;
        TypedArray m3115new = C0682aH.m3115new(getContext(), attributeSet, O2.f2471abstract, i, com.joeykrim.rootcheck.R.style.Widget_MaterialComponents_CardView, new int[0]);
        C0461Qr c0461Qr = new C0461Qr(this, attributeSet, i);
        this.f10708do = c0461Qr;
        ColorStateList colorStateList = ((NA) ((CardView) this).f6030do.f6034do).f2327do;
        C0716as c0716as = c0461Qr.f3069do;
        c0716as.m4778super(colorStateList);
        Rect rect = ((CardView) this).f6029do;
        int i2 = rect.left;
        int i3 = rect.top;
        int i4 = rect.right;
        int i5 = rect.bottom;
        Rect rect2 = c0461Qr.f3065do;
        rect2.set(i2, i3, i4, i5);
        MaterialCardView materialCardView = c0461Qr.f3070do;
        float f2 = 0.0f;
        float m1996do = (((CardView) materialCardView).f6033if && !c0716as.m4767const()) || c0461Qr.m1997else() ? c0461Qr.m1996do() : 0.0f;
        boolean z = ((CardView) materialCardView).f6033if;
        CardView.Cdo cdo = ((CardView) materialCardView).f6030do;
        if (z && ((CardView) materialCardView).f6031do) {
            f2 = (float) ((1.0d - C0461Qr.f3057do) * ((NA) cdo.f6034do).f2326do);
        }
        int i6 = (int) (m1996do - f2);
        ((CardView) materialCardView).f6029do.set(rect2.left + i6, rect2.top + i6, rect2.right + i6, rect2.bottom + i6);
        CardView cardView = CardView.this;
        if (cardView.f6031do) {
            Drawable drawable = cdo.f6034do;
            float f3 = ((NA) drawable).f2334if;
            float f4 = ((NA) drawable).f2326do;
            if (cardView.f6033if) {
                f = (float) (((1.0d - OA.f2587do) * f4) + f3);
            } else {
                int i7 = OA.f2588do;
                f = f3;
            }
            int ceil = (int) Math.ceil(f);
            int ceil2 = (int) Math.ceil(OA.m1638do(f3, f4, cardView.f6033if));
            cdo.m3562do(ceil, ceil2, ceil, ceil2);
        } else {
            cdo.m3562do(0, 0, 0, 0);
        }
        ColorStateList m3071if = C0659Zr.m3071if(materialCardView.getContext(), m3115new, 11);
        c0461Qr.f3074for = m3071if;
        if (m3071if == null) {
            c0461Qr.f3074for = ColorStateList.valueOf(-1);
        }
        c0461Qr.f3081new = m3115new.getDimensionPixelSize(12, 0);
        boolean z2 = m3115new.getBoolean(0, false);
        c0461Qr.f3080if = z2;
        materialCardView.setLongClickable(z2);
        c0461Qr.f3077if = C0659Zr.m3071if(materialCardView.getContext(), m3115new, 6);
        Drawable m3072new = C0659Zr.m3072new(materialCardView.getContext(), m3115new, 2);
        if (m3072new != null) {
            Drawable mutate = C0426Pe.m1779goto(m3072new).mutate();
            c0461Qr.f3078if = mutate;
            C0426Pe.Cdo.m1787goto(mutate, c0461Qr.f3077if);
            c0461Qr.m2002try(materialCardView.isChecked(), false);
        } else {
            c0461Qr.f3078if = C0461Qr.f3058do;
        }
        LayerDrawable layerDrawable = c0461Qr.f3067do;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(com.joeykrim.rootcheck.R.id.mtrl_card_checked_layer_id, c0461Qr.f3078if);
        }
        c0461Qr.f3076if = m3115new.getDimensionPixelSize(5, 0);
        c0461Qr.f3061do = m3115new.getDimensionPixelSize(4, 0);
        c0461Qr.f3073for = m3115new.getInteger(3, 8388661);
        ColorStateList m3071if2 = C0659Zr.m3071if(materialCardView.getContext(), m3115new, 7);
        c0461Qr.f3064do = m3071if2;
        if (m3071if2 == null) {
            c0461Qr.f3064do = ColorStateList.valueOf(O2.m1587goto(materialCardView, com.joeykrim.rootcheck.R.attr.colorControlHighlight));
        }
        ColorStateList m3071if3 = C0659Zr.m3071if(materialCardView.getContext(), m3115new, 1);
        m3071if3 = m3071if3 == null ? ColorStateList.valueOf(0) : m3071if3;
        C0716as c0716as2 = c0461Qr.f3079if;
        c0716as2.m4778super(m3071if3);
        RippleDrawable rippleDrawable = c0461Qr.f3068do;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(c0461Qr.f3064do);
        }
        c0716as.m4770final(CardView.this.getElevation());
        float f5 = c0461Qr.f3081new;
        ColorStateList colorStateList2 = c0461Qr.f3074for;
        c0716as2.f8253do.f8280for = f5;
        c0716as2.invalidateSelf();
        c0716as2.m4775public(colorStateList2);
        super.setBackgroundDrawable(c0461Qr.m2000new(c0716as));
        Drawable m1998for = c0461Qr.m1999goto() ? c0461Qr.m1998for() : c0716as2;
        c0461Qr.f3066do = m1998for;
        materialCardView.setForeground(c0461Qr.m2000new(m1998for));
        m3115new.recycle();
    }
}
