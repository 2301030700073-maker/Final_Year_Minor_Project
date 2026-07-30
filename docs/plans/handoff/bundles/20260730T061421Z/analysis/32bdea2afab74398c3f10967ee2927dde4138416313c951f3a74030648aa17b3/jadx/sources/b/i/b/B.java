package b.i.b;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.android.systemui.shared.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class B extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f829a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f830b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f831c;

    public B(Context context, AttributeSet attributeSet, X x) {
        super(context, attributeSet);
        this.f831c = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.i.a.f828b);
        classAttribute = classAttribute == null ? obtainStyledAttributes.getString(0) : classAttribute;
        String string = obtainStyledAttributes.getString(1);
        obtainStyledAttributes.recycle();
        int id = getId();
        r G = x.G(id);
        if (classAttribute == null || G != null) {
            return;
        }
        if (id <= 0) {
            throw new IllegalStateException("FragmentContainerView must have an android:id to add Fragment " + classAttribute + (string != null ? c.a.c.a.a.e(" with tag ", string) : ""));
        }
        L J = x.J();
        context.getClassLoader();
        r a2 = J.a(classAttribute);
        a2.onInflate(context, attributeSet, (Bundle) null);
        C0096a c0096a = new C0096a(x);
        c0096a.p = true;
        a2.mContainer = this;
        c0096a.f(getId(), a2, string, 1);
        if (c0096a.g) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        c0096a.h = false;
        X x2 = c0096a.r;
        if (x2.q == null || x2.F) {
            return;
        }
        x2.B(true);
        if (c0096a.a(x2.H, x2.I)) {
            x2.f880b = true;
            try {
                x2.Y(x2.H, x2.I);
            } finally {
                x2.f();
            }
        }
        x2.i0();
        x2.x();
        x2.f881c.b();
    }

    public final void a(View view) {
        ArrayList arrayList;
        if (view.getAnimation() != null || ((arrayList = this.f830b) != null && arrayList.contains(view))) {
            if (this.f829a == null) {
                this.f829a = new ArrayList();
            }
            this.f829a.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if ((tag instanceof r ? (r) tag : null) != null) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup
    public boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if ((tag instanceof r ? (r) tag : null) != null) {
            return super.addViewInLayout(view, i, layoutParams, z);
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.f831c && this.f829a != null) {
            for (int i = 0; i < this.f829a.size(); i++) {
                super.drawChild(canvas, (View) this.f829a.get(i), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        ArrayList arrayList;
        if (!this.f831c || (arrayList = this.f829a) == null || arrayList.size() <= 0 || !this.f829a.contains(view)) {
            return super.drawChild(canvas, view, j);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(View view) {
        ArrayList arrayList = this.f830b;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList arrayList2 = this.f829a;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.f831c = true;
            }
        }
        super.endViewTransition(view);
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        for (int i = 0; i < getChildCount(); i++) {
            getChildAt(i).dispatchApplyWindowInsets(new WindowInsets(windowInsets));
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            a(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z) {
        if (z) {
            a(view);
        }
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i) {
        a(getChildAt(i));
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            a(getChildAt(i3));
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            a(getChildAt(i3));
        }
        super.removeViewsInLayout(i, i2);
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(View view) {
        if (view.getParent() == this) {
            if (this.f830b == null) {
                this.f830b = new ArrayList();
            }
            this.f830b.add(view);
        }
        super.startViewTransition(view);
    }
}
