package androidx.appcompat.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.emoji2.text.Cnew;
import defpackage.C0296Jf;
import defpackage.C0426Pe;
import defpackage.C0466Ra;
import defpackage.C0470Re;
import defpackage.C0742bH;
import defpackage.C3385nL;
import defpackage.C3915wL;
import defpackage.C3953x0;
import defpackage.C3970xH;
import defpackage.M1;
import defpackage.O4;
import defpackage.OK;
import defpackage.QK;
import defpackage.S1;
import defpackage.XG;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f5865do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f5866do = {R.attr.state_checked};

    /* renamed from: break, reason: not valid java name */
    public int f5867break;

    /* renamed from: case, reason: not valid java name */
    public int f5868case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public final boolean f5869case;

    /* renamed from: catch, reason: not valid java name */
    public int f5870catch;

    /* renamed from: class, reason: not valid java name */
    public int f5871class;

    /* renamed from: const, reason: not valid java name */
    public int f5872const;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f5873do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public M1 f5874do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ObjectAnimator f5875do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f5876do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PorterDuff.Mode f5877do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f5878do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f5879do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public StaticLayout f5880do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextPaint f5881do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final VelocityTracker f5882do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor f5883do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f5884do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3953x0 f5885do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5886do;

    /* renamed from: else, reason: not valid java name */
    public final int f5887else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public boolean f5888else;

    /* renamed from: final, reason: not valid java name */
    public int f5889final;

    /* renamed from: for, reason: not valid java name */
    public float f5890for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int f5891for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public ColorStateList f5892for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public CharSequence f5893for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f5894for;

    /* renamed from: goto, reason: not valid java name */
    public final int f5895goto;

    /* renamed from: if, reason: not valid java name */
    public float f5896if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ColorStateList f5897if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final PorterDuff.Mode f5898if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Drawable f5899if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public StaticLayout f5900if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public CharSequence f5901if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f5902if;

    /* renamed from: new, reason: not valid java name */
    public int f5903new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public CharSequence f5904new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final boolean f5905new;

    /* renamed from: super, reason: not valid java name */
    public int f5906super;

    /* renamed from: this, reason: not valid java name */
    public int f5907this;

    /* renamed from: try, reason: not valid java name */
    public final int f5908try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public final boolean f5909try;

    /* renamed from: androidx.appcompat.widget.SwitchCompat$do, reason: invalid class name */
    public class Cdo extends Property<SwitchCompat, Float> {
        public Cdo() {
            super(Float.class, "thumbPos");
        }

        @Override // android.util.Property
        public final Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f5890for);
        }

        @Override // android.util.Property
        public final void set(SwitchCompat switchCompat, Float f) {
            SwitchCompat switchCompat2 = switchCompat;
            switchCompat2.f5890for = f.floatValue();
            switchCompat2.invalidate();
        }
    }

    /* renamed from: androidx.appcompat.widget.SwitchCompat$for, reason: invalid class name */
    public static class Cfor extends Cnew.Ctry {

        /* renamed from: do, reason: not valid java name */
        public final WeakReference f5910do;

        public Cfor(SwitchCompat switchCompat) {
            this.f5910do = new WeakReference(switchCompat);
        }

        @Override // androidx.emoji2.text.Cnew.Ctry
        /* renamed from: do, reason: not valid java name */
        public final void mo3474do() {
            SwitchCompat switchCompat = (SwitchCompat) this.f5910do.get();
            if (switchCompat != null) {
                switchCompat.m3469goto(switchCompat.f5884do);
                switchCompat.m3467else(switchCompat.f5893for);
                switchCompat.requestLayout();
            }
        }

        @Override // androidx.emoji2.text.Cnew.Ctry
        /* renamed from: if */
        public final void mo629if() {
            SwitchCompat switchCompat = (SwitchCompat) this.f5910do.get();
            if (switchCompat != null) {
                switchCompat.m3469goto(switchCompat.f5884do);
                switchCompat.m3467else(switchCompat.f5893for);
                switchCompat.requestLayout();
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SwitchCompat$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static void m3475do(ObjectAnimator objectAnimator, boolean z) {
            objectAnimator.setAutoCancel(z);
        }
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.joeykrim.rootcheck.R.attr.switchStyle);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m3465case(Typeface typeface) {
        TextPaint textPaint = this.f5881do;
        if ((textPaint.getTypeface() == null || textPaint.getTypeface().equals(typeface)) && (textPaint.getTypeface() != null || typeface == null)) {
            return;
        }
        textPaint.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    /* renamed from: do, reason: not valid java name */
    public final void m3466do() {
        Drawable drawable = this.f5879do;
        if (drawable != null) {
            boolean z = this.f5886do;
            boolean z2 = this.f5902if;
            if (z || z2) {
                Drawable mutate = C0426Pe.m1779goto(drawable).mutate();
                this.f5879do = mutate;
                if (this.f5886do) {
                    C0426Pe.Cdo.m1787goto(mutate, this.f5876do);
                }
                if (z2) {
                    C0426Pe.Cdo.m1790this(this.f5879do, this.f5877do);
                }
                if (this.f5879do.isStateful()) {
                    this.f5879do.setState(getDrawableState());
                }
            }
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        int i2;
        int i3 = this.f5871class;
        int i4 = this.f5872const;
        int i5 = this.f5889final;
        int i6 = this.f5906super;
        int m3471new = ((int) (((C3915wL.m8568do(this) ? 1.0f - this.f5890for : this.f5890for) * m3471new()) + 0.5f)) + i3;
        Drawable drawable = this.f5879do;
        Rect m2063if = drawable != null ? C0470Re.m2063if(drawable) : C0470Re.f3208do;
        Drawable drawable2 = this.f5899if;
        Rect rect = this.f5878do;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i7 = rect.left;
            m3471new += i7;
            if (m2063if != null) {
                int i8 = m2063if.left;
                if (i8 > i7) {
                    i3 += i8 - i7;
                }
                int i9 = m2063if.top;
                int i10 = rect.top;
                i = i9 > i10 ? (i9 - i10) + i4 : i4;
                int i11 = m2063if.right;
                int i12 = rect.right;
                if (i11 > i12) {
                    i5 -= i11 - i12;
                }
                int i13 = m2063if.bottom;
                int i14 = rect.bottom;
                if (i13 > i14) {
                    i2 = i6 - (i13 - i14);
                    this.f5899if.setBounds(i3, i, i5, i2);
                }
            } else {
                i = i4;
            }
            i2 = i6;
            this.f5899if.setBounds(i3, i, i5, i2);
        }
        Drawable drawable3 = this.f5879do;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i15 = m3471new - rect.left;
            int i16 = m3471new + this.f5870catch + rect.right;
            this.f5879do.setBounds(i15, i4, i16, i6);
            Drawable background = getBackground();
            if (background != null) {
                C0426Pe.Cdo.m1783case(background, i15, i4, i16, i6);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f5879do;
        if (drawable != null) {
            C0426Pe.Cdo.m1791try(drawable, f, f2);
        }
        Drawable drawable2 = this.f5899if;
        if (drawable2 != null) {
            C0426Pe.Cdo.m1791try(drawable2, f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f5879do;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.f5899if;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m3467else(CharSequence charSequence) {
        this.f5893for = charSequence;
        M1 m3468for = m3468for();
        TransformationMethod mo1045try = ((C0296Jf) m3468for.f2078if).f1660do.mo1045try(this.f5885do);
        if (mo1045try != null) {
            charSequence = mo1045try.getTransformation(charSequence, this);
        }
        this.f5904new = charSequence;
        this.f5900if = null;
        if (this.f5869case) {
            m3472this();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final M1 m3468for() {
        if (this.f5874do == null) {
            this.f5874do = new M1(this);
        }
        return this.f5874do;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public final int getCompoundPaddingLeft() {
        if (!C3915wL.m8568do(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f5907this;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.f5908try : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public final int getCompoundPaddingRight() {
        if (C3915wL.m8568do(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f5907this;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.f5908try : compoundPaddingRight;
    }

    @Override // android.widget.TextView
    public final ActionMode.Callback getCustomSelectionActionModeCallback() {
        return XG.m2802new(super.getCustomSelectionActionModeCallback());
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m3469goto(CharSequence charSequence) {
        this.f5884do = charSequence;
        M1 m3468for = m3468for();
        TransformationMethod mo1045try = ((C0296Jf) m3468for.f2078if).f1660do.mo1045try(this.f5885do);
        if (mo1045try != null) {
            charSequence = mo1045try.getTransformation(charSequence, this);
        }
        this.f5901if = charSequence;
        this.f5880do = null;
        if (this.f5869case) {
            m3472this();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m3470if() {
        Drawable drawable = this.f5899if;
        if (drawable != null) {
            boolean z = this.f5894for;
            boolean z2 = this.f5905new;
            if (z || z2) {
                Drawable mutate = C0426Pe.m1779goto(drawable).mutate();
                this.f5899if = mutate;
                if (this.f5894for) {
                    C0426Pe.Cdo.m1787goto(mutate, this.f5897if);
                }
                if (z2) {
                    C0426Pe.Cdo.m1790this(this.f5899if, this.f5898if);
                }
                if (this.f5899if.isStateful()) {
                    this.f5899if.setState(getDrawableState());
                }
            }
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f5879do;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f5899if;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f5875do;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.f5875do.end();
        this.f5875do = null;
    }

    /* renamed from: new, reason: not valid java name */
    public final int m3471new() {
        Drawable drawable = this.f5899if;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.f5878do;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f5879do;
        Rect m2063if = drawable2 != null ? C0470Re.m2063if(drawable2) : C0470Re.f3208do;
        return ((((this.f5907this - this.f5870catch) - rect.left) - rect.right) - m2063if.left) - m2063if.right;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f5866do);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Drawable drawable = this.f5899if;
        Rect rect = this.f5878do;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i = this.f5872const;
        int i2 = this.f5906super;
        int i3 = i + rect.top;
        int i4 = i2 - rect.bottom;
        Drawable drawable2 = this.f5879do;
        if (drawable != null) {
            if (!this.f5909try || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect m2063if = C0470Re.m2063if(drawable2);
                drawable2.copyBounds(rect);
                rect.left += m2063if.left;
                rect.right -= m2063if.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        StaticLayout staticLayout = (this.f5890for > 0.5f ? 1 : (this.f5890for == 0.5f ? 0 : -1)) > 0 ? this.f5880do : this.f5900if;
        if (staticLayout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f5892for;
            TextPaint textPaint = this.f5881do;
            if (colorStateList != null) {
                textPaint.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            textPaint.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (staticLayout.getWidth() / 2), ((i3 + i4) / 2) - (staticLayout.getHeight() / 2));
            staticLayout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.f5884do : this.f5893for;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int width;
        int i6;
        int i7;
        int i8;
        super.onLayout(z, i, i2, i3, i4);
        int i9 = 0;
        if (this.f5879do != null) {
            Drawable drawable = this.f5899if;
            Rect rect = this.f5878do;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect m2063if = C0470Re.m2063if(this.f5879do);
            i5 = Math.max(0, m2063if.left - rect.left);
            i9 = Math.max(0, m2063if.right - rect.right);
        } else {
            i5 = 0;
        }
        if (C3915wL.m8568do(this)) {
            i6 = getPaddingLeft() + i5;
            width = ((this.f5907this + i6) - i5) - i9;
        } else {
            width = (getWidth() - getPaddingRight()) - i9;
            i6 = (width - this.f5907this) + i5 + i9;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int height = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i10 = this.f5867break;
            int i11 = height - (i10 / 2);
            i7 = i10 + i11;
            i8 = i11;
        } else if (gravity != 80) {
            i8 = getPaddingTop();
            i7 = this.f5867break + i8;
        } else {
            i7 = getHeight() - getPaddingBottom();
            i8 = i7 - this.f5867break;
        }
        this.f5871class = i6;
        this.f5872const = i8;
        this.f5906super = i7;
        this.f5889final = width;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        boolean z = this.f5869case;
        if (z) {
            if (this.f5880do == null) {
                this.f5880do = m3473try(this.f5901if);
            }
            if (this.f5900if == null) {
                this.f5900if = m3473try(this.f5904new);
            }
        }
        Drawable drawable = this.f5879do;
        int i5 = 0;
        Rect rect = this.f5878do;
        if (drawable != null) {
            drawable.getPadding(rect);
            i3 = (this.f5879do.getIntrinsicWidth() - rect.left) - rect.right;
            i4 = this.f5879do.getIntrinsicHeight();
        } else {
            i3 = 0;
            i4 = 0;
        }
        this.f5870catch = Math.max(z ? (this.f5891for * 2) + Math.max(this.f5880do.getWidth(), this.f5900if.getWidth()) : 0, i3);
        Drawable drawable2 = this.f5899if;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i5 = this.f5899if.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i6 = rect.left;
        int i7 = rect.right;
        Drawable drawable3 = this.f5879do;
        if (drawable3 != null) {
            Rect m2063if = C0470Re.m2063if(drawable3);
            i6 = Math.max(i6, m2063if.left);
            i7 = Math.max(i7, m2063if.right);
        }
        int max = this.f5888else ? Math.max(this.f5903new, (this.f5870catch * 2) + i6 + i7) : this.f5903new;
        int max2 = Math.max(i5, i4);
        this.f5907this = max;
        this.f5867break = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f5884do : this.f5893for;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001a, code lost:
    
        if (r1 != 3) goto L90;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.TextView
    public final void setAllCaps(boolean z) {
        super.setAllCaps(z);
        m3468for().m1378try(z);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void setChecked(boolean z) {
        super.setChecked(z);
        boolean isChecked = isChecked();
        if (isChecked) {
            if (Build.VERSION.SDK_INT >= 30) {
                Object obj = this.f5884do;
                if (obj == null) {
                    obj = getResources().getString(com.joeykrim.rootcheck.R.string.abc_capital_on);
                }
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                new OK().m1917try(this, obj);
            }
        } else if (Build.VERSION.SDK_INT >= 30) {
            Object obj2 = this.f5893for;
            if (obj2 == null) {
                obj2 = getResources().getString(com.joeykrim.rootcheck.R.string.abc_capital_off);
            }
            WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
            new OK().m1917try(this, obj2);
        }
        if (getWindowToken() != null) {
            WeakHashMap<View, C3385nL> weakHashMap3 = QK.f2909do;
            if (isLaidOut()) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f5865do, isChecked ? 1.0f : 0.0f);
                this.f5875do = ofFloat;
                ofFloat.setDuration(250L);
                Cif.m3475do(this.f5875do, true);
                this.f5875do.start();
                return;
            }
        }
        ObjectAnimator objectAnimator = this.f5875do;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        this.f5890for = isChecked ? 1.0f : 0.0f;
        invalidate();
    }

    @Override // android.widget.TextView
    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(XG.m2803try(callback, this));
    }

    @Override // android.widget.TextView
    public final void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(m3468for().m1376if(inputFilterArr));
    }

    /* renamed from: this, reason: not valid java name */
    public final void m3472this() {
        if (this.f5883do == null && ((C0296Jf) this.f5874do.f2078if).f1660do.mo1043if()) {
            if (Cnew.f6776do != null) {
                Cnew m4104do = Cnew.m4104do();
                int m4108if = m4104do.m4108if();
                if (m4108if == 3 || m4108if == 0) {
                    Cfor cfor = new Cfor(this);
                    this.f5883do = cfor;
                    m4104do.m4106else(cfor);
                }
            }
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    /* renamed from: try, reason: not valid java name */
    public final StaticLayout m3473try(CharSequence charSequence) {
        return new StaticLayout(charSequence, this.f5881do, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, r2)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f5879do || drawable == this.f5899if;
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int resourceId;
        this.f5876do = null;
        this.f5877do = null;
        this.f5886do = false;
        this.f5902if = false;
        this.f5897if = null;
        this.f5898if = null;
        this.f5894for = false;
        this.f5905new = false;
        this.f5882do = VelocityTracker.obtain();
        this.f5888else = true;
        this.f5878do = new Rect();
        C0742bH.m4822do(getContext(), this);
        TextPaint textPaint = new TextPaint(1);
        this.f5881do = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int[] iArr = O4.f2530continue;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        C3970xH c3970xH = new C3970xH(context, obtainStyledAttributes);
        QK.m1857import(this, context, iArr, attributeSet, obtainStyledAttributes, i);
        Drawable m8639try = c3970xH.m8639try(2);
        this.f5879do = m8639try;
        if (m8639try != null) {
            m8639try.setCallback(this);
        }
        Drawable m8639try2 = c3970xH.m8639try(11);
        this.f5899if = m8639try2;
        if (m8639try2 != null) {
            m8639try2.setCallback(this);
        }
        m3469goto(c3970xH.m8629catch(0));
        m3467else(c3970xH.m8629catch(1));
        this.f5869case = c3970xH.m8631do(3, true);
        this.f5891for = c3970xH.m8637new(8, 0);
        this.f5903new = c3970xH.m8637new(5, 0);
        this.f5908try = c3970xH.m8637new(6, 0);
        this.f5909try = c3970xH.m8631do(4, false);
        ColorStateList m8636if = c3970xH.m8636if(9);
        if (m8636if != null) {
            this.f5876do = m8636if;
            this.f5886do = true;
        }
        PorterDuff.Mode m2062for = C0470Re.m2062for(c3970xH.m8635goto(10, -1), null);
        if (m2062for != null) {
            this.f5877do = m2062for;
            this.f5902if = true;
        }
        if (this.f5886do || this.f5902if) {
            m3466do();
        }
        ColorStateList m8636if2 = c3970xH.m8636if(12);
        if (m8636if2 != null) {
            this.f5897if = m8636if2;
            this.f5894for = true;
        }
        PorterDuff.Mode m2062for2 = C0470Re.m2062for(c3970xH.m8635goto(13, -1), null);
        if (m2062for2 != null) {
            this.f5898if = m2062for2;
            this.f5905new = true;
        }
        if (this.f5894for || this.f5905new) {
            m3470if();
        }
        int m8638this = c3970xH.m8638this(7, 0);
        if (m8638this != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(m8638this, O4.f2570strictfp);
            ColorStateList colorStateList = (!obtainStyledAttributes2.hasValue(3) || (resourceId = obtainStyledAttributes2.getResourceId(3, 0)) == 0 || (colorStateList = C0466Ra.getColorStateList(context, resourceId)) == null) ? obtainStyledAttributes2.getColorStateList(3) : colorStateList;
            if (colorStateList != null) {
                this.f5892for = colorStateList;
            } else {
                this.f5892for = getTextColors();
            }
            int dimensionPixelSize = obtainStyledAttributes2.getDimensionPixelSize(0, 0);
            if (dimensionPixelSize != 0) {
                float f = dimensionPixelSize;
                if (f != textPaint.getTextSize()) {
                    textPaint.setTextSize(f);
                    requestLayout();
                }
            }
            int i2 = obtainStyledAttributes2.getInt(1, -1);
            int i3 = obtainStyledAttributes2.getInt(2, -1);
            Typeface typeface = i2 != 1 ? i2 != 2 ? i2 != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF;
            if (i3 > 0) {
                Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i3) : Typeface.create(typeface, i3);
                m3465case(defaultFromStyle);
                int i4 = (~(defaultFromStyle != null ? defaultFromStyle.getStyle() : 0)) & i3;
                textPaint.setFakeBoldText((i4 & 1) != 0);
                textPaint.setTextSkewX((i4 & 2) != 0 ? -0.25f : 0.0f);
            } else {
                textPaint.setFakeBoldText(false);
                textPaint.setTextSkewX(0.0f);
                m3465case(typeface);
            }
            if (obtainStyledAttributes2.getBoolean(14, false)) {
                this.f5885do = new C3953x0(getContext());
            } else {
                this.f5885do = null;
            }
            m3469goto(this.f5884do);
            m3467else(this.f5893for);
            obtainStyledAttributes2.recycle();
        }
        new S1(this).m2091new(attributeSet, i);
        c3970xH.m8633final();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f5887else = viewConfiguration.getScaledTouchSlop();
        this.f5895goto = viewConfiguration.getScaledMinimumFlingVelocity();
        m3468for().m1375for(attributeSet, i);
        refreshDrawableState();
        setChecked(isChecked());
    }
}
