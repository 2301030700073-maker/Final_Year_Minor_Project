package com.google.android.material.chip;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.facebook.ads.AdError;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.material.chip.Cdo;
import com.google.android.material.chip.Chip;
import com.google.android.material.internal.FlowLayout;
import defpackage.AbstractC0604Xg;
import defpackage.AbstractC3134j6;
import defpackage.C0156Ct;
import defpackage.C0426Pe;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.C0716as;
import defpackage.C2775fs;
import defpackage.C3385nL;
import defpackage.C3433oA;
import defpackage.C3554qD;
import defpackage.C3738tL;
import defpackage.C3893w;
import defpackage.C7;
import defpackage.InterfaceC0483Rr;
import defpackage.InterfaceC3789uD;
import defpackage.O2;
import defpackage.O4;
import defpackage.PG;
import defpackage.QK;
import defpackage.TG;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class Chip extends AppCompatCheckBox implements Cdo.InterfaceC0068do, InterfaceC3789uD, InterfaceC0483Rr<Chip> {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC0483Rr.Cdo<Chip> f10794do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f10795do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RectF f10796do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InsetDrawable f10797do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public RippleDrawable f10798do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CompoundButton.OnCheckedChangeListener f10799do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f10800do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public com.google.android.material.chip.Cdo f10801do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f10802do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f10803do;

    /* renamed from: for, reason: not valid java name */
    public int f10804for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f10805for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f10806if;

    /* renamed from: new, reason: not valid java name */
    public int f10807new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f10808new;

    /* renamed from: try, reason: not valid java name */
    public boolean f10809try;

    /* renamed from: if, reason: not valid java name */
    public static final Rect f10792if = new Rect();

    /* renamed from: do, reason: not valid java name */
    public static final int[] f10791do = {R.attr.state_selected};

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final int[] f10793if = {R.attr.state_checkable};

    /* renamed from: com.google.android.material.chip.Chip$do, reason: invalid class name */
    public class Cdo extends AbstractC3134j6 {
        public Cdo() {
        }

        @Override // defpackage.AbstractC3134j6
        /* renamed from: class */
        public final void mo1840class(int i) {
        }

        @Override // defpackage.AbstractC3134j6
        /* renamed from: const */
        public final void mo1841const(Typeface typeface, boolean z) {
            Chip chip = Chip.this;
            com.google.android.material.chip.Cdo cdo = chip.f10801do;
            chip.setText(cdo.f10825break ? cdo.f10847do : chip.getText());
            chip.requestLayout();
            chip.invalidate();
        }
    }

    /* renamed from: com.google.android.material.chip.Chip$if, reason: invalid class name */
    public class Cif extends AbstractC0604Xg {
        public Cif(Chip chip) {
            super(chip);
        }

        @Override // defpackage.AbstractC0604Xg
        /* renamed from: const */
        public final void mo2845const(ArrayList arrayList) {
            arrayList.add(0);
            Rect rect = Chip.f10792if;
            Chip.this.m5742case();
        }

        @Override // defpackage.AbstractC0604Xg
        /* renamed from: import */
        public final void mo2849import(int i, C3893w c3893w) {
            CharSequence charSequence = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (i != 1) {
                c3893w.m8498class(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                c3893w.m8507this(Chip.f10792if);
                return;
            }
            Chip chip = Chip.this;
            com.google.android.material.chip.Cdo cdo = chip.f10801do;
            CharSequence text = chip.getText();
            Context context = chip.getContext();
            Object[] objArr = new Object[1];
            if (!TextUtils.isEmpty(text)) {
                charSequence = text;
            }
            objArr[0] = charSequence;
            c3893w.m8498class(context.getString(com.joeykrim.rootcheck.R.string.mtrl_chip_close_icon_content_description, objArr).trim());
            RectF rectF = chip.f10796do;
            rectF.setEmpty();
            chip.m5742case();
            int i2 = (int) rectF.left;
            int i3 = (int) rectF.top;
            int i4 = (int) rectF.right;
            int i5 = (int) rectF.bottom;
            Rect rect = chip.f10795do;
            rect.set(i2, i3, i4, i5);
            c3893w.m8507this(rect);
            c3893w.m8505if(C3893w.Cdo.f16169for);
            c3893w.f16161do.setEnabled(chip.isEnabled());
        }

        @Override // defpackage.AbstractC0604Xg
        /* renamed from: native */
        public final void mo2850native(int i, boolean z) {
            if (i == 1) {
                Chip chip = Chip.this;
                chip.f10808new = z;
                chip.refreshDrawableState();
            }
        }

        @Override // defpackage.AbstractC0604Xg
        /* renamed from: throw */
        public final boolean mo2854throw(int i, int i2, Bundle bundle) {
            if (i2 == 16) {
                Chip chip = Chip.this;
                if (i == 0) {
                    return chip.performClick();
                }
                if (i == 1) {
                    chip.playSoundEffect(0);
                }
            }
            return false;
        }

        @Override // defpackage.AbstractC0604Xg
        /* renamed from: while */
        public final void mo2855while(C3893w c3893w) {
            Chip chip = Chip.this;
            com.google.android.material.chip.Cdo cdo = chip.f10801do;
            boolean z = cdo != null && cdo.f10829case;
            AccessibilityNodeInfo accessibilityNodeInfo = c3893w.f16161do;
            accessibilityNodeInfo.setCheckable(z);
            accessibilityNodeInfo.setClickable(chip.isClickable());
            c3893w.m8495break(chip.getAccessibilityClassName());
            CharSequence text = chip.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                c3893w.m8506super(text);
            } else {
                c3893w.m8498class(text);
            }
        }
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.joeykrim.rootcheck.R.attr.chipStyle);
    }

    /* renamed from: case, reason: not valid java name */
    public final boolean m5742case() {
        com.google.android.material.chip.Cdo cdo = this.f10801do;
        if (cdo != null) {
            Drawable drawable = cdo.f10866if;
            if ((drawable != null ? C0426Pe.m1777else(drawable) : null) != null) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // defpackage.InterfaceC3789uD
    /* renamed from: do */
    public final void mo4768do(C3554qD c3554qD) {
        this.f10801do.mo4768do(c3554qD);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        int i;
        super.drawableStateChanged();
        com.google.android.material.chip.Cdo cdo = this.f10801do;
        boolean z = false;
        if (cdo != null && com.google.android.material.chip.Cdo.m5749abstract(cdo.f10866if)) {
            com.google.android.material.chip.Cdo cdo2 = this.f10801do;
            ?? isEnabled = isEnabled();
            int i2 = isEnabled;
            if (this.f10808new) {
                i2 = isEnabled + 1;
            }
            int i3 = i2;
            if (this.f10805for) {
                i3 = i2 + 1;
            }
            int i4 = i3;
            if (this.f10806if) {
                i4 = i3 + 1;
            }
            int i5 = i4;
            if (isChecked()) {
                i5 = i4 + 1;
            }
            int[] iArr = new int[i5];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i = 1;
            } else {
                i = 0;
            }
            if (this.f10808new) {
                iArr[i] = 16842908;
                i++;
            }
            if (this.f10805for) {
                iArr[i] = 16843623;
                i++;
            }
            if (this.f10806if) {
                iArr[i] = 16842919;
                i++;
            }
            if (isChecked()) {
                iArr[i] = 16842913;
            }
            if (!Arrays.equals(cdo2.f10849do, iArr)) {
                cdo2.f10849do = iArr;
                if (cdo2.m5757instanceof()) {
                    z = cdo2.m5761strictfp(cdo2.getState(), iArr);
                }
            }
        }
        if (z) {
            invalidate();
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m5743else() {
        ColorStateList m7696for = C3433oA.m7696for(this.f10801do.f10869new);
        Drawable drawable = this.f10797do;
        if (drawable == null) {
            drawable = this.f10801do;
        }
        this.f10798do = new RippleDrawable(m7696for, drawable, null);
        com.google.android.material.chip.Cdo cdo = this.f10801do;
        if (cdo.f10876this) {
            cdo.f10876this = false;
            cdo.f10875this = null;
            cdo.onStateChange(cdo.getState());
        }
        RippleDrawable rippleDrawable = this.f10798do;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        setBackground(rippleDrawable);
        m5745goto();
    }

    /* renamed from: for, reason: not valid java name */
    public final void m5744for(int i) {
        this.f10807new = i;
        if (!this.f10809try) {
            InsetDrawable insetDrawable = this.f10797do;
            if (insetDrawable == null) {
                m5743else();
                return;
            }
            if (insetDrawable != null) {
                this.f10797do = null;
                setMinWidth(0);
                com.google.android.material.chip.Cdo cdo = this.f10801do;
                setMinHeight((int) (cdo != null ? cdo.f10836do : 0.0f));
                m5743else();
                return;
            }
            return;
        }
        int max = Math.max(0, i - ((int) this.f10801do.f10836do));
        int max2 = Math.max(0, i - this.f10801do.getIntrinsicWidth());
        if (max2 <= 0 && max <= 0) {
            InsetDrawable insetDrawable2 = this.f10797do;
            if (insetDrawable2 == null) {
                m5743else();
                return;
            }
            if (insetDrawable2 != null) {
                this.f10797do = null;
                setMinWidth(0);
                com.google.android.material.chip.Cdo cdo2 = this.f10801do;
                setMinHeight((int) (cdo2 != null ? cdo2.f10836do : 0.0f));
                m5743else();
                return;
            }
            return;
        }
        int i2 = max2 > 0 ? max2 / 2 : 0;
        int i3 = max > 0 ? max / 2 : 0;
        if (this.f10797do != null) {
            Rect rect = new Rect();
            this.f10797do.getPadding(rect);
            if (rect.top == i3 && rect.bottom == i3 && rect.left == i2 && rect.right == i2) {
                m5743else();
                return;
            }
        }
        if (getMinHeight() != i) {
            setMinHeight(i);
        }
        if (getMinWidth() != i) {
            setMinWidth(i);
        }
        this.f10797do = new InsetDrawable((Drawable) this.f10801do, i2, i3, i2, i3);
        m5743else();
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public final CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.f10802do)) {
            return this.f10802do;
        }
        com.google.android.material.chip.Cdo cdo = this.f10801do;
        if (!(cdo != null && cdo.f10829case)) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        ViewParent parent = getParent();
        return ((parent instanceof ChipGroup) && ((ChipGroup) parent).f10815do.f16021do) ? "android.widget.RadioButton" : "android.widget.Button";
    }

    @Override // android.widget.TextView
    public final TextUtils.TruncateAt getEllipsize() {
        com.google.android.material.chip.Cdo cdo = this.f10801do;
        if (cdo != null) {
            return cdo.f10846do;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        super.getFocusedRect(rect);
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m5745goto() {
        com.google.android.material.chip.Cdo cdo;
        if (TextUtils.isEmpty(getText()) || (cdo = this.f10801do) == null) {
            return;
        }
        int m5755finally = (int) (cdo.m5755finally() + cdo.f10835const + cdo.f10823break);
        com.google.android.material.chip.Cdo cdo2 = this.f10801do;
        int m5754extends = (int) (cdo2.m5754extends() + cdo2.f10826case + cdo2.f10873this);
        if (this.f10797do != null) {
            Rect rect = new Rect();
            this.f10797do.getPadding(rect);
            m5754extends += rect.left;
            m5755finally += rect.right;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        setPaddingRelative(m5754extends, paddingTop, m5755finally, paddingBottom);
    }

    @Override // com.google.android.material.chip.Cdo.InterfaceC0068do
    /* renamed from: if, reason: not valid java name */
    public final void mo5746if() {
        m5744for(this.f10807new);
        requestLayout();
        invalidateOutline();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        O4.m1613instanceof(this, this.f10801do);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f10791do);
        }
        com.google.android.material.chip.Cdo cdo = this.f10801do;
        if (cdo != null && cdo.f10829case) {
            View.mergeDrawableStates(onCreateDrawableState, f10793if);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            RectF rectF = this.f10796do;
            rectF.setEmpty();
            m5742case();
            boolean contains = rectF.contains(motionEvent.getX(), motionEvent.getY());
            if (this.f10805for != contains) {
                this.f10805for = contains;
                refreshDrawableState();
            }
        } else if (actionMasked == 10 && this.f10805for) {
            this.f10805for = false;
            refreshDrawableState();
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        com.google.android.material.chip.Cdo cdo = this.f10801do;
        accessibilityNodeInfo.setCheckable(cdo != null && cdo.f10829case);
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            if (((FlowLayout) chipGroup).f11171do) {
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    if (i2 >= chipGroup.getChildCount()) {
                        i3 = -1;
                        break;
                    }
                    View childAt = chipGroup.getChildAt(i2);
                    if (childAt instanceof Chip) {
                        if (!(chipGroup.getChildAt(i2).getVisibility() == 0)) {
                            continue;
                        } else if (((Chip) childAt) == this) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                    i2++;
                }
                i = i3;
            } else {
                i = -1;
            }
            Object tag = getTag(com.joeykrim.rootcheck.R.id.row_index_key);
            accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) C3893w.Ccase.m8509do(!(tag instanceof Integer) ? -1 : ((Integer) tag).intValue(), 1, i, false, isChecked(), 1).f16163do);
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @TargetApi(ConnectionResult.API_DISABLED_FOR_CONNECTION)
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        PointerIcon systemIcon;
        RectF rectF = this.f10796do;
        rectF.setEmpty();
        m5742case();
        if (!rectF.contains(motionEvent.getX(), motionEvent.getY()) || !isEnabled()) {
            return super.onResolvePointerIcon(motionEvent, i);
        }
        systemIcon = PointerIcon.getSystemIcon(getContext(), AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE);
        return systemIcon;
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.f10804for != i) {
            this.f10804for = i;
            m5745goto();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0022, code lost:
    
        if (r0 != 3) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0041  */
    @Override // android.widget.TextView, android.view.View
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.f10796do
            r1.setEmpty()
            r5.m5742case()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L47
            if (r0 == r2) goto L33
            r4 = 2
            if (r0 == r4) goto L25
            r1 = 3
            if (r0 == r1) goto L3c
            goto L54
        L25:
            boolean r0 = r5.f10806if
            if (r0 == 0) goto L54
            if (r1 != 0) goto L52
            if (r0 == 0) goto L52
            r5.f10806if = r3
            r5.refreshDrawableState()
            goto L52
        L33:
            boolean r0 = r5.f10806if
            if (r0 == 0) goto L3c
            r5.playSoundEffect(r3)
            r0 = 1
            goto L3d
        L3c:
            r0 = 0
        L3d:
            boolean r1 = r5.f10806if
            if (r1 == 0) goto L55
            r5.f10806if = r3
            r5.refreshDrawableState()
            goto L55
        L47:
            if (r1 == 0) goto L54
            boolean r0 = r5.f10806if
            if (r0 == r2) goto L52
            r5.f10806if = r2
            r5.refreshDrawableState()
        L52:
            r0 = 1
            goto L55
        L54:
            r0 = 0
        L55:
            if (r0 != 0) goto L5f
            boolean r6 = super.onTouchEvent(r6)
            if (r6 == 0) goto L5e
            goto L5f
        L5e:
            r2 = 0
        L5f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public final void setBackground(Drawable drawable) {
        Drawable drawable2 = this.f10797do;
        if (drawable2 == null) {
            drawable2 = this.f10801do;
        }
        if (drawable == drawable2 || drawable == this.f10798do) {
            super.setBackground(drawable);
        }
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i) {
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        Drawable drawable2 = this.f10797do;
        if (drawable2 == null) {
            drawable2 = this.f10801do;
        }
        if (drawable == drawable2 || drawable == this.f10798do) {
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public final void setBackgroundResource(int i) {
    }

    @Override // android.view.View
    public final void setBackgroundTintList(ColorStateList colorStateList) {
    }

    @Override // android.view.View
    public final void setBackgroundTintMode(PorterDuff.Mode mode) {
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void setChecked(boolean z) {
        com.google.android.material.chip.Cdo cdo = this.f10801do;
        if (cdo == null) {
            this.f10803do = z;
        } else if (cdo.f10829case) {
            super.setChecked(z);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.view.View
    public final void setElevation(float f) {
        super.setElevation(f);
        com.google.android.material.chip.Cdo cdo = this.f10801do;
        if (cdo != null) {
            cdo.m4770final(f);
        }
    }

    @Override // android.widget.TextView
    public final void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f10801do == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        com.google.android.material.chip.Cdo cdo = this.f10801do;
        if (cdo != null) {
            cdo.f10846do = truncateAt;
        }
    }

    @Override // android.widget.TextView
    public final void setGravity(int i) {
        if (i != 8388627) {
            return;
        }
        super.setGravity(i);
    }

    @Override // android.view.View
    public final void setLayoutDirection(int i) {
        if (this.f10801do == null) {
            return;
        }
        super.setLayoutDirection(i);
    }

    @Override // android.widget.TextView
    public final void setLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i);
    }

    @Override // android.widget.TextView
    public final void setMaxLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i);
    }

    @Override // android.widget.TextView
    public final void setMaxWidth(int i) {
        super.setMaxWidth(i);
        com.google.android.material.chip.Cdo cdo = this.f10801do;
        if (cdo != null) {
            cdo.f10834class = i;
        }
    }

    @Override // android.widget.TextView
    public final void setMinLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i);
    }

    @Override // android.widget.CompoundButton
    public final void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f10799do = onCheckedChangeListener;
    }

    @Override // android.widget.TextView
    public final void setSingleLine(boolean z) {
        if (!z) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z);
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        com.google.android.material.chip.Cdo cdo = this.f10801do;
        if (cdo == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        super.setText(cdo.f10825break ? null : charSequence, bufferType);
        com.google.android.material.chip.Cdo cdo2 = this.f10801do;
        if (cdo2 == null || TextUtils.equals(cdo2.f10847do, charSequence)) {
            return;
        }
        cdo2.f10847do = charSequence;
        cdo2.f10837do.f3638do = true;
        cdo2.invalidateSelf();
        cdo2.m5752continue();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        com.google.android.material.chip.Cdo cdo = this.f10801do;
        if (cdo != null) {
            Context context2 = cdo.f10838do;
            cdo.f10837do.m2232for(new PG(context2, i), context2);
        }
        m5747this();
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f) {
        super.setTextSize(i, f);
        com.google.android.material.chip.Cdo cdo = this.f10801do;
        if (cdo != null) {
            float applyDimension = TypedValue.applyDimension(i, f, getResources().getDisplayMetrics());
            TG tg = cdo.f10837do;
            PG pg = tg.f3634do;
            if (pg != null) {
                pg.f2766try = applyDimension;
                tg.f3636do.setTextSize(applyDimension);
                cdo.mo1511if();
            }
        }
        m5747this();
    }

    /* renamed from: this, reason: not valid java name */
    public final void m5747this() {
        TextPaint paint = getPaint();
        com.google.android.material.chip.Cdo cdo = this.f10801do;
        if (cdo != null) {
            paint.drawableState = cdo.getState();
        }
        com.google.android.material.chip.Cdo cdo2 = this.f10801do;
        PG pg = cdo2 != null ? cdo2.f10837do.f3634do : null;
        if (pg != null) {
            pg.m1761try(getContext(), paint, this.f10800do);
        }
    }

    public Chip(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, com.joeykrim.rootcheck.R.style.Widget_MaterialComponents_Chip_Action), attributeSet, i);
        com.google.android.material.chip.Cdo cdo;
        ColorStateList m3071if;
        int resourceId;
        this.f10795do = new Rect();
        this.f10796do = new RectF();
        this.f10800do = new Cdo();
        Context context2 = getContext();
        if (attributeSet != null) {
            attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background");
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                throw new UnsupportedOperationException("Chip does not support multi-line text");
            }
            attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627);
        }
        com.google.android.material.chip.Cdo cdo2 = new com.google.android.material.chip.Cdo(context2, attributeSet, i);
        Context context3 = cdo2.f10838do;
        int[] iArr = O2.f2472break;
        TypedArray m3115new = C0682aH.m3115new(context3, attributeSet, iArr, i, com.joeykrim.rootcheck.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        cdo2.f10832catch = m3115new.hasValue(37);
        Context context4 = cdo2.f10838do;
        ColorStateList m3071if2 = C0659Zr.m3071if(context4, m3115new, 24);
        if (cdo2.f10839do != m3071if2) {
            cdo2.f10839do = m3071if2;
            cdo2.onStateChange(cdo2.getState());
        }
        ColorStateList m3071if3 = C0659Zr.m3071if(context4, m3115new, 11);
        if (cdo2.f10865if != m3071if3) {
            cdo2.f10865if = m3071if3;
            cdo2.onStateChange(cdo2.getState());
        }
        float dimension = m3115new.getDimension(19, 0.0f);
        if (cdo2.f10836do != dimension) {
            cdo2.f10836do = dimension;
            cdo2.invalidateSelf();
            cdo2.m5752continue();
        }
        if (m3115new.hasValue(12)) {
            float dimension2 = m3115new.getDimension(12, 0.0f);
            if (cdo2.f10864if != dimension2) {
                cdo2.f10864if = dimension2;
                C3554qD c3554qD = ((C0716as) cdo2).f8253do.f8278do;
                c3554qD.getClass();
                C3554qD.Cdo cdo3 = new C3554qD.Cdo(c3554qD);
                cdo3.m7868if(dimension2);
                cdo2.mo4768do(new C3554qD(cdo3));
            }
        }
        ColorStateList m3071if4 = C0659Zr.m3071if(context4, m3115new, 22);
        if (cdo2.f10855for != m3071if4) {
            cdo2.f10855for = m3071if4;
            if (cdo2.f10832catch) {
                cdo2.m4775public(m3071if4);
            }
            cdo2.onStateChange(cdo2.getState());
        }
        float dimension3 = m3115new.getDimension(23, 0.0f);
        if (cdo2.f10854for != dimension3) {
            cdo2.f10854for = dimension3;
            cdo2.f10870new.setStrokeWidth(dimension3);
            if (cdo2.f10832catch) {
                ((C0716as) cdo2).f8253do.f8280for = dimension3;
                cdo2.invalidateSelf();
            }
            cdo2.invalidateSelf();
        }
        ColorStateList m3071if5 = C0659Zr.m3071if(context4, m3115new, 36);
        if (cdo2.f10869new != m3071if5) {
            cdo2.f10869new = m3071if5;
            cdo2.f10875this = cdo2.f10876this ? C3433oA.m7696for(m3071if5) : null;
            cdo2.onStateChange(cdo2.getState());
        }
        CharSequence text = m3115new.getText(5);
        text = text == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : text;
        boolean equals = TextUtils.equals(cdo2.f10847do, text);
        TG tg = cdo2.f10837do;
        if (!equals) {
            cdo2.f10847do = text;
            tg.f3638do = true;
            cdo2.invalidateSelf();
            cdo2.m5752continue();
        }
        PG pg = (!m3115new.hasValue(0) || (resourceId = m3115new.getResourceId(0, 0)) == 0) ? null : new PG(context4, resourceId);
        pg.f2766try = m3115new.getDimension(1, pg.f2766try);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 23) {
            pg.f2763if = C0659Zr.m3071if(context4, m3115new, 2);
        }
        tg.m2232for(pg, context4);
        int i3 = m3115new.getInt(3, 0);
        if (i3 == 1) {
            cdo2.f10846do = TextUtils.TruncateAt.START;
        } else if (i3 == 2) {
            cdo2.f10846do = TextUtils.TruncateAt.MIDDLE;
        } else if (i3 == 3) {
            cdo2.f10846do = TextUtils.TruncateAt.END;
        }
        cdo2.m5758interface(m3115new.getBoolean(18, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            cdo2.m5758interface(m3115new.getBoolean(15, false));
        }
        Drawable m3072new = C0659Zr.m3072new(context4, m3115new, 14);
        Drawable drawable = cdo2.f10844do;
        Drawable m1777else = drawable != null ? C0426Pe.m1777else(drawable) : null;
        if (m1777else != m3072new) {
            float m5754extends = cdo2.m5754extends();
            cdo2.f10844do = m3072new != null ? C0426Pe.m1779goto(m3072new).mutate() : null;
            float m5754extends2 = cdo2.m5754extends();
            com.google.android.material.chip.Cdo.m5751synchronized(m1777else);
            if (cdo2.m5756implements()) {
                cdo2.m5762throws(cdo2.f10844do);
            }
            cdo2.invalidateSelf();
            if (m5754extends != m5754extends2) {
                cdo2.m5752continue();
            }
        }
        if (m3115new.hasValue(17)) {
            ColorStateList m3071if6 = C0659Zr.m3071if(context4, m3115new, 17);
            cdo2.f10872new = true;
            if (cdo2.f10879try != m3071if6) {
                cdo2.f10879try = m3071if6;
                if (cdo2.m5756implements()) {
                    C0426Pe.Cdo.m1787goto(cdo2.f10844do, m3071if6);
                }
                cdo2.onStateChange(cdo2.getState());
            }
        }
        float dimension4 = m3115new.getDimension(16, -1.0f);
        if (cdo2.f10867new != dimension4) {
            float m5754extends3 = cdo2.m5754extends();
            cdo2.f10867new = dimension4;
            float m5754extends4 = cdo2.m5754extends();
            cdo2.invalidateSelf();
            if (m5754extends3 != m5754extends4) {
                cdo2.m5752continue();
            }
        }
        cdo2.m5760protected(m3115new.getBoolean(31, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            cdo2.m5760protected(m3115new.getBoolean(26, false));
        }
        Drawable m3072new2 = C0659Zr.m3072new(context4, m3115new, 25);
        Drawable drawable2 = cdo2.f10866if;
        Drawable m1777else2 = drawable2 != null ? C0426Pe.m1777else(drawable2) : null;
        if (m1777else2 != m3072new2) {
            float m5755finally = cdo2.m5755finally();
            cdo2.f10866if = m3072new2 != null ? C0426Pe.m1779goto(m3072new2).mutate() : null;
            cdo2.f10845do = new RippleDrawable(C3433oA.m7696for(cdo2.f10869new), cdo2.f10866if, com.google.android.material.chip.Cdo.f10821do);
            float m5755finally2 = cdo2.m5755finally();
            com.google.android.material.chip.Cdo.m5751synchronized(m1777else2);
            if (cdo2.m5757instanceof()) {
                cdo2.m5762throws(cdo2.f10866if);
            }
            cdo2.invalidateSelf();
            if (m5755finally != m5755finally2) {
                cdo2.m5752continue();
            }
        }
        ColorStateList m3071if7 = C0659Zr.m3071if(context4, m3115new, 30);
        if (cdo2.f10828case != m3071if7) {
            cdo2.f10828case = m3071if7;
            if (cdo2.m5757instanceof()) {
                C0426Pe.Cdo.m1787goto(cdo2.f10866if, m3071if7);
            }
            cdo2.onStateChange(cdo2.getState());
        }
        float dimension5 = m3115new.getDimension(28, 0.0f);
        if (cdo2.f10877try != dimension5) {
            cdo2.f10877try = dimension5;
            cdo2.invalidateSelf();
            if (cdo2.m5757instanceof()) {
                cdo2.m5752continue();
            }
        }
        boolean z = m3115new.getBoolean(6, false);
        if (cdo2.f10829case != z) {
            cdo2.f10829case = z;
            float m5754extends5 = cdo2.m5754extends();
            if (!z && cdo2.f10863goto) {
                cdo2.f10863goto = false;
            }
            float m5754extends6 = cdo2.m5754extends();
            cdo2.invalidateSelf();
            if (m5754extends5 != m5754extends6) {
                cdo2.m5752continue();
            }
        }
        cdo2.m5764volatile(m3115new.getBoolean(10, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            cdo2.m5764volatile(m3115new.getBoolean(8, false));
        }
        Drawable m3072new3 = C0659Zr.m3072new(context4, m3115new, 7);
        if (cdo2.f10858for != m3072new3) {
            float m5754extends7 = cdo2.m5754extends();
            cdo2.f10858for = m3072new3;
            float m5754extends8 = cdo2.m5754extends();
            com.google.android.material.chip.Cdo.m5751synchronized(cdo2.f10858for);
            cdo2.m5762throws(cdo2.f10858for);
            cdo2.invalidateSelf();
            if (m5754extends7 != m5754extends8) {
                cdo2.m5752continue();
            }
        }
        if (m3115new.hasValue(9) && cdo2.f10852else != (m3071if = C0659Zr.m3071if(context4, m3115new, 9))) {
            cdo2.f10852else = m3071if;
            if (cdo2.f10853else && cdo2.f10858for != null && cdo2.f10829case) {
                C0426Pe.Cdo.m1787goto(cdo2.f10858for, m3071if);
            }
            cdo2.onStateChange(cdo2.getState());
        }
        C0156Ct.m308do(context4, m3115new, 39);
        C0156Ct.m308do(context4, m3115new, 33);
        float dimension6 = m3115new.getDimension(21, 0.0f);
        if (cdo2.f10826case != dimension6) {
            cdo2.f10826case = dimension6;
            cdo2.invalidateSelf();
            cdo2.m5752continue();
        }
        float dimension7 = m3115new.getDimension(35, 0.0f);
        if (cdo2.f10850else != dimension7) {
            float m5754extends9 = cdo2.m5754extends();
            cdo2.f10850else = dimension7;
            float m5754extends10 = cdo2.m5754extends();
            cdo2.invalidateSelf();
            if (m5754extends9 != m5754extends10) {
                cdo2.m5752continue();
            }
        }
        float dimension8 = m3115new.getDimension(34, 0.0f);
        if (cdo2.f10860goto != dimension8) {
            float m5754extends11 = cdo2.m5754extends();
            cdo2.f10860goto = dimension8;
            float m5754extends12 = cdo2.m5754extends();
            cdo2.invalidateSelf();
            if (m5754extends11 != m5754extends12) {
                cdo2.m5752continue();
            }
        }
        float dimension9 = m3115new.getDimension(41, 0.0f);
        if (cdo2.f10873this != dimension9) {
            cdo2.f10873this = dimension9;
            cdo2.invalidateSelf();
            cdo2.m5752continue();
        }
        float dimension10 = m3115new.getDimension(40, 0.0f);
        if (cdo2.f10823break != dimension10) {
            cdo2.f10823break = dimension10;
            cdo2.invalidateSelf();
            cdo2.m5752continue();
        }
        float dimension11 = m3115new.getDimension(29, 0.0f);
        if (cdo2.f10830catch != dimension11) {
            cdo2.f10830catch = dimension11;
            cdo2.invalidateSelf();
            if (cdo2.m5757instanceof()) {
                cdo2.m5752continue();
            }
        }
        float dimension12 = m3115new.getDimension(27, 0.0f);
        if (cdo2.f10833class != dimension12) {
            cdo2.f10833class = dimension12;
            cdo2.invalidateSelf();
            if (cdo2.m5757instanceof()) {
                cdo2.m5752continue();
            }
        }
        float dimension13 = m3115new.getDimension(13, 0.0f);
        if (cdo2.f10835const != dimension13) {
            cdo2.f10835const = dimension13;
            cdo2.invalidateSelf();
            cdo2.m5752continue();
        }
        cdo2.f10834class = m3115new.getDimensionPixelSize(4, Api.BaseClientBuilder.API_PRIORITY_OTHER);
        m3115new.recycle();
        TypedArray m3115new2 = C0682aH.m3115new(context2, attributeSet, iArr, i, com.joeykrim.rootcheck.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        this.f10809try = m3115new2.getBoolean(32, false);
        this.f10807new = (int) Math.ceil(m3115new2.getDimension(20, (float) Math.ceil(C3738tL.m8283for(getContext(), 48))));
        m3115new2.recycle();
        com.google.android.material.chip.Cdo cdo4 = this.f10801do;
        if (cdo4 != cdo2) {
            if (cdo4 != null) {
                cdo4.f10848do = new WeakReference<>(null);
            }
            this.f10801do = cdo2;
            cdo2.f10825break = false;
            cdo2.f10848do = new WeakReference<>(this);
            m5744for(this.f10807new);
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        cdo2.m4770final(QK.Cnew.m1939this(this));
        TypedArray m3115new3 = C0682aH.m3115new(context2, attributeSet, iArr, i, com.joeykrim.rootcheck.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        if (i2 < 23) {
            setTextColor(C0659Zr.m3071if(context2, m3115new3, 2));
        }
        boolean hasValue = m3115new3.hasValue(37);
        m3115new3.recycle();
        new Cif(this);
        if (m5742case() && (cdo = this.f10801do) != null) {
            boolean z2 = cdo.f10880try;
        }
        QK.m1858native(this, null);
        if (!hasValue) {
            setOutlineProvider(new C7(this));
        }
        setChecked(this.f10803do);
        setText(cdo2.f10847do);
        setEllipsize(cdo2.f10846do);
        m5747this();
        if (!this.f10801do.f10825break) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        m5745goto();
        if (this.f10809try) {
            setMinHeight(this.f10807new);
        }
        this.f10804for = getLayoutDirection();
        super.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: B7
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                Chip chip = Chip.this;
                InterfaceC0483Rr.Cdo<Chip> cdo5 = chip.f10794do;
                if (cdo5 != null) {
                    C3842v7 c3842v7 = ((C3783u7) cdo5).f15856do;
                    if (!z3 ? c3842v7.m8432for(chip, c3842v7.f16022if) : c3842v7.m8431do(chip)) {
                        c3842v7.m8433if();
                    }
                }
                CompoundButton.OnCheckedChangeListener onCheckedChangeListener = chip.f10799do;
                if (onCheckedChangeListener != null) {
                    onCheckedChangeListener.onCheckedChanged(compoundButton, z3);
                }
            }
        });
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(int i) {
        super.setTextAppearance(i);
        com.google.android.material.chip.Cdo cdo = this.f10801do;
        if (cdo != null) {
            Context context = cdo.f10838do;
            cdo.f10837do.m2232for(new PG(context, i), context);
        }
        m5747this();
    }
}
