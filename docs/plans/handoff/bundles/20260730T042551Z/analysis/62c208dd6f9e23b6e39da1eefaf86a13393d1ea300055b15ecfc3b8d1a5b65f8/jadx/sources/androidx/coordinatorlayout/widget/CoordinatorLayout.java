package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.customview.view.AbsSavedState;
import com.joeykrim.rootcheck.R;
import defpackage.C0686aL;
import defpackage.C2662dx;
import defpackage.C2680eE;
import defpackage.C3150jM;
import defpackage.C3385nL;
import defpackage.C3828uu;
import defpackage.C3850vF;
import defpackage.C3930we;
import defpackage.C4122zt;
import defpackage.InterfaceC0136Bv;
import defpackage.InterfaceC3710su;
import defpackage.InterfaceC3769tu;
import defpackage.QK;
import j$.util.Objects;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements InterfaceC3710su, InterfaceC3769tu {

    /* renamed from: break, reason: not valid java name */
    public static final String f6440break;

    /* renamed from: do, reason: not valid java name */
    public static final Celse f6441do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C2662dx f6442do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final ThreadLocal<Map<String, Constructor<Behavior>>> f6443do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Class<?>[] f6444do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Drawable f6445do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f6446do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewGroup.OnHierarchyChangeListener f6447do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase f6448do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f6449do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3150jM f6450do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f6451do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3828uu f6452do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3930we f6453do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f6454do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f6455do;

    /* renamed from: for, reason: not valid java name */
    public final ArrayList f6456for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f6457for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int[] f6458for;

    /* renamed from: if, reason: not valid java name */
    public View f6459if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList f6460if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f6461if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final int[] f6462if;

    /* renamed from: new, reason: not valid java name */
    public boolean f6463new;

    public static abstract class Behavior<V extends View> {
        public Behavior() {
        }

        /* renamed from: break, reason: not valid java name */
        public void mo3681break() {
        }

        /* renamed from: case, reason: not valid java name */
        public boolean mo3682case(View view, View view2) {
            return false;
        }

        /* renamed from: catch, reason: not valid java name */
        public boolean mo3683catch(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: class, reason: not valid java name */
        public boolean mo3684class(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        /* renamed from: const, reason: not valid java name */
        public boolean mo3685const(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
            return false;
        }

        /* renamed from: else, reason: not valid java name */
        public void mo3686else(Ctry ctry) {
        }

        /* renamed from: final, reason: not valid java name */
        public boolean mo3687final(View view) {
            return false;
        }

        /* renamed from: for, reason: not valid java name */
        public boolean mo3688for(View view, Rect rect) {
            return false;
        }

        /* renamed from: goto, reason: not valid java name */
        public boolean mo3689goto(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        /* renamed from: import, reason: not valid java name */
        public void mo3690import(View view, Parcelable parcelable) {
        }

        /* renamed from: native, reason: not valid java name */
        public Parcelable mo3691native(View view) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        /* renamed from: public, reason: not valid java name */
        public boolean mo3692public(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            return false;
        }

        /* renamed from: return, reason: not valid java name */
        public void mo3693return(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
        }

        /* renamed from: static, reason: not valid java name */
        public boolean mo3694static(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: super, reason: not valid java name */
        public void mo3695super(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
        }

        /* renamed from: this, reason: not valid java name */
        public void mo3696this(CoordinatorLayout coordinatorLayout, View view) {
        }

        /* renamed from: throw, reason: not valid java name */
        public void mo3697throw(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
            iArr[0] = iArr[0] + i2;
            iArr[1] = iArr[1] + i3;
        }

        /* renamed from: while, reason: not valid java name */
        public boolean mo3698while(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$case, reason: invalid class name */
    public class Ccase implements ViewTreeObserver.OnPreDrawListener {
        public Ccase() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            CoordinatorLayout.this.m3669default(0);
            return true;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$do, reason: invalid class name */
    public class Cdo implements InterfaceC0136Bv {
        public Cdo() {
        }

        @Override // defpackage.InterfaceC0136Bv
        /* renamed from: for */
        public final C3150jM mo137for(View view, C3150jM c3150jM) {
            CoordinatorLayout coordinatorLayout = CoordinatorLayout.this;
            if (!Objects.equals(coordinatorLayout.f6450do, c3150jM)) {
                coordinatorLayout.f6450do = c3150jM;
                boolean z = c3150jM.m7063try() > 0;
                coordinatorLayout.f6463new = z;
                coordinatorLayout.setWillNotDraw(!z && coordinatorLayout.getBackground() == null);
                C3150jM.Ccatch ccatch = c3150jM.f13676do;
                if (!ccatch.mo7078const()) {
                    int childCount = coordinatorLayout.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        View childAt = coordinatorLayout.getChildAt(i);
                        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                        if (childAt.getFitsSystemWindows() && ((Ctry) childAt.getLayoutParams()).f6472do != null && ccatch.mo7078const()) {
                            break;
                        }
                    }
                }
                coordinatorLayout.requestLayout();
            }
            return c3150jM;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$else, reason: invalid class name */
    public static class Celse implements Comparator<View> {
        @Override // java.util.Comparator
        public final int compare(View view, View view2) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            float m1922const = QK.Cnew.m1922const(view);
            float m1922const2 = QK.Cnew.m1922const(view2);
            if (m1922const > m1922const2) {
                return -1;
            }
            return m1922const < m1922const2 ? 1 : 0;
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$for, reason: invalid class name */
    public @interface Cfor {
        Class<? extends Behavior> value();
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: for, reason: not valid java name */
        Behavior mo3699for();
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$new, reason: invalid class name */
    public class Cnew implements ViewGroup.OnHierarchyChangeListener {
        public Cnew() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f6447do;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout coordinatorLayout = CoordinatorLayout.this;
            coordinatorLayout.m3669default(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = coordinatorLayout.f6447do;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f6440break = r0 != null ? r0.getName() : null;
        f6441do = new Celse();
        f6444do = new Class[]{Context.class, AttributeSet.class};
        f6443do = new ThreadLocal<>();
        f6442do = new C2662dx(12);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.coordinatorLayoutStyle);
    }

    /* renamed from: abstract, reason: not valid java name */
    public static void m3664abstract(View view, int i) {
        Ctry ctry = (Ctry) view.getLayoutParams();
        int i2 = ctry.f6474else;
        if (i2 != i) {
            QK.m1849class(view, i - i2);
            ctry.f6474else = i;
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public static void m3665continue(View view, int i) {
        Ctry ctry = (Ctry) view.getLayoutParams();
        int i2 = ctry.f6477goto;
        if (i2 != i) {
            QK.m1850const(view, i - i2);
            ctry.f6477goto = i;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Rect m3666do() {
        Rect rect = (Rect) f6442do.mo4867do();
        return rect == null ? new Rect() : rect;
    }

    /* renamed from: static, reason: not valid java name */
    public static void m3667static(int i, Rect rect, Rect rect2, Ctry ctry, int i2, int i3) {
        int i4 = ctry.f6469do;
        if (i4 == 0) {
            i4 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i4, i);
        int i5 = ctry.f6478if;
        if ((i5 & 7) == 0) {
            i5 |= 8388611;
        }
        if ((i5 & 112) == 0) {
            i5 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i5, i);
        int i6 = absoluteGravity & 7;
        int i7 = absoluteGravity & 112;
        int i8 = absoluteGravity2 & 7;
        int i9 = absoluteGravity2 & 112;
        int width = i8 != 1 ? i8 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int height = i9 != 16 ? i9 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i6 == 1) {
            width -= i2 / 2;
        } else if (i6 != 5) {
            width -= i2;
        }
        if (i7 == 16) {
            height -= i3 / 2;
        } else if (i7 != 80) {
            height -= i3;
        }
        rect2.set(width, height, i2 + width, i3 + height);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: switch, reason: not valid java name */
    public static Ctry m3668switch(View view) {
        Ctry ctry = (Ctry) view.getLayoutParams();
        if (!ctry.f6473do) {
            if (view instanceof Cif) {
                ctry.m3701if(((Cif) view).mo3699for());
                ctry.f6473do = true;
            } else {
                Cfor cfor = null;
                for (Class<?> cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                    cfor = (Cfor) cls.getAnnotation(Cfor.class);
                    if (cfor != null) {
                        break;
                    }
                }
                if (cfor != null) {
                    try {
                        ctry.m3701if(cfor.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception unused) {
                        cfor.value().getClass();
                    }
                }
                ctry.f6473do = true;
            }
        }
        return ctry;
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: catch */
    public final void mo3372catch(View view, int i, int i2, int[] iArr, int i3) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                Ctry ctry = (Ctry) childAt.getLayoutParams();
                if (ctry.m3700do(i3) && (behavior = ctry.f6472do) != null) {
                    int[] iArr2 = this.f6455do;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.mo3695super(this, childAt, view, i, i2, iArr2, i3);
                    int[] iArr3 = this.f6455do;
                    i4 = i > 0 ? Math.max(i4, iArr3[0]) : Math.min(i4, iArr3[0]);
                    i5 = i2 > 0 ? Math.max(i5, iArr3[1]) : Math.min(i5, iArr3[1]);
                    z = true;
                }
            }
        }
        iArr[0] = i4;
        iArr[1] = i5;
        if (z) {
            m3669default(1);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof Ctry) && super.checkLayoutParams(layoutParams);
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: class */
    public final void mo3373class(View view, int i) {
        C3828uu c3828uu = this.f6452do;
        if (i == 1) {
            c3828uu.f15961if = 0;
        } else {
            c3828uu.f15960do = 0;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            Ctry ctry = (Ctry) childAt.getLayoutParams();
            if (ctry.m3700do(i)) {
                Behavior behavior = ctry.f6472do;
                if (behavior != null) {
                    behavior.mo3693return(this, childAt, view, i);
                }
                if (i == 0) {
                    ctry.f6476for = false;
                } else if (i == 1) {
                    ctry.f6482new = false;
                }
                ctry.f6484try = false;
            }
        }
        this.f6459if = null;
    }

    @Override // defpackage.InterfaceC3769tu
    /* renamed from: const */
    public final void mo3374const(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean z = false;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                Ctry ctry = (Ctry) childAt.getLayoutParams();
                if (ctry.m3700do(i5) && (behavior = ctry.f6472do) != null) {
                    int[] iArr2 = this.f6455do;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.mo3697throw(this, childAt, i2, i3, i4, iArr2);
                    i6 = i3 > 0 ? Math.max(i6, iArr2[0]) : Math.min(i6, iArr2[0]);
                    i7 = i4 > 0 ? Math.max(i7, iArr2[1]) : Math.min(i7, iArr2[1]);
                    z = true;
                }
            }
        }
        iArr[0] = iArr[0] + i6;
        iArr[1] = iArr[1] + i7;
        if (z) {
            m3669default(1);
        }
    }

    /* renamed from: default, reason: not valid java name */
    public final void m3669default(int i) {
        int i2;
        Rect rect;
        int i3;
        ArrayList arrayList;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int width;
        int i4;
        int i5;
        int i6;
        int height;
        int i7;
        int i8;
        int i9;
        int i10;
        Ctry ctry;
        ArrayList arrayList2;
        int i11;
        Rect rect2;
        int i12;
        View view;
        C2662dx c2662dx;
        Ctry ctry2;
        int i13;
        boolean z5;
        Behavior behavior;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList3 = this.f6451do;
        int size = arrayList3.size();
        Rect m3666do = m3666do();
        Rect m3666do2 = m3666do();
        Rect m3666do3 = m3666do();
        int i14 = i;
        int i15 = 0;
        while (true) {
            C2662dx c2662dx2 = f6442do;
            if (i15 >= size) {
                Rect rect3 = m3666do3;
                m3666do.setEmpty();
                c2662dx2.mo4868if(m3666do);
                m3666do2.setEmpty();
                c2662dx2.mo4868if(m3666do2);
                rect3.setEmpty();
                c2662dx2.mo4868if(rect3);
                return;
            }
            View view2 = (View) arrayList3.get(i15);
            Ctry ctry3 = (Ctry) view2.getLayoutParams();
            if (i14 == 0 && view2.getVisibility() == 8) {
                arrayList = arrayList3;
                i3 = size;
                rect = m3666do3;
                i2 = i15;
            } else {
                int i16 = 0;
                while (i16 < i15) {
                    if (ctry3.f6479if == ((View) arrayList3.get(i16))) {
                        Ctry ctry4 = (Ctry) view2.getLayoutParams();
                        if (ctry4.f6471do != null) {
                            Rect m3666do4 = m3666do();
                            Rect m3666do5 = m3666do();
                            arrayList2 = arrayList3;
                            Rect m3666do6 = m3666do();
                            i10 = i16;
                            m3677return(m3666do4, ctry4.f6471do);
                            m3673native(view2, m3666do5, false);
                            int measuredWidth = view2.getMeasuredWidth();
                            i11 = size;
                            int measuredHeight = view2.getMeasuredHeight();
                            i12 = i15;
                            ctry = ctry3;
                            view = view2;
                            rect2 = m3666do3;
                            c2662dx = c2662dx2;
                            m3667static(layoutDirection, m3666do4, m3666do6, ctry4, measuredWidth, measuredHeight);
                            if (m3666do6.left == m3666do5.left && m3666do6.top == m3666do5.top) {
                                ctry2 = ctry4;
                                i13 = measuredWidth;
                                z5 = false;
                            } else {
                                ctry2 = ctry4;
                                i13 = measuredWidth;
                                z5 = true;
                            }
                            m3679throw(ctry2, m3666do6, i13, measuredHeight);
                            int i17 = m3666do6.left - m3666do5.left;
                            int i18 = m3666do6.top - m3666do5.top;
                            if (i17 != 0) {
                                QK.m1849class(view, i17);
                            }
                            if (i18 != 0) {
                                QK.m1850const(view, i18);
                            }
                            if (z5 && (behavior = ctry2.f6472do) != null) {
                                behavior.mo3689goto(this, view, ctry2.f6471do);
                            }
                            m3666do4.setEmpty();
                            c2662dx.mo4868if(m3666do4);
                            m3666do5.setEmpty();
                            c2662dx.mo4868if(m3666do5);
                            m3666do6.setEmpty();
                            c2662dx.mo4868if(m3666do6);
                            i16 = i10 + 1;
                            c2662dx2 = c2662dx;
                            view2 = view;
                            arrayList3 = arrayList2;
                            size = i11;
                            i15 = i12;
                            ctry3 = ctry;
                            m3666do3 = rect2;
                        }
                    }
                    i10 = i16;
                    ctry = ctry3;
                    arrayList2 = arrayList3;
                    i11 = size;
                    rect2 = m3666do3;
                    i12 = i15;
                    view = view2;
                    c2662dx = c2662dx2;
                    i16 = i10 + 1;
                    c2662dx2 = c2662dx;
                    view2 = view;
                    arrayList3 = arrayList2;
                    size = i11;
                    i15 = i12;
                    ctry3 = ctry;
                    m3666do3 = rect2;
                }
                Ctry ctry5 = ctry3;
                ArrayList arrayList4 = arrayList3;
                int i19 = size;
                Rect rect4 = m3666do3;
                i2 = i15;
                View view3 = view2;
                C2662dx c2662dx3 = c2662dx2;
                m3673native(view3, m3666do2, true);
                if (ctry5.f6483try != 0 && !m3666do2.isEmpty()) {
                    int absoluteGravity = Gravity.getAbsoluteGravity(ctry5.f6483try, layoutDirection);
                    int i20 = absoluteGravity & 112;
                    if (i20 == 48) {
                        m3666do.top = Math.max(m3666do.top, m3666do2.bottom);
                    } else if (i20 == 80) {
                        m3666do.bottom = Math.max(m3666do.bottom, getHeight() - m3666do2.top);
                    }
                    int i21 = absoluteGravity & 7;
                    if (i21 == 3) {
                        m3666do.left = Math.max(m3666do.left, m3666do2.right);
                    } else if (i21 == 5) {
                        m3666do.right = Math.max(m3666do.right, getWidth() - m3666do2.left);
                    }
                }
                if (ctry5.f6468case != 0 && view3.getVisibility() == 0) {
                    WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
                    if (view3.isLaidOut() && view3.getWidth() > 0 && view3.getHeight() > 0) {
                        Ctry ctry6 = (Ctry) view3.getLayoutParams();
                        Behavior behavior2 = ctry6.f6472do;
                        Rect m3666do7 = m3666do();
                        Rect m3666do8 = m3666do();
                        m3666do8.set(view3.getLeft(), view3.getTop(), view3.getRight(), view3.getBottom());
                        if (behavior2 == null || !behavior2.mo3688for(view3, m3666do7)) {
                            m3666do7.set(m3666do8);
                        } else if (!m3666do8.contains(m3666do7)) {
                            throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + m3666do7.toShortString() + " | Bounds:" + m3666do8.toShortString());
                        }
                        m3666do8.setEmpty();
                        c2662dx3.mo4868if(m3666do8);
                        if (m3666do7.isEmpty()) {
                            m3666do7.setEmpty();
                            c2662dx3.mo4868if(m3666do7);
                        } else {
                            int absoluteGravity2 = Gravity.getAbsoluteGravity(ctry6.f6468case, layoutDirection);
                            if ((absoluteGravity2 & 48) != 48 || (i8 = (m3666do7.top - ((ViewGroup.MarginLayoutParams) ctry6).topMargin) - ctry6.f6477goto) >= (i9 = m3666do.top)) {
                                z2 = false;
                            } else {
                                m3665continue(view3, i9 - i8);
                                z2 = true;
                            }
                            if ((absoluteGravity2 & 80) == 80 && (height = ((getHeight() - m3666do7.bottom) - ((ViewGroup.MarginLayoutParams) ctry6).bottomMargin) + ctry6.f6477goto) < (i7 = m3666do.bottom)) {
                                m3665continue(view3, height - i7);
                                z2 = true;
                            }
                            if (!z2) {
                                m3665continue(view3, 0);
                            }
                            if ((absoluteGravity2 & 3) != 3 || (i5 = (m3666do7.left - ((ViewGroup.MarginLayoutParams) ctry6).leftMargin) - ctry6.f6474else) >= (i6 = m3666do.left)) {
                                z3 = false;
                            } else {
                                m3664abstract(view3, i6 - i5);
                                z3 = true;
                            }
                            if ((absoluteGravity2 & 5) != 5 || (width = ((getWidth() - m3666do7.right) - ((ViewGroup.MarginLayoutParams) ctry6).rightMargin) + ctry6.f6474else) >= (i4 = m3666do.right)) {
                                z4 = z3;
                            } else {
                                m3664abstract(view3, width - i4);
                                z4 = true;
                            }
                            if (!z4) {
                                m3664abstract(view3, 0);
                            }
                            m3666do7.setEmpty();
                            c2662dx3.mo4868if(m3666do7);
                        }
                    }
                }
                if (i != 2) {
                    rect = rect4;
                    rect.set(((Ctry) view3.getLayoutParams()).f6470do);
                    if (rect.equals(m3666do2)) {
                        arrayList = arrayList4;
                        i3 = i19;
                        i14 = i;
                    } else {
                        ((Ctry) view3.getLayoutParams()).f6470do.set(m3666do2);
                    }
                } else {
                    rect = rect4;
                }
                int i22 = i2 + 1;
                i3 = i19;
                while (true) {
                    arrayList = arrayList4;
                    if (i22 >= i3) {
                        break;
                    }
                    View view4 = (View) arrayList.get(i22);
                    Ctry ctry7 = (Ctry) view4.getLayoutParams();
                    Behavior behavior3 = ctry7.f6472do;
                    if (behavior3 != null && behavior3.mo3682case(view4, view3)) {
                        if (i == 0 && ctry7.f6484try) {
                            ctry7.f6484try = false;
                        } else {
                            if (i != 2) {
                                z = behavior3.mo3689goto(this, view4, view3);
                            } else {
                                behavior3.mo3696this(this, view3);
                                z = true;
                            }
                            if (i == 1) {
                                ctry7.f6484try = z;
                            }
                        }
                    }
                    i22++;
                    arrayList4 = arrayList;
                }
                i14 = i;
            }
            i15 = i2 + 1;
            m3666do3 = rect;
            size = i3;
            arrayList3 = arrayList;
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        Behavior behavior = ((Ctry) view.getLayoutParams()).f6472do;
        if (behavior != null) {
            behavior.getClass();
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        boolean z = false;
        Drawable drawable = this.f6445do;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b2  */
    /* renamed from: extends, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3670extends(android.view.View r13, int r14) {
        /*
            Method dump skipped, instructions count: 431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.m3670extends(android.view.View, int):void");
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: final */
    public final void mo3377final(View view, int i, int i2, int i3, int i4, int i5) {
        mo3374const(view, i, i2, i3, i4, 0, this.f6462if);
    }

    /* renamed from: finally, reason: not valid java name */
    public final void m3671finally(View view, int i, int i2, int i3) {
        measureChildWithMargins(view, i, i2, i3, 0);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new Ctry();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new Ctry(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public final int getNestedScrollAxes() {
        C3828uu c3828uu = this.f6452do;
        return c3828uu.f15961if | c3828uu.f15960do;
    }

    @Override // android.view.View
    public final int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public final int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    /* renamed from: import, reason: not valid java name */
    public final void m3672import(View view) {
        List list = (List) ((C2680eE) this.f6453do.f16375if).getOrDefault(view, null);
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            View view2 = (View) list.get(i);
            Behavior behavior = ((Ctry) view2.getLayoutParams()).f6472do;
            if (behavior != null) {
                behavior.mo3689goto(this, view2, view);
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public final void m3673native(View view, Rect rect, boolean z) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            m3677return(rect, view);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        m3675private(false);
        if (this.f6457for) {
            if (this.f6448do == null) {
                this.f6448do = new Ccase();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f6448do);
        }
        if (this.f6450do == null) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (getFitsSystemWindows()) {
                QK.Cfor.m1903for(this);
            }
        }
        this.f6461if = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m3675private(false);
        if (this.f6457for && this.f6448do != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f6448do);
        }
        View view = this.f6459if;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f6461if = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable drawable;
        super.onDraw(canvas);
        if (!this.f6463new || (drawable = this.f6445do) == null) {
            return;
        }
        C3150jM c3150jM = this.f6450do;
        int m7063try = c3150jM != null ? c3150jM.m7063try() : 0;
        if (m7063try > 0) {
            drawable.setBounds(0, 0, getWidth(), m7063try);
            drawable.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m3675private(true);
        }
        boolean m3674package = m3674package(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            m3675private(true);
        }
        return m3674package;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Behavior behavior;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList = this.f6451do;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = (View) arrayList.get(i5);
            if (view.getVisibility() != 8 && ((behavior = ((Ctry) view.getLayoutParams()).f6472do) == null || !behavior.mo3684class(this, view, layoutDirection))) {
                m3670extends(view, layoutDirection);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:193:0x0351, code lost:
    
        if (r0.mo3685const(r31, r20, r25, r16, r26) == false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x015e, code lost:
    
        throw new java.lang.IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0075, code lost:
    
        if (r12 != false) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:181:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x015f A[SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r32, int r33) {
        /*
            Method dump skipped, instructions count: 968
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                Ctry ctry = (Ctry) childAt.getLayoutParams();
                if (ctry.m3700do(0)) {
                    Behavior behavior = ctry.f6472do;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean z = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                Ctry ctry = (Ctry) childAt.getLayoutParams();
                if (ctry.m3700do(0) && (behavior = ctry.f6472do) != null) {
                    z |= behavior.mo3687final(view);
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo3372catch(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        mo3377final(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        mo3385super(view, view2, i, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(((AbsSavedState) savedState).f6568do);
        SparseArray<Parcelable> sparseArray = savedState.f6464do;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior behavior = m3668switch(childAt).f6472do;
            if (id != -1 && behavior != null && (parcelable2 = sparseArray.get(id)) != null) {
                behavior.mo3690import(childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable mo3691native;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior behavior = ((Ctry) childAt.getLayoutParams()).f6472do;
            if (id != -1 && behavior != null && (mo3691native = behavior.mo3691native(childAt)) != null) {
                sparseArray.append(id, mo3691native);
            }
        }
        savedState.f6464do = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        return mo3389while(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        mo3373class(view, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if (r3 != false) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r18.getActionMasked()
            android.view.View r3 = r0.f6446do
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L15
            boolean r3 = r0.m3674package(r1, r4)
            if (r3 == 0) goto L29
            goto L16
        L15:
            r3 = 0
        L16:
            android.view.View r6 = r0.f6446do
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$try r6 = (androidx.coordinatorlayout.widget.CoordinatorLayout.Ctry) r6
            androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r6 = r6.f6472do
            if (r6 == 0) goto L29
            android.view.View r7 = r0.f6446do
            boolean r6 = r6.mo3694static(r0, r7, r1)
            goto L2a
        L29:
            r6 = 0
        L2a:
            android.view.View r7 = r0.f6446do
            r8 = 0
            if (r7 != 0) goto L35
            boolean r1 = super.onTouchEvent(r18)
            r6 = r6 | r1
            goto L48
        L35:
            if (r3 == 0) goto L48
            long r11 = android.os.SystemClock.uptimeMillis()
            r13 = 3
            r14 = 0
            r15 = 0
            r16 = 0
            r9 = r11
            android.view.MotionEvent r8 = android.view.MotionEvent.obtain(r9, r11, r13, r14, r15, r16)
            super.onTouchEvent(r8)
        L48:
            if (r8 == 0) goto L4d
            r8.recycle()
        L4d:
            if (r2 == r4) goto L52
            r1 = 3
            if (r2 != r1) goto L55
        L52:
            r0.m3675private(r5)
        L55:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: package, reason: not valid java name */
    public final boolean m3674package(MotionEvent motionEvent, int i) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        ArrayList arrayList = this.f6460if;
        arrayList.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            arrayList.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i2) : i2));
        }
        Celse celse = f6441do;
        if (celse != null) {
            Collections.sort(arrayList, celse);
        }
        int size = arrayList.size();
        MotionEvent motionEvent2 = null;
        boolean z2 = false;
        boolean z3 = false;
        for (int i3 = 0; i3 < size; i3++) {
            View view = (View) arrayList.get(i3);
            Ctry ctry = (Ctry) view.getLayoutParams();
            Behavior behavior = ctry.f6472do;
            if (!(z2 || z3) || actionMasked == 0) {
                if (!z2 && behavior != null) {
                    if (i == 0) {
                        z2 = behavior.mo3683catch(this, view, motionEvent);
                    } else if (i == 1) {
                        z2 = behavior.mo3694static(this, view, motionEvent);
                    }
                    if (z2) {
                        this.f6446do = view;
                    }
                }
                if (ctry.f6472do == null) {
                    ctry.f6480if = false;
                }
                boolean z4 = ctry.f6480if;
                if (z4) {
                    z = true;
                } else {
                    z = z4 | false;
                    ctry.f6480if = z;
                }
                z3 = z && !z4;
                if (z && !z3) {
                    break;
                }
            } else if (behavior != null) {
                if (motionEvent2 == null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i == 0) {
                    behavior.mo3683catch(this, view, motionEvent2);
                } else if (i == 1) {
                    behavior.mo3694static(this, view, motionEvent2);
                }
            }
        }
        arrayList.clear();
        return z2;
    }

    /* renamed from: private, reason: not valid java name */
    public final void m3675private(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            Behavior behavior = ((Ctry) childAt.getLayoutParams()).f6472do;
            if (behavior != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    behavior.mo3683catch(this, childAt, obtain);
                } else {
                    behavior.mo3694static(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((Ctry) getChildAt(i2).getLayoutParams()).f6480if = false;
        }
        this.f6446do = null;
        this.f6454do = false;
    }

    /* renamed from: public, reason: not valid java name */
    public final ArrayList m3676public(View view) {
        C2680eE c2680eE = (C2680eE) this.f6453do.f16375if;
        int i = c2680eE.f12632for;
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < i; i2++) {
            ArrayList arrayList2 = (ArrayList) c2680eE.m6524break(i2);
            if (arrayList2 != null && arrayList2.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(c2680eE.m6527goto(i2));
            }
        }
        ArrayList arrayList3 = this.f6456for;
        arrayList3.clear();
        if (arrayList != null) {
            arrayList3.addAll(arrayList);
        }
        return arrayList3;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        Behavior behavior = ((Ctry) view.getLayoutParams()).f6472do;
        if (behavior == null || !behavior.mo3698while(this, view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.f6454do) {
            return;
        }
        m3675private(false);
        this.f6454do = true;
    }

    /* renamed from: return, reason: not valid java name */
    public final void m3677return(Rect rect, View view) {
        ThreadLocal<Matrix> threadLocal = C0686aL.f4941do;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal<Matrix> threadLocal2 = C0686aL.f4941do;
        Matrix matrix = threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        C0686aL.m3120do(this, view, matrix);
        ThreadLocal<RectF> threadLocal3 = C0686aL.f4942if;
        RectF rectF = threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    @Override // android.view.View
    public final void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        m3678strictfp();
    }

    @Override // android.view.ViewGroup
    public final void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f6447do = onHierarchyChangeListener;
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f6445do;
        if (drawable == null || drawable.isVisible() == z) {
            return;
        }
        drawable.setVisible(z, false);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final void m3678strictfp() {
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        if (!getFitsSystemWindows()) {
            QK.Cnew.m1935return(this, null);
            return;
        }
        if (this.f6449do == null) {
            this.f6449do = new Cdo();
        }
        QK.Cnew.m1935return(this, this.f6449do);
        setSystemUiVisibility(1280);
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: super */
    public final void mo3385super(View view, View view2, int i, int i2) {
        C3828uu c3828uu = this.f6452do;
        if (i2 == 1) {
            c3828uu.f15961if = i;
        } else {
            c3828uu.f15960do = i;
        }
        this.f6459if = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            ((Ctry) getChildAt(i3).getLayoutParams()).getClass();
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m3679throw(Ctry ctry, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) ctry).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - ((ViewGroup.MarginLayoutParams) ctry).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) ctry).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - ((ViewGroup.MarginLayoutParams) ctry).bottomMargin));
        rect.set(max, max2, i + max, i2 + max2);
    }

    /* renamed from: throws, reason: not valid java name */
    public final boolean m3680throws(View view, int i, int i2) {
        C2662dx c2662dx = f6442do;
        Rect m3666do = m3666do();
        m3677return(m3666do, view);
        try {
            return m3666do.contains(i, i2);
        } finally {
            m3666do.setEmpty();
            c2662dx.mo4868if(m3666do);
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f6445do;
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: while */
    public final boolean mo3389while(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                Ctry ctry = (Ctry) childAt.getLayoutParams();
                Behavior behavior = ctry.f6472do;
                if (behavior != null) {
                    boolean mo3692public = behavior.mo3692public(this, childAt, view, view2, i, i2);
                    z |= mo3692public;
                    if (i2 == 0) {
                        ctry.f6476for = mo3692public;
                    } else if (i2 == 1) {
                        ctry.f6482new = mo3692public;
                    }
                } else if (i2 == 0) {
                    ctry.f6476for = false;
                } else if (i2 == 1) {
                    ctry.f6482new = false;
                }
            }
        }
        return z;
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6451do = new ArrayList();
        this.f6453do = new C3930we();
        this.f6460if = new ArrayList();
        this.f6456for = new ArrayList();
        this.f6455do = new int[2];
        this.f6462if = new int[2];
        this.f6452do = new C3828uu();
        int[] iArr = C3850vF.f16047for;
        TypedArray obtainStyledAttributes = i == 0 ? context.obtainStyledAttributes(attributeSet, iArr, 0, R.style.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            if (i == 0) {
                saveAttributeDataForStyleable(context, iArr, attributeSet, obtainStyledAttributes, 0, R.style.Widget_Support_CoordinatorLayout);
            } else {
                saveAttributeDataForStyleable(context, iArr, attributeSet, obtainStyledAttributes, i, 0);
            }
        }
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            int[] intArray = resources.getIntArray(resourceId);
            this.f6458for = intArray;
            float f = resources.getDisplayMetrics().density;
            int length = intArray.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.f6458for[i2] = (int) (r12[i2] * f);
            }
        }
        this.f6445do = obtainStyledAttributes.getDrawable(1);
        obtainStyledAttributes.recycle();
        m3678strictfp();
        super.setOnHierarchyChangeListener(new Cnew());
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof Ctry ? new Ctry((Ctry) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new Ctry((ViewGroup.MarginLayoutParams) layoutParams) : new Ctry(layoutParams);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public SparseArray<Parcelable> f6464do;

        /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$SavedState$do, reason: invalid class name */
        public static class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
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

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.f6464do = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.f6464do.append(iArr[i], readParcelableArray[i]);
            }
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(super.f6568do, i);
            SparseArray<Parcelable> sparseArray = this.f6464do;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.f6464do.keyAt(i2);
                parcelableArr[i2] = this.f6464do.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$try, reason: invalid class name */
    public static class Ctry extends ViewGroup.MarginLayoutParams {

        /* renamed from: case, reason: not valid java name */
        public int f6468case;

        /* renamed from: do, reason: not valid java name */
        public final int f6469do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Rect f6470do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public View f6471do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Behavior f6472do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f6473do;

        /* renamed from: else, reason: not valid java name */
        public int f6474else;

        /* renamed from: for, reason: not valid java name */
        public final int f6475for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public boolean f6476for;

        /* renamed from: goto, reason: not valid java name */
        public int f6477goto;

        /* renamed from: if, reason: not valid java name */
        public int f6478if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public View f6479if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f6480if;

        /* renamed from: new, reason: not valid java name */
        public final int f6481new;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public boolean f6482new;

        /* renamed from: try, reason: not valid java name */
        public int f6483try;

        /* renamed from: try, reason: not valid java name and collision with other field name */
        public boolean f6484try;

        public Ctry() {
            super(-2, -2);
            this.f6473do = false;
            this.f6469do = 0;
            this.f6478if = 0;
            this.f6475for = -1;
            this.f6481new = -1;
            this.f6483try = 0;
            this.f6468case = 0;
            this.f6470do = new Rect();
        }

        /* renamed from: do, reason: not valid java name */
        public final boolean m3700do(int i) {
            if (i == 0) {
                return this.f6476for;
            }
            if (i != 1) {
                return false;
            }
            return this.f6482new;
        }

        /* renamed from: if, reason: not valid java name */
        public final void m3701if(Behavior behavior) {
            Behavior behavior2 = this.f6472do;
            if (behavior2 != behavior) {
                if (behavior2 != null) {
                    behavior2.mo3681break();
                }
                this.f6472do = behavior;
                this.f6473do = true;
                if (behavior != null) {
                    behavior.mo3686else(this);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Ctry(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            Behavior newInstance;
            this.f6473do = false;
            this.f6469do = 0;
            this.f6478if = 0;
            this.f6475for = -1;
            this.f6481new = -1;
            this.f6483try = 0;
            this.f6468case = 0;
            this.f6470do = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3850vF.f16052new);
            this.f6469do = obtainStyledAttributes.getInteger(0, 0);
            this.f6481new = obtainStyledAttributes.getResourceId(1, -1);
            this.f6478if = obtainStyledAttributes.getInteger(2, 0);
            this.f6475for = obtainStyledAttributes.getInteger(6, -1);
            this.f6483try = obtainStyledAttributes.getInt(5, 0);
            this.f6468case = obtainStyledAttributes.getInt(4, 0);
            boolean hasValue = obtainStyledAttributes.hasValue(3);
            this.f6473do = hasValue;
            if (hasValue) {
                String string = obtainStyledAttributes.getString(3);
                String str = CoordinatorLayout.f6440break;
                if (TextUtils.isEmpty(string)) {
                    newInstance = null;
                } else {
                    if (string.startsWith(".")) {
                        string = context.getPackageName() + string;
                    } else if (string.indexOf(46) < 0) {
                        String str2 = CoordinatorLayout.f6440break;
                        if (!TextUtils.isEmpty(str2)) {
                            string = str2 + '.' + string;
                        }
                    }
                    try {
                        ThreadLocal<Map<String, Constructor<Behavior>>> threadLocal = CoordinatorLayout.f6443do;
                        Map<String, Constructor<Behavior>> map = threadLocal.get();
                        if (map == null) {
                            map = new HashMap<>();
                            threadLocal.set(map);
                        }
                        Constructor<Behavior> constructor = map.get(string);
                        if (constructor == null) {
                            constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.f6444do);
                            constructor.setAccessible(true);
                            map.put(string, constructor);
                        }
                        newInstance = constructor.newInstance(context, attributeSet);
                    } catch (Exception e) {
                        throw new RuntimeException(C4122zt.m8824for("Could not inflate Behavior subclass ", string), e);
                    }
                }
                this.f6472do = newInstance;
            }
            obtainStyledAttributes.recycle();
            Behavior behavior = this.f6472do;
            if (behavior != null) {
                behavior.mo3686else(this);
            }
        }

        public Ctry(Ctry ctry) {
            super((ViewGroup.MarginLayoutParams) ctry);
            this.f6473do = false;
            this.f6469do = 0;
            this.f6478if = 0;
            this.f6475for = -1;
            this.f6481new = -1;
            this.f6483try = 0;
            this.f6468case = 0;
            this.f6470do = new Rect();
        }

        public Ctry(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f6473do = false;
            this.f6469do = 0;
            this.f6478if = 0;
            this.f6475for = -1;
            this.f6481new = -1;
            this.f6483try = 0;
            this.f6468case = 0;
            this.f6470do = new Rect();
        }

        public Ctry(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f6473do = false;
            this.f6469do = 0;
            this.f6478if = 0;
            this.f6475for = -1;
            this.f6481new = -1;
            this.f6483try = 0;
            this.f6468case = 0;
            this.f6470do = new Rect();
        }
    }
}
