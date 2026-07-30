package androidx.drawerlayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.customview.view.AbsSavedState;
import defpackage.B;
import defpackage.C0633Yn;
import defpackage.C3150jM;
import defpackage.C3385nL;
import defpackage.C3645ro;
import defpackage.C3893w;
import defpackage.Cimplements;
import defpackage.QK;
import defpackage.VK;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class DrawerLayout extends ViewGroup {

    /* renamed from: case, reason: not valid java name */
    public static final boolean f6696case;

    /* renamed from: else, reason: not valid java name */
    public static final boolean f6698else;

    /* renamed from: try, reason: not valid java name */
    public static final boolean f6700try;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public int f6701case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float f6702do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final VK f6703do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Matrix f6704do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Paint f6705do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Rect f6706do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Drawable f6707do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f6708do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Celse f6709do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cnew f6710do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Object f6711do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ArrayList f6712do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f6713do;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public int f6714else;

    /* renamed from: for, reason: not valid java name */
    public float f6715for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int f6716for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f6717for;

    /* renamed from: goto, reason: not valid java name */
    public int f6718goto;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public float f6719if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final VK f6720if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Celse f6721if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList<View> f6722if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f6723if;

    /* renamed from: new, reason: not valid java name */
    public float f6724new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f6725new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f6726new;

    /* renamed from: this, reason: not valid java name */
    public int f6727this;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public int f6728try;

    /* renamed from: do, reason: not valid java name */
    public static final int[] f6697do = {R.attr.colorPrimaryDark};

    /* renamed from: if, reason: not valid java name */
    public static final int[] f6699if = {R.attr.layout_gravity};

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$case, reason: invalid class name */
    public static abstract class Ccase implements Ctry {
        @Override // androidx.drawerlayout.widget.DrawerLayout.Ctry
        /* renamed from: do, reason: not valid java name */
        public final void mo4077do() {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.Ctry
        /* renamed from: new, reason: not valid java name */
        public final void mo4078new() {
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$do, reason: invalid class name */
    public class Cdo implements B {
        public Cdo() {
        }

        @Override // defpackage.B
        /* renamed from: case */
        public final boolean mo136case(View view) {
            DrawerLayout drawerLayout = DrawerLayout.this;
            drawerLayout.getClass();
            if (!DrawerLayout.m4060catch(view) || drawerLayout.m4066else(view) == 2) {
                return false;
            }
            drawerLayout.m4070if(view, true);
            return true;
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$else, reason: invalid class name */
    public class Celse extends VK.Cfor {

        /* renamed from: do, reason: not valid java name */
        public final int f6739do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public VK f6740do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cdo f6741do = new Cdo();

        /* renamed from: androidx.drawerlayout.widget.DrawerLayout$else$do, reason: invalid class name */
        public class Cdo implements Runnable {
            public Cdo() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                View m4072new;
                int width;
                Celse celse = Celse.this;
                int i = celse.f6740do.f4106try;
                int i2 = celse.f6739do;
                boolean z = i2 == 3;
                DrawerLayout drawerLayout = DrawerLayout.this;
                if (z) {
                    m4072new = drawerLayout.m4072new(3);
                    width = (m4072new != null ? -m4072new.getWidth() : 0) + i;
                } else {
                    m4072new = drawerLayout.m4072new(5);
                    width = drawerLayout.getWidth() - i;
                }
                if (m4072new != null) {
                    if (((!z || m4072new.getLeft() >= width) && (z || m4072new.getLeft() <= width)) || drawerLayout.m4066else(m4072new) != 0) {
                        return;
                    }
                    LayoutParams layoutParams = (LayoutParams) m4072new.getLayoutParams();
                    celse.f6740do.m2612return(m4072new, width, m4072new.getTop());
                    layoutParams.f6731do = true;
                    drawerLayout.invalidate();
                    View m4072new2 = drawerLayout.m4072new(i2 == 3 ? 5 : 3);
                    if (m4072new2 != null) {
                        drawerLayout.m4070if(m4072new2, true);
                    }
                    if (drawerLayout.f6717for) {
                        return;
                    }
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    int childCount = drawerLayout.getChildCount();
                    for (int i3 = 0; i3 < childCount; i3++) {
                        drawerLayout.getChildAt(i3).dispatchTouchEvent(obtain);
                    }
                    obtain.recycle();
                    drawerLayout.f6717for = true;
                }
            }
        }

        public Celse(int i) {
            this.f6739do = i;
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: break */
        public final void mo2618break(View view, float f, float f2) {
            int i;
            DrawerLayout drawerLayout = DrawerLayout.this;
            drawerLayout.getClass();
            float f3 = ((LayoutParams) view.getLayoutParams()).f6729do;
            int width = view.getWidth();
            if (drawerLayout.m4065do(view, 3)) {
                i = (f > 0.0f || (f == 0.0f && f3 > 0.5f)) ? 0 : -width;
            } else {
                int width2 = drawerLayout.getWidth();
                if (f < 0.0f || (f == 0.0f && f3 > 0.5f)) {
                    width2 -= width;
                }
                i = width2;
            }
            this.f6740do.m2609native(i, view.getTop());
            drawerLayout.invalidate();
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: case */
        public final void mo2619case() {
            DrawerLayout.this.postDelayed(this.f6741do, 160L);
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: catch */
        public final boolean mo2620catch(View view, int i) {
            DrawerLayout drawerLayout = DrawerLayout.this;
            drawerLayout.getClass();
            return DrawerLayout.m4061class(view) && drawerLayout.m4065do(view, this.f6739do) && drawerLayout.m4066else(view) == 0;
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: do */
        public final int mo2621do(View view, int i) {
            DrawerLayout drawerLayout = DrawerLayout.this;
            if (drawerLayout.m4065do(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = drawerLayout.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: else */
        public final void mo2622else(View view, int i) {
            ((LayoutParams) view.getLayoutParams()).f6731do = false;
            int i2 = this.f6739do == 3 ? 5 : 3;
            DrawerLayout drawerLayout = DrawerLayout.this;
            View m4072new = drawerLayout.m4072new(i2);
            if (m4072new != null) {
                drawerLayout.m4070if(m4072new, true);
            }
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: for */
        public final int mo2623for(View view) {
            DrawerLayout.this.getClass();
            if (DrawerLayout.m4061class(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: goto */
        public final void mo2624goto(int i) {
            DrawerLayout.this.m4071import(this.f6740do.f4090do, i);
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: if */
        public final int mo2625if(View view, int i) {
            return view.getTop();
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: this */
        public final void mo2627this(View view, int i, int i2) {
            int width = view.getWidth();
            DrawerLayout drawerLayout = DrawerLayout.this;
            float width2 = (drawerLayout.m4065do(view, 3) ? i + width : drawerLayout.getWidth() - i) / width;
            drawerLayout.m4073super(view, width2);
            view.setVisibility(width2 == 0.0f ? 4 : 0);
            drawerLayout.invalidate();
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: try */
        public final void mo2628try(int i, int i2) {
            int i3 = i & 1;
            DrawerLayout drawerLayout = DrawerLayout.this;
            View m4072new = i3 == 1 ? drawerLayout.m4072new(3) : drawerLayout.m4072new(5);
            if (m4072new == null || drawerLayout.m4066else(m4072new) != 0) {
                return;
            }
            this.f6740do.m2605for(m4072new, i2);
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$for, reason: invalid class name */
    public class Cfor extends Cimplements {

        /* renamed from: do, reason: not valid java name */
        public final Rect f6744do = new Rect();

        public Cfor() {
        }

        @Override // defpackage.Cimplements
        /* renamed from: case, reason: not valid java name */
        public final boolean mo4079case(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.f6700try || DrawerLayout.m4062this(view)) {
                return super.mo4079case(viewGroup, view, accessibilityEvent);
            }
            return false;
        }

        @Override // defpackage.Cimplements
        /* renamed from: do, reason: not valid java name */
        public final boolean mo4080do(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return super.mo4080do(view, accessibilityEvent);
            }
            accessibilityEvent.getText();
            DrawerLayout drawerLayout = DrawerLayout.this;
            View m4063case = drawerLayout.m4063case();
            if (m4063case == null) {
                return true;
            }
            int m4069goto = drawerLayout.m4069goto(m4063case);
            drawerLayout.getClass();
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            Gravity.getAbsoluteGravity(m4069goto, drawerLayout.getLayoutDirection());
            return true;
        }

        @Override // defpackage.Cimplements
        /* renamed from: for */
        public final void mo2847for(View view, AccessibilityEvent accessibilityEvent) {
            super.mo2847for(view, accessibilityEvent);
            accessibilityEvent.setClassName("androidx.drawerlayout.widget.DrawerLayout");
        }

        @Override // defpackage.Cimplements
        /* renamed from: new */
        public final void mo1356new(View view, C3893w c3893w) {
            boolean z = DrawerLayout.f6700try;
            AccessibilityNodeInfo accessibilityNodeInfo = c3893w.f16161do;
            View.AccessibilityDelegate accessibilityDelegate = ((Cimplements) this).f13562do;
            if (z) {
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            } else {
                AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(accessibilityNodeInfo);
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, obtain);
                c3893w.f16162if = -1;
                accessibilityNodeInfo.setSource(view);
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                Object parentForAccessibility = view.getParentForAccessibility();
                if (parentForAccessibility instanceof View) {
                    c3893w.f16160do = -1;
                    accessibilityNodeInfo.setParent((View) parentForAccessibility);
                }
                Rect rect = this.f6744do;
                obtain.getBoundsInScreen(rect);
                accessibilityNodeInfo.setBoundsInScreen(rect);
                accessibilityNodeInfo.setVisibleToUser(obtain.isVisibleToUser());
                accessibilityNodeInfo.setPackageName(obtain.getPackageName());
                c3893w.m8495break(obtain.getClassName());
                c3893w.m8498class(obtain.getContentDescription());
                accessibilityNodeInfo.setEnabled(obtain.isEnabled());
                accessibilityNodeInfo.setFocused(obtain.isFocused());
                accessibilityNodeInfo.setAccessibilityFocused(obtain.isAccessibilityFocused());
                accessibilityNodeInfo.setSelected(obtain.isSelected());
                c3893w.m8500do(obtain.getActions());
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (DrawerLayout.m4062this(childAt)) {
                        accessibilityNodeInfo.addChild(childAt);
                    }
                }
            }
            c3893w.m8495break("androidx.drawerlayout.widget.DrawerLayout");
            accessibilityNodeInfo.setFocusable(false);
            accessibilityNodeInfo.setFocused(false);
            accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) C3893w.Cdo.f16167do.f16178do);
            accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) C3893w.Cdo.f16171if.f16178do);
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$if, reason: invalid class name */
    public class Cif implements View.OnApplyWindowInsetsListener {
        @Override // android.view.View.OnApplyWindowInsetsListener
        public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            DrawerLayout drawerLayout = (DrawerLayout) view;
            boolean z = windowInsets.getSystemWindowInsetTop() > 0;
            drawerLayout.f6711do = windowInsets;
            drawerLayout.f6726new = z;
            drawerLayout.setWillNotDraw(!z && drawerLayout.getBackground() == null);
            drawerLayout.requestLayout();
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$new, reason: invalid class name */
    public static final class Cnew extends Cimplements {
        @Override // defpackage.Cimplements
        /* renamed from: new */
        public final void mo1356new(View view, C3893w c3893w) {
            View.AccessibilityDelegate accessibilityDelegate = ((Cimplements) this).f13562do;
            AccessibilityNodeInfo accessibilityNodeInfo = c3893w.f16161do;
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            if (DrawerLayout.m4062this(view)) {
                return;
            }
            c3893w.f16160do = -1;
            accessibilityNodeInfo.setParent(null);
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$try, reason: invalid class name */
    public interface Ctry {
        /* renamed from: do */
        void mo4077do();

        /* renamed from: for, reason: not valid java name */
        void mo4081for(View view);

        /* renamed from: if, reason: not valid java name */
        void mo4082if(View view);

        /* renamed from: new */
        void mo4078new();
    }

    static {
        int i = Build.VERSION.SDK_INT;
        f6700try = true;
        f6696case = true;
        f6698else = i >= 29;
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.joeykrim.rootcheck.R.attr.drawerLayoutStyle);
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m4059break(View view) {
        return ((LayoutParams) view.getLayoutParams()).f6730do == 0;
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m4060catch(View view) {
        if (m4061class(view)) {
            return (((LayoutParams) view.getLayoutParams()).f6732if & 1) == 1;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m4061class(View view) {
        int i = ((LayoutParams) view.getLayoutParams()).f6730do;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        int absoluteGravity = Gravity.getAbsoluteGravity(i, view.getLayoutDirection());
        return ((absoluteGravity & 3) == 0 && (absoluteGravity & 5) == 0) ? false : true;
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m4062this(View view) {
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        return (view.getImportantForAccessibility() == 4 || view.getImportantForAccessibility() == 2) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        ArrayList<View> arrayList2;
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        int i3 = 0;
        boolean z = false;
        while (true) {
            arrayList2 = this.f6722if;
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            if (!m4061class(childAt)) {
                arrayList2.add(childAt);
            } else if (m4060catch(childAt)) {
                childAt.addFocusables(arrayList, i, i2);
                z = true;
            }
            i3++;
        }
        if (!z) {
            int size = arrayList2.size();
            for (int i4 = 0; i4 < size; i4++) {
                View view = arrayList2.get(i4);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i, i2);
                }
            }
        }
        arrayList2.clear();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (m4075try() != null || m4061class(view)) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            view.setImportantForAccessibility(4);
        } else {
            WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
            view.setImportantForAccessibility(1);
        }
        if (f6700try) {
            return;
        }
        QK.m1858native(view, this.f6710do);
    }

    /* renamed from: case, reason: not valid java name */
    public final View m4063case() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m4061class(childAt)) {
                if (!m4061class(childAt)) {
                    throw new IllegalArgumentException("View " + childAt + " is not a drawer");
                }
                if (((LayoutParams) childAt.getLayoutParams()).f6729do > 0.0f) {
                    return childAt;
                }
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            f = Math.max(f, ((LayoutParams) getChildAt(i).getLayoutParams()).f6729do);
        }
        this.f6719if = f;
        boolean m2606goto = this.f6703do.m2606goto();
        boolean m2606goto2 = this.f6720if.m2606goto();
        if (m2606goto || m2606goto2) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            postInvalidateOnAnimation();
        }
    }

    /* renamed from: const, reason: not valid java name */
    public final void m4064const(View view) {
        if (!m4061class(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (this.f6723if) {
            layoutParams.f6729do = 1.0f;
            layoutParams.f6732if = 1;
            m4076while(view, true);
            m4074throw(view);
        } else {
            layoutParams.f6732if |= 2;
            if (m4065do(view, 3)) {
                this.f6703do.m2612return(view, 0, view.getTop());
            } else {
                this.f6720if.m2612return(view, getWidth() - view.getWidth(), view.getTop());
            }
        }
        invalidate();
    }

    @Override // android.view.View
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        boolean dispatchGenericMotionEvent;
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f6719if <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        for (int i = childCount - 1; i >= 0; i--) {
            View childAt = getChildAt(i);
            if (this.f6706do == null) {
                this.f6706do = new Rect();
            }
            childAt.getHitRect(this.f6706do);
            if (this.f6706do.contains((int) x, (int) y) && !m4059break(childAt)) {
                if (childAt.getMatrix().isIdentity()) {
                    float scrollX = getScrollX() - childAt.getLeft();
                    float scrollY = getScrollY() - childAt.getTop();
                    motionEvent.offsetLocation(scrollX, scrollY);
                    dispatchGenericMotionEvent = childAt.dispatchGenericMotionEvent(motionEvent);
                    motionEvent.offsetLocation(-scrollX, -scrollY);
                } else {
                    float scrollX2 = getScrollX() - childAt.getLeft();
                    float scrollY2 = getScrollY() - childAt.getTop();
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    obtain.offsetLocation(scrollX2, scrollY2);
                    Matrix matrix = childAt.getMatrix();
                    if (!matrix.isIdentity()) {
                        if (this.f6704do == null) {
                            this.f6704do = new Matrix();
                        }
                        matrix.invert(this.f6704do);
                        obtain.transform(this.f6704do);
                    }
                    dispatchGenericMotionEvent = childAt.dispatchGenericMotionEvent(obtain);
                    obtain.recycle();
                }
                if (dispatchGenericMotionEvent) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m4065do(View view, int i) {
        return (m4069goto(view) & i) == i;
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        int height = getHeight();
        boolean m4059break = m4059break(view);
        int width = getWidth();
        int save = canvas.save();
        int i = 0;
        if (m4059break) {
            int childCount = getChildCount();
            int i2 = 0;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt != view && childAt.getVisibility() == 0) {
                    Drawable background = childAt.getBackground();
                    if ((background != null && background.getOpacity() == -1) && m4061class(childAt) && childAt.getHeight() >= height) {
                        if (m4065do(childAt, 3)) {
                            int right = childAt.getRight();
                            if (right > i2) {
                                i2 = right;
                            }
                        } else {
                            int left = childAt.getLeft();
                            if (left < width) {
                                width = left;
                            }
                        }
                    }
                }
            }
            canvas.clipRect(i2, 0, width, getHeight());
            i = i2;
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        float f = this.f6719if;
        if (f > 0.0f && m4059break) {
            int i4 = this.f6725new;
            Paint paint = this.f6705do;
            paint.setColor((((int) ((((-16777216) & i4) >>> 24) * f)) << 24) | (i4 & 16777215));
            canvas.drawRect(i, 0.0f, width, getHeight(), paint);
        }
        return drawChild;
    }

    /* renamed from: else, reason: not valid java name */
    public final int m4066else(View view) {
        if (!m4061class(view)) {
            throw new IllegalArgumentException("View " + view + " is not a drawer");
        }
        int i = ((LayoutParams) view.getLayoutParams()).f6730do;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        int layoutDirection = getLayoutDirection();
        if (i == 3) {
            int i2 = this.f6701case;
            if (i2 != 3) {
                return i2;
            }
            int i3 = layoutDirection == 0 ? this.f6718goto : this.f6727this;
            if (i3 != 3) {
                return i3;
            }
        } else if (i == 5) {
            int i4 = this.f6714else;
            if (i4 != 3) {
                return i4;
            }
            int i5 = layoutDirection == 0 ? this.f6727this : this.f6718goto;
            if (i5 != 3) {
                return i5;
            }
        } else if (i == 8388611) {
            int i6 = this.f6718goto;
            if (i6 != 3) {
                return i6;
            }
            int i7 = layoutDirection == 0 ? this.f6701case : this.f6714else;
            if (i7 != 3) {
                return i7;
            }
        } else if (i == 8388613) {
            int i8 = this.f6727this;
            if (i8 != 3) {
                return i8;
            }
            int i9 = layoutDirection == 0 ? this.f6714else : this.f6701case;
            if (i9 != 3) {
                return i9;
            }
        }
        return 0;
    }

    /* renamed from: final, reason: not valid java name */
    public final void m4067final(int i, int i2) {
        View m4072new;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        int absoluteGravity = Gravity.getAbsoluteGravity(i2, getLayoutDirection());
        if (i2 == 3) {
            this.f6701case = i;
        } else if (i2 == 5) {
            this.f6714else = i;
        } else if (i2 == 8388611) {
            this.f6718goto = i;
        } else if (i2 == 8388613) {
            this.f6727this = i;
        }
        if (i != 0) {
            (absoluteGravity == 3 ? this.f6703do : this.f6720if).m2607if();
        }
        if (i != 1) {
            if (i == 2 && (m4072new = m4072new(absoluteGravity)) != null) {
                m4064const(m4072new);
                return;
            }
            return;
        }
        View m4072new2 = m4072new(absoluteGravity);
        if (m4072new2 != null) {
            m4070if(m4072new2, true);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4068for(boolean z) {
        boolean m2612return;
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (m4061class(childAt) && (!z || layoutParams.f6731do)) {
                int width = childAt.getWidth();
                if (m4065do(childAt, 3)) {
                    int top = childAt.getTop();
                    m2612return = this.f6703do.m2612return(childAt, -width, top);
                } else {
                    m2612return = this.f6720if.m2612return(childAt, getWidth(), childAt.getTop());
                }
                z2 |= m2612return;
                layoutParams.f6731do = false;
            }
        }
        Celse celse = this.f6709do;
        DrawerLayout.this.removeCallbacks(celse.f6741do);
        Celse celse2 = this.f6721if;
        DrawerLayout.this.removeCallbacks(celse2.f6741do);
        if (z2) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* renamed from: goto, reason: not valid java name */
    public final int m4069goto(View view) {
        int i = ((LayoutParams) view.getLayoutParams()).f6730do;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        return Gravity.getAbsoluteGravity(i, getLayoutDirection());
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4070if(View view, boolean z) {
        if (!m4061class(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (this.f6723if) {
            layoutParams.f6729do = 0.0f;
            layoutParams.f6732if = 0;
        } else if (z) {
            layoutParams.f6732if |= 4;
            if (m4065do(view, 3)) {
                this.f6703do.m2612return(view, -view.getWidth(), view.getTop());
            } else {
                this.f6720if.m2612return(view, getWidth(), view.getTop());
            }
        } else {
            float f = ((LayoutParams) view.getLayoutParams()).f6729do;
            float width = view.getWidth();
            int i = ((int) (width * 0.0f)) - ((int) (f * width));
            if (!m4065do(view, 3)) {
                i = -i;
            }
            view.offsetLeftAndRight(i);
            m4073super(view, 0.0f);
            m4071import(view, 0);
            view.setVisibility(4);
        }
        invalidate();
    }

    /* renamed from: import, reason: not valid java name */
    public final void m4071import(View view, int i) {
        int i2;
        View rootView;
        int i3 = this.f6703do.f4086do;
        int i4 = this.f6720if.f4086do;
        if (i3 == 1 || i4 == 1) {
            i2 = 1;
        } else {
            i2 = 2;
            if (i3 != 2 && i4 != 2) {
                i2 = 0;
            }
        }
        if (view != null && i == 0) {
            float f = ((LayoutParams) view.getLayoutParams()).f6729do;
            if (f == 0.0f) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                if ((layoutParams.f6732if & 1) == 1) {
                    layoutParams.f6732if = 0;
                    ArrayList arrayList = this.f6712do;
                    if (arrayList != null) {
                        for (int size = arrayList.size() - 1; size >= 0; size--) {
                            ((Ctry) this.f6712do.get(size)).mo4081for(view);
                        }
                    }
                    m4076while(view, false);
                    m4074throw(view);
                    if (hasWindowFocus() && (rootView = getRootView()) != null) {
                        rootView.sendAccessibilityEvent(32);
                    }
                }
            } else if (f == 1.0f) {
                LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                if ((layoutParams2.f6732if & 1) == 0) {
                    layoutParams2.f6732if = 1;
                    ArrayList arrayList2 = this.f6712do;
                    if (arrayList2 != null) {
                        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                            ((Ctry) this.f6712do.get(size2)).mo4082if(view);
                        }
                    }
                    m4076while(view, true);
                    m4074throw(view);
                    if (hasWindowFocus()) {
                        sendAccessibilityEvent(32);
                    }
                }
            }
        }
        if (i2 != this.f6728try) {
            this.f6728try = i2;
            ArrayList arrayList3 = this.f6712do;
            if (arrayList3 != null) {
                for (int size3 = arrayList3.size() - 1; size3 >= 0; size3--) {
                    ((Ctry) this.f6712do.get(size3)).mo4077do();
                }
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final View m4072new(int i) {
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection()) & 7;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((m4069goto(childAt) & 7) == absoluteGravity) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f6723if = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f6723if = true;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable drawable;
        super.onDraw(canvas);
        if (!this.f6726new || (drawable = this.f6707do) == null) {
            return;
        }
        Object obj = this.f6711do;
        int systemWindowInsetTop = obj != null ? ((WindowInsets) obj).getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            drawable.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            drawable.draw(canvas);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
    
        if (r0 != 3) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0058 A[LOOP:1: B:30:0x0022->B:39:0x0058, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0056 A[SYNTHETIC] */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onInterceptTouchEvent(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 198
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (m4063case() != null) {
                keyEvent.startTracking();
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyUp(i, keyEvent);
        }
        View m4063case = m4063case();
        if (m4063case != null && m4066else(m4063case) == 0) {
            m4068for(false);
        }
        return m4063case != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        WindowInsets rootWindowInsets;
        float f;
        int i5;
        this.f6713do = true;
        int i6 = i3 - i;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (m4059break(childAt)) {
                    int i8 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    childAt.layout(i8, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, childAt.getMeasuredWidth() + i8, childAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin);
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m4065do(childAt, 3)) {
                        float f2 = measuredWidth;
                        i5 = (-measuredWidth) + ((int) (layoutParams.f6729do * f2));
                        f = (measuredWidth + i5) / f2;
                    } else {
                        float f3 = measuredWidth;
                        f = (i6 - r11) / f3;
                        i5 = i6 - ((int) (layoutParams.f6729do * f3));
                    }
                    boolean z2 = f != layoutParams.f6729do;
                    int i9 = layoutParams.f6730do & 112;
                    if (i9 == 16) {
                        int i10 = i4 - i2;
                        int i11 = (i10 - measuredHeight) / 2;
                        int i12 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        if (i11 < i12) {
                            i11 = i12;
                        } else {
                            int i13 = i11 + measuredHeight;
                            int i14 = i10 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            if (i13 > i14) {
                                i11 = i14 - measuredHeight;
                            }
                        }
                        childAt.layout(i5, i11, measuredWidth + i5, measuredHeight + i11);
                    } else if (i9 != 80) {
                        int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        childAt.layout(i5, i15, measuredWidth + i5, measuredHeight + i15);
                    } else {
                        int i16 = i4 - i2;
                        childAt.layout(i5, (i16 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i5, i16 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    }
                    if (z2) {
                        m4073super(childAt, f);
                    }
                    int i17 = layoutParams.f6729do > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i17) {
                        childAt.setVisibility(i17);
                    }
                }
            }
        }
        if (f6698else && (rootWindowInsets = getRootWindowInsets()) != null) {
            C0633Yn mo7084this = C3150jM.m7056this(null, rootWindowInsets).f13676do.mo7084this();
            VK vk = this.f6703do;
            vk.f4106try = Math.max(vk.f4084case, mo7084this.f4758do);
            VK vk2 = this.f6720if;
            vk2.f4106try = Math.max(vk2.f4084case, mo7084this.f4759for);
        }
        this.f6713do = false;
        this.f6723if = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0048  */
    @Override // android.view.View
    @android.annotation.SuppressLint({"WrongConstant"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r17, int r18) {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        View m4072new;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f6568do);
        int i = savedState.f6735for;
        if (i != 0 && (m4072new = m4072new(i)) != null) {
            m4064const(m4072new);
        }
        int i2 = savedState.f6736new;
        if (i2 != 3) {
            m4067final(i2, 3);
        }
        int i3 = savedState.f6737try;
        if (i3 != 3) {
            m4067final(i3, 5);
        }
        int i4 = savedState.f6733case;
        if (i4 != 3) {
            m4067final(i4, 8388611);
        }
        int i5 = savedState.f6734else;
        if (i5 != 3) {
            m4067final(i5, 8388613);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        if (f6696case) {
            return;
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        getLayoutDirection();
        getLayoutDirection();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            int i2 = layoutParams.f6732if;
            boolean z = i2 == 1;
            boolean z2 = i2 == 2;
            if (z || z2) {
                savedState.f6735for = layoutParams.f6730do;
                break;
            }
        }
        savedState.f6736new = this.f6701case;
        savedState.f6737try = this.f6714else;
        savedState.f6733case = this.f6718goto;
        savedState.f6734else = this.f6727this;
        return savedState;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0055, code lost:
    
        if (m4066else(r7) != 2) goto L20;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            VK r0 = r6.f6703do
            r0.m2601const(r7)
            VK r1 = r6.f6720if
            r1.m2601const(r7)
            int r1 = r7.getAction()
            r1 = r1 & 255(0xff, float:3.57E-43)
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L5c
            if (r1 == r3) goto L20
            r7 = 3
            if (r1 == r7) goto L1a
            goto L6a
        L1a:
            r6.m4068for(r3)
            r6.f6717for = r2
            goto L6a
        L20:
            float r1 = r7.getX()
            float r7 = r7.getY()
            int r4 = (int) r1
            int r5 = (int) r7
            android.view.View r4 = r0.m2598break(r4, r5)
            if (r4 == 0) goto L57
            boolean r4 = m4059break(r4)
            if (r4 == 0) goto L57
            float r4 = r6.f6715for
            float r1 = r1 - r4
            float r4 = r6.f6724new
            float r7 = r7 - r4
            int r0 = r0.f4101if
            float r1 = r1 * r1
            float r7 = r7 * r7
            float r7 = r7 + r1
            int r0 = r0 * r0
            float r0 = (float) r0
            int r7 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            if (r7 >= 0) goto L57
            android.view.View r7 = r6.m4075try()
            if (r7 == 0) goto L57
            int r7 = r6.m4066else(r7)
            r0 = 2
            if (r7 != r0) goto L58
        L57:
            r2 = 1
        L58:
            r6.m4068for(r2)
            goto L6a
        L5c:
            float r0 = r7.getX()
            float r7 = r7.getY()
            r6.f6715for = r0
            r6.f6724new = r7
            r6.f6717for = r2
        L6a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z) {
            m4068for(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.f6713do) {
            return;
        }
        super.requestLayout();
    }

    /* renamed from: super, reason: not valid java name */
    public final void m4073super(View view, float f) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f == layoutParams.f6729do) {
            return;
        }
        layoutParams.f6729do = f;
        ArrayList arrayList = this.f6712do;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                ((Ctry) this.f6712do.get(size)).mo4078new();
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m4074throw(View view) {
        C3893w.Cdo cdo = C3893w.Cdo.f16170goto;
        QK.m1865throw(view, cdo.m8510do());
        QK.m1848catch(view, 0);
        if (!m4060catch(view) || m4066else(view) == 2) {
            return;
        }
        QK.m1867while(view, cdo, null, this.f6708do);
    }

    /* renamed from: try, reason: not valid java name */
    public final View m4075try() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((((LayoutParams) childAt.getLayoutParams()).f6732if & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: while, reason: not valid java name */
    public final void m4076while(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((z || m4061class(childAt)) && !(z && childAt == view)) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                childAt.setImportantForAccessibility(4);
            } else {
                WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
                childAt.setImportantForAccessibility(1);
            }
        }
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6710do = new Cnew();
        this.f6725new = -1728053248;
        this.f6705do = new Paint();
        this.f6723if = true;
        this.f6701case = 3;
        this.f6714else = 3;
        this.f6718goto = 3;
        this.f6727this = 3;
        this.f6708do = new Cdo();
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.f6716for = (int) ((64.0f * f) + 0.5f);
        float f2 = f * 400.0f;
        Celse celse = new Celse(3);
        this.f6709do = celse;
        Celse celse2 = new Celse(5);
        this.f6721if = celse2;
        VK m2597this = VK.m2597this(this, 1.0f, celse);
        this.f6703do = m2597this;
        m2597this.f4096else = 1;
        m2597this.f4100if = f2;
        celse.f6740do = m2597this;
        VK m2597this2 = VK.m2597this(this, 1.0f, celse2);
        this.f6720if = m2597this2;
        m2597this2.f4096else = 2;
        m2597this2.f4100if = f2;
        celse2.f6740do = m2597this2;
        setFocusableInTouchMode(true);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        setImportantForAccessibility(1);
        QK.m1858native(this, new Cfor());
        setMotionEventSplittingEnabled(false);
        if (getFitsSystemWindows()) {
            setOnApplyWindowInsetsListener(new Cif());
            setSystemUiVisibility(1280);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f6697do);
            try {
                this.f6707do = obtainStyledAttributes.getDrawable(0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, C3645ro.f15315case, i, 0);
        try {
            if (obtainStyledAttributes2.hasValue(0)) {
                this.f6702do = obtainStyledAttributes2.getDimension(0, 0.0f);
            } else {
                this.f6702do = getResources().getDimension(com.joeykrim.rootcheck.R.dimen.def_drawer_elevation);
            }
            obtainStyledAttributes2.recycle();
            this.f6722if = new ArrayList<>();
        } catch (Throwable th) {
            obtainStyledAttributes2.recycle();
            throw th;
        }
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: do, reason: not valid java name */
        public float f6729do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final int f6730do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f6731do;

        /* renamed from: if, reason: not valid java name */
        public int f6732if;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f6730do = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.f6699if);
            this.f6730do = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams() {
            super(-1, -1);
            this.f6730do = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f6730do = 0;
            this.f6730do = layoutParams.f6730do;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f6730do = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f6730do = 0;
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: case, reason: not valid java name */
        public int f6733case;

        /* renamed from: else, reason: not valid java name */
        public int f6734else;

        /* renamed from: for, reason: not valid java name */
        public int f6735for;

        /* renamed from: new, reason: not valid java name */
        public int f6736new;

        /* renamed from: try, reason: not valid java name */
        public int f6737try;

        /* renamed from: androidx.drawerlayout.widget.DrawerLayout$SavedState$do, reason: invalid class name */
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
            this.f6735for = 0;
            this.f6735for = parcel.readInt();
            this.f6736new = parcel.readInt();
            this.f6737try = parcel.readInt();
            this.f6733case = parcel.readInt();
            this.f6734else = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f6568do, i);
            parcel.writeInt(this.f6735for);
            parcel.writeInt(this.f6736new);
            parcel.writeInt(this.f6737try);
            parcel.writeInt(this.f6733case);
            parcel.writeInt(this.f6734else);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.f6735for = 0;
        }
    }
}
