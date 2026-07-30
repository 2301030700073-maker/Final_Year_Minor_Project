package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.widget.Ccatch;
import androidx.recyclerview.widget.Cconst;
import androidx.recyclerview.widget.Cdo;
import androidx.recyclerview.widget.Cif;
import androidx.recyclerview.widget.Cpackage;
import androidx.recyclerview.widget.Cprivate;
import androidx.recyclerview.widget.Cthrows;
import com.facebook.ads.AdError;
import com.facebook.internal.Utility;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.api.Api;
import defpackage.C0721ax;
import defpackage.C2626dI;
import defpackage.C2680eE;
import defpackage.C3385nL;
import defpackage.C3651ru;
import defpackage.C3813uf;
import defpackage.C3850vF;
import defpackage.C3893w;
import defpackage.C4122zt;
import defpackage.Cimplements;
import defpackage.InterfaceC3593qu;
import defpackage.O2;
import defpackage.O4;
import defpackage.QK;
import defpackage.UK;
import defpackage.Zw;
import j$.util.DesugarCollections;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements InterfaceC3593qu {

    /* renamed from: do, reason: not valid java name */
    public static final Cfor f7286do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Class<?>[] f7287do;

    /* renamed from: if, reason: not valid java name */
    public static final Cswitch f7288if;

    /* renamed from: import, reason: not valid java name */
    public static final boolean f7289import;

    /* renamed from: throw, reason: not valid java name */
    public static final boolean f7291throw;

    /* renamed from: while, reason: not valid java name */
    public static final boolean f7293while;

    /* renamed from: break, reason: not valid java name */
    public int f7294break;

    /* renamed from: break, reason: not valid java name and collision with other field name */
    public boolean f7295break;

    /* renamed from: case, reason: not valid java name */
    public int f7296case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public final ArrayList f7297case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public boolean f7298case;

    /* renamed from: catch, reason: not valid java name */
    public int f7299catch;

    /* renamed from: catch, reason: not valid java name and collision with other field name */
    public final boolean f7300catch;

    /* renamed from: class, reason: not valid java name */
    public int f7301class;

    /* renamed from: class, reason: not valid java name and collision with other field name */
    public boolean f7302class;

    /* renamed from: const, reason: not valid java name */
    public int f7303const;

    /* renamed from: const, reason: not valid java name and collision with other field name */
    public boolean f7304const;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float f7305do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f7306do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RectF f7307do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public VelocityTracker f7308do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AccessibilityManager f7309do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public EdgeEffect f7310do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public SavedState f7311do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cclass f7312do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f7313do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfinal f7314do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f7315do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cimport f7316do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cnew f7317do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cpublic f7318do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cstatic f7319do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Csuper f7320do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cswitch f7321do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cthrows f7322do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ctry f7323do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final androidx.recyclerview.widget.Ccatch f7324do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cconst.Cif f7325do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public androidx.recyclerview.widget.Cconst f7326do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public androidx.recyclerview.widget.Cdo f7327do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public androidx.recyclerview.widget.Cif f7328do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cprivate f7329do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public androidx.recyclerview.widget.Cthrows f7330do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f7331do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3651ru f7332do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f7333do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f7334do;

    /* renamed from: else, reason: not valid java name */
    public int f7335else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public boolean f7336else;

    /* renamed from: final, reason: not valid java name */
    public final int f7337final;

    /* renamed from: final, reason: not valid java name and collision with other field name */
    public boolean f7338final;

    /* renamed from: for, reason: not valid java name */
    public final float f7339for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f7340for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public EdgeEffect f7341for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final ArrayList<Csuper> f7342for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f7343for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int[] f7344for;

    /* renamed from: goto, reason: not valid java name */
    public int f7345goto;

    /* renamed from: goto, reason: not valid java name and collision with other field name */
    public boolean f7346goto;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final float f7347if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Rect f7348if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public EdgeEffect f7349if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList<Ccatch> f7350if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f7351if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final int[] f7352if;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f7353new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public EdgeEffect f7354new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public ArrayList f7355new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f7356new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final int[] f7357new;

    /* renamed from: super, reason: not valid java name */
    public final int f7358super;

    /* renamed from: super, reason: not valid java name and collision with other field name */
    public boolean f7359super;

    /* renamed from: this, reason: not valid java name */
    public int f7360this;

    /* renamed from: this, reason: not valid java name and collision with other field name */
    public boolean f7361this;

    /* renamed from: throw, reason: not valid java name and collision with other field name */
    public int f7362throw;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public int f7363try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public ArrayList f7364try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public boolean f7365try;

    /* renamed from: while, reason: not valid java name and collision with other field name */
    public int f7366while;

    /* renamed from: try, reason: not valid java name */
    public static final int[] f7292try = {R.attr.nestedScrollingEnabled};

    /* renamed from: new, reason: not valid java name */
    public static final float f7290new = (float) (Math.log(0.78d) / Math.log(0.9d));

    /* renamed from: androidx.recyclerview.widget.RecyclerView$break, reason: invalid class name */
    public class Cbreak implements Cthis.Cif {
        public Cbreak() {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$case, reason: invalid class name */
    public static class Ccase extends Observable<Celse> {
        /* renamed from: do, reason: not valid java name */
        public final boolean m4371do() {
            return !((Observable) this).mObservers.isEmpty();
        }

        /* renamed from: for, reason: not valid java name */
        public final void m4372for() {
            int size = ((Observable) this).mObservers.size();
            while (true) {
                size--;
                if (size < 0) {
                    return;
                } else {
                    ((Celse) ((Observable) this).mObservers.get(size)).mo4424if();
                }
            }
        }

        /* renamed from: if, reason: not valid java name */
        public final void m4373if() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((Celse) ((Observable) this).mObservers.get(size)).mo4422do();
            }
        }

        /* renamed from: new, reason: not valid java name */
        public final void m4374new() {
            int size = ((Observable) this).mObservers.size();
            while (true) {
                size--;
                if (size < 0) {
                    return;
                } else {
                    ((Celse) ((Observable) this).mObservers.get(size)).mo4423for();
                }
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$catch, reason: invalid class name */
    public static abstract class Ccatch {
        /* renamed from: case, reason: not valid java name */
        public void mo4375case(Canvas canvas, RecyclerView recyclerView) {
        }

        /* renamed from: new, reason: not valid java name */
        public void mo4376new(Rect rect, View view, RecyclerView recyclerView) {
            ((LayoutParams) view.getLayoutParams()).m4368do();
            rect.set(0, 0, 0, 0);
        }

        /* renamed from: try, reason: not valid java name */
        public void mo4377try(Canvas canvas, RecyclerView recyclerView) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$class, reason: invalid class name */
    public static abstract class Cclass {

        /* renamed from: do, reason: not valid java name */
        public int f7373do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Creturn f7374do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public RecyclerView f7375do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public androidx.recyclerview.widget.Cif f7376do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cpackage f7377do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7378do;

        /* renamed from: for, reason: not valid java name */
        public int f7379for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public final boolean f7380for;

        /* renamed from: if, reason: not valid java name */
        public int f7381if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final Cpackage f7382if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f7383if;

        /* renamed from: new, reason: not valid java name */
        public int f7384new;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public final boolean f7385new;

        /* renamed from: try, reason: not valid java name */
        public int f7386try;

        /* renamed from: try, reason: not valid java name and collision with other field name */
        public boolean f7387try;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$class$do, reason: invalid class name */
        public class Cdo implements Cpackage.Cif {
            public Cdo() {
            }

            @Override // androidx.recyclerview.widget.Cpackage.Cif
            /* renamed from: do, reason: not valid java name */
            public final int mo4399do(View view) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                Cclass.this.getClass();
                return (view.getLeft() - Cclass.m4385strictfp(view)) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            }

            @Override // androidx.recyclerview.widget.Cpackage.Cif
            /* renamed from: for, reason: not valid java name */
            public final View mo4400for(int i) {
                return Cclass.this.m4394switch(i);
            }

            @Override // androidx.recyclerview.widget.Cpackage.Cif
            /* renamed from: if, reason: not valid java name */
            public final int mo4401if() {
                return Cclass.this.m4391interface();
            }

            @Override // androidx.recyclerview.widget.Cpackage.Cif
            /* renamed from: new, reason: not valid java name */
            public final int mo4402new() {
                Cclass cclass = Cclass.this;
                return cclass.f7384new - cclass.m4393protected();
            }

            @Override // androidx.recyclerview.widget.Cpackage.Cif
            /* renamed from: try, reason: not valid java name */
            public final int mo4403try(View view) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                Cclass.this.getClass();
                return Cclass.m4386synchronized(view) + view.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$class$for, reason: invalid class name */
        public interface Cfor {
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$class$if, reason: invalid class name */
        public class Cif implements Cpackage.Cif {
            public Cif() {
            }

            @Override // androidx.recyclerview.widget.Cpackage.Cif
            /* renamed from: do */
            public final int mo4399do(View view) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                Cclass.this.getClass();
                return (view.getTop() - Cclass.b(view)) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            }

            @Override // androidx.recyclerview.widget.Cpackage.Cif
            /* renamed from: for */
            public final View mo4400for(int i) {
                return Cclass.this.m4394switch(i);
            }

            @Override // androidx.recyclerview.widget.Cpackage.Cif
            /* renamed from: if */
            public final int mo4401if() {
                return Cclass.this.m4396transient();
            }

            @Override // androidx.recyclerview.widget.Cpackage.Cif
            /* renamed from: new */
            public final int mo4402new() {
                Cclass cclass = Cclass.this;
                return cclass.f7386try - cclass.m4397volatile();
            }

            @Override // androidx.recyclerview.widget.Cpackage.Cif
            /* renamed from: try */
            public final int mo4403try(View view) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                Cclass.this.getClass();
                return Cclass.m4384static(view) + view.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$class$new, reason: invalid class name */
        public static class Cnew {

            /* renamed from: do, reason: not valid java name */
            public int f7390do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public boolean f7391do;

            /* renamed from: if, reason: not valid java name */
            public int f7392if;

            /* renamed from: if, reason: not valid java name and collision with other field name */
            public boolean f7393if;
        }

        public Cclass() {
            Cdo cdo = new Cdo();
            Cif cif = new Cif();
            this.f7377do = new Cpackage(cdo);
            this.f7382if = new Cpackage(cif);
            this.f7378do = false;
            this.f7383if = false;
            this.f7380for = true;
            this.f7385new = true;
        }

        public static int b(View view) {
            return ((LayoutParams) view.getLayoutParams()).f7367do.top;
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
        
            if (r6 == 1073741824) goto L14;
         */
        /* renamed from: default, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m4378default(boolean r4, int r5, int r6, int r7, int r8) {
            /*
                int r5 = r5 - r7
                r7 = 0
                int r5 = java.lang.Math.max(r7, r5)
                r0 = -2
                r1 = -1
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = 1073741824(0x40000000, float:2.0)
                if (r4 == 0) goto L1a
                if (r8 < 0) goto L11
                goto L1c
            L11:
                if (r8 != r1) goto L31
                if (r6 == r2) goto L21
                if (r6 == 0) goto L31
                if (r6 == r3) goto L21
                goto L31
            L1a:
                if (r8 < 0) goto L1f
            L1c:
                r6 = 1073741824(0x40000000, float:2.0)
                goto L33
            L1f:
                if (r8 != r1) goto L23
            L21:
                r8 = r5
                goto L33
            L23:
                if (r8 != r0) goto L31
                if (r6 == r2) goto L2d
                if (r6 != r3) goto L2a
                goto L2d
            L2a:
                r8 = r5
                r6 = 0
                goto L33
            L2d:
                r8 = r5
                r6 = -2147483648(0xffffffff80000000, float:-0.0)
                goto L33
            L31:
                r6 = 0
                r8 = 0
            L33:
                int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r8, r6)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Cclass.m4378default(boolean, int, int, int, int):int");
        }

        public static boolean e(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 > 0 && i != i3) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i;
            }
            return true;
        }

        public static void f(View view, int i, int i2, int i3, int i4) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.f7367do;
            view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        /* renamed from: goto, reason: not valid java name */
        public static int m4379goto(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i2, i3) : size : Math.min(size, Math.max(i2, i3));
        }

        /* renamed from: implements, reason: not valid java name */
        public static int m4380implements(View view) {
            return ((LayoutParams) view.getLayoutParams()).m4368do();
        }

        /* renamed from: instanceof, reason: not valid java name */
        public static Cnew m4381instanceof(Context context, AttributeSet attributeSet, int i, int i2) {
            Cnew cnew = new Cnew();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.W, i, i2);
            cnew.f7390do = obtainStyledAttributes.getInt(0, 1);
            cnew.f7392if = obtainStyledAttributes.getInt(10, 1);
            cnew.f7391do = obtainStyledAttributes.getBoolean(9, false);
            cnew.f7393if = obtainStyledAttributes.getBoolean(11, false);
            obtainStyledAttributes.recycle();
            return cnew;
        }

        /* renamed from: package, reason: not valid java name */
        public static int m4382package(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f7367do;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        /* renamed from: private, reason: not valid java name */
        public static int m4383private(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f7367do;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        /* renamed from: static, reason: not valid java name */
        public static int m4384static(View view) {
            return ((LayoutParams) view.getLayoutParams()).f7367do.bottom;
        }

        /* renamed from: strictfp, reason: not valid java name */
        public static int m4385strictfp(View view) {
            return ((LayoutParams) view.getLayoutParams()).f7367do.left;
        }

        /* renamed from: synchronized, reason: not valid java name */
        public static int m4386synchronized(View view) {
            return ((LayoutParams) view.getLayoutParams()).f7367do.right;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x008a A[ADDED_TO_REGION] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean A(androidx.recyclerview.widget.RecyclerView.Cimport r3, androidx.recyclerview.widget.RecyclerView.Cstatic r4, int r5, android.os.Bundle r6) {
            /*
                r2 = this;
                androidx.recyclerview.widget.RecyclerView r3 = r2.f7375do
                r4 = 0
                if (r3 != 0) goto L6
                return r4
            L6:
                int r3 = r2.f7386try
                int r6 = r2.f7384new
                android.graphics.Rect r0 = new android.graphics.Rect
                r0.<init>()
                androidx.recyclerview.widget.RecyclerView r1 = r2.f7375do
                android.graphics.Matrix r1 = r1.getMatrix()
                boolean r1 = r1.isIdentity()
                if (r1 == 0) goto L2b
                androidx.recyclerview.widget.RecyclerView r1 = r2.f7375do
                boolean r1 = r1.getGlobalVisibleRect(r0)
                if (r1 == 0) goto L2b
                int r3 = r0.height()
                int r6 = r0.width()
            L2b:
                r0 = 4096(0x1000, float:5.74E-42)
                r1 = 1
                if (r5 == r0) goto L61
                r0 = 8192(0x2000, float:1.148E-41)
                if (r5 == r0) goto L37
                r3 = 0
            L35:
                r5 = 0
                goto L88
            L37:
                androidx.recyclerview.widget.RecyclerView r5 = r2.f7375do
                r0 = -1
                boolean r5 = r5.canScrollVertically(r0)
                if (r5 == 0) goto L4c
                int r5 = r2.m4396transient()
                int r3 = r3 - r5
                int r5 = r2.m4397volatile()
                int r3 = r3 - r5
                int r3 = -r3
                goto L4d
            L4c:
                r3 = 0
            L4d:
                androidx.recyclerview.widget.RecyclerView r5 = r2.f7375do
                boolean r5 = r5.canScrollHorizontally(r0)
                if (r5 == 0) goto L35
                int r5 = r2.m4391interface()
                int r6 = r6 - r5
                int r5 = r2.m4393protected()
                int r6 = r6 - r5
                int r5 = -r6
                goto L88
            L61:
                androidx.recyclerview.widget.RecyclerView r5 = r2.f7375do
                boolean r5 = r5.canScrollVertically(r1)
                if (r5 == 0) goto L74
                int r5 = r2.m4396transient()
                int r3 = r3 - r5
                int r5 = r2.m4397volatile()
                int r3 = r3 - r5
                goto L75
            L74:
                r3 = 0
            L75:
                androidx.recyclerview.widget.RecyclerView r5 = r2.f7375do
                boolean r5 = r5.canScrollHorizontally(r1)
                if (r5 == 0) goto L35
                int r5 = r2.m4391interface()
                int r6 = r6 - r5
                int r5 = r2.m4393protected()
                int r5 = r6 - r5
            L88:
                if (r3 != 0) goto L8d
                if (r5 != 0) goto L8d
                return r4
            L8d:
                androidx.recyclerview.widget.RecyclerView r4 = r2.f7375do
                r4.x(r5, r3, r1)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Cclass.A(androidx.recyclerview.widget.RecyclerView$import, androidx.recyclerview.widget.RecyclerView$static, int, android.os.Bundle):boolean");
        }

        public final void B(Cimport cimport) {
            int m4395throws = m4395throws();
            while (true) {
                m4395throws--;
                if (m4395throws < 0) {
                    return;
                }
                if (!RecyclerView.m4335implements(m4394switch(m4395throws)).m4418super()) {
                    View m4394switch = m4394switch(m4395throws);
                    E(m4395throws);
                    cimport.m4437this(m4394switch);
                }
            }
        }

        public final void C(Cimport cimport) {
            ArrayList<Cdefault> arrayList;
            int size = cimport.f7419do.size();
            int i = size - 1;
            while (true) {
                arrayList = cimport.f7419do;
                if (i < 0) {
                    break;
                }
                View view = arrayList.get(i).f7398do;
                Cdefault m4335implements = RecyclerView.m4335implements(view);
                if (!m4335implements.m4418super()) {
                    m4335implements.m4413final(false);
                    if (m4335implements.m4408catch()) {
                        this.f7375do.removeDetachedView(view, false);
                    }
                    androidx.recyclerview.widget.Ccatch ccatch = this.f7375do.f7324do;
                    if (ccatch != null) {
                        ccatch.m4487else(m4335implements);
                    }
                    m4335implements.m4413final(true);
                    Cdefault m4335implements2 = RecyclerView.m4335implements(view);
                    m4335implements2.f7400do = null;
                    m4335implements2.f7406do = false;
                    m4335implements2.f7413try &= -33;
                    cimport.m4425break(m4335implements2);
                }
                i--;
            }
            arrayList.clear();
            ArrayList<Cdefault> arrayList2 = cimport.f7423if;
            if (arrayList2 != null) {
                arrayList2.clear();
            }
            if (size > 0) {
                this.f7375do.invalidate();
            }
        }

        public final void D(View view, Cimport cimport) {
            androidx.recyclerview.widget.Cif cif = this.f7376do;
            Cif.InterfaceC0042if interfaceC0042if = cif.f7651do;
            int i = cif.f7648do;
            if (i == 1) {
                throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
            }
            if (i == 2) {
                throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
            }
            try {
                cif.f7648do = 1;
                cif.f7649do = view;
                int indexOfChild = ((androidx.recyclerview.widget.Cstatic) interfaceC0042if).f7676do.indexOfChild(view);
                if (indexOfChild >= 0) {
                    if (cif.f7650do.m4531case(indexOfChild)) {
                        cif.m4522catch(view);
                    }
                    ((androidx.recyclerview.widget.Cstatic) interfaceC0042if).m4568if(indexOfChild);
                }
                cif.f7648do = 0;
                cif.f7649do = null;
                cimport.m4437this(view);
            } catch (Throwable th) {
                cif.f7648do = 0;
                cif.f7649do = null;
                throw th;
            }
        }

        public final void E(int i) {
            if (m4394switch(i) != null) {
                androidx.recyclerview.widget.Cif cif = this.f7376do;
                Cif.InterfaceC0042if interfaceC0042if = cif.f7651do;
                int i2 = cif.f7648do;
                if (i2 == 1) {
                    throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
                }
                if (i2 == 2) {
                    throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
                }
                try {
                    int m4521case = cif.m4521case(i);
                    View childAt = ((androidx.recyclerview.widget.Cstatic) interfaceC0042if).f7676do.getChildAt(m4521case);
                    if (childAt != null) {
                        cif.f7648do = 1;
                        cif.f7649do = childAt;
                        if (cif.f7650do.m4531case(m4521case)) {
                            cif.m4522catch(childAt);
                        }
                        ((androidx.recyclerview.widget.Cstatic) interfaceC0042if).m4568if(m4521case);
                    }
                } finally {
                    cif.f7648do = 0;
                    cif.f7649do = null;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x00a9, code lost:
        
            if (r10 == false) goto L33;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean F(androidx.recyclerview.widget.RecyclerView r9, android.view.View r10, android.graphics.Rect r11, boolean r12, boolean r13) {
            /*
                r8 = this;
                int r0 = r8.m4391interface()
                int r1 = r8.m4396transient()
                int r2 = r8.f7384new
                int r3 = r8.m4393protected()
                int r2 = r2 - r3
                int r3 = r8.f7386try
                int r4 = r8.m4397volatile()
                int r3 = r3 - r4
                int r4 = r10.getLeft()
                int r5 = r11.left
                int r4 = r4 + r5
                int r5 = r10.getScrollX()
                int r4 = r4 - r5
                int r5 = r10.getTop()
                int r6 = r11.top
                int r5 = r5 + r6
                int r10 = r10.getScrollY()
                int r5 = r5 - r10
                int r10 = r11.width()
                int r10 = r10 + r4
                int r11 = r11.height()
                int r11 = r11 + r5
                int r4 = r4 - r0
                r0 = 0
                int r6 = java.lang.Math.min(r0, r4)
                int r5 = r5 - r1
                int r1 = java.lang.Math.min(r0, r5)
                int r10 = r10 - r2
                int r2 = java.lang.Math.max(r0, r10)
                int r11 = r11 - r3
                int r11 = java.lang.Math.max(r0, r11)
                int r3 = r8.m4388continue()
                r7 = 1
                if (r3 != r7) goto L5c
                if (r2 == 0) goto L57
                goto L64
            L57:
                int r2 = java.lang.Math.max(r6, r10)
                goto L64
            L5c:
                if (r6 == 0) goto L5f
                goto L63
            L5f:
                int r6 = java.lang.Math.min(r4, r2)
            L63:
                r2 = r6
            L64:
                if (r1 == 0) goto L67
                goto L6b
            L67:
                int r1 = java.lang.Math.min(r5, r11)
            L6b:
                if (r13 == 0) goto Lab
                android.view.View r10 = r9.getFocusedChild()
                if (r10 != 0) goto L74
                goto La8
            L74:
                int r11 = r8.m4391interface()
                int r13 = r8.m4396transient()
                int r3 = r8.f7384new
                int r4 = r8.m4393protected()
                int r3 = r3 - r4
                int r4 = r8.f7386try
                int r5 = r8.m4397volatile()
                int r4 = r4 - r5
                androidx.recyclerview.widget.RecyclerView r5 = r8.f7375do
                android.graphics.Rect r5 = r5.f7306do
                r8.mo4389finally(r5, r10)
                int r10 = r5.left
                int r10 = r10 - r2
                if (r10 >= r3) goto La8
                int r10 = r5.right
                int r10 = r10 - r2
                if (r10 <= r11) goto La8
                int r10 = r5.top
                int r10 = r10 - r1
                if (r10 >= r4) goto La8
                int r10 = r5.bottom
                int r10 = r10 - r1
                if (r10 > r13) goto La6
                goto La8
            La6:
                r10 = 1
                goto La9
            La8:
                r10 = 0
            La9:
                if (r10 == 0) goto Lb0
            Lab:
                if (r2 != 0) goto Lb1
                if (r1 == 0) goto Lb0
                goto Lb1
            Lb0:
                return r0
            Lb1:
                if (r12 == 0) goto Lb7
                r9.scrollBy(r2, r1)
                goto Lba
            Lb7:
                r9.x(r2, r1, r0)
            Lba:
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Cclass.F(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
        }

        public final void G() {
            RecyclerView recyclerView = this.f7375do;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        @SuppressLint({"UnknownNullness"})
        public int H(int i, Cimport cimport, Cstatic cstatic) {
            return 0;
        }

        public void I(int i) {
            int[] iArr = RecyclerView.f7292try;
        }

        @SuppressLint({"UnknownNullness"})
        public int J(int i, Cimport cimport, Cstatic cstatic) {
            return 0;
        }

        public final void K(RecyclerView recyclerView) {
            L(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public final void L(int i, int i2) {
            this.f7384new = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.f7381if = mode;
            if (mode == 0 && !RecyclerView.f7291throw) {
                this.f7384new = 0;
            }
            this.f7386try = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f7379for = mode2;
            if (mode2 != 0 || RecyclerView.f7291throw) {
                return;
            }
            this.f7386try = 0;
        }

        public void M(int i, int i2, Rect rect) {
            int m4393protected = m4393protected() + m4391interface() + rect.width();
            int m4397volatile = m4397volatile() + m4396transient() + rect.height();
            RecyclerView recyclerView = this.f7375do;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            this.f7375do.setMeasuredDimension(m4379goto(i, m4393protected, recyclerView.getMinimumWidth()), m4379goto(i2, m4397volatile, this.f7375do.getMinimumHeight()));
        }

        public final void N(int i, int i2) {
            int m4395throws = m4395throws();
            if (m4395throws == 0) {
                this.f7375do.m4367while(i, i2);
                return;
            }
            int i3 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            int i4 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MIN_VALUE;
            for (int i7 = 0; i7 < m4395throws; i7++) {
                View m4394switch = m4394switch(i7);
                Rect rect = this.f7375do.f7306do;
                mo4389finally(rect, m4394switch);
                int i8 = rect.left;
                if (i8 < i3) {
                    i3 = i8;
                }
                int i9 = rect.right;
                if (i9 > i5) {
                    i5 = i9;
                }
                int i10 = rect.top;
                if (i10 < i4) {
                    i4 = i10;
                }
                int i11 = rect.bottom;
                if (i11 > i6) {
                    i6 = i11;
                }
            }
            this.f7375do.f7306do.set(i3, i4, i5, i6);
            M(i, i2, this.f7375do.f7306do);
        }

        public final void O(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f7375do = null;
                this.f7376do = null;
                this.f7384new = 0;
                this.f7386try = 0;
            } else {
                this.f7375do = recyclerView;
                this.f7376do = recyclerView.f7328do;
                this.f7384new = recyclerView.getWidth();
                this.f7386try = recyclerView.getHeight();
            }
            this.f7381if = 1073741824;
            this.f7379for = 1073741824;
        }

        public final boolean P(View view, int i, int i2, LayoutParams layoutParams) {
            return (!view.isLayoutRequested() && this.f7380for && e(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) && e(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
        }

        public boolean Q() {
            return false;
        }

        public final boolean R(View view, int i, int i2, LayoutParams layoutParams) {
            return (this.f7380for && e(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) && e(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
        }

        @SuppressLint({"UnknownNullness"})
        public void S(RecyclerView recyclerView, int i) {
        }

        @SuppressLint({"UnknownNullness"})
        public final void T(androidx.recyclerview.widget.Csuper csuper) {
            Creturn creturn = this.f7374do;
            if (creturn != null && csuper != creturn && creturn.f7432if) {
                creturn.m4446new();
            }
            this.f7374do = csuper;
            RecyclerView recyclerView = this.f7375do;
            Cthrows cthrows = recyclerView.f7322do;
            RecyclerView.this.removeCallbacks(cthrows);
            cthrows.f7462do.abortAnimation();
            ((Creturn) csuper).f7430do = recyclerView;
            ((Creturn) csuper).f7428do = this;
            int i = ((Creturn) csuper).f7426do;
            if (i == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            recyclerView.f7319do.f7441do = i;
            ((Creturn) csuper).f7432if = true;
            ((Creturn) csuper).f7431do = true;
            ((Creturn) csuper).f7427do = recyclerView.f7312do.mo4321import(i);
            ((Creturn) csuper).f7430do.f7322do.m4461if();
        }

        public boolean U() {
            return false;
        }

        public int a(Cimport cimport, Cstatic cstatic) {
            return -1;
        }

        /* renamed from: abstract, reason: not valid java name */
        public final int m4387abstract() {
            RecyclerView recyclerView = this.f7375do;
            Ctry ctry = recyclerView != null ? recyclerView.f7323do : null;
            if (ctry != null) {
                return ctry.mo1023for();
            }
            return 0;
        }

        @SuppressLint({"UnknownNullness"})
        /* renamed from: break */
        public void mo4315break(int i, Cfor cfor) {
        }

        public final void c(View view, Rect rect) {
            Matrix matrix;
            Rect rect2 = ((LayoutParams) view.getLayoutParams()).f7367do;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            if (this.f7375do != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.f7375do.f7307do;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        /* renamed from: case */
        public boolean mo4316case() {
            return false;
        }

        /* renamed from: catch */
        public int mo4317catch(Cstatic cstatic) {
            return 0;
        }

        /* renamed from: class */
        public int mo4304class(Cstatic cstatic) {
            return 0;
        }

        /* renamed from: const */
        public int mo4305const(Cstatic cstatic) {
            return 0;
        }

        /* renamed from: continue, reason: not valid java name */
        public final int m4388continue() {
            RecyclerView recyclerView = this.f7375do;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            return recyclerView.getLayoutDirection();
        }

        public boolean d() {
            return false;
        }

        /* renamed from: else */
        public boolean mo4306else(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        /* renamed from: extends */
        public int mo4307extends(Cimport cimport, Cstatic cstatic) {
            return -1;
        }

        /* renamed from: final */
        public int mo4319final(Cstatic cstatic) {
            return 0;
        }

        /* renamed from: finally, reason: not valid java name */
        public void mo4389finally(Rect rect, View view) {
            int[] iArr = RecyclerView.f7292try;
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect2 = layoutParams.f7367do;
            rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        @SuppressLint({"UnknownNullness"})
        /* renamed from: for */
        public void mo4320for(String str) {
            RecyclerView recyclerView = this.f7375do;
            if (recyclerView != null) {
                recyclerView.m4342catch(str);
            }
        }

        public void g(int i) {
            RecyclerView recyclerView = this.f7375do;
            if (recyclerView != null) {
                int m4530try = recyclerView.f7328do.m4530try();
                for (int i2 = 0; i2 < m4530try; i2++) {
                    recyclerView.f7328do.m4528new(i2).offsetLeftAndRight(i);
                }
            }
        }

        public void h(int i) {
            RecyclerView recyclerView = this.f7375do;
            if (recyclerView != null) {
                int m4530try = recyclerView.f7328do.m4530try();
                for (int i2 = 0; i2 < m4530try; i2++) {
                    recyclerView.f7328do.m4528new(i2).offsetTopAndBottom(i);
                }
            }
        }

        public void i() {
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0070  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0078  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00e6  */
        /* renamed from: if, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m4390if(android.view.View r9, boolean r10, int r11) {
            /*
                Method dump skipped, instructions count: 341
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Cclass.m4390if(android.view.View, boolean, int):void");
        }

        /* renamed from: import */
        public View mo4321import(int i) {
            int m4395throws = m4395throws();
            for (int i2 = 0; i2 < m4395throws; i2++) {
                View m4394switch = m4394switch(i2);
                Cdefault m4335implements = RecyclerView.m4335implements(m4394switch);
                if (m4335implements != null && m4335implements.m4414for() == i && !m4335implements.m4418super() && (this.f7375do.f7319do.f7448if || !m4335implements.m4419this())) {
                    return m4394switch;
                }
            }
            return null;
        }

        /* renamed from: interface, reason: not valid java name */
        public final int m4391interface() {
            RecyclerView recyclerView = this.f7375do;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public void j(RecyclerView recyclerView) {
        }

        @SuppressLint({"UnknownNullness"})
        public void k(RecyclerView recyclerView) {
        }

        public View l(View view, int i, Cimport cimport, Cstatic cstatic) {
            return null;
        }

        public void m(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f7375do;
            Cimport cimport = recyclerView.f7316do;
            Cstatic cstatic = recyclerView.f7319do;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!recyclerView.canScrollVertically(1) && !this.f7375do.canScrollVertically(-1) && !this.f7375do.canScrollHorizontally(-1) && !this.f7375do.canScrollHorizontally(1)) {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            Ctry ctry = this.f7375do.f7323do;
            if (ctry != null) {
                accessibilityEvent.setItemCount(ctry.mo1023for());
            }
        }

        public void n(Cimport cimport, Cstatic cstatic, C3893w c3893w) {
            if (this.f7375do.canScrollVertically(-1) || this.f7375do.canScrollHorizontally(-1)) {
                c3893w.m8500do(Utility.DEFAULT_STREAM_BUFFER_SIZE);
                c3893w.m8502final(true);
            }
            if (this.f7375do.canScrollVertically(1) || this.f7375do.canScrollHorizontally(1)) {
                c3893w.m8500do(4096);
                c3893w.m8502final(true);
            }
            c3893w.f16161do.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) C3893w.Ctry.m8536do(a(cimport, cstatic), mo4307extends(cimport, cstatic), 0).f16179do);
        }

        @SuppressLint({"UnknownNullness"})
        /* renamed from: native */
        public abstract LayoutParams mo4308native();

        /* renamed from: new, reason: not valid java name */
        public final void m4392new(Rect rect, View view) {
            RecyclerView recyclerView = this.f7375do;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.m4351instanceof(view));
            }
        }

        public final void o(View view, C3893w c3893w) {
            Cdefault m4335implements = RecyclerView.m4335implements(view);
            if (m4335implements == null || m4335implements.m4419this() || this.f7376do.m4520break(m4335implements.f7398do)) {
                return;
            }
            RecyclerView recyclerView = this.f7375do;
            p(recyclerView.f7316do, recyclerView.f7319do, view, c3893w);
        }

        public void p(Cimport cimport, Cstatic cstatic, View view, C3893w c3893w) {
        }

        /* renamed from: protected, reason: not valid java name */
        public final int m4393protected() {
            RecyclerView recyclerView = this.f7375do;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        @SuppressLint({"UnknownNullness"})
        /* renamed from: public */
        public LayoutParams mo4309public(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        public void q(int i, int i2) {
        }

        public void r() {
        }

        @SuppressLint({"UnknownNullness"})
        /* renamed from: return */
        public LayoutParams mo4310return(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
        }

        public void s(int i, int i2) {
        }

        /* renamed from: super */
        public int mo4311super(Cstatic cstatic) {
            return 0;
        }

        /* renamed from: switch, reason: not valid java name */
        public final View m4394switch(int i) {
            androidx.recyclerview.widget.Cif cif = this.f7376do;
            if (cif != null) {
                return cif.m4528new(i);
            }
            return null;
        }

        public void t(int i, int i2) {
        }

        @SuppressLint({"UnknownNullness"})
        /* renamed from: this */
        public void mo4322this(int i, int i2, Cstatic cstatic, Cfor cfor) {
        }

        /* renamed from: throw */
        public int mo4312throw(Cstatic cstatic) {
            return 0;
        }

        /* renamed from: throws, reason: not valid java name */
        public final int m4395throws() {
            androidx.recyclerview.widget.Cif cif = this.f7376do;
            if (cif != null) {
                return cif.m4530try();
            }
            return 0;
        }

        /* renamed from: transient, reason: not valid java name */
        public final int m4396transient() {
            RecyclerView recyclerView = this.f7375do;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        /* renamed from: try */
        public boolean mo4323try() {
            return false;
        }

        public void u(int i, int i2) {
        }

        @SuppressLint({"UnknownNullness"})
        public void v(Cimport cimport, Cstatic cstatic) {
        }

        /* renamed from: volatile, reason: not valid java name */
        public final int m4397volatile() {
            RecyclerView recyclerView = this.f7375do;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        @SuppressLint({"UnknownNullness"})
        public void w(Cstatic cstatic) {
        }

        /* renamed from: while, reason: not valid java name */
        public final void m4398while(Cimport cimport) {
            int m4395throws = m4395throws();
            while (true) {
                m4395throws--;
                if (m4395throws < 0) {
                    return;
                }
                View m4394switch = m4394switch(m4395throws);
                Cdefault m4335implements = RecyclerView.m4335implements(m4394switch);
                if (!m4335implements.m4418super()) {
                    if (!m4335implements.m4412else() || m4335implements.m4419this() || this.f7375do.f7323do.f7470do) {
                        m4394switch(m4395throws);
                        this.f7376do.m4525for(m4395throws);
                        cimport.m4427catch(m4394switch);
                        this.f7375do.f7329do.m4558for(m4335implements);
                    } else {
                        E(m4395throws);
                        cimport.m4425break(m4335implements);
                    }
                }
            }
        }

        @SuppressLint({"UnknownNullness"})
        public void x(Parcelable parcelable) {
        }

        public Parcelable y() {
            return null;
        }

        public void z(int i) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$const, reason: invalid class name */
    public interface Cconst {
        /* renamed from: do, reason: not valid java name */
        void mo4404do(View view);

        /* renamed from: if, reason: not valid java name */
        void mo4405if();
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$default, reason: invalid class name */
    public static abstract class Cdefault {

        /* renamed from: if, reason: not valid java name */
        public static final List<Object> f7394if = Collections.emptyList();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final View f7398do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Ctry<? extends Cdefault> f7401do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public RecyclerView f7402do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public WeakReference<RecyclerView> f7403do;

        /* renamed from: try, reason: not valid java name */
        public int f7413try;

        /* renamed from: do, reason: not valid java name */
        public int f7396do = -1;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public int f7410if = -1;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public long f7397do = -1;

        /* renamed from: for, reason: not valid java name */
        public int f7408for = -1;

        /* renamed from: new, reason: not valid java name */
        public int f7412new = -1;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cdefault f7399do = null;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public Cdefault f7411if = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ArrayList f7404do = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public List<Object> f7405do = null;

        /* renamed from: case, reason: not valid java name */
        public int f7395case = 0;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cimport f7400do = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7406do = false;

        /* renamed from: else, reason: not valid java name */
        public int f7407else = 0;

        /* renamed from: goto, reason: not valid java name */
        public int f7409goto = -1;

        public Cdefault(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.f7398do = view;
        }

        /* renamed from: break, reason: not valid java name */
        public final boolean m4406break() {
            return this.f7400do != null;
        }

        /* renamed from: case, reason: not valid java name */
        public final boolean m4407case() {
            return (this.f7413try & 1) != 0;
        }

        /* renamed from: catch, reason: not valid java name */
        public final boolean m4408catch() {
            return (this.f7413try & 256) != 0;
        }

        /* renamed from: class, reason: not valid java name */
        public final void m4409class(int i, boolean z) {
            if (this.f7410if == -1) {
                this.f7410if = this.f7396do;
            }
            if (this.f7412new == -1) {
                this.f7412new = this.f7396do;
            }
            if (z) {
                this.f7412new += i;
            }
            this.f7396do += i;
            View view = this.f7398do;
            if (view.getLayoutParams() != null) {
                ((LayoutParams) view.getLayoutParams()).f7369do = true;
            }
        }

        /* renamed from: const, reason: not valid java name */
        public final void m4410const() {
            int[] iArr = RecyclerView.f7292try;
            this.f7413try = 0;
            this.f7396do = -1;
            this.f7410if = -1;
            this.f7397do = -1L;
            this.f7412new = -1;
            this.f7395case = 0;
            this.f7399do = null;
            this.f7411if = null;
            ArrayList arrayList = this.f7404do;
            if (arrayList != null) {
                arrayList.clear();
            }
            this.f7413try &= -1025;
            this.f7407else = 0;
            this.f7409goto = -1;
            RecyclerView.m4331class(this);
        }

        /* renamed from: do, reason: not valid java name */
        public final void m4411do(Object obj) {
            if (obj == null) {
                m4416if(1024);
                return;
            }
            if ((1024 & this.f7413try) == 0) {
                if (this.f7404do == null) {
                    ArrayList arrayList = new ArrayList();
                    this.f7404do = arrayList;
                    this.f7405do = DesugarCollections.unmodifiableList(arrayList);
                }
                this.f7404do.add(obj);
            }
        }

        /* renamed from: else, reason: not valid java name */
        public final boolean m4412else() {
            return (this.f7413try & 4) != 0;
        }

        /* renamed from: final, reason: not valid java name */
        public final void m4413final(boolean z) {
            int i = this.f7395case;
            int i2 = z ? i - 1 : i + 1;
            this.f7395case = i2;
            if (i2 < 0) {
                this.f7395case = 0;
                int[] iArr = RecyclerView.f7292try;
                toString();
            } else if (!z && i2 == 1) {
                this.f7413try |= 16;
            } else if (z && i2 == 0) {
                this.f7413try &= -17;
            }
            int[] iArr2 = RecyclerView.f7292try;
        }

        /* renamed from: for, reason: not valid java name */
        public final int m4414for() {
            int i = this.f7412new;
            return i == -1 ? this.f7396do : i;
        }

        /* renamed from: goto, reason: not valid java name */
        public final boolean m4415goto() {
            if ((this.f7413try & 16) == 0) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                if (!this.f7398do.hasTransientState()) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: if, reason: not valid java name */
        public final void m4416if(int i) {
            this.f7413try = i | this.f7413try;
        }

        /* renamed from: new, reason: not valid java name */
        public final List<Object> m4417new() {
            ArrayList arrayList;
            return ((this.f7413try & 1024) != 0 || (arrayList = this.f7404do) == null || arrayList.size() == 0) ? f7394if : this.f7405do;
        }

        /* renamed from: super, reason: not valid java name */
        public final boolean m4418super() {
            return (this.f7413try & 128) != 0;
        }

        /* renamed from: this, reason: not valid java name */
        public final boolean m4419this() {
            return (this.f7413try & 8) != 0;
        }

        /* renamed from: throw, reason: not valid java name */
        public final boolean m4420throw() {
            return (this.f7413try & 32) != 0;
        }

        public final String toString() {
            StringBuilder m6916goto = defpackage.Cif.m6916goto(getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName(), "{");
            m6916goto.append(Integer.toHexString(hashCode()));
            m6916goto.append(" position=");
            m6916goto.append(this.f7396do);
            m6916goto.append(" id=");
            m6916goto.append(this.f7397do);
            m6916goto.append(", oldPos=");
            m6916goto.append(this.f7410if);
            m6916goto.append(", pLpos:");
            m6916goto.append(this.f7412new);
            StringBuilder sb = new StringBuilder(m6916goto.toString());
            if (m4406break()) {
                sb.append(" scrap ");
                sb.append(this.f7406do ? "[changeScrap]" : "[attachedScrap]");
            }
            if (m4412else()) {
                sb.append(" invalid");
            }
            if (!m4407case()) {
                sb.append(" unbound");
            }
            boolean z = true;
            if ((this.f7413try & 2) != 0) {
                sb.append(" update");
            }
            if (m4419this()) {
                sb.append(" removed");
            }
            if (m4418super()) {
                sb.append(" ignored");
            }
            if (m4408catch()) {
                sb.append(" tmpDetached");
            }
            if (!m4415goto()) {
                sb.append(" not recyclable(" + this.f7395case + ")");
            }
            if ((this.f7413try & AdRequest.MAX_CONTENT_URL_LENGTH) == 0 && !m4412else()) {
                z = false;
            }
            if (z) {
                sb.append(" undefined adapter position");
            }
            if (this.f7398do.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        /* renamed from: try, reason: not valid java name */
        public final boolean m4421try() {
            View view = this.f7398do;
            return (view.getParent() == null || view.getParent() == this.f7402do) ? false : true;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            RecyclerView recyclerView = RecyclerView.this;
            if (!recyclerView.f7356new || recyclerView.isLayoutRequested()) {
                return;
            }
            if (!recyclerView.f7351if) {
                recyclerView.requestLayout();
            } else if (recyclerView.f7298case) {
                recyclerView.f7365try = true;
            } else {
                recyclerView.m4363throw();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$else, reason: invalid class name */
    public static abstract class Celse {
        /* renamed from: do, reason: not valid java name */
        public void mo4422do() {
        }

        /* renamed from: for, reason: not valid java name */
        public void mo4423for() {
        }

        /* renamed from: if, reason: not valid java name */
        public void mo4424if() {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$final, reason: invalid class name */
    public static abstract class Cfinal {
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$for, reason: invalid class name */
    public class Cfor implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$goto, reason: invalid class name */
    public static class Cgoto {
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            long j;
            RecyclerView recyclerView = RecyclerView.this;
            androidx.recyclerview.widget.Ccatch ccatch = recyclerView.f7324do;
            if (ccatch != null) {
                ArrayList<Cdefault> arrayList = ccatch.f7547if;
                boolean z2 = !arrayList.isEmpty();
                ArrayList<Ccatch.Cif> arrayList2 = ccatch.f7548new;
                boolean z3 = !arrayList2.isEmpty();
                ArrayList<Ccatch.Cdo> arrayList3 = ccatch.f7550try;
                boolean z4 = !arrayList3.isEmpty();
                ArrayList<Cdefault> arrayList4 = ccatch.f7545for;
                boolean z5 = !arrayList4.isEmpty();
                if (z2 || z3 || z5 || z4) {
                    Iterator<Cdefault> it = arrayList.iterator();
                    while (true) {
                        boolean hasNext = it.hasNext();
                        j = ((Cthis) ccatch).f7457if;
                        if (!hasNext) {
                            break;
                        }
                        Cdefault next = it.next();
                        View view = next.f7398do;
                        ViewPropertyAnimator animate = view.animate();
                        ccatch.f7542catch.add(next);
                        animate.setDuration(j).alpha(0.0f).setListener(new androidx.recyclerview.widget.Ccase(view, animate, ccatch, next)).start();
                        it = it;
                    }
                    arrayList.clear();
                    if (z3) {
                        ArrayList<Ccatch.Cif> arrayList5 = new ArrayList<>();
                        arrayList5.addAll(arrayList2);
                        ccatch.f7544else.add(arrayList5);
                        arrayList2.clear();
                        androidx.recyclerview.widget.Cfor cfor = new androidx.recyclerview.widget.Cfor(ccatch, arrayList5);
                        if (z2) {
                            View view2 = arrayList5.get(0).f7558do.f7398do;
                            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                            view2.postOnAnimationDelayed(cfor, j);
                        } else {
                            cfor.run();
                        }
                    }
                    if (z4) {
                        ArrayList<Ccatch.Cdo> arrayList6 = new ArrayList<>();
                        arrayList6.addAll(arrayList3);
                        ccatch.f7546goto.add(arrayList6);
                        arrayList3.clear();
                        androidx.recyclerview.widget.Cnew cnew = new androidx.recyclerview.widget.Cnew(ccatch, arrayList6);
                        if (z2) {
                            View view3 = arrayList6.get(0).f7552do.f7398do;
                            WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
                            view3.postOnAnimationDelayed(cnew, j);
                        } else {
                            cnew.run();
                        }
                    }
                    if (z5) {
                        ArrayList<Cdefault> arrayList7 = new ArrayList<>();
                        arrayList7.addAll(arrayList4);
                        ccatch.f7541case.add(arrayList7);
                        arrayList4.clear();
                        androidx.recyclerview.widget.Ctry ctry = new androidx.recyclerview.widget.Ctry(ccatch, arrayList7);
                        if (z2 || z3 || z4) {
                            if (!z2) {
                                j = 0;
                            }
                            long max = Math.max(z3 ? ((Cthis) ccatch).f7456for : 0L, z4 ? ((Cthis) ccatch).f7458new : 0L) + j;
                            z = false;
                            View view4 = arrayList7.get(0).f7398do;
                            WeakHashMap<View, C3385nL> weakHashMap3 = QK.f2909do;
                            view4.postOnAnimationDelayed(ctry, max);
                            recyclerView.f7338final = z;
                        }
                        ctry.run();
                    }
                }
            }
            z = false;
            recyclerView.f7338final = z;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$import, reason: invalid class name */
    public final class Cimport {

        /* renamed from: do, reason: not valid java name */
        public final int f7416do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cwhile f7417do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList<Cdefault> f7419do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final List<Cdefault> f7420do;

        /* renamed from: for, reason: not valid java name */
        public final ArrayList<Cdefault> f7421for;

        /* renamed from: if, reason: not valid java name */
        public int f7422if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public ArrayList<Cdefault> f7423if;

        public Cimport() {
            ArrayList<Cdefault> arrayList = new ArrayList<>();
            this.f7419do = arrayList;
            this.f7423if = null;
            this.f7421for = new ArrayList<>();
            this.f7420do = DesugarCollections.unmodifiableList(arrayList);
            this.f7416do = 2;
            this.f7422if = 2;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x003b  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x00ac  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x00b1  */
        /* renamed from: break, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m4425break(androidx.recyclerview.widget.RecyclerView.Cdefault r13) {
            /*
                Method dump skipped, instructions count: 295
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Cimport.m4425break(androidx.recyclerview.widget.RecyclerView$default):void");
        }

        /* renamed from: case, reason: not valid java name */
        public final void m4426case(Ctry<?> ctry, boolean z) {
            Cwhile cwhile = this.f7417do;
            if (cwhile == null) {
                return;
            }
            Set<Ctry<?>> set = cwhile.f7473do;
            set.remove(ctry);
            if (set.size() != 0 || z) {
                return;
            }
            int i = 0;
            while (true) {
                SparseArray<Cwhile.Cdo> sparseArray = cwhile.f7472do;
                if (i >= sparseArray.size()) {
                    return;
                }
                ArrayList<Cdefault> arrayList = sparseArray.get(sparseArray.keyAt(i)).f7476do;
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    C3850vF.m8456new(arrayList.get(i2).f7398do);
                }
                i++;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0041  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0047  */
        /* renamed from: catch, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m4427catch(android.view.View r6) {
            /*
                r5 = this;
                androidx.recyclerview.widget.RecyclerView$default r6 = androidx.recyclerview.widget.RecyclerView.m4335implements(r6)
                int r0 = r6.f7413try
                r1 = r0 & 12
                r2 = 1
                r3 = 0
                if (r1 == 0) goto Le
                r1 = 1
                goto Lf
            Le:
                r1 = 0
            Lf:
                androidx.recyclerview.widget.RecyclerView r4 = androidx.recyclerview.widget.RecyclerView.this
                if (r1 != 0) goto L5c
                r0 = r0 & 2
                if (r0 == 0) goto L19
                r0 = 1
                goto L1a
            L19:
                r0 = 0
            L1a:
                if (r0 == 0) goto L5c
                androidx.recyclerview.widget.catch r0 = r4.f7324do
                if (r0 == 0) goto L43
                java.util.List r1 = r6.m4417new()
                boolean r1 = r1.isEmpty()
                if (r1 == 0) goto L3d
                boolean r0 = r0.f7626do
                if (r0 == 0) goto L37
                boolean r0 = r6.m4412else()
                if (r0 == 0) goto L35
                goto L37
            L35:
                r0 = 0
                goto L38
            L37:
                r0 = 1
            L38:
                if (r0 == 0) goto L3b
                goto L3d
            L3b:
                r0 = 0
                goto L3e
            L3d:
                r0 = 1
            L3e:
                if (r0 == 0) goto L41
                goto L43
            L41:
                r0 = 0
                goto L44
            L43:
                r0 = 1
            L44:
                if (r0 == 0) goto L47
                goto L5c
            L47:
                java.util.ArrayList<androidx.recyclerview.widget.RecyclerView$default> r0 = r5.f7423if
                if (r0 != 0) goto L52
                java.util.ArrayList r0 = new java.util.ArrayList
                r0.<init>()
                r5.f7423if = r0
            L52:
                r6.f7400do = r5
                r6.f7406do = r2
                java.util.ArrayList<androidx.recyclerview.widget.RecyclerView$default> r0 = r5.f7423if
                r0.add(r6)
                goto L90
            L5c:
                boolean r0 = r6.m4412else()
                if (r0 == 0) goto L87
                boolean r0 = r6.m4419this()
                if (r0 != 0) goto L87
                androidx.recyclerview.widget.RecyclerView$try r0 = r4.f7323do
                boolean r0 = r0.f7470do
                if (r0 == 0) goto L6f
                goto L87
            L6f:
                java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                java.lang.String r1 = "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."
                r0.<init>(r1)
                java.lang.String r1 = r4.m4348finally()
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r6.<init>(r0)
                throw r6
            L87:
                r6.f7400do = r5
                r6.f7406do = r3
                java.util.ArrayList<androidx.recyclerview.widget.RecyclerView$default> r0 = r5.f7419do
                r0.add(r6)
            L90:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Cimport.m4427catch(android.view.View):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:261:0x0423, code lost:
        
            if (r8.m4412else() == false) goto L242;
         */
        /* JADX WARN: Code restructure failed: missing block: B:270:0x045d, code lost:
        
            if ((r6 == 0 || r6 + r9 < r17) == false) goto L242;
         */
        /* JADX WARN: Removed duplicated region for block: B:186:0x0311  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:242:0x054b  */
        /* JADX WARN: Removed duplicated region for block: B:250:0x0555  */
        /* JADX WARN: Removed duplicated region for block: B:328:0x0082  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x0135  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x0143  */
        /* renamed from: class, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.recyclerview.widget.RecyclerView.Cdefault m4428class(long r17, int r19) {
            /*
                Method dump skipped, instructions count: 1445
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Cimport.m4428class(long, int):androidx.recyclerview.widget.RecyclerView$default");
        }

        /* renamed from: const, reason: not valid java name */
        public final void m4429const(Cdefault cdefault) {
            if (cdefault.f7406do) {
                this.f7423if.remove(cdefault);
            } else {
                this.f7419do.remove(cdefault);
            }
            cdefault.f7400do = null;
            cdefault.f7406do = false;
            cdefault.f7413try &= -33;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m4430do(Cdefault cdefault, boolean z) {
            RecyclerView.m4331class(cdefault);
            RecyclerView recyclerView = RecyclerView.this;
            androidx.recyclerview.widget.Cthrows cthrows = recyclerView.f7330do;
            View view = cdefault.f7398do;
            if (cthrows != null) {
                Cthrows.Cdo cdo = cthrows.f7692do;
                QK.m1858native(view, cdo instanceof Cthrows.Cdo ? (Cimplements) cdo.f7694do.remove(view) : null);
            }
            if (z) {
                ArrayList arrayList = recyclerView.f7331do;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((Cnative) arrayList.get(i)).m4439do();
                }
                Ctry ctry = recyclerView.f7323do;
                if (ctry != null) {
                    ctry.mo4464class(cdefault);
                }
                if (recyclerView.f7319do != null) {
                    recyclerView.f7329do.m4560new(cdefault);
                }
                int[] iArr = RecyclerView.f7292try;
            }
            cdefault.f7401do = null;
            cdefault.f7402do = null;
            Cwhile m4433for = m4433for();
            m4433for.getClass();
            int i2 = cdefault.f7408for;
            ArrayList<Cdefault> arrayList2 = m4433for.m4466do(i2).f7476do;
            if (m4433for.f7472do.get(i2).f7474do <= arrayList2.size()) {
                C3850vF.m8456new(view);
            } else {
                cdefault.m4410const();
                arrayList2.add(cdefault);
            }
        }

        /* renamed from: else, reason: not valid java name */
        public final void m4431else() {
            ArrayList<Cdefault> arrayList = this.f7421for;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                m4434goto(size);
            }
            arrayList.clear();
            if (RecyclerView.f7289import) {
                Cconst.Cif cif = RecyclerView.this.f7325do;
                int[] iArr = cif.f7609do;
                if (iArr != null) {
                    Arrays.fill(iArr, -1);
                }
                cif.f7610for = 0;
            }
        }

        /* renamed from: final, reason: not valid java name */
        public final void m4432final() {
            Cclass cclass = RecyclerView.this.f7312do;
            this.f7422if = this.f7416do + (cclass != null ? cclass.f7373do : 0);
            ArrayList<Cdefault> arrayList = this.f7421for;
            for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f7422if; size--) {
                m4434goto(size);
            }
        }

        /* renamed from: for, reason: not valid java name */
        public final Cwhile m4433for() {
            if (this.f7417do == null) {
                this.f7417do = new Cwhile();
                m4438try();
            }
            return this.f7417do;
        }

        /* renamed from: goto, reason: not valid java name */
        public final void m4434goto(int i) {
            int[] iArr = RecyclerView.f7292try;
            ArrayList<Cdefault> arrayList = this.f7421for;
            m4430do(arrayList.get(i), true);
            arrayList.remove(i);
        }

        /* renamed from: if, reason: not valid java name */
        public final int m4435if(int i) {
            RecyclerView recyclerView = RecyclerView.this;
            if (i >= 0 && i < recyclerView.f7319do.m4449if()) {
                return !recyclerView.f7319do.f7448if ? i : recyclerView.f7327do.m4504case(i, 0);
            }
            StringBuilder m7821else = defpackage.Cpublic.m7821else("invalid position ", i, ". State item count is ");
            m7821else.append(recyclerView.f7319do.m4449if());
            m7821else.append(recyclerView.m4348finally());
            throw new IndexOutOfBoundsException(m7821else.toString());
        }

        /* renamed from: new, reason: not valid java name */
        public final View m4436new(int i) {
            return m4428class(Long.MAX_VALUE, i).f7398do;
        }

        /* renamed from: this, reason: not valid java name */
        public final void m4437this(View view) {
            Cdefault m4335implements = RecyclerView.m4335implements(view);
            boolean m4408catch = m4335implements.m4408catch();
            RecyclerView recyclerView = RecyclerView.this;
            if (m4408catch) {
                recyclerView.removeDetachedView(view, false);
            }
            if (m4335implements.m4406break()) {
                m4335implements.f7400do.m4429const(m4335implements);
            } else if (m4335implements.m4420throw()) {
                m4335implements.f7413try &= -33;
            }
            m4425break(m4335implements);
            if (recyclerView.f7324do == null || m4335implements.m4415goto()) {
                return;
            }
            recyclerView.f7324do.m4487else(m4335implements);
        }

        /* renamed from: try, reason: not valid java name */
        public final void m4438try() {
            if (this.f7417do != null) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.f7323do == null || !recyclerView.isAttachedToWindow()) {
                    return;
                }
                Cwhile cwhile = this.f7417do;
                cwhile.f7473do.add(recyclerView.f7323do);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$native, reason: invalid class name */
    public interface Cnative {
        /* renamed from: do, reason: not valid java name */
        void m4439do();
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$new, reason: invalid class name */
    public class Cnew {
        public Cnew() {
        }

        /* renamed from: do, reason: not valid java name */
        public final void m4440do(Cdefault cdefault, Cthis.Cfor cfor, Cthis.Cfor cfor2) {
            boolean z;
            int i;
            int i2;
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.getClass();
            cdefault.m4413final(false);
            androidx.recyclerview.widget.Ccatch ccatch = recyclerView.f7324do;
            ccatch.getClass();
            if (cfor == null || ((i = cfor.f7459do) == (i2 = cfor2.f7459do) && cfor.f7460if == cfor2.f7460if)) {
                ccatch.m4486class(cdefault);
                cdefault.f7398do.setAlpha(0.0f);
                ccatch.f7545for.add(cdefault);
                z = true;
            } else {
                z = ccatch.mo4489new(cdefault, i, cfor.f7460if, i2, cfor2.f7460if);
            }
            if (z) {
                recyclerView.i();
            }
        }

        /* renamed from: if, reason: not valid java name */
        public final void m4441if(Cdefault cdefault, Cthis.Cfor cfor, Cthis.Cfor cfor2) {
            boolean z;
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f7316do.m4429const(cdefault);
            recyclerView.m4349goto(cdefault);
            cdefault.m4413final(false);
            androidx.recyclerview.widget.Ccatch ccatch = recyclerView.f7324do;
            ccatch.getClass();
            int i = cfor.f7459do;
            int i2 = cfor.f7460if;
            View view = cdefault.f7398do;
            int left = cfor2 == null ? view.getLeft() : cfor2.f7459do;
            int top = cfor2 == null ? view.getTop() : cfor2.f7460if;
            if (cdefault.m4419this() || (i == left && i2 == top)) {
                ccatch.m4486class(cdefault);
                ccatch.f7547if.add(cdefault);
                z = true;
            } else {
                view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                z = ccatch.mo4489new(cdefault, i, i2, left, top);
            }
            if (z) {
                recyclerView.i();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$public, reason: invalid class name */
    public class Cpublic extends Celse {
        public Cpublic() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Celse
        /* renamed from: do */
        public final void mo4422do() {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.m4342catch(null);
            recyclerView.f7319do.f7443do = true;
            recyclerView.k(true);
            if (recyclerView.f7327do.m4508else()) {
                return;
            }
            recyclerView.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Celse
        /* renamed from: for */
        public final void mo4423for() {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.m4342catch(null);
            androidx.recyclerview.widget.Cdo cdo = recyclerView.f7327do;
            ArrayList<Cdo.Cif> arrayList = cdo.f7616do;
            arrayList.add(cdo.m4510goto(null, 2, 3, 1));
            cdo.f7612do |= 2;
            if (arrayList.size() == 1) {
                m4442new();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Celse
        /* renamed from: if */
        public final void mo4424if() {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.m4342catch(null);
            androidx.recyclerview.widget.Cdo cdo = recyclerView.f7327do;
            ArrayList<Cdo.Cif> arrayList = cdo.f7616do;
            arrayList.add(cdo.m4510goto(null, 1, 3, 1));
            cdo.f7612do |= 1;
            if (arrayList.size() == 1) {
                m4442new();
            }
        }

        /* renamed from: new, reason: not valid java name */
        public final void m4442new() {
            boolean z = RecyclerView.f7293while;
            RecyclerView recyclerView = RecyclerView.this;
            if (z && recyclerView.f7343for && recyclerView.f7351if) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                recyclerView.postOnAnimation(recyclerView.f7313do);
            } else {
                recyclerView.f7346goto = true;
                recyclerView.requestLayout();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$return, reason: invalid class name */
    public static abstract class Creturn {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public View f7427do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cclass f7428do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public RecyclerView f7430do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7431do;

        /* renamed from: if, reason: not valid java name */
        public boolean f7432if;

        /* renamed from: do, reason: not valid java name */
        public int f7426do = -1;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cdo f7429do = new Cdo();

        /* renamed from: androidx.recyclerview.widget.RecyclerView$return$do, reason: invalid class name */
        public static class Cdo {

            /* renamed from: new, reason: not valid java name */
            public int f7438new = -1;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public boolean f7435do = false;

            /* renamed from: do, reason: not valid java name */
            public int f7433do = 0;

            /* renamed from: if, reason: not valid java name */
            public int f7437if = 0;

            /* renamed from: for, reason: not valid java name */
            public int f7436for = Integer.MIN_VALUE;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public Interpolator f7434do = null;

            /* renamed from: do, reason: not valid java name */
            public final void m4447do(RecyclerView recyclerView) {
                int i = this.f7438new;
                if (i >= 0) {
                    this.f7438new = -1;
                    recyclerView.c(i);
                    this.f7435do = false;
                } else if (this.f7435do) {
                    Interpolator interpolator = this.f7434do;
                    if (interpolator != null && this.f7436for < 1) {
                        throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                    }
                    int i2 = this.f7436for;
                    if (i2 < 1) {
                        throw new IllegalStateException("Scroll duration must be a positive number");
                    }
                    recyclerView.f7322do.m4460for(this.f7433do, this.f7437if, i2, interpolator);
                    this.f7435do = false;
                }
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$return$if, reason: invalid class name */
        public interface Cif {
            /* renamed from: do */
            PointF mo4318do(int i);
        }

        /* renamed from: do, reason: not valid java name */
        public PointF mo4443do(int i) {
            Object obj = this.f7428do;
            if (obj instanceof Cif) {
                return ((Cif) obj).mo4318do(i);
            }
            return null;
        }

        /* renamed from: for, reason: not valid java name */
        public abstract void mo4444for(View view, Cdo cdo);

        /* renamed from: if, reason: not valid java name */
        public final void m4445if(int i, int i2) {
            PointF mo4443do;
            RecyclerView recyclerView = this.f7430do;
            if (this.f7426do == -1 || recyclerView == null) {
                m4446new();
            }
            if (this.f7431do && this.f7427do == null && this.f7428do != null && (mo4443do = mo4443do(this.f7426do)) != null) {
                float f = mo4443do.x;
                if (f != 0.0f || mo4443do.y != 0.0f) {
                    recyclerView.r(null, (int) Math.signum(f), (int) Math.signum(mo4443do.y));
                }
            }
            this.f7431do = false;
            View view = this.f7427do;
            Cdo cdo = this.f7429do;
            if (view != null) {
                this.f7430do.getClass();
                Cdefault m4335implements = RecyclerView.m4335implements(view);
                if ((m4335implements != null ? m4335implements.m4414for() : -1) == this.f7426do) {
                    View view2 = this.f7427do;
                    Cstatic cstatic = recyclerView.f7319do;
                    mo4444for(view2, cdo);
                    cdo.m4447do(recyclerView);
                    m4446new();
                } else {
                    this.f7427do = null;
                }
            }
            if (this.f7432if) {
                Cstatic cstatic2 = recyclerView.f7319do;
                androidx.recyclerview.widget.Csuper csuper = (androidx.recyclerview.widget.Csuper) this;
                if (((Creturn) csuper).f7430do.f7312do.m4395throws() == 0) {
                    csuper.m4446new();
                } else {
                    int i3 = csuper.f7684if;
                    int i4 = i3 - i;
                    if (i3 * i4 <= 0) {
                        i4 = 0;
                    }
                    csuper.f7684if = i4;
                    int i5 = csuper.f7682for;
                    int i6 = i5 - i2;
                    if (i5 * i6 <= 0) {
                        i6 = 0;
                    }
                    csuper.f7682for = i6;
                    if (i4 == 0 && i6 == 0) {
                        PointF mo4443do2 = csuper.mo4443do(((Creturn) csuper).f7426do);
                        if (mo4443do2 != null) {
                            if (mo4443do2.x != 0.0f || mo4443do2.y != 0.0f) {
                                float f2 = mo4443do2.y;
                                float sqrt = (float) Math.sqrt((f2 * f2) + (r10 * r10));
                                float f3 = mo4443do2.x / sqrt;
                                mo4443do2.x = f3;
                                float f4 = mo4443do2.y / sqrt;
                                mo4443do2.y = f4;
                                csuper.f7678do = mo4443do2;
                                csuper.f7684if = (int) (f3 * 10000.0f);
                                csuper.f7682for = (int) (f4 * 10000.0f);
                                int mo4562this = csuper.mo4562this(10000);
                                int i7 = (int) (csuper.f7684if * 1.2f);
                                int i8 = (int) (csuper.f7682for * 1.2f);
                                LinearInterpolator linearInterpolator = csuper.f7681do;
                                cdo.f7433do = i7;
                                cdo.f7437if = i8;
                                cdo.f7436for = (int) (mo4562this * 1.2f);
                                cdo.f7434do = linearInterpolator;
                                cdo.f7435do = true;
                            }
                        }
                        cdo.f7438new = ((Creturn) csuper).f7426do;
                        csuper.m4446new();
                    }
                }
                boolean z = cdo.f7438new >= 0;
                cdo.m4447do(recyclerView);
                if (z && this.f7432if) {
                    this.f7431do = true;
                    recyclerView.f7322do.m4461if();
                }
            }
        }

        /* renamed from: new, reason: not valid java name */
        public final void m4446new() {
            if (this.f7432if) {
                this.f7432if = false;
                androidx.recyclerview.widget.Csuper csuper = (androidx.recyclerview.widget.Csuper) this;
                csuper.f7682for = 0;
                csuper.f7684if = 0;
                csuper.f7678do = null;
                this.f7430do.f7319do.f7441do = -1;
                this.f7427do = null;
                this.f7426do = -1;
                this.f7431do = false;
                Cclass cclass = this.f7428do;
                if (cclass.f7374do == this) {
                    cclass.f7374do = null;
                }
                this.f7428do = null;
                this.f7430do = null;
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$static, reason: invalid class name */
    public static class Cstatic {

        /* renamed from: case, reason: not valid java name */
        public int f7439case;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public long f7442do;

        /* renamed from: else, reason: not valid java name */
        public int f7444else;

        /* renamed from: do, reason: not valid java name */
        public int f7441do = -1;

        /* renamed from: if, reason: not valid java name */
        public int f7447if = 0;

        /* renamed from: for, reason: not valid java name */
        public int f7445for = 0;

        /* renamed from: new, reason: not valid java name */
        public int f7449new = 1;

        /* renamed from: try, reason: not valid java name */
        public int f7451try = 0;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7443do = false;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f7448if = false;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public boolean f7446for = false;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public boolean f7450new = false;

        /* renamed from: try, reason: not valid java name and collision with other field name */
        public boolean f7452try = false;

        /* renamed from: case, reason: not valid java name and collision with other field name */
        public boolean f7440case = false;

        /* renamed from: do, reason: not valid java name */
        public final void m4448do(int i) {
            if ((this.f7449new & i) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f7449new));
        }

        /* renamed from: if, reason: not valid java name */
        public final int m4449if() {
            return this.f7448if ? this.f7447if - this.f7445for : this.f7451try;
        }

        public final String toString() {
            return "State{mTargetPosition=" + this.f7441do + ", mData=null, mItemCount=" + this.f7451try + ", mIsMeasuring=" + this.f7450new + ", mPreviousLayoutItemCount=" + this.f7447if + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f7445for + ", mStructureChanged=" + this.f7443do + ", mInPreLayout=" + this.f7448if + ", mRunSimpleAnimations=" + this.f7452try + ", mRunPredictiveAnimations=" + this.f7440case + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$super, reason: invalid class name */
    public interface Csuper {
        /* renamed from: do, reason: not valid java name */
        boolean mo4450do(MotionEvent motionEvent);

        /* renamed from: for, reason: not valid java name */
        void mo4451for(MotionEvent motionEvent);

        /* renamed from: if, reason: not valid java name */
        void mo4452if();
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$switch, reason: invalid class name */
    public static class Cswitch extends Cgoto {
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$this, reason: invalid class name */
    public static abstract class Cthis {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cif f7454do = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList<Cdo> f7455do = new ArrayList<>();

        /* renamed from: do, reason: not valid java name */
        public final long f7453do = 120;

        /* renamed from: if, reason: not valid java name */
        public final long f7457if = 120;

        /* renamed from: for, reason: not valid java name */
        public final long f7456for = 250;

        /* renamed from: new, reason: not valid java name */
        public final long f7458new = 250;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$this$do, reason: invalid class name */
        public interface Cdo {
            /* renamed from: do, reason: not valid java name */
            void m4455do();
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$this$for, reason: invalid class name */
        public static class Cfor {

            /* renamed from: do, reason: not valid java name */
            public int f7459do;

            /* renamed from: if, reason: not valid java name */
            public int f7460if;

            /* renamed from: do, reason: not valid java name */
            public final void m4456do(Cdefault cdefault) {
                View view = cdefault.f7398do;
                this.f7459do = view.getLeft();
                this.f7460if = view.getTop();
                view.getRight();
                view.getBottom();
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$this$if, reason: invalid class name */
        public interface Cif {
        }

        /* renamed from: do, reason: not valid java name */
        public static void m4453do(Cdefault cdefault) {
            RecyclerView recyclerView;
            int i = cdefault.f7413try & 14;
            if (cdefault.m4412else() || (i & 4) != 0 || (recyclerView = cdefault.f7402do) == null) {
                return;
            }
            recyclerView.m4352interface(cdefault);
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x006f  */
        /* renamed from: if, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m4454if(androidx.recyclerview.widget.RecyclerView.Cdefault r10) {
            /*
                r9 = this;
                androidx.recyclerview.widget.RecyclerView$this$if r0 = r9.f7454do
                if (r0 == 0) goto L98
                androidx.recyclerview.widget.RecyclerView$break r0 = (androidx.recyclerview.widget.RecyclerView.Cbreak) r0
                r1 = 1
                r10.m4413final(r1)
                androidx.recyclerview.widget.RecyclerView$default r2 = r10.f7399do
                r3 = 0
                if (r2 == 0) goto L15
                androidx.recyclerview.widget.RecyclerView$default r2 = r10.f7411if
                if (r2 != 0) goto L15
                r10.f7399do = r3
            L15:
                r10.f7411if = r3
                int r2 = r10.f7413try
                r2 = r2 & 16
                r3 = 0
                if (r2 == 0) goto L20
                r2 = 1
                goto L21
            L20:
                r2 = 0
            L21:
                if (r2 != 0) goto L98
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                r0.y()
                androidx.recyclerview.widget.if r2 = r0.f7328do
                androidx.recyclerview.widget.if$do r4 = r2.f7650do
                androidx.recyclerview.widget.if$if r5 = r2.f7651do
                int r6 = r2.f7648do
                android.view.View r7 = r10.f7398do
                if (r6 != r1) goto L41
                android.view.View r1 = r2.f7649do
                if (r1 != r7) goto L39
                goto L6c
            L39:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "Cannot call removeViewIfHidden within removeView(At) for a different view"
                r10.<init>(r0)
                throw r10
            L41:
                r8 = 2
                if (r6 == r8) goto L90
                r2.f7648do = r8     // Catch: java.lang.Throwable -> L8c
                r6 = r5
                androidx.recyclerview.widget.static r6 = (androidx.recyclerview.widget.Cstatic) r6     // Catch: java.lang.Throwable -> L8c
                androidx.recyclerview.widget.RecyclerView r6 = r6.f7676do     // Catch: java.lang.Throwable -> L8c
                int r6 = r6.indexOfChild(r7)     // Catch: java.lang.Throwable -> L8c
                r8 = -1
                if (r6 != r8) goto L56
                r2.m4522catch(r7)     // Catch: java.lang.Throwable -> L8c
                goto L67
            L56:
                boolean r8 = r4.m4537new(r6)     // Catch: java.lang.Throwable -> L8c
                if (r8 == 0) goto L6a
                r4.m4531case(r6)     // Catch: java.lang.Throwable -> L8c
                r2.m4522catch(r7)     // Catch: java.lang.Throwable -> L8c
                androidx.recyclerview.widget.static r5 = (androidx.recyclerview.widget.Cstatic) r5     // Catch: java.lang.Throwable -> L8c
                r5.m4568if(r6)     // Catch: java.lang.Throwable -> L8c
            L67:
                r2.f7648do = r3
                goto L6d
            L6a:
                r2.f7648do = r3
            L6c:
                r1 = 0
            L6d:
                if (r1 == 0) goto L7b
                androidx.recyclerview.widget.RecyclerView$default r2 = androidx.recyclerview.widget.RecyclerView.m4335implements(r7)
                androidx.recyclerview.widget.RecyclerView$import r4 = r0.f7316do
                r4.m4429const(r2)
                r4.m4425break(r2)
            L7b:
                r2 = r1 ^ 1
                r0.z(r2)
                if (r1 != 0) goto L98
                boolean r10 = r10.m4408catch()
                if (r10 == 0) goto L98
                r0.removeDetachedView(r7, r3)
                goto L98
            L8c:
                r10 = move-exception
                r2.f7648do = r3
                throw r10
            L90:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "Cannot call removeViewIfHidden within removeViewIfHidden"
                r10.<init>(r0)
                throw r10
            L98:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Cthis.m4454if(androidx.recyclerview.widget.RecyclerView$default):void");
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$throw, reason: invalid class name */
    public static abstract class Cthrow {
        /* renamed from: do, reason: not valid java name */
        public void mo4457do(int i, RecyclerView recyclerView) {
        }

        /* renamed from: if, reason: not valid java name */
        public void mo4458if(RecyclerView recyclerView, int i, int i2) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$throws, reason: invalid class name */
    public class Cthrows implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public Interpolator f7461do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public OverScroller f7462do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7464do;

        /* renamed from: for, reason: not valid java name */
        public int f7465for;

        /* renamed from: if, reason: not valid java name */
        public boolean f7466if;

        /* renamed from: new, reason: not valid java name */
        public int f7467new;

        public Cthrows() {
            Cfor cfor = RecyclerView.f7286do;
            this.f7461do = cfor;
            this.f7464do = false;
            this.f7466if = false;
            this.f7462do = new OverScroller(RecyclerView.this.getContext(), cfor);
        }

        /* renamed from: do, reason: not valid java name */
        public final void m4459do(int i, int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.v(2);
            this.f7467new = 0;
            this.f7465for = 0;
            Interpolator interpolator = this.f7461do;
            Cfor cfor = RecyclerView.f7286do;
            if (interpolator != cfor) {
                this.f7461do = cfor;
                this.f7462do = new OverScroller(recyclerView.getContext(), cfor);
            }
            this.f7462do.fling(0, 0, i, i2, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER);
            m4461if();
        }

        /* renamed from: for, reason: not valid java name */
        public final void m4460for(int i, int i2, int i3, Interpolator interpolator) {
            RecyclerView recyclerView = RecyclerView.this;
            if (i3 == Integer.MIN_VALUE) {
                int abs = Math.abs(i);
                int abs2 = Math.abs(i2);
                boolean z = abs > abs2;
                int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
                if (!z) {
                    abs = abs2;
                }
                i3 = Math.min((int) (((abs / width) + 1.0f) * 300.0f), AdError.SERVER_ERROR_CODE);
            }
            int i4 = i3;
            if (interpolator == null) {
                interpolator = RecyclerView.f7286do;
            }
            if (this.f7461do != interpolator) {
                this.f7461do = interpolator;
                this.f7462do = new OverScroller(recyclerView.getContext(), interpolator);
            }
            this.f7467new = 0;
            this.f7465for = 0;
            recyclerView.v(2);
            this.f7462do.startScroll(0, 0, i, i2, i4);
            if (Build.VERSION.SDK_INT < 23) {
                this.f7462do.computeScrollOffset();
            }
            m4461if();
        }

        /* renamed from: if, reason: not valid java name */
        public final void m4461if() {
            if (this.f7464do) {
                this.f7466if = true;
                return;
            }
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.removeCallbacks(this);
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            recyclerView.postOnAnimation(this);
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            int i2;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f7312do == null) {
                recyclerView.removeCallbacks(this);
                this.f7462do.abortAnimation();
                return;
            }
            this.f7466if = false;
            this.f7464do = true;
            recyclerView.m4363throw();
            OverScroller overScroller = this.f7462do;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i3 = currX - this.f7465for;
                int i4 = currY - this.f7467new;
                this.f7465for = currX;
                this.f7467new = currY;
                int m4338super = RecyclerView.m4338super(i3, recyclerView.f7310do, recyclerView.f7341for, recyclerView.getWidth());
                int m4338super2 = RecyclerView.m4338super(i4, recyclerView.f7349if, recyclerView.f7354new, recyclerView.getHeight());
                int[] iArr = recyclerView.f7357new;
                iArr[0] = 0;
                iArr[1] = 0;
                boolean m8027for = recyclerView.a().m8027for(m4338super, m4338super2, 1, iArr, null);
                int[] iArr2 = recyclerView.f7357new;
                if (m8027for) {
                    m4338super -= iArr2[0];
                    m4338super2 -= iArr2[1];
                }
                if (recyclerView.getOverScrollMode() != 2) {
                    recyclerView.m4347final(m4338super, m4338super2);
                }
                if (recyclerView.f7323do != null) {
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    recyclerView.r(iArr2, m4338super, m4338super2);
                    i = iArr2[0];
                    i2 = iArr2[1];
                    m4338super -= i;
                    m4338super2 -= i2;
                    Creturn creturn = recyclerView.f7312do.f7374do;
                    if (creturn != null && !creturn.f7431do && creturn.f7432if) {
                        int m4449if = recyclerView.f7319do.m4449if();
                        if (m4449if == 0) {
                            creturn.m4446new();
                        } else if (creturn.f7426do >= m4449if) {
                            creturn.f7426do = m4449if - 1;
                            creturn.m4445if(i, i2);
                        } else {
                            creturn.m4445if(i, i2);
                        }
                    }
                } else {
                    i = 0;
                    i2 = 0;
                }
                if (!recyclerView.f7350if.isEmpty()) {
                    recyclerView.invalidate();
                }
                int[] iArr3 = recyclerView.f7357new;
                iArr3[0] = 0;
                iArr3[1] = 0;
                recyclerView.a().m8031try(i, i2, m4338super, m4338super2, null, 1, iArr3);
                int i5 = m4338super - iArr2[0];
                int i6 = m4338super2 - iArr2[1];
                if (i != 0 || i2 != 0) {
                    recyclerView.m4359static(i, i2);
                }
                if (!recyclerView.awakenScrollBars()) {
                    recyclerView.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i5 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i6 != 0));
                Creturn creturn2 = recyclerView.f7312do.f7374do;
                if ((creturn2 != null && creturn2.f7431do) || !z) {
                    m4461if();
                    androidx.recyclerview.widget.Cconst cconst = recyclerView.f7326do;
                    if (cconst != null) {
                        cconst.m4496do(recyclerView, i, i2);
                    }
                } else {
                    if (recyclerView.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i7 = i5 < 0 ? -currVelocity : i5 > 0 ? currVelocity : 0;
                        if (i6 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i6 <= 0) {
                            currVelocity = 0;
                        }
                        if (i7 < 0) {
                            recyclerView.m4364throws();
                            if (recyclerView.f7310do.isFinished()) {
                                recyclerView.f7310do.onAbsorb(-i7);
                            }
                        } else if (i7 > 0) {
                            recyclerView.m4345default();
                            if (recyclerView.f7341for.isFinished()) {
                                recyclerView.f7341for.onAbsorb(i7);
                            }
                        }
                        if (currVelocity < 0) {
                            recyclerView.m4346extends();
                            if (recyclerView.f7349if.isFinished()) {
                                recyclerView.f7349if.onAbsorb(-currVelocity);
                            }
                        } else if (currVelocity > 0) {
                            recyclerView.m4360switch();
                            if (recyclerView.f7354new.isFinished()) {
                                recyclerView.f7354new.onAbsorb(currVelocity);
                            }
                        }
                        if (i7 != 0 || currVelocity != 0) {
                            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                            recyclerView.postInvalidateOnAnimation();
                        }
                    }
                    if (RecyclerView.f7289import) {
                        Cconst.Cif cif = recyclerView.f7325do;
                        int[] iArr4 = cif.f7609do;
                        if (iArr4 != null) {
                            Arrays.fill(iArr4, -1);
                        }
                        cif.f7610for = 0;
                    }
                }
            }
            Creturn creturn3 = recyclerView.f7312do.f7374do;
            if (creturn3 != null && creturn3.f7431do) {
                creturn3.m4445if(0, 0);
            }
            this.f7464do = false;
            if (!this.f7466if) {
                recyclerView.v(0);
                recyclerView.a().m8028goto(1);
            } else {
                recyclerView.removeCallbacks(this);
                WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
                recyclerView.postOnAnimation(this);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$try, reason: invalid class name */
    public static abstract class Ctry<VH extends Cdefault> {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Ccase f7469do = new Ccase();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7470do = false;

        /* renamed from: do, reason: not valid java name */
        public final int f7468do = 1;

        /* renamed from: break */
        public void mo1020break() {
        }

        /* renamed from: case, reason: not valid java name */
        public final void m4462case() {
            this.f7469do.m4373if();
        }

        /* renamed from: catch, reason: not valid java name */
        public void mo4463catch(VH vh) {
        }

        /* renamed from: class, reason: not valid java name */
        public void mo4464class(VH vh) {
        }

        /* renamed from: const, reason: not valid java name */
        public final void m4465const() {
            if (this.f7469do.m4371do()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.f7470do = true;
        }

        /* renamed from: else */
        public void mo1022else() {
        }

        /* renamed from: for */
        public abstract int mo1023for();

        /* renamed from: goto */
        public abstract void mo1024goto(VH vh, int i);

        /* renamed from: new */
        public long mo1026new(int i) {
            return -1L;
        }

        /* renamed from: this */
        public abstract Cdefault mo1027this(RecyclerView recyclerView, int i);

        /* renamed from: try */
        public int mo1028try(int i) {
            return 0;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$while, reason: invalid class name */
    public static class Cwhile {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final SparseArray<Cdo> f7472do = new SparseArray<>();

        /* renamed from: do, reason: not valid java name */
        public int f7471do = 0;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Set<Ctry<?>> f7473do = Collections.newSetFromMap(new IdentityHashMap());

        /* renamed from: androidx.recyclerview.widget.RecyclerView$while$do, reason: invalid class name */
        public static class Cdo {

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public final ArrayList<Cdefault> f7476do = new ArrayList<>();

            /* renamed from: do, reason: not valid java name */
            public final int f7474do = 5;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public long f7475do = 0;

            /* renamed from: if, reason: not valid java name */
            public long f7477if = 0;
        }

        /* renamed from: do, reason: not valid java name */
        public final Cdo m4466do(int i) {
            SparseArray<Cdo> sparseArray = this.f7472do;
            Cdo cdo = sparseArray.get(i);
            if (cdo != null) {
                return cdo;
            }
            Cdo cdo2 = new Cdo();
            sparseArray.put(i, cdo2);
            return cdo2;
        }
    }

    static {
        f7291throw = Build.VERSION.SDK_INT >= 23;
        f7293while = true;
        f7289import = true;
        Class<?> cls = Integer.TYPE;
        f7287do = new Class[]{Context.class, AttributeSet.class, cls, cls};
        f7286do = new Cfor();
        f7288if = new Cswitch();
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.joeykrim.rootcheck.R.attr.recyclerViewStyle);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m4331class(Cdefault cdefault) {
        WeakReference<RecyclerView> weakReference = cdefault.f7403do;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == cdefault.f7398do) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            cdefault.f7403do = null;
        }
    }

    /* renamed from: implements, reason: not valid java name */
    public static Cdefault m4335implements(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).f7368do;
    }

    private int n(float f, int i) {
        float width = f / getWidth();
        float height = i / getHeight();
        EdgeEffect edgeEffect = this.f7349if;
        float f2 = 0.0f;
        if (edgeEffect == null || C3813uf.m8389do(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.f7354new;
            if (edgeEffect2 != null && C3813uf.m8389do(edgeEffect2) != 0.0f) {
                if (canScrollVertically(1)) {
                    this.f7354new.onRelease();
                } else {
                    float m8390if = C3813uf.m8390if(this.f7354new, height, 1.0f - width);
                    if (C3813uf.m8389do(this.f7354new) == 0.0f) {
                        this.f7354new.onRelease();
                    }
                    f2 = m8390if;
                }
                invalidate();
            }
        } else {
            if (canScrollVertically(-1)) {
                this.f7349if.onRelease();
            } else {
                float f3 = -C3813uf.m8390if(this.f7349if, -height, width);
                if (C3813uf.m8389do(this.f7349if) == 0.0f) {
                    this.f7349if.onRelease();
                }
                f2 = f3;
            }
            invalidate();
        }
        return Math.round(f2 * getHeight());
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static RecyclerView m4337strictfp(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView m4337strictfp = m4337strictfp(viewGroup.getChildAt(i));
            if (m4337strictfp != null) {
                return m4337strictfp;
            }
        }
        return null;
    }

    /* renamed from: super, reason: not valid java name */
    public static int m4338super(int i, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i2) {
        if (i > 0 && edgeEffect != null && C3813uf.m8389do(edgeEffect) != 0.0f) {
            int round = Math.round(C3813uf.m8390if(edgeEffect, ((-i) * 4.0f) / i2, 0.5f) * ((-i2) / 4.0f));
            if (round != i) {
                edgeEffect.finish();
            }
            return i - round;
        }
        if (i >= 0 || edgeEffect2 == null || C3813uf.m8389do(edgeEffect2) == 0.0f) {
            return i;
        }
        float f = i2;
        int round2 = Math.round(C3813uf.m8390if(edgeEffect2, (i * 4.0f) / f, 0.5f) * (f / 4.0f));
        if (round2 != i) {
            edgeEffect2.finish();
        }
        return i - round2;
    }

    public final C3651ru a() {
        if (this.f7332do == null) {
            this.f7332do = new C3651ru(this);
        }
        return this.f7332do;
    }

    /* renamed from: abstract, reason: not valid java name */
    public final boolean m4340abstract(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        ArrayList<Csuper> arrayList = this.f7342for;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Csuper csuper = arrayList.get(i);
            if (csuper.mo4450do(motionEvent) && action != 3) {
                this.f7320do = csuper;
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        Cclass cclass = this.f7312do;
        if (cclass != null) {
            cclass.getClass();
        }
        super.addFocusables(arrayList, i, i2);
    }

    public final boolean b() {
        return this.f7363try > 0;
    }

    /* renamed from: break, reason: not valid java name */
    public final void m4341break(Cthrow cthrow) {
        if (this.f7364try == null) {
            this.f7364try = new ArrayList();
        }
        this.f7364try.add(cthrow);
    }

    public final void c(int i) {
        if (this.f7312do == null) {
            return;
        }
        v(2);
        this.f7312do.I(i);
        awakenScrollBars();
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m4342catch(String str) {
        if (b()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + m4348finally());
        }
        if (this.f7296case > 0) {
            new IllegalStateException(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + m4348finally());
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.f7312do.mo4306else((LayoutParams) layoutParams);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        Cclass cclass = this.f7312do;
        if (cclass != null && cclass.mo4323try()) {
            return this.f7312do.mo4317catch(this.f7319do);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        Cclass cclass = this.f7312do;
        if (cclass != null && cclass.mo4323try()) {
            return this.f7312do.mo4304class(this.f7319do);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        Cclass cclass = this.f7312do;
        if (cclass != null && cclass.mo4323try()) {
            return this.f7312do.mo4305const(this.f7319do);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        Cclass cclass = this.f7312do;
        if (cclass != null && cclass.mo4316case()) {
            return this.f7312do.mo4319final(this.f7319do);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        Cclass cclass = this.f7312do;
        if (cclass != null && cclass.mo4316case()) {
            return this.f7312do.mo4311super(this.f7319do);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        Cclass cclass = this.f7312do;
        if (cclass != null && cclass.mo4316case()) {
            return this.f7312do.mo4312throw(this.f7319do);
        }
        return 0;
    }

    /* renamed from: const, reason: not valid java name */
    public final void m4343const() {
        int m4526goto = this.f7328do.m4526goto();
        for (int i = 0; i < m4526goto; i++) {
            Cdefault m4335implements = m4335implements(this.f7328do.m4524else(i));
            if (!m4335implements.m4418super()) {
                m4335implements.f7410if = -1;
                m4335implements.f7412new = -1;
            }
        }
        Cimport cimport = this.f7316do;
        ArrayList<Cdefault> arrayList = cimport.f7421for;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Cdefault cdefault = arrayList.get(i2);
            cdefault.f7410if = -1;
            cdefault.f7412new = -1;
        }
        ArrayList<Cdefault> arrayList2 = cimport.f7419do;
        int size2 = arrayList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            Cdefault cdefault2 = arrayList2.get(i3);
            cdefault2.f7410if = -1;
            cdefault2.f7412new = -1;
        }
        ArrayList<Cdefault> arrayList3 = cimport.f7423if;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i4 = 0; i4 < size3; i4++) {
                Cdefault cdefault3 = cimport.f7423if.get(i4);
                cdefault3.f7410if = -1;
                cdefault3.f7412new = -1;
            }
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public final void m4344continue(int[] iArr) {
        int m4530try = this.f7328do.m4530try();
        if (m4530try == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < m4530try; i3++) {
            Cdefault m4335implements = m4335implements(this.f7328do.m4528new(i3));
            if (!m4335implements.m4418super()) {
                int m4414for = m4335implements.m4414for();
                if (m4414for < i) {
                    i = m4414for;
                }
                if (m4414for > i2) {
                    i2 = m4414for;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    public final void d() {
        int m4526goto = this.f7328do.m4526goto();
        for (int i = 0; i < m4526goto; i++) {
            ((LayoutParams) this.f7328do.m4524else(i).getLayoutParams()).f7369do = true;
        }
        ArrayList<Cdefault> arrayList = this.f7316do.f7421for;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            LayoutParams layoutParams = (LayoutParams) arrayList.get(i2).f7398do.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.f7369do = true;
            }
        }
    }

    /* renamed from: default, reason: not valid java name */
    public final void m4345default() {
        if (this.f7341for != null) {
            return;
        }
        this.f7321do.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f7341for = edgeEffect;
        if (this.f7333do) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return a().m8025do(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return a().m8029if(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return a().m8027for(i, i2, 0, iArr, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return a().m8031try(i, i2, i3, i4, iArr, 0, null);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean z;
        androidx.recyclerview.widget.Ccatch ccatch;
        super.draw(canvas);
        ArrayList<Ccatch> arrayList = this.f7350if;
        int size = arrayList.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            arrayList.get(i).mo4375case(canvas, this);
        }
        EdgeEffect edgeEffect = this.f7310do;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.f7333do ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.f7310do;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.f7349if;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.f7333do) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.f7349if;
            z |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.f7341for;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f7333do ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.f7341for;
            z |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.f7354new;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f7333do) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.f7354new;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z2 = true;
            }
            z |= z2;
            canvas.restoreToCount(save4);
        }
        if ((z || (ccatch = this.f7324do) == null || arrayList.size() <= 0 || !ccatch.m4485catch()) ? z : true) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    public final void e(int i, int i2, boolean z) {
        int i3 = i + i2;
        int m4526goto = this.f7328do.m4526goto();
        for (int i4 = 0; i4 < m4526goto; i4++) {
            Cdefault m4335implements = m4335implements(this.f7328do.m4524else(i4));
            if (m4335implements != null && !m4335implements.m4418super()) {
                int i5 = m4335implements.f7396do;
                Cstatic cstatic = this.f7319do;
                if (i5 >= i3) {
                    m4335implements.m4409class(-i2, z);
                    cstatic.f7443do = true;
                } else if (i5 >= i) {
                    m4335implements.m4416if(8);
                    m4335implements.m4409class(-i2, z);
                    m4335implements.f7396do = i - 1;
                    cstatic.f7443do = true;
                }
            }
        }
        Cimport cimport = this.f7316do;
        ArrayList<Cdefault> arrayList = cimport.f7421for;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                requestLayout();
                return;
            }
            Cdefault cdefault = arrayList.get(size);
            if (cdefault != null) {
                int i6 = cdefault.f7396do;
                if (i6 >= i3) {
                    cdefault.m4409class(-i2, z);
                } else if (i6 >= i) {
                    cdefault.m4416if(8);
                    cimport.m4434goto(size);
                }
            }
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public final void m4346extends() {
        if (this.f7349if != null) {
            return;
        }
        this.f7321do.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f7349if = edgeEffect;
        if (this.f7333do) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final void f() {
        this.f7363try++;
    }

    /* renamed from: final, reason: not valid java name */
    public final void m4347final(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.f7310do;
        if (edgeEffect == null || edgeEffect.isFinished() || i <= 0) {
            z = false;
        } else {
            this.f7310do.onRelease();
            z = this.f7310do.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f7341for;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i < 0) {
            this.f7341for.onRelease();
            z |= this.f7341for.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f7349if;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i2 > 0) {
            this.f7349if.onRelease();
            z |= this.f7349if.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f7354new;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i2 < 0) {
            this.f7354new.onRelease();
            z |= this.f7354new.isFinished();
        }
        if (z) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            postInvalidateOnAnimation();
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public final String m4348finally() {
        return " " + super.toString() + ", adapter:" + this.f7323do + ", layout:" + this.f7312do + ", context:" + getContext();
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0191, code lost:
    
        if ((r3 * r1) >= 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x015b, code lost:
    
        if (r4 > 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0179, code lost:
    
        if (r3 > 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x017c, code lost:
    
        if (r4 < 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x017f, code lost:
    
        if (r3 < 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0188, code lost:
    
        if ((r3 * r1) <= 0) goto L136;
     */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:119:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0075  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View focusSearch(android.view.View r14, int r15) {
        /*
            Method dump skipped, instructions count: 414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    public final void g(boolean z) {
        int i;
        int i2 = this.f7363try - 1;
        this.f7363try = i2;
        if (i2 < 1) {
            this.f7363try = 0;
            if (z) {
                int i3 = this.f7353new;
                this.f7353new = 0;
                if (i3 != 0) {
                    AccessibilityManager accessibilityManager = this.f7309do;
                    if (accessibilityManager != null && accessibilityManager.isEnabled()) {
                        AccessibilityEvent obtain = AccessibilityEvent.obtain();
                        obtain.setEventType(2048);
                        obtain.setContentChangeTypes(i3);
                        sendAccessibilityEventUnchecked(obtain);
                    }
                }
                ArrayList arrayList = this.f7297case;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    Cdefault cdefault = (Cdefault) arrayList.get(size);
                    if (cdefault.f7398do.getParent() == this && !cdefault.m4418super() && (i = cdefault.f7409goto) != -1) {
                        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                        cdefault.f7398do.setImportantForAccessibility(i);
                        cdefault.f7409goto = -1;
                    }
                }
                arrayList.clear();
            }
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        Cclass cclass = this.f7312do;
        if (cclass != null) {
            return cclass.mo4308native();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m4348finally());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Cclass cclass = this.f7312do;
        if (cclass != null) {
            return cclass.mo4309public(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m4348finally());
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    @Override // android.view.View
    public final int getBaseline() {
        Cclass cclass = this.f7312do;
        if (cclass == null) {
            return super.getBaseline();
        }
        cclass.getClass();
        return -1;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        return super.getChildDrawingOrder(i, i2);
    }

    @Override // android.view.ViewGroup
    public final boolean getClipToPadding() {
        return this.f7333do;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m4349goto(Cdefault cdefault) {
        View view = cdefault.f7398do;
        boolean z = view.getParent() == this;
        this.f7316do.m4429const(m4365transient(view));
        if (cdefault.m4408catch()) {
            this.f7328do.m4527if(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z) {
            this.f7328do.m4523do(view, true, -1);
            return;
        }
        androidx.recyclerview.widget.Cif cif = this.f7328do;
        int indexOfChild = ((androidx.recyclerview.widget.Cstatic) cif.f7651do).f7676do.indexOfChild(view);
        if (indexOfChild >= 0) {
            cif.f7650do.m4535goto(indexOfChild);
            cif.m4529this(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    public final void h(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f7345goto) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f7345goto = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.f7299catch = x;
            this.f7360this = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.f7301class = y;
            this.f7294break = y;
        }
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return a().m8024case(0) != null;
    }

    public final void i() {
        if (this.f7338final || !this.f7351if) {
            return;
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        postOnAnimation(this.f7315do);
        this.f7338final = true;
    }

    /* renamed from: import, reason: not valid java name */
    public final void m4350import(View view) {
        Cdefault m4335implements = m4335implements(view);
        Ctry ctry = this.f7323do;
        if (ctry != null && m4335implements != null) {
            ctry.mo4463catch(m4335implements);
        }
        ArrayList arrayList = this.f7355new;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                ((Cconst) this.f7355new.get(size)).mo4405if();
            }
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final Rect m4351instanceof(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        boolean z = layoutParams.f7369do;
        Rect rect = layoutParams.f7367do;
        if (!z) {
            return rect;
        }
        if (this.f7319do.f7448if && (layoutParams.m4370if() || layoutParams.f7368do.m4412else())) {
            return rect;
        }
        rect.set(0, 0, 0, 0);
        ArrayList<Ccatch> arrayList = this.f7350if;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Rect rect2 = this.f7306do;
            rect2.set(0, 0, 0, 0);
            arrayList.get(i).mo4376new(rect2, view, this);
            rect.left += rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        layoutParams.f7369do = false;
        return rect;
    }

    /* renamed from: interface, reason: not valid java name */
    public final int m4352interface(Cdefault cdefault) {
        if (!((cdefault.f7413try & 524) != 0) && cdefault.m4407case()) {
            androidx.recyclerview.widget.Cdo cdo = this.f7327do;
            int i = cdefault.f7396do;
            ArrayList<Cdo.Cif> arrayList = cdo.f7616do;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                Cdo.Cif cif = arrayList.get(i2);
                int i3 = cif.f7618do;
                if (i3 != 1) {
                    if (i3 == 2) {
                        int i4 = cif.f7621if;
                        if (i4 <= i) {
                            int i5 = cif.f7620for;
                            if (i4 + i5 <= i) {
                                i -= i5;
                            }
                        } else {
                            continue;
                        }
                    } else if (i3 == 8) {
                        int i6 = cif.f7621if;
                        if (i6 == i) {
                            i = cif.f7620for;
                        } else {
                            if (i6 < i) {
                                i--;
                            }
                            if (cif.f7620for <= i) {
                                i++;
                            }
                        }
                    }
                } else if (cif.f7621if <= i) {
                    i += cif.f7620for;
                }
            }
            return i;
        }
        return -1;
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.f7351if;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.f7298case;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return a().f15336do;
    }

    public final void j() {
        boolean z;
        boolean z2 = false;
        if (this.f7361this) {
            androidx.recyclerview.widget.Cdo cdo = this.f7327do;
            cdo.m4505catch(cdo.f7616do);
            cdo.m4505catch(cdo.f7617if);
            cdo.f7612do = 0;
            if (this.f7295break) {
                this.f7312do.r();
            }
        }
        androidx.recyclerview.widget.Ccatch ccatch = this.f7324do;
        if (ccatch != null && this.f7312do.U()) {
            this.f7327do.m4503break();
        } else {
            this.f7327do.m4509for();
        }
        boolean z3 = this.f7302class || this.f7304const;
        boolean z4 = this.f7356new && ccatch != null && ((z = this.f7361this) || z3 || this.f7312do.f7378do) && (!z || this.f7323do.f7470do);
        Cstatic cstatic = this.f7319do;
        cstatic.f7452try = z4;
        if (z4 && z3 && !this.f7361this) {
            if (ccatch != null && this.f7312do.U()) {
                z2 = true;
            }
        }
        cstatic.f7440case = z2;
    }

    public final void k(boolean z) {
        this.f7295break = z | this.f7295break;
        this.f7361this = true;
        int m4526goto = this.f7328do.m4526goto();
        for (int i = 0; i < m4526goto; i++) {
            Cdefault m4335implements = m4335implements(this.f7328do.m4524else(i));
            if (m4335implements != null && !m4335implements.m4418super()) {
                m4335implements.m4416if(6);
            }
        }
        d();
        Cimport cimport = this.f7316do;
        ArrayList<Cdefault> arrayList = cimport.f7421for;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Cdefault cdefault = arrayList.get(i2);
            if (cdefault != null) {
                cdefault.m4416if(6);
                cdefault.m4411do(null);
            }
        }
        Ctry ctry = RecyclerView.this.f7323do;
        if (ctry == null || !ctry.f7470do) {
            cimport.m4431else();
        }
    }

    public final void l(Cdefault cdefault, Cthis.Cfor cfor) {
        int i = (cdefault.f7413try & (-8193)) | 0;
        cdefault.f7413try = i;
        boolean z = this.f7319do.f7446for;
        Cprivate cprivate = this.f7329do;
        if (z) {
            if (((i & 2) != 0) && !cdefault.m4419this() && !cdefault.m4418super()) {
                cprivate.f7668do.m7467case(m4356protected(cdefault), cdefault);
            }
        }
        C2680eE<Cdefault, Cprivate.Cdo> c2680eE = cprivate.f7667do;
        Cprivate.Cdo orDefault = c2680eE.getOrDefault(cdefault, null);
        if (orDefault == null) {
            orDefault = Cprivate.Cdo.m4561do();
            c2680eE.put(cdefault, orDefault);
        }
        orDefault.f7671do = cfor;
        orDefault.f7670do |= 4;
    }

    public final int m(float f, int i) {
        float height = f / getHeight();
        float width = i / getWidth();
        EdgeEffect edgeEffect = this.f7310do;
        float f2 = 0.0f;
        if (edgeEffect == null || C3813uf.m8389do(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.f7341for;
            if (edgeEffect2 != null && C3813uf.m8389do(edgeEffect2) != 0.0f) {
                if (canScrollHorizontally(1)) {
                    this.f7341for.onRelease();
                } else {
                    float m8390if = C3813uf.m8390if(this.f7341for, width, height);
                    if (C3813uf.m8389do(this.f7341for) == 0.0f) {
                        this.f7341for.onRelease();
                    }
                    f2 = m8390if;
                }
                invalidate();
            }
        } else {
            if (canScrollHorizontally(-1)) {
                this.f7310do.onRelease();
            } else {
                float f3 = -C3813uf.m8390if(this.f7310do, -width, 1.0f - height);
                if (C3813uf.m8389do(this.f7310do) == 0.0f) {
                    this.f7310do.onRelease();
                }
                f2 = f3;
            }
            invalidate();
        }
        return Math.round(f2 * getWidth());
    }

    /* JADX WARN: Code restructure failed: missing block: B:161:0x0301, code lost:
    
        if (r17.f7328do.m4520break(getFocusedChild()) == false) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0358, code lost:
    
        if (r6.hasFocusable() != false) goto L188;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [androidx.recyclerview.widget.RecyclerView$default] */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /* renamed from: native, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4353native() {
        /*
            Method dump skipped, instructions count: 960
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m4353native():void");
    }

    public final void o(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        int width = view3.getWidth();
        int height = view3.getHeight();
        Rect rect = this.f7306do;
        rect.set(0, 0, width, height);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.f7369do) {
                int i = rect.left;
                Rect rect2 = layoutParams2.f7367do;
                rect.left = i - rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, rect);
            offsetRectIntoDescendantCoords(view, rect);
        }
        this.f7312do.F(this, view, this.f7306do, !this.f7356new, view2 == null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
    
        if (r1 >= 30.0f) goto L22;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onAttachedToWindow() {
        /*
            r5 = this;
            super.onAttachedToWindow()
            r0 = 0
            r5.f7363try = r0
            r1 = 1
            r5.f7351if = r1
            boolean r2 = r5.f7356new
            if (r2 == 0) goto L15
            boolean r2 = r5.isLayoutRequested()
            if (r2 != 0) goto L15
            r2 = 1
            goto L16
        L15:
            r2 = 0
        L16:
            r5.f7356new = r2
            androidx.recyclerview.widget.RecyclerView$import r2 = r5.f7316do
            r2.m4438try()
            androidx.recyclerview.widget.RecyclerView$class r2 = r5.f7312do
            if (r2 == 0) goto L26
            r2.f7383if = r1
            r2.j(r5)
        L26:
            r5.f7338final = r0
            boolean r0 = androidx.recyclerview.widget.RecyclerView.f7289import
            if (r0 == 0) goto L70
            java.lang.ThreadLocal<androidx.recyclerview.widget.const> r0 = androidx.recyclerview.widget.Cconst.f7598do
            java.lang.Object r1 = r0.get()
            androidx.recyclerview.widget.const r1 = (androidx.recyclerview.widget.Cconst) r1
            r5.f7326do = r1
            if (r1 != 0) goto L66
            androidx.recyclerview.widget.const r1 = new androidx.recyclerview.widget.const
            r1.<init>()
            r5.f7326do = r1
            java.util.WeakHashMap<android.view.View, nL> r1 = defpackage.QK.f2909do
            android.view.Display r1 = r5.getDisplay()
            boolean r2 = r5.isInEditMode()
            if (r2 != 0) goto L58
            if (r1 == 0) goto L58
            float r1 = r1.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 < 0) goto L58
            goto L5a
        L58:
            r1 = 1114636288(0x42700000, float:60.0)
        L5a:
            androidx.recyclerview.widget.const r2 = r5.f7326do
            r3 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r3 = r3 / r1
            long r3 = (long) r3
            r2.f7601if = r3
            r0.set(r2)
        L66:
            androidx.recyclerview.widget.const r0 = r5.f7326do
            r0.getClass()
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView> r0 = r0.f7600do
            r0.add(r5)
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        Cimport cimport;
        androidx.recyclerview.widget.Cconst cconst;
        Creturn creturn;
        super.onDetachedFromWindow();
        androidx.recyclerview.widget.Ccatch ccatch = this.f7324do;
        if (ccatch != null) {
            ccatch.m4488goto();
        }
        v(0);
        Cthrows cthrows = this.f7322do;
        RecyclerView.this.removeCallbacks(cthrows);
        cthrows.f7462do.abortAnimation();
        Cclass cclass = this.f7312do;
        if (cclass != null && (creturn = cclass.f7374do) != null) {
            creturn.m4446new();
        }
        this.f7351if = false;
        Cclass cclass2 = this.f7312do;
        if (cclass2 != null) {
            cclass2.f7383if = false;
            cclass2.k(this);
        }
        this.f7297case.clear();
        removeCallbacks(this.f7315do);
        this.f7329do.getClass();
        while (Cprivate.Cdo.f7669do.mo4867do() != null) {
        }
        int i = 0;
        while (true) {
            cimport = this.f7316do;
            ArrayList<Cdefault> arrayList = cimport.f7421for;
            if (i >= arrayList.size()) {
                break;
            }
            C3850vF.m8456new(arrayList.get(i).f7398do);
            i++;
        }
        cimport.m4426case(RecyclerView.this.f7323do, false);
        int i2 = 0;
        while (true) {
            if (!(i2 < getChildCount())) {
                if (!f7289import || (cconst = this.f7326do) == null) {
                    return;
                }
                cconst.f7600do.remove(this);
                this.f7326do = null;
                return;
            }
            int i3 = i2 + 1;
            View childAt = getChildAt(i2);
            if (childAt == null) {
                throw new IndexOutOfBoundsException();
            }
            C0721ax c0721ax = (C0721ax) childAt.getTag(com.joeykrim.rootcheck.R.id.pooling_container_listener_holder_tag);
            if (c0721ax == null) {
                c0721ax = new C0721ax();
                childAt.setTag(com.joeykrim.rootcheck.R.id.pooling_container_listener_holder_tag, c0721ax);
            }
            ArrayList<Zw> arrayList2 = c0721ax.f8300do;
            for (int m1633while = O4.m1633while(arrayList2); -1 < m1633while; m1633while--) {
                arrayList2.get(m1633while).m3082do();
            }
            i2 = i3;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList<Ccatch> arrayList = this.f7350if;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).mo4377try(canvas, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0099  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onGenericMotionEvent(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        if (this.f7298case) {
            return false;
        }
        this.f7320do = null;
        if (m4340abstract(motionEvent)) {
            p();
            v(0);
            return true;
        }
        Cclass cclass = this.f7312do;
        if (cclass == null) {
            return false;
        }
        boolean mo4323try = cclass.mo4323try();
        boolean mo4316case = this.f7312do.mo4316case();
        if (this.f7308do == null) {
            this.f7308do = VelocityTracker.obtain();
        }
        this.f7308do.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.f7336else) {
                this.f7336else = false;
            }
            this.f7345goto = motionEvent.getPointerId(0);
            int x = (int) (motionEvent.getX() + 0.5f);
            this.f7299catch = x;
            this.f7360this = x;
            int y = (int) (motionEvent.getY() + 0.5f);
            this.f7301class = y;
            this.f7294break = y;
            EdgeEffect edgeEffect = this.f7310do;
            if (edgeEffect == null || C3813uf.m8389do(edgeEffect) == 0.0f || canScrollHorizontally(-1)) {
                z = false;
            } else {
                C3813uf.m8390if(this.f7310do, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
                z = true;
            }
            EdgeEffect edgeEffect2 = this.f7341for;
            if (edgeEffect2 != null && C3813uf.m8389do(edgeEffect2) != 0.0f && !canScrollHorizontally(1)) {
                C3813uf.m8390if(this.f7341for, 0.0f, motionEvent.getY() / getHeight());
                z = true;
            }
            EdgeEffect edgeEffect3 = this.f7349if;
            if (edgeEffect3 != null && C3813uf.m8389do(edgeEffect3) != 0.0f && !canScrollVertically(-1)) {
                C3813uf.m8390if(this.f7349if, 0.0f, motionEvent.getX() / getWidth());
                z = true;
            }
            EdgeEffect edgeEffect4 = this.f7354new;
            if (edgeEffect4 != null && C3813uf.m8389do(edgeEffect4) != 0.0f && !canScrollVertically(1)) {
                C3813uf.m8390if(this.f7354new, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
                z = true;
            }
            if (z || this.f7335else == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                v(1);
                a().m8028goto(1);
            }
            int[] iArr = this.f7344for;
            iArr[1] = 0;
            iArr[0] = 0;
            int i = mo4323try;
            if (mo4316case) {
                i = (mo4323try ? 1 : 0) | 2;
            }
            a().m8026else(i, 0);
        } else if (actionMasked == 1) {
            this.f7308do.clear();
            a().m8028goto(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f7345goto);
            if (findPointerIndex < 0) {
                return false;
            }
            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.f7335else != 1) {
                int i2 = x2 - this.f7360this;
                int i3 = y2 - this.f7294break;
                if (mo4323try == 0 || Math.abs(i2) <= this.f7303const) {
                    z2 = false;
                } else {
                    this.f7299catch = x2;
                    z2 = true;
                }
                if (mo4316case && Math.abs(i3) > this.f7303const) {
                    this.f7301class = y2;
                    z2 = true;
                }
                if (z2) {
                    v(1);
                }
            }
        } else if (actionMasked == 3) {
            p();
            v(0);
        } else if (actionMasked == 5) {
            this.f7345goto = motionEvent.getPointerId(actionIndex);
            int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f7299catch = x3;
            this.f7360this = x3;
            int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.f7301class = y3;
            this.f7294break = y3;
        } else if (actionMasked == 6) {
            h(motionEvent);
        }
        return this.f7335else == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = C2626dI.f12469do;
        Trace.beginSection("RV OnLayout");
        m4353native();
        Trace.endSection();
        this.f7356new = true;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        Cclass cclass = this.f7312do;
        if (cclass == null) {
            m4367while(i, i2);
            return;
        }
        boolean d = cclass.d();
        boolean z = false;
        Cstatic cstatic = this.f7319do;
        if (d) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f7312do.f7375do.m4367while(i, i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            this.f7359super = z;
            if (z || this.f7323do == null) {
                return;
            }
            if (cstatic.f7449new == 1) {
                m4357public();
            }
            this.f7312do.L(i, i2);
            cstatic.f7450new = true;
            m4358return();
            this.f7312do.N(i, i2);
            if (this.f7312do.Q()) {
                this.f7312do.L(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                cstatic.f7450new = true;
                m4358return();
                this.f7312do.N(i, i2);
            }
            this.f7362throw = getMeasuredWidth();
            this.f7366while = getMeasuredHeight();
            return;
        }
        if (this.f7343for) {
            this.f7312do.f7375do.m4367while(i, i2);
            return;
        }
        if (this.f7346goto) {
            y();
            f();
            j();
            g(true);
            if (cstatic.f7440case) {
                cstatic.f7448if = true;
            } else {
                this.f7327do.m4509for();
                cstatic.f7448if = false;
            }
            this.f7346goto = false;
            z(false);
        } else if (cstatic.f7440case) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        Ctry ctry = this.f7323do;
        if (ctry != null) {
            cstatic.f7451try = ctry.mo1023for();
        } else {
            cstatic.f7451try = 0;
        }
        y();
        this.f7312do.f7375do.m4367while(i, i2);
        z(false);
        cstatic.f7448if = false;
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (b()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.f7311do = savedState;
        super.onRestoreInstanceState(savedState.f6568do);
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.f7311do;
        if (savedState2 != null) {
            savedState.f7371if = savedState2.f7371if;
        } else {
            Cclass cclass = this.f7312do;
            if (cclass != null) {
                savedState.f7371if = cclass.y();
            } else {
                savedState.f7371if = null;
            }
        }
        return savedState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        this.f7354new = null;
        this.f7349if = null;
        this.f7341for = null;
        this.f7310do = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:205:0x03c7, code lost:
    
        if (r0 == false) goto L269;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x03b4, code lost:
    
        if (r0 < r4) goto L259;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:127:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x027f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0297 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03f9  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0400  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x03bc  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0432  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00fb  */
    /* JADX WARN: Type inference failed for: r7v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v6 */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r24) {
        /*
            Method dump skipped, instructions count: 1091
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p() {
        VelocityTracker velocityTracker = this.f7308do;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean z = false;
        a().m8028goto(0);
        EdgeEffect edgeEffect = this.f7310do;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.f7310do.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f7349if;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z |= this.f7349if.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f7341for;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z |= this.f7341for.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f7354new;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z |= this.f7354new.isFinished();
        }
        if (z) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            postInvalidateOnAnimation();
        }
    }

    /* renamed from: package, reason: not valid java name */
    public final void m4354package(Cstatic cstatic) {
        if (this.f7335else != 2) {
            cstatic.getClass();
            return;
        }
        OverScroller overScroller = this.f7322do.f7462do;
        overScroller.getFinalX();
        overScroller.getCurrX();
        cstatic.getClass();
        overScroller.getFinalY();
        overScroller.getCurrY();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:?, code lost:
    
        return r3;
     */
    /* renamed from: private, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View m4355private(android.view.View r3) {
        /*
            r2 = this;
            android.view.ViewParent r0 = r3.getParent()
        L4:
            if (r0 == 0) goto L14
            if (r0 == r2) goto L14
            boolean r1 = r0 instanceof android.view.View
            if (r1 == 0) goto L14
            r3 = r0
            android.view.View r3 = (android.view.View) r3
            android.view.ViewParent r0 = r3.getParent()
            goto L4
        L14:
            if (r0 != r2) goto L17
            goto L18
        L17:
            r3 = 0
        L18:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m4355private(android.view.View):android.view.View");
    }

    /* renamed from: protected, reason: not valid java name */
    public final long m4356protected(Cdefault cdefault) {
        return this.f7323do.f7470do ? cdefault.f7397do : cdefault.f7396do;
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x0097 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x007b A[SYNTHETIC] */
    /* renamed from: public, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4357public() {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m4357public():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean q(int r19, int r20, android.view.MotionEvent r21, int r22) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.q(int, int, android.view.MotionEvent, int):boolean");
    }

    public final void r(int[] iArr, int i, int i2) {
        Cdefault cdefault;
        y();
        f();
        int i3 = C2626dI.f12469do;
        Trace.beginSection("RV Scroll");
        Cstatic cstatic = this.f7319do;
        m4354package(cstatic);
        Cimport cimport = this.f7316do;
        int H = i != 0 ? this.f7312do.H(i, cimport, cstatic) : 0;
        int J = i2 != 0 ? this.f7312do.J(i2, cimport, cstatic) : 0;
        Trace.endSection();
        int m4530try = this.f7328do.m4530try();
        for (int i4 = 0; i4 < m4530try; i4++) {
            View m4528new = this.f7328do.m4528new(i4);
            Cdefault m4365transient = m4365transient(m4528new);
            if (m4365transient != null && (cdefault = m4365transient.f7411if) != null) {
                int left = m4528new.getLeft();
                int top = m4528new.getTop();
                View view = cdefault.f7398do;
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        g(true);
        z(false);
        if (iArr != null) {
            iArr[0] = H;
            iArr[1] = J;
        }
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z) {
        Cdefault m4335implements = m4335implements(view);
        if (m4335implements != null) {
            if (m4335implements.m4408catch()) {
                m4335implements.f7413try &= -257;
            } else if (!m4335implements.m4418super()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + m4335implements + m4348finally());
            }
        }
        view.clearAnimation();
        m4350import(view);
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        Creturn creturn = this.f7312do.f7374do;
        boolean z = true;
        if (!(creturn != null && creturn.f7432if) && !b()) {
            z = false;
        }
        if (!z && view2 != null) {
            o(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.f7312do.F(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        ArrayList<Csuper> arrayList = this.f7342for;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).mo4452if();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.f7340for != 0 || this.f7298case) {
            this.f7365try = true;
        } else {
            super.requestLayout();
        }
    }

    /* renamed from: return, reason: not valid java name */
    public final void m4358return() {
        y();
        f();
        Cstatic cstatic = this.f7319do;
        cstatic.m4448do(6);
        this.f7327do.m4509for();
        cstatic.f7451try = this.f7323do.mo1023for();
        cstatic.f7445for = 0;
        if (this.f7311do != null) {
            Ctry ctry = this.f7323do;
            int m8819catch = C4122zt.m8819catch(ctry.f7468do);
            if (m8819catch == 1 ? ctry.mo1023for() > 0 : m8819catch != 2) {
                Parcelable parcelable = this.f7311do.f7371if;
                if (parcelable != null) {
                    this.f7312do.x(parcelable);
                }
                this.f7311do = null;
            }
        }
        cstatic.f7448if = false;
        this.f7312do.v(this.f7316do, cstatic);
        cstatic.f7443do = false;
        cstatic.f7452try = cstatic.f7452try && this.f7324do != null;
        cstatic.f7449new = 4;
        g(true);
        z(false);
    }

    public final void s(int i) {
        Creturn creturn;
        if (this.f7298case) {
            return;
        }
        v(0);
        Cthrows cthrows = this.f7322do;
        RecyclerView.this.removeCallbacks(cthrows);
        cthrows.f7462do.abortAnimation();
        Cclass cclass = this.f7312do;
        if (cclass != null && (creturn = cclass.f7374do) != null) {
            creturn.m4446new();
        }
        Cclass cclass2 = this.f7312do;
        if (cclass2 == null) {
            return;
        }
        cclass2.I(i);
        awakenScrollBars();
    }

    @Override // android.view.View
    public final void scrollBy(int i, int i2) {
        Cclass cclass = this.f7312do;
        if (cclass == null || this.f7298case) {
            return;
        }
        boolean mo4323try = cclass.mo4323try();
        boolean mo4316case = this.f7312do.mo4316case();
        if (mo4323try || mo4316case) {
            if (!mo4323try) {
                i = 0;
            }
            if (!mo4316case) {
                i2 = 0;
            }
            q(i, i2, null, 0);
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (b()) {
            int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
            this.f7353new |= contentChangeTypes != 0 ? contentChangeTypes : 0;
            r1 = 1;
        }
        if (r1 != 0) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    @Override // android.view.ViewGroup
    public final void setClipToPadding(boolean z) {
        if (z != this.f7333do) {
            this.f7354new = null;
            this.f7349if = null;
            this.f7341for = null;
            this.f7310do = null;
        }
        this.f7333do = z;
        super.setClipToPadding(z);
        if (this.f7356new) {
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public final void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public final void setNestedScrollingEnabled(boolean z) {
        C3651ru a = a();
        if (a.f15336do) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            QK.Cnew.m1926extends(a.f15334do);
        }
        a.f15336do = z;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return a().m8026else(i, 0);
    }

    /* renamed from: static, reason: not valid java name */
    public final void m4359static(int i, int i2) {
        this.f7296case++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        ArrayList arrayList = this.f7364try;
        if (arrayList != null) {
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                } else {
                    ((Cthrow) this.f7364try.get(size)).mo4458if(this, i, i2);
                }
            }
        }
        this.f7296case--;
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        a().m8028goto(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        Creturn creturn;
        if (z != this.f7298case) {
            m4342catch("Do not suppressLayout in layout or scroll");
            if (!z) {
                this.f7298case = false;
                if (this.f7365try && this.f7312do != null && this.f7323do != null) {
                    requestLayout();
                }
                this.f7365try = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.f7298case = true;
            this.f7336else = true;
            v(0);
            Cthrows cthrows = this.f7322do;
            RecyclerView.this.removeCallbacks(cthrows);
            cthrows.f7462do.abortAnimation();
            Cclass cclass = this.f7312do;
            if (cclass == null || (creturn = cclass.f7374do) == null) {
                return;
            }
            creturn.m4446new();
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m4360switch() {
        if (this.f7354new != null) {
            return;
        }
        this.f7321do.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f7354new = edgeEffect;
        if (this.f7333do) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    /* renamed from: synchronized, reason: not valid java name */
    final long m4361synchronized() {
        if (f7289import) {
            return System.nanoTime();
        }
        return 0L;
    }

    public final void t(Ctry ctry) {
        suppressLayout(false);
        Ctry ctry2 = this.f7323do;
        Cpublic cpublic = this.f7318do;
        if (ctry2 != null) {
            ctry2.f7469do.unregisterObserver(cpublic);
            this.f7323do.mo1020break();
        }
        androidx.recyclerview.widget.Ccatch ccatch = this.f7324do;
        if (ccatch != null) {
            ccatch.m4488goto();
        }
        Cclass cclass = this.f7312do;
        Cimport cimport = this.f7316do;
        if (cclass != null) {
            cclass.B(cimport);
            this.f7312do.C(cimport);
        }
        cimport.f7419do.clear();
        cimport.m4431else();
        androidx.recyclerview.widget.Cdo cdo = this.f7327do;
        cdo.m4505catch(cdo.f7616do);
        cdo.m4505catch(cdo.f7617if);
        cdo.f7612do = 0;
        Ctry<?> ctry3 = this.f7323do;
        this.f7323do = ctry;
        if (ctry != null) {
            ctry.f7469do.registerObserver(cpublic);
            ctry.mo1022else();
        }
        Cclass cclass2 = this.f7312do;
        if (cclass2 != null) {
            cclass2.i();
        }
        Ctry ctry4 = this.f7323do;
        cimport.f7419do.clear();
        cimport.m4431else();
        cimport.m4426case(ctry3, true);
        Cwhile m4433for = cimport.m4433for();
        if (ctry3 != null) {
            m4433for.f7471do--;
        }
        if (m4433for.f7471do == 0) {
            int i = 0;
            while (true) {
                SparseArray<Cwhile.Cdo> sparseArray = m4433for.f7472do;
                if (i >= sparseArray.size()) {
                    break;
                }
                Cwhile.Cdo valueAt = sparseArray.valueAt(i);
                Iterator<Cdefault> it = valueAt.f7476do.iterator();
                while (it.hasNext()) {
                    C3850vF.m8456new(it.next().f7398do);
                }
                valueAt.f7476do.clear();
                i++;
            }
        }
        if (ctry4 != null) {
            m4433for.f7471do++;
        }
        cimport.m4438try();
        this.f7319do.f7443do = true;
        k(false);
        requestLayout();
    }

    /* renamed from: this, reason: not valid java name */
    public final void m4362this(Ccatch ccatch) {
        Cclass cclass = this.f7312do;
        if (cclass != null) {
            cclass.mo4320for("Cannot add item decoration during a scroll  or layout");
        }
        ArrayList<Ccatch> arrayList = this.f7350if;
        if (arrayList.isEmpty()) {
            setWillNotDraw(false);
        }
        arrayList.add(ccatch);
        d();
        requestLayout();
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m4363throw() {
        if (!this.f7356new || this.f7361this) {
            int i = C2626dI.f12469do;
            Trace.beginSection("RV FullInvalidate");
            m4353native();
            Trace.endSection();
            return;
        }
        if (this.f7327do.m4508else()) {
            androidx.recyclerview.widget.Cdo cdo = this.f7327do;
            int i2 = cdo.f7612do;
            boolean z = false;
            if ((4 & i2) != 0) {
                if (!((i2 & 11) != 0)) {
                    int i3 = C2626dI.f12469do;
                    Trace.beginSection("RV PartialInvalidate");
                    y();
                    f();
                    this.f7327do.m4503break();
                    if (!this.f7365try) {
                        int m4530try = this.f7328do.m4530try();
                        int i4 = 0;
                        while (true) {
                            if (i4 >= m4530try) {
                                break;
                            }
                            Cdefault m4335implements = m4335implements(this.f7328do.m4528new(i4));
                            if (m4335implements != null && !m4335implements.m4418super()) {
                                if ((m4335implements.f7413try & 2) != 0) {
                                    z = true;
                                    break;
                                }
                            }
                            i4++;
                        }
                        if (z) {
                            m4353native();
                        } else {
                            this.f7327do.m4511if();
                        }
                    }
                    z(true);
                    g(true);
                    Trace.endSection();
                    return;
                }
            }
            if (cdo.m4508else()) {
                int i5 = C2626dI.f12469do;
                Trace.beginSection("RV FullInvalidate");
                m4353native();
                Trace.endSection();
            }
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m4364throws() {
        if (this.f7310do != null) {
            return;
        }
        this.f7321do.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f7310do = edgeEffect;
        if (this.f7333do) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public final Cdefault m4365transient(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return m4335implements(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    public final void u(Cclass cclass) {
        Cif.InterfaceC0042if interfaceC0042if;
        RecyclerView recyclerView;
        Creturn creturn;
        if (cclass == this.f7312do) {
            return;
        }
        int i = 0;
        v(0);
        Cthrows cthrows = this.f7322do;
        RecyclerView.this.removeCallbacks(cthrows);
        cthrows.f7462do.abortAnimation();
        Cclass cclass2 = this.f7312do;
        if (cclass2 != null && (creturn = cclass2.f7374do) != null) {
            creturn.m4446new();
        }
        Cclass cclass3 = this.f7312do;
        Cimport cimport = this.f7316do;
        if (cclass3 != null) {
            androidx.recyclerview.widget.Ccatch ccatch = this.f7324do;
            if (ccatch != null) {
                ccatch.m4488goto();
            }
            this.f7312do.B(cimport);
            this.f7312do.C(cimport);
            cimport.f7419do.clear();
            cimport.m4431else();
            if (this.f7351if) {
                Cclass cclass4 = this.f7312do;
                cclass4.f7383if = false;
                cclass4.k(this);
            }
            this.f7312do.O(null);
            this.f7312do = null;
        } else {
            cimport.f7419do.clear();
            cimport.m4431else();
        }
        androidx.recyclerview.widget.Cif cif = this.f7328do;
        cif.f7650do.m4533else();
        ArrayList arrayList = cif.f7652do;
        int size = arrayList.size();
        while (true) {
            size--;
            interfaceC0042if = cif.f7651do;
            if (size < 0) {
                break;
            }
            View view = (View) arrayList.get(size);
            androidx.recyclerview.widget.Cstatic cstatic = (androidx.recyclerview.widget.Cstatic) interfaceC0042if;
            cstatic.getClass();
            Cdefault m4335implements = m4335implements(view);
            if (m4335implements != null) {
                int i2 = m4335implements.f7407else;
                RecyclerView recyclerView2 = cstatic.f7676do;
                if (recyclerView2.b()) {
                    m4335implements.f7409goto = i2;
                    recyclerView2.f7297case.add(m4335implements);
                } else {
                    WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                    m4335implements.f7398do.setImportantForAccessibility(i2);
                }
                m4335implements.f7407else = 0;
            }
            arrayList.remove(size);
        }
        androidx.recyclerview.widget.Cstatic cstatic2 = (androidx.recyclerview.widget.Cstatic) interfaceC0042if;
        int m4567do = cstatic2.m4567do();
        while (true) {
            recyclerView = cstatic2.f7676do;
            if (i >= m4567do) {
                break;
            }
            View childAt = recyclerView.getChildAt(i);
            recyclerView.m4350import(childAt);
            childAt.clearAnimation();
            i++;
        }
        recyclerView.removeAllViews();
        this.f7312do = cclass;
        if (cclass != null) {
            if (cclass.f7375do != null) {
                throw new IllegalArgumentException("LayoutManager " + cclass + " is already attached to a RecyclerView:" + cclass.f7375do.m4348finally());
            }
            cclass.O(this);
            if (this.f7351if) {
                Cclass cclass5 = this.f7312do;
                cclass5.f7383if = true;
                cclass5.j(this);
            }
        }
        cimport.m4432final();
        requestLayout();
    }

    final void v(int i) {
        Creturn creturn;
        if (i == this.f7335else) {
            return;
        }
        this.f7335else = i;
        if (i != 2) {
            Cthrows cthrows = this.f7322do;
            RecyclerView.this.removeCallbacks(cthrows);
            cthrows.f7462do.abortAnimation();
            Cclass cclass = this.f7312do;
            if (cclass != null && (creturn = cclass.f7374do) != null) {
                creturn.m4446new();
            }
        }
        Cclass cclass2 = this.f7312do;
        if (cclass2 != null) {
            cclass2.z(i);
        }
        ArrayList arrayList = this.f7364try;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                ((Cthrow) this.f7364try.get(size)).mo4457do(i, this);
            }
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    public final Cdefault m4366volatile(int i) {
        Cdefault cdefault = null;
        if (this.f7361this) {
            return null;
        }
        int m4526goto = this.f7328do.m4526goto();
        for (int i2 = 0; i2 < m4526goto; i2++) {
            Cdefault m4335implements = m4335implements(this.f7328do.m4524else(i2));
            if (m4335implements != null && !m4335implements.m4419this() && m4352interface(m4335implements) == i) {
                if (!this.f7328do.m4520break(m4335implements.f7398do)) {
                    return m4335implements;
                }
                cdefault = m4335implements;
            }
        }
        return cdefault;
    }

    public final boolean w(EdgeEffect edgeEffect, int i, int i2) {
        if (i > 0) {
            return true;
        }
        float m8389do = C3813uf.m8389do(edgeEffect) * i2;
        float abs = Math.abs(-i) * 0.35f;
        float f = this.f7305do * 0.015f;
        double log = Math.log(abs / f);
        double d = f7290new;
        return ((float) (Math.exp((d / (d - 1.0d)) * log) * ((double) f))) < m8389do;
    }

    /* renamed from: while, reason: not valid java name */
    public final void m4367while(int i, int i2) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        setMeasuredDimension(Cclass.m4379goto(i, paddingRight, getMinimumWidth()), Cclass.m4379goto(i2, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    public final void x(int i, int i2, boolean z) {
        Cclass cclass = this.f7312do;
        if (cclass == null || this.f7298case) {
            return;
        }
        if (!cclass.mo4323try()) {
            i = 0;
        }
        if (!this.f7312do.mo4316case()) {
            i2 = 0;
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        if (z) {
            int i3 = i != 0 ? 1 : 0;
            if (i2 != 0) {
                i3 |= 2;
            }
            a().m8026else(i3, 1);
        }
        this.f7322do.m4460for(i, i2, Integer.MIN_VALUE, null);
    }

    public final void y() {
        int i = this.f7340for + 1;
        this.f7340for = i;
        if (i != 1 || this.f7298case) {
            return;
        }
        this.f7365try = false;
    }

    public final void z(boolean z) {
        if (this.f7340for < 1) {
            this.f7340for = 1;
        }
        if (!z && !this.f7298case) {
            this.f7365try = false;
        }
        if (this.f7340for == 1) {
            if (z && this.f7365try && !this.f7298case && this.f7312do != null && this.f7323do != null) {
                m4353native();
            }
            if (!this.f7298case) {
                this.f7365try = false;
            }
        }
        this.f7340for--;
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        float m2374do;
        char c;
        char c2;
        Constructor constructor;
        Object[] objArr;
        this.f7318do = new Cpublic();
        this.f7316do = new Cimport();
        this.f7329do = new Cprivate();
        this.f7313do = new Cdo();
        this.f7306do = new Rect();
        this.f7348if = new Rect();
        this.f7307do = new RectF();
        this.f7331do = new ArrayList();
        this.f7350if = new ArrayList<>();
        this.f7342for = new ArrayList<>();
        this.f7340for = 0;
        this.f7361this = false;
        this.f7295break = false;
        this.f7363try = 0;
        this.f7296case = 0;
        this.f7321do = f7288if;
        androidx.recyclerview.widget.Ccatch ccatch = new androidx.recyclerview.widget.Ccatch();
        this.f7324do = ccatch;
        this.f7335else = 0;
        this.f7345goto = -1;
        this.f7347if = Float.MIN_VALUE;
        this.f7339for = Float.MIN_VALUE;
        this.f7300catch = true;
        this.f7322do = new Cthrows();
        this.f7325do = f7289import ? new Cconst.Cif() : null;
        this.f7319do = new Cstatic();
        this.f7302class = false;
        this.f7304const = false;
        Cbreak cbreak = new Cbreak();
        this.f7338final = false;
        this.f7334do = new int[2];
        this.f7352if = new int[2];
        this.f7344for = new int[2];
        this.f7357new = new int[2];
        this.f7297case = new ArrayList();
        this.f7315do = new Cif();
        this.f7362throw = 0;
        this.f7366while = 0;
        this.f7317do = new Cnew();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f7303const = viewConfiguration.getScaledTouchSlop();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            Method method = UK.f3862do;
            m2374do = UK.Cdo.m2375do(viewConfiguration);
        } else {
            m2374do = UK.m2374do(viewConfiguration, context);
        }
        this.f7347if = m2374do;
        this.f7339for = i2 >= 26 ? UK.Cdo.m2376if(viewConfiguration) : UK.m2374do(viewConfiguration, context);
        this.f7337final = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f7358super = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f7305do = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        ((Cthis) ccatch).f7454do = cbreak;
        this.f7327do = new androidx.recyclerview.widget.Cdo(new androidx.recyclerview.widget.Cswitch(this));
        this.f7328do = new androidx.recyclerview.widget.Cif(new androidx.recyclerview.widget.Cstatic(this));
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        if ((i2 >= 26 ? QK.Celse.m1892for(this) : 0) == 0 && i2 >= 26) {
            QK.Celse.m1888const(this, 8);
        }
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.f7309do = (AccessibilityManager) getContext().getSystemService("accessibility");
        androidx.recyclerview.widget.Cthrows cthrows = new androidx.recyclerview.widget.Cthrows(this);
        this.f7330do = cthrows;
        QK.m1858native(this, cthrows);
        int[] iArr = O2.W;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        QK.m1857import(this, context, iArr, attributeSet, obtainStyledAttributes, i);
        String string = obtainStyledAttributes.getString(8);
        if (obtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.f7333do = obtainStyledAttributes.getBoolean(1, true);
        if (obtainStyledAttributes.getBoolean(3, false)) {
            StateListDrawable stateListDrawable = (StateListDrawable) obtainStyledAttributes.getDrawable(6);
            Drawable drawable = obtainStyledAttributes.getDrawable(7);
            StateListDrawable stateListDrawable2 = (StateListDrawable) obtainStyledAttributes.getDrawable(4);
            Drawable drawable2 = obtainStyledAttributes.getDrawable(5);
            if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
                throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + m4348finally());
            }
            Resources resources = getContext().getResources();
            c = 3;
            c2 = 2;
            new androidx.recyclerview.widget.Cclass(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(com.joeykrim.rootcheck.R.dimen.fastscroll_margin));
        } else {
            c = 3;
            c2 = 2;
        }
        obtainStyledAttributes.recycle();
        if (string != null) {
            String trim = string.trim();
            if (!trim.isEmpty()) {
                if (trim.charAt(0) == '.') {
                    trim = context.getPackageName() + trim;
                } else if (!trim.contains(".")) {
                    trim = RecyclerView.class.getPackage().getName() + '.' + trim;
                }
                String str = trim;
                try {
                    Class<? extends U> asSubclass = Class.forName(str, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(Cclass.class);
                    try {
                        constructor = asSubclass.getConstructor(f7287do);
                        objArr = new Object[4];
                        objArr[0] = context;
                        objArr[1] = attributeSet;
                        objArr[c2] = Integer.valueOf(i);
                        objArr[c] = 0;
                    } catch (NoSuchMethodException e) {
                        try {
                            constructor = asSubclass.getConstructor(new Class[0]);
                            objArr = null;
                        } catch (NoSuchMethodException e2) {
                            e2.initCause(e);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, e2);
                        }
                    }
                    constructor.setAccessible(true);
                    u((Cclass) constructor.newInstance(objArr));
                } catch (ClassCastException e3) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + str, e3);
                } catch (ClassNotFoundException e4) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + str, e4);
                } catch (IllegalAccessException e5) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + str, e5);
                } catch (InstantiationException e6) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e6);
                } catch (InvocationTargetException e7) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e7);
                }
            }
        }
        int[] iArr2 = f7292try;
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i, 0);
        QK.m1857import(this, context, iArr2, attributeSet, obtainStyledAttributes2, i);
        boolean z = obtainStyledAttributes2.getBoolean(0, true);
        obtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z);
        setTag(com.joeykrim.rootcheck.R.id.is_pooling_container_tag, Boolean.TRUE);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: if, reason: not valid java name */
        public Parcelable f7371if;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$SavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
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
            this.f7371if = parcel.readParcelable(classLoader == null ? Cclass.class.getClassLoader() : classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f6568do, i);
            parcel.writeParcelable(this.f7371if, 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: do, reason: not valid java name */
        public final Rect f7367do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cdefault f7368do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7369do;

        /* renamed from: if, reason: not valid java name */
        public boolean f7370if;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f7367do = new Rect();
            this.f7369do = true;
            this.f7370if = false;
        }

        /* renamed from: do, reason: not valid java name */
        public final int m4368do() {
            return this.f7368do.m4414for();
        }

        /* renamed from: for, reason: not valid java name */
        public final boolean m4369for() {
            return this.f7368do.m4419this();
        }

        /* renamed from: if, reason: not valid java name */
        public final boolean m4370if() {
            return (this.f7368do.f7413try & 2) != 0;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f7367do = new Rect();
            this.f7369do = true;
            this.f7370if = false;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f7367do = new Rect();
            this.f7369do = true;
            this.f7370if = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f7367do = new Rect();
            this.f7369do = true;
            this.f7370if = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.f7367do = new Rect();
            this.f7369do = true;
            this.f7370if = false;
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        Cclass cclass = this.f7312do;
        if (cclass != null) {
            return cclass.mo4310return(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m4348finally());
    }
}
