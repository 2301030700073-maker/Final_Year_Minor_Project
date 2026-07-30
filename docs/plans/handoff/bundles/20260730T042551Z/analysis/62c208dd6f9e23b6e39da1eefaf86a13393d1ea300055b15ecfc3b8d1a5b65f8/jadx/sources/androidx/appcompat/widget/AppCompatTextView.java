package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import defpackage.C0742bH;
import defpackage.C3645ro;
import defpackage.C3793uH;
import defpackage.C3836v1;
import defpackage.C3915wL;
import defpackage.InterfaceC4029yH;
import defpackage.LI;
import defpackage.M1;
import defpackage.O4;
import defpackage.R1;
import defpackage.S1;
import defpackage.SI;
import defpackage.U1;
import defpackage.XG;

/* loaded from: classes.dex */
public class AppCompatTextView extends TextView implements InterfaceC4029yH {

    /* renamed from: do, reason: not valid java name */
    public M1 f5741do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final R1 f5742do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final S1 f5743do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f5744do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3836v1 f5745do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5746do;

    /* renamed from: androidx.appcompat.widget.AppCompatTextView$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do, reason: not valid java name */
        void mo3439do(int i);

        /* renamed from: if, reason: not valid java name */
        void mo3440if(int i);
    }

    /* renamed from: androidx.appcompat.widget.AppCompatTextView$for, reason: invalid class name */
    public class Cfor extends Cif {
        public Cfor() {
            super();
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.Cif, androidx.appcompat.widget.AppCompatTextView.Cdo
        /* renamed from: do */
        public final void mo3439do(int i) {
            AppCompatTextView.super.setFirstBaselineToTopHeight(i);
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.Cif, androidx.appcompat.widget.AppCompatTextView.Cdo
        /* renamed from: if */
        public final void mo3440if(int i) {
            AppCompatTextView.super.setLastBaselineToBottomHeight(i);
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatTextView$if, reason: invalid class name */
    public class Cif implements Cdo {
        public Cif() {
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.Cdo
        /* renamed from: do */
        public void mo3439do(int i) {
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.Cdo
        /* renamed from: if */
        public void mo3440if(int i) {
        }
    }

    public AppCompatTextView() {
        throw null;
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C3836v1 c3836v1 = this.f5745do;
        if (c3836v1 != null) {
            c3836v1.m8414do();
        }
        S1 s1 = this.f5743do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.TextView
    public final int getAutoSizeMaxTextSize() {
        if (C3915wL.f16321do) {
            return super.getAutoSizeMaxTextSize();
        }
        S1 s1 = this.f5743do;
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
        S1 s1 = this.f5743do;
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
        S1 s1 = this.f5743do;
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
        S1 s1 = this.f5743do;
        return s1 != null ? s1.f3272do.f3815do : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public final int getAutoSizeTextType() {
        if (C3915wL.f16321do) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        S1 s1 = this.f5743do;
        if (s1 != null) {
            return s1.f3272do.f3809do;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public final ActionMode.Callback getCustomSelectionActionModeCallback() {
        return XG.m2802new(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public final int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public final int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    @Override // android.widget.TextView
    public final CharSequence getText() {
        return super.getText();
    }

    @Override // android.widget.TextView
    public final TextClassifier getTextClassifier() {
        R1 r1;
        if (Build.VERSION.SDK_INT >= 28 || (r1 = this.f5742do) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = r1.f3093do;
        return textClassifier == null ? R1.Cdo.m2010do(r1.f3094do) : textClassifier;
    }

    @Override // defpackage.InterfaceC4029yH
    /* renamed from: new */
    public final void mo3407new(PorterDuff.Mode mode) {
        S1 s1 = this.f5743do;
        s1.m2085catch(mode);
        s1.m2090if();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f5743do.getClass();
        S1.m2082case(this, onCreateInputConnection, editorInfo);
        C3645ro.m7994continue(this, editorInfo, onCreateInputConnection);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        S1 s1 = this.f5743do;
        if (s1 == null || C3915wL.f16321do) {
            return;
        }
        s1.f3272do.m2306do();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        boolean z = false;
        S1 s1 = this.f5743do;
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
        if (this.f5741do == null) {
            this.f5741do = new M1(this);
        }
        this.f5741do.m1378try(z);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (C3915wL.f16321do) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        S1 s1 = this.f5743do;
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
        S1 s1 = this.f5743do;
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
        S1 s1 = this.f5743do;
        if (s1 != null) {
            s1.m2092this(i);
        }
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3836v1 c3836v1 = this.f5745do;
        if (c3836v1 != null) {
            c3836v1.m8421try();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C3836v1 c3836v1 = this.f5745do;
        if (c3836v1 != null) {
            c3836v1.m8413case(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        S1 s1 = this.f5743do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        S1 s1 = this.f5743do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        S1 s1 = this.f5743do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        S1 s1 = this.f5743do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.TextView
    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(XG.m2803try(callback, this));
    }

    @Override // android.widget.TextView
    public final void setFilters(InputFilter[] inputFilterArr) {
        if (this.f5741do == null) {
            this.f5741do = new M1(this);
        }
        super.setFilters(this.f5741do.m1376if(inputFilterArr));
    }

    @Override // android.widget.TextView
    public final void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            m3438super().mo3439do(i);
        } else {
            XG.m2799do(this, i);
        }
    }

    @Override // android.widget.TextView
    public final void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            m3438super().mo3440if(i);
        } else {
            XG.m2801if(this, i);
        }
    }

    @Override // android.widget.TextView
    public final void setLineHeight(int i) {
        O4.m1609goto(i);
        if (i != getPaint().getFontMetricsInt(null)) {
            setLineSpacing(i - r0, 1.0f);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        S1 s1 = this.f5743do;
        if (s1 != null) {
            s1.m2093try(context, i);
        }
    }

    @Override // android.widget.TextView
    public final void setTextClassifier(TextClassifier textClassifier) {
        R1 r1;
        if (Build.VERSION.SDK_INT >= 28 || (r1 = this.f5742do) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            r1.f3093do = textClassifier;
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f) {
        boolean z = C3915wL.f16321do;
        if (z) {
            super.setTextSize(i, f);
            return;
        }
        S1 s1 = this.f5743do;
        if (s1 == null || z) {
            return;
        }
        U1 u1 = s1.f3272do;
        if (u1.m2309goto() && u1.f3809do != 0) {
            return;
        }
        u1.m2311try(f, i);
    }

    @Override // android.widget.TextView
    public final void setTypeface(Typeface typeface, int i) {
        Typeface typeface2;
        if (this.f5746do) {
            return;
        }
        if (typeface == null || i <= 0) {
            typeface2 = null;
        } else {
            Context context = getContext();
            SI si = LI.f1942do;
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null");
            }
            typeface2 = Typeface.create(typeface, i);
        }
        this.f5746do = true;
        if (typeface2 != null) {
            typeface = typeface2;
        }
        try {
            super.setTypeface(typeface, i);
        } finally {
            this.f5746do = false;
        }
    }

    /* renamed from: super, reason: not valid java name */
    public final Cdo m3438super() {
        if (this.f5744do == null) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 28) {
                this.f5744do = new Cfor();
            } else if (i >= 26) {
                this.f5744do = new Cif();
            }
        }
        return this.f5744do;
    }

    @Override // defpackage.InterfaceC4029yH
    /* renamed from: try */
    public final void mo3408try(ColorStateList colorStateList) {
        S1 s1 = this.f5743do;
        s1.m2084break(colorStateList);
        s1.m2090if();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C3793uH.m8378do(context);
        this.f5746do = false;
        this.f5744do = null;
        C0742bH.m4822do(getContext(), this);
        C3836v1 c3836v1 = new C3836v1(this);
        this.f5745do = c3836v1;
        c3836v1.m8419new(attributeSet, i);
        S1 s1 = new S1(this);
        this.f5743do = s1;
        s1.m2091new(attributeSet, i);
        s1.m2090if();
        this.f5742do = new R1(this);
        if (this.f5741do == null) {
            this.f5741do = new M1(this);
        }
        this.f5741do.m1375for(attributeSet, i);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i != 0 ? C3645ro.m7997extends(context, i) : null, i2 != 0 ? C3645ro.m7997extends(context, i2) : null, i3 != 0 ? C3645ro.m7997extends(context, i3) : null, i4 != 0 ? C3645ro.m7997extends(context, i4) : null);
        S1 s1 = this.f5743do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i != 0 ? C3645ro.m7997extends(context, i) : null, i2 != 0 ? C3645ro.m7997extends(context, i2) : null, i3 != 0 ? C3645ro.m7997extends(context, i3) : null, i4 != 0 ? C3645ro.m7997extends(context, i4) : null);
        S1 s1 = this.f5743do;
        if (s1 != null) {
            s1.m2090if();
        }
    }
}
