package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.joeykrim.rootcheck.R;
import defpackage.C3385nL;
import defpackage.E;
import defpackage.O4;
import defpackage.QK;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: do, reason: not valid java name */
    public final Drawable f5553do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f5554do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5555do;

    /* renamed from: for, reason: not valid java name */
    public final int f5556for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final Drawable f5557for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f5558for;

    /* renamed from: if, reason: not valid java name */
    public final Drawable f5559if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public View f5560if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f5561if;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        E e = new E(this);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        setBackground(e);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O4.f2541else);
        boolean z = false;
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        this.f5553do = drawable;
        Drawable drawable2 = obtainStyledAttributes.getDrawable(2);
        this.f5559if = drawable2;
        this.f5556for = obtainStyledAttributes.getDimensionPixelSize(13, -1);
        if (getId() == R.id.split_action_bar) {
            this.f5561if = true;
            this.f5557for = obtainStyledAttributes.getDrawable(1);
        }
        obtainStyledAttributes.recycle();
        if (!this.f5561if ? !(drawable != null || drawable2 != null) : this.f5557for == null) {
            z = true;
        }
        setWillNotDraw(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f5553do;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
        Drawable drawable2 = this.f5559if;
        if (drawable2 != null && drawable2.isStateful()) {
            drawable2.setState(getDrawableState());
        }
        Drawable drawable3 = this.f5557for;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        drawable3.setState(getDrawableState());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f5553do;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f5559if;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f5557for;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f5554do = findViewById(R.id.action_bar);
        this.f5560if = findViewById(R.id.action_context_bar);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f5555do || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        boolean z2 = true;
        if (this.f5561if) {
            Drawable drawable = this.f5557for;
            if (drawable != null) {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z2 = false;
            }
        } else {
            Drawable drawable2 = this.f5553do;
            if (drawable2 == null) {
                z2 = false;
            } else if (this.f5554do.getVisibility() == 0) {
                drawable2.setBounds(this.f5554do.getLeft(), this.f5554do.getTop(), this.f5554do.getRight(), this.f5554do.getBottom());
            } else {
                View view = this.f5560if;
                if (view == null || view.getVisibility() != 0) {
                    drawable2.setBounds(0, 0, 0, 0);
                } else {
                    drawable2.setBounds(this.f5560if.getLeft(), this.f5560if.getTop(), this.f5560if.getRight(), this.f5560if.getBottom());
                }
            }
            this.f5558for = false;
        }
        if (z2) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        if (this.f5554do == null && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && (i3 = this.f5556for) >= 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(i3, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
        if (this.f5554do == null) {
            return;
        }
        View.MeasureSpec.getMode(i2);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f5553do;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f5559if;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f5557for;
        if (drawable3 != null) {
            drawable3.setVisible(z, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i) {
        if (i != 0) {
            return super.startActionModeForChild(view, callback, i);
        }
        return null;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        Drawable drawable2 = this.f5553do;
        boolean z = this.f5561if;
        return (drawable == drawable2 && !z) || (drawable == this.f5559if && this.f5558for) || ((drawable == this.f5557for && z) || super.verifyDrawable(drawable));
    }
}
