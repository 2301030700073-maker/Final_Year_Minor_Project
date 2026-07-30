package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import com.joeykrim.rootcheck.R;
import defpackage.C0742bH;
import defpackage.C3793uH;
import defpackage.C3836v1;
import defpackage.C3915wL;
import defpackage.InterfaceC4029yH;
import defpackage.M1;
import defpackage.S1;
import defpackage.U1;
import defpackage.XG;

/* loaded from: classes.dex */
public class AppCompatButton extends Button implements InterfaceC4029yH {

    /* renamed from: do, reason: not valid java name */
    public M1 f5681do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final S1 f5682do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3836v1 f5683do;

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyle);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C3836v1 c3836v1 = this.f5683do;
        if (c3836v1 != null) {
            c3836v1.m8414do();
        }
        S1 s1 = this.f5682do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.TextView
    public final int getAutoSizeMaxTextSize() {
        if (C3915wL.f16321do) {
            return super.getAutoSizeMaxTextSize();
        }
        S1 s1 = this.f5682do;
        if (s1 != null) {
            return Math.round(s1.f3272do.f3816for);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public final int getAutoSizeMinTextSize() {
        if (C3915wL.f16321do) {
            return super.getAutoSizeMinTextSize();
        }
        S1 s1 = this.f5682do;
        if (s1 != null) {
            return Math.round(s1.f3272do.f3817if);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public final int getAutoSizeStepGranularity() {
        if (C3915wL.f16321do) {
            return super.getAutoSizeStepGranularity();
        }
        S1 s1 = this.f5682do;
        if (s1 != null) {
            return Math.round(s1.f3272do.f3808do);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public final int[] getAutoSizeTextAvailableSizes() {
        if (C3915wL.f16321do) {
            return super.getAutoSizeTextAvailableSizes();
        }
        S1 s1 = this.f5682do;
        return s1 != null ? s1.f3272do.f3815do : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public final int getAutoSizeTextType() {
        if (C3915wL.f16321do) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        S1 s1 = this.f5682do;
        if (s1 != null) {
            return s1.f3272do.f3809do;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public final ActionMode.Callback getCustomSelectionActionModeCallback() {
        return XG.m2802new(super.getCustomSelectionActionModeCallback());
    }

    @Override // defpackage.InterfaceC4029yH
    /* renamed from: new */
    public final void mo3407new(PorterDuff.Mode mode) {
        S1 s1 = this.f5682do;
        s1.m2085catch(mode);
        s1.m2090if();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        S1 s1 = this.f5682do;
        if (s1 == null || C3915wL.f16321do) {
            return;
        }
        s1.f3272do.m2306do();
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        boolean z = false;
        S1 s1 = this.f5682do;
        if (s1 != null && !C3915wL.f16321do) {
            U1 u1 = s1.f3272do;
            if (u1.m2309goto() && u1.f3809do != 0) {
                z = true;
            }
        }
        if (z) {
            s1.f3272do.m2306do();
        }
    }

    @Override // android.widget.TextView
    public final void setAllCaps(boolean z) {
        super.setAllCaps(z);
        if (this.f5681do == null) {
            this.f5681do = new M1(this);
        }
        this.f5681do.m1378try(z);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (C3915wL.f16321do) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        S1 s1 = this.f5682do;
        if (s1 != null) {
            s1.m2088else(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (C3915wL.f16321do) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        S1 s1 = this.f5682do;
        if (s1 != null) {
            s1.m2089goto(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeWithDefaults(int i) {
        if (C3915wL.f16321do) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        S1 s1 = this.f5682do;
        if (s1 != null) {
            s1.m2092this(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3836v1 c3836v1 = this.f5683do;
        if (c3836v1 != null) {
            c3836v1.m8421try();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C3836v1 c3836v1 = this.f5683do;
        if (c3836v1 != null) {
            c3836v1.m8413case(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(XG.m2803try(callback, this));
    }

    @Override // android.widget.TextView
    public final void setFilters(InputFilter[] inputFilterArr) {
        if (this.f5681do == null) {
            this.f5681do = new M1(this);
        }
        super.setFilters(this.f5681do.m1376if(inputFilterArr));
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        S1 s1 = this.f5682do;
        if (s1 != null) {
            s1.m2093try(context, i);
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f) {
        boolean z = C3915wL.f16321do;
        if (z) {
            super.setTextSize(i, f);
            return;
        }
        S1 s1 = this.f5682do;
        if (s1 == null || z) {
            return;
        }
        U1 u1 = s1.f3272do;
        if (u1.m2309goto() && u1.f3809do != 0) {
            return;
        }
        u1.m2311try(f, i);
    }

    @Override // defpackage.InterfaceC4029yH
    /* renamed from: try */
    public final void mo3408try(ColorStateList colorStateList) {
        S1 s1 = this.f5682do;
        s1.m2084break(colorStateList);
        s1.m2090if();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C3793uH.m8378do(context);
        C0742bH.m4822do(getContext(), this);
        C3836v1 c3836v1 = new C3836v1(this);
        this.f5683do = c3836v1;
        c3836v1.m8419new(attributeSet, i);
        S1 s1 = new S1(this);
        this.f5682do = s1;
        s1.m2091new(attributeSet, i);
        s1.m2090if();
        if (this.f5681do == null) {
            this.f5681do = new M1(this);
        }
        this.f5681do.m1375for(attributeSet, i);
    }
}
