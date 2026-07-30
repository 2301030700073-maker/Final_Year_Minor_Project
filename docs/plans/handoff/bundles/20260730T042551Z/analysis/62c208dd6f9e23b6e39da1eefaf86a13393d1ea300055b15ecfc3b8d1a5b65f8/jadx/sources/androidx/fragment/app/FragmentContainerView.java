package androidx.fragment.app;

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
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheck.R;
import defpackage.C0315Kc;
import defpackage.C3150jM;
import defpackage.Cif;
import defpackage.QK;
import defpackage.V1;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class FragmentContainerView extends FrameLayout {

    /* renamed from: do, reason: not valid java name */
    public View.OnApplyWindowInsetsListener f6852do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ArrayList<View> f6853do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f6854do;

    /* renamed from: if, reason: not valid java name */
    public ArrayList<View> f6855if;

    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if ((tag instanceof Fragment ? (Fragment) tag : null) != null) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup
    public final boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if ((tag instanceof Fragment ? (Fragment) tag : null) != null) {
            return super.addViewInLayout(view, i, layoutParams, z);
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        C3150jM m7056this = C3150jM.m7056this(null, windowInsets);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f6852do;
        C3150jM m7056this2 = onApplyWindowInsetsListener != null ? C3150jM.m7056this(null, onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets)) : QK.m1853final(this, m7056this);
        if (!m7056this2.f13676do.mo7078const()) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                QK.m1856if(getChildAt(i), m7056this2);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.f6854do && this.f6853do != null) {
            for (int i = 0; i < this.f6853do.size(); i++) {
                super.drawChild(canvas, this.f6853do.get(i), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4114do(View view) {
        ArrayList<View> arrayList = this.f6855if;
        if (arrayList == null || !arrayList.contains(view)) {
            return;
        }
        if (this.f6853do == null) {
            this.f6853do = new ArrayList<>();
        }
        this.f6853do.add(view);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        ArrayList<View> arrayList;
        if (!this.f6854do || (arrayList = this.f6853do) == null || arrayList.size() <= 0 || !this.f6853do.contains(view)) {
            return super.drawChild(canvas, view, j);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public final void endViewTransition(View view) {
        ArrayList<View> arrayList = this.f6855if;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList<View> arrayList2 = this.f6853do;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.f6854do = true;
            }
        }
        super.endViewTransition(view);
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViewsInLayout() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            m4114do(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z) {
        if (z) {
            m4114do(view);
        }
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        m4114do(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i) {
        m4114do(getChildAt(i));
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public final void removeViewInLayout(View view) {
        m4114do(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            m4114do(getChildAt(i3));
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public final void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            m4114do(getChildAt(i3));
        }
        super.removeViewsInLayout(i, i2);
    }

    @Override // android.view.ViewGroup
    public final void setLayoutTransition(LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public final void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        this.f6852do = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public final void startViewTransition(View view) {
        if (view.getParent() == this) {
            if (this.f6855if == null) {
                this.f6855if = new ArrayList<>();
            }
            this.f6855if.add(view);
        }
        super.startViewTransition(view);
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        String str;
        this.f6854do = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0315Kc.f1842try);
            if (classAttribute == null) {
                classAttribute = obtainStyledAttributes.getString(0);
                str = "android:name";
            } else {
                str = "class";
            }
            obtainStyledAttributes.recycle();
            if (classAttribute != null && !isInEditMode()) {
                throw new UnsupportedOperationException(V1.m2499else("FragmentContainerView must be within a FragmentActivity to use ", str, "=\"", classAttribute, "\""));
            }
        }
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet, FragmentManager fragmentManager) {
        super(context, attributeSet);
        View view;
        this.f6854do = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0315Kc.f1842try);
        classAttribute = classAttribute == null ? obtainStyledAttributes.getString(0) : classAttribute;
        String string = obtainStyledAttributes.getString(1);
        obtainStyledAttributes.recycle();
        int id = getId();
        Fragment m4139package = fragmentManager.m4139package(id);
        if (classAttribute != null && m4139package == null) {
            if (id <= 0) {
                throw new IllegalStateException(Cif.m6908case("FragmentContainerView must have an android:id to add Fragment ", classAttribute, string != null ? " with tag ".concat(string) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
            }
            Cconst m4144strictfp = fragmentManager.m4144strictfp();
            context.getClassLoader();
            Fragment instantiate = Fragment.instantiate(FragmentManager.this.f6860do.f881do, classAttribute, null);
            instantiate.onInflate(context, attributeSet, (Bundle) null);
            Cdo cdo = new Cdo(fragmentManager);
            ((Cpublic) cdo).f6996if = true;
            instantiate.mContainer = this;
            cdo.mo4172for(getId(), instantiate, string, 1);
            if (!((Cpublic) cdo).f6989do) {
                cdo.f6952do.m4150throws(cdo, true);
            } else {
                throw new IllegalStateException("This transaction is already being added to the back stack");
            }
        }
        Iterator it = fragmentManager.f6868do.m4183new().iterator();
        while (it.hasNext()) {
            Cwhile cwhile = (Cwhile) it.next();
            Fragment fragment = cwhile.f7052do;
            if (fragment.mContainerId == getId() && (view = fragment.mView) != null && view.getParent() == null) {
                fragment.mContainer = this;
                cwhile.m4225do();
            }
        }
    }
}
