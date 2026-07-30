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
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import b.b.b;
import b.b.e.a;
import b.b.g.C0037a0;
import b.b.g.C0055j0;
import b.b.g.U0;
import b.b.g.V0;
import b.b.g.a1;
import b.b.g.m1;
import b.e.i.q;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {
    public static final Property N = new U0(Float.class, "thumbPos");
    public static final int[] O = {R.attr.state_checked};
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public final TextPaint F;
    public ColorStateList G;
    public Layout H;
    public Layout I;
    public TransformationMethod J;
    public ObjectAnimator K;
    public final C0037a0 L;
    public final Rect M;

    /* renamed from: a, reason: collision with root package name */
    public Drawable f62a;

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f63b;

    /* renamed from: c, reason: collision with root package name */
    public PorterDuff.Mode f64c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f65d;
    public boolean e;
    public Drawable f;
    public ColorStateList g;
    public PorterDuff.Mode h;
    public boolean i;
    public boolean j;
    public int k;
    public int l;
    public int m;
    public boolean n;
    public CharSequence o;
    public CharSequence p;
    public boolean q;
    public int r;
    public int s;
    public float t;
    public float u;
    public VelocityTracker v;
    public int w;
    public float x;
    public int y;
    public int z;

    public SwitchCompat(Context context) {
        this(context, null);
    }

    public final int a() {
        return (int) (((m1.b(this) ? 1.0f - this.x : this.x) * b()) + 0.5f);
    }

    public final int b() {
        Drawable drawable = this.f;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.M;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f62a;
        Rect c2 = drawable2 != null ? C0055j0.c(drawable2) : C0055j0.f544c;
        return ((((this.y - this.A) - rect.left) - rect.right) - c2.left) - c2.right;
    }

    public final Layout c(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.J;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, this);
        }
        CharSequence charSequence2 = charSequence;
        return new StaticLayout(charSequence2, this.F, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, r2)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, RecentsState.NO_OFFSET, true);
    }

    public void d(Typeface typeface) {
        if ((this.F.getTypeface() == null || this.F.getTypeface().equals(typeface)) && (this.F.getTypeface() != null || typeface == null)) {
            return;
        }
        this.F.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        Rect rect = this.M;
        int i3 = this.B;
        int i4 = this.C;
        int i5 = this.D;
        int i6 = this.E;
        int a2 = a() + i3;
        Drawable drawable = this.f62a;
        Rect c2 = drawable != null ? C0055j0.c(drawable) : C0055j0.f544c;
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i7 = rect.left;
            a2 += i7;
            if (c2 != null) {
                int i8 = c2.left;
                if (i8 > i7) {
                    i3 += i8 - i7;
                }
                int i9 = c2.top;
                int i10 = rect.top;
                i = i9 > i10 ? (i9 - i10) + i4 : i4;
                int i11 = c2.right;
                int i12 = rect.right;
                if (i11 > i12) {
                    i5 -= i11 - i12;
                }
                int i13 = c2.bottom;
                int i14 = rect.bottom;
                if (i13 > i14) {
                    i2 = i6 - (i13 - i14);
                    this.f.setBounds(i3, i, i5, i2);
                }
            } else {
                i = i4;
            }
            i2 = i6;
            this.f.setBounds(i3, i, i5, i2);
        }
        Drawable drawable3 = this.f62a;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i15 = a2 - rect.left;
            int i16 = a2 + this.A + rect.right;
            this.f62a.setBounds(i15, i4, i16, i6);
            Drawable background = getBackground();
            if (background != null) {
                background.setHotspotBounds(i15, i4, i16, i6);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f62a;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.setHotspot(f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f62a;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.f;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!m1.b(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.y;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.m : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (m1.b(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.y;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.m : compoundPaddingRight;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f62a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.K;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.K.end();
        this.K = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(onCreateDrawableState, O);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Rect rect = this.M;
        Drawable drawable = this.f;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i = this.C;
        int i2 = this.E;
        int i3 = i + rect.top;
        int i4 = i2 - rect.bottom;
        Drawable drawable2 = this.f62a;
        if (drawable != null) {
            if (!this.n || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect c2 = C0055j0.c(drawable2);
                drawable2.copyBounds(rect);
                rect.left += c2.left;
                rect.right -= c2.right;
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
        Layout layout = (this.x > 0.5f ? 1 : (this.x == 0.5f ? 0 : -1)) > 0 ? this.H : this.I;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.G;
            if (colorStateList != null) {
                this.F.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.F.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (layout.getWidth() / 2), ((i3 + i4) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        CharSequence charSequence = isChecked() ? this.o : this.p;
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

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int width;
        int i6;
        int i7;
        int i8;
        super.onLayout(z, i, i2, i3, i4);
        int i9 = 0;
        if (this.f62a != null) {
            Rect rect = this.M;
            Drawable drawable = this.f;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect c2 = C0055j0.c(this.f62a);
            i5 = Math.max(0, c2.left - rect.left);
            i9 = Math.max(0, c2.right - rect.right);
        } else {
            i5 = 0;
        }
        if (m1.b(this)) {
            i6 = getPaddingLeft() + i5;
            width = ((this.y + i6) - i5) - i9;
        } else {
            width = (getWidth() - getPaddingRight()) - i9;
            i6 = (width - this.y) + i5 + i9;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int height = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i10 = this.z;
            int i11 = height - (i10 / 2);
            i7 = i10 + i11;
            i8 = i11;
        } else if (gravity != 80) {
            i8 = getPaddingTop();
            i7 = this.z + i8;
        } else {
            i7 = getHeight() - getPaddingBottom();
            i8 = i7 - this.z;
        }
        this.B = i6;
        this.C = i8;
        this.E = i7;
        this.D = width;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (this.q) {
            if (this.H == null) {
                this.H = c(this.o);
            }
            if (this.I == null) {
                this.I = c(this.p);
            }
        }
        Rect rect = this.M;
        Drawable drawable = this.f62a;
        int i6 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            i3 = (this.f62a.getIntrinsicWidth() - rect.left) - rect.right;
            i4 = this.f62a.getIntrinsicHeight();
        } else {
            i3 = 0;
            i4 = 0;
        }
        if (this.q) {
            i5 = (this.k * 2) + Math.max(this.H.getWidth(), this.I.getWidth());
        } else {
            i5 = 0;
        }
        this.A = Math.max(i5, i3);
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i6 = this.f.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i7 = rect.left;
        int i8 = rect.right;
        Drawable drawable3 = this.f62a;
        if (drawable3 != null) {
            Rect c2 = C0055j0.c(drawable3);
            i7 = Math.max(i7, c2.left);
            i8 = Math.max(i8, c2.right);
        }
        int max = Math.max(this.l, (this.A * 2) + i7 + i8);
        int max2 = Math.max(i6, i4);
        this.y = max;
        this.z = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.o : this.p;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0014, code lost:
    
        if (r0 != 3) goto L86;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean isChecked = isChecked();
        if (getWindowToken() == null || !q.t(this)) {
            ObjectAnimator objectAnimator = this.K;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            this.x = isChecked ? 1.0f : 0.0f;
            invalidate();
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, (Property<SwitchCompat, Float>) N, isChecked ? 1.0f : 0.0f);
        this.K = ofFloat;
        ofFloat.setDuration(250L);
        this.K.setAutoCancel(true);
        this.K.start();
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f62a || drawable == this.f;
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.android.systemui.shared.R.attr.switchStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwitchCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Typeface typeface;
        Typeface create;
        int resourceId;
        int[] iArr = b.w;
        this.f63b = null;
        this.f64c = null;
        this.f65d = false;
        this.e = false;
        this.g = null;
        this.h = null;
        this.i = false;
        this.j = false;
        this.v = VelocityTracker.obtain();
        this.M = new Rect();
        V0.a(this, getContext());
        this.F = new TextPaint(1);
        this.F.density = getResources().getDisplayMetrics().density;
        a1 a1Var = new a1(context, context.obtainStyledAttributes(attributeSet, iArr, i, 0));
        q.C(this, context, iArr, attributeSet, a1Var.f513b, i, 0);
        Drawable e = a1Var.e(2);
        this.f62a = e;
        if (e != null) {
            e.setCallback(this);
        }
        Drawable e2 = a1Var.e(11);
        this.f = e2;
        if (e2 != null) {
            e2.setCallback(this);
        }
        this.o = a1Var.l(0);
        this.p = a1Var.l(1);
        this.q = a1Var.a(3, true);
        this.k = a1Var.d(8, 0);
        this.l = a1Var.d(5, 0);
        this.m = a1Var.d(6, 0);
        this.n = a1Var.a(4, false);
        ColorStateList b2 = a1Var.b(9);
        if (b2 != null) {
            this.f63b = b2;
            this.f65d = true;
        }
        PorterDuff.Mode d2 = C0055j0.d(a1Var.h(10, -1), null);
        if (this.f64c != d2) {
            this.f64c = d2;
            this.e = true;
        }
        if ((this.f65d || this.e) && this.f62a != null && (this.f65d || this.e)) {
            Drawable mutate = this.f62a.mutate();
            this.f62a = mutate;
            if (this.f65d) {
                mutate.setTintList(this.f63b);
            }
            if (this.e) {
                this.f62a.setTintMode(this.f64c);
            }
            if (this.f62a.isStateful()) {
                this.f62a.setState(getDrawableState());
            }
        }
        ColorStateList b3 = a1Var.b(12);
        if (b3 != null) {
            this.g = b3;
            this.i = true;
        }
        PorterDuff.Mode d3 = C0055j0.d(a1Var.h(13, -1), null);
        if (this.h != d3) {
            this.h = d3;
            this.j = true;
        }
        if ((this.i || this.j) && this.f != null && (this.i || this.j)) {
            Drawable mutate2 = this.f.mutate();
            this.f = mutate2;
            if (this.i) {
                mutate2.setTintList(this.g);
            }
            if (this.j) {
                this.f.setTintMode(this.h);
            }
            if (this.f.isStateful()) {
                this.f.setState(getDrawableState());
            }
        }
        int j = a1Var.j(7, 0);
        if (j != 0) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(j, b.x);
            ColorStateList colorStateList = (!obtainStyledAttributes.hasValue(3) || (resourceId = obtainStyledAttributes.getResourceId(3, 0)) == 0 || (colorStateList = b.e.b.b.d(context, resourceId)) == null) ? obtainStyledAttributes.getColorStateList(3) : colorStateList;
            if (colorStateList != null) {
                this.G = colorStateList;
            } else {
                this.G = getTextColors();
            }
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, 0);
            if (dimensionPixelSize != 0) {
                float f = dimensionPixelSize;
                if (f != this.F.getTextSize()) {
                    this.F.setTextSize(f);
                    requestLayout();
                }
            }
            int i2 = obtainStyledAttributes.getInt(1, -1);
            int i3 = obtainStyledAttributes.getInt(2, -1);
            if (i2 == 1) {
                typeface = Typeface.SANS_SERIF;
            } else if (i2 != 2) {
                typeface = i2 != 3 ? null : Typeface.MONOSPACE;
            } else {
                typeface = Typeface.SERIF;
            }
            float f2 = RecentsState.NO_OFFSET;
            if (i3 > 0) {
                if (typeface == null) {
                    create = Typeface.defaultFromStyle(i3);
                } else {
                    create = Typeface.create(typeface, i3);
                }
                d(create);
                int i4 = (~(create != null ? create.getStyle() : 0)) & i3;
                this.F.setFakeBoldText((i4 & 1) != 0);
                this.F.setTextSkewX((2 & i4) != 0 ? -0.25f : f2);
            } else {
                this.F.setFakeBoldText(false);
                this.F.setTextSkewX(RecentsState.NO_OFFSET);
                d(typeface);
            }
            if (obtainStyledAttributes.getBoolean(14, false)) {
                this.J = new a(getContext());
            } else {
                this.J = null;
            }
            obtainStyledAttributes.recycle();
        }
        C0037a0 c0037a0 = new C0037a0(this);
        this.L = c0037a0;
        c0037a0.d(attributeSet, i);
        a1Var.f513b.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.s = viewConfiguration.getScaledTouchSlop();
        this.w = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }
}
