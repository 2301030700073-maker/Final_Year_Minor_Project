package androidx.swiperefreshlayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.ListView;
import defpackage.C0466Ra;
import defpackage.C2859hG;
import defpackage.C2918iG;
import defpackage.C3385nL;
import defpackage.C3651ru;
import defpackage.C3828uu;
import defpackage.E7;
import defpackage.InterfaceC3593qu;
import defpackage.M7;
import defpackage.QK;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class SwipeRefreshLayout extends ViewGroup implements InterfaceC3593qu {

    /* renamed from: for, reason: not valid java name */
    public static final int[] f7736for = {R.attr.enabled};

    /* renamed from: break, reason: not valid java name */
    public final int f7737break;

    /* renamed from: case, reason: not valid java name */
    public int f7738case;

    /* renamed from: do, reason: not valid java name */
    public final float f7739do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public E7 f7740do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public M7 f7741do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f7742do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final DecelerateInterpolator f7743do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f7744do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f7745do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cnew f7746do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ctry f7747do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2859hG f7748do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2918iG f7749do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3651ru f7750do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3828uu f7751do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f7752do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f7753do;

    /* renamed from: else, reason: not valid java name */
    public int f7754else;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public float f7755for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int f7756for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f7757for;

    /* renamed from: goto, reason: not valid java name */
    public final int f7758goto;

    /* renamed from: if, reason: not valid java name */
    public float f7759if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public C2918iG f7760if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f7761if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final int[] f7762if;

    /* renamed from: new, reason: not valid java name */
    public float f7763new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f7764new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f7765new;

    /* renamed from: this, reason: not valid java name */
    public final int f7766this;

    /* renamed from: try, reason: not valid java name */
    public int f7767try;

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$do, reason: invalid class name */
    public class Cdo implements Animation.AnimationListener {
        public Cdo() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationEnd(Animation animation) {
            Ctry ctry;
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (!swipeRefreshLayout.f7752do) {
                swipeRefreshLayout.m4590case();
                return;
            }
            swipeRefreshLayout.f7741do.setAlpha(255);
            swipeRefreshLayout.f7741do.start();
            if (swipeRefreshLayout.f7765new && (ctry = swipeRefreshLayout.f7747do) != null) {
                ctry.mo4599do();
            }
            swipeRefreshLayout.f7764new = swipeRefreshLayout.f7740do.getTop();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$for, reason: invalid class name */
    public class Cfor extends Animation {
        public Cfor() {
        }

        @Override // android.view.animation.Animation
        public final void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            swipeRefreshLayout.getClass();
            int abs = swipeRefreshLayout.f7766this - Math.abs(swipeRefreshLayout.f7758goto);
            swipeRefreshLayout.m4597this((swipeRefreshLayout.f7754else + ((int) ((abs - r0) * f))) - swipeRefreshLayout.f7740do.getTop());
            M7 m7 = swipeRefreshLayout.f7741do;
            float f2 = 1.0f - f;
            M7.Cdo cdo = m7.f2101do;
            if (f2 != cdo.f2118goto) {
                cdo.f2118goto = f2;
            }
            m7.invalidateSelf();
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$if, reason: invalid class name */
    public class Cif implements Animation.AnimationListener {
        public Cif() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationEnd(Animation animation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            swipeRefreshLayout.getClass();
            C2859hG c2859hG = new C2859hG(swipeRefreshLayout);
            swipeRefreshLayout.f7748do = c2859hG;
            c2859hG.setDuration(150L);
            E7 e7 = swipeRefreshLayout.f7740do;
            e7.f737do = null;
            e7.clearAnimation();
            swipeRefreshLayout.f7740do.startAnimation(swipeRefreshLayout.f7748do);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$new, reason: invalid class name */
    public class Cnew extends Animation {
        public Cnew() {
        }

        @Override // android.view.animation.Animation
        public final void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout.this.m4598try(f);
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$try, reason: invalid class name */
    public interface Ctry {
        /* renamed from: do, reason: not valid java name */
        void mo4599do();
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7752do = false;
        this.f7739do = -1.0f;
        this.f7753do = new int[2];
        this.f7762if = new int[2];
        this.f7767try = -1;
        this.f7738case = -1;
        this.f7744do = new Cdo();
        this.f7745do = new Cfor();
        this.f7746do = new Cnew();
        this.f7756for = ViewConfiguration.get(context).getScaledTouchSlop();
        getResources().getInteger(R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.f7743do = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int i = (int) (displayMetrics.density * 40.0f);
        this.f7737break = i;
        this.f7740do = new E7(getContext());
        M7 m7 = new M7(getContext());
        this.f7741do = m7;
        float f = m7.f2103do.getDisplayMetrics().density;
        float f2 = 2.5f * f;
        M7.Cdo cdo = m7.f2101do;
        cdo.f2122new = f2;
        cdo.f2109do.setStrokeWidth(f2);
        cdo.f2124this = 7.5f * f;
        cdo.m1395do(0);
        cdo.f2120if = (int) (10.0f * f);
        cdo.f2116for = (int) (f * 5.0f);
        m7.invalidateSelf();
        this.f7740do.setImageDrawable(this.f7741do);
        this.f7740do.setVisibility(8);
        addView(this.f7740do);
        setChildrenDrawingOrderEnabled(true);
        int i2 = (int) (displayMetrics.density * 64.0f);
        this.f7766this = i2;
        this.f7739do = i2;
        this.f7751do = new C3828uu();
        this.f7750do = new C3651ru(this);
        setNestedScrollingEnabled(true);
        int i3 = -i;
        this.f7764new = i3;
        this.f7758goto = i3;
        m4598try(1.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f7736for);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: break, reason: not valid java name */
    public final void m4589break(float f) {
        float f2 = this.f7763new;
        float f3 = f - f2;
        int i = this.f7756for;
        if (f3 <= i || this.f7757for) {
            return;
        }
        this.f7755for = f2 + i;
        this.f7757for = true;
        this.f7741do.setAlpha(76);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m4590case() {
        this.f7740do.clearAnimation();
        this.f7741do.stop();
        this.f7740do.setVisibility(8);
        this.f7740do.getBackground().setAlpha(255);
        this.f7741do.setAlpha(255);
        m4597this(this.f7758goto - this.f7764new);
        this.f7764new = this.f7740do.getTop();
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f7750do.m8025do(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return this.f7750do.m8029if(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.f7750do.m8027for(i, i2, 0, iArr, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f7750do.m8031try(i, i2, i3, i4, iArr, 0, null);
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m4591do() {
        View view = this.f7742do;
        return view instanceof ListView ? ((ListView) view).canScrollList(-1) : view.canScrollVertically(-1);
    }

    /* renamed from: else, reason: not valid java name */
    public final void m4592else(int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = C0466Ra.getColor(context, iArr[i]);
        }
        m4595if();
        M7 m7 = this.f7741do;
        M7.Cdo cdo = m7.f2101do;
        cdo.f2113do = iArr2;
        cdo.m1395do(0);
        cdo.m1395do(0);
        m7.invalidateSelf();
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4593for(float f) {
        if (f > this.f7739do) {
            m4594goto(true, true);
            return;
        }
        this.f7752do = false;
        M7 m7 = this.f7741do;
        M7.Cdo cdo = m7.f2101do;
        cdo.f2107do = 0.0f;
        cdo.f2119if = 0.0f;
        m7.invalidateSelf();
        Cif cif = new Cif();
        this.f7754else = this.f7764new;
        Cnew cnew = this.f7746do;
        cnew.reset();
        cnew.setDuration(200L);
        cnew.setInterpolator(this.f7743do);
        E7 e7 = this.f7740do;
        e7.f737do = cif;
        e7.clearAnimation();
        this.f7740do.startAnimation(cnew);
        M7 m72 = this.f7741do;
        M7.Cdo cdo2 = m72.f2101do;
        if (cdo2.f2112do) {
            cdo2.f2112do = false;
        }
        m72.invalidateSelf();
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        int i3 = this.f7738case;
        return i3 < 0 ? i2 : i2 == i + (-1) ? i3 : i2 >= i3 ? i2 + 1 : i2;
    }

    @Override // android.view.ViewGroup
    public final int getNestedScrollAxes() {
        C3828uu c3828uu = this.f7751do;
        return c3828uu.f15961if | c3828uu.f15960do;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m4594goto(boolean z, boolean z2) {
        if (this.f7752do != z) {
            this.f7765new = z2;
            m4595if();
            this.f7752do = z;
            Cdo cdo = this.f7744do;
            if (!z) {
                C2859hG c2859hG = new C2859hG(this);
                this.f7748do = c2859hG;
                c2859hG.setDuration(150L);
                E7 e7 = this.f7740do;
                e7.f737do = cdo;
                e7.clearAnimation();
                this.f7740do.startAnimation(this.f7748do);
                return;
            }
            this.f7754else = this.f7764new;
            Cfor cfor = this.f7745do;
            cfor.reset();
            cfor.setDuration(200L);
            cfor.setInterpolator(this.f7743do);
            if (cdo != null) {
                this.f7740do.f737do = cdo;
            }
            this.f7740do.clearAnimation();
            this.f7740do.startAnimation(cfor);
        }
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.f7750do.m8024case(0) != null;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4595if() {
        if (this.f7742do == null) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (!childAt.equals(this.f7740do)) {
                    this.f7742do = childAt;
                    return;
                }
            }
        }
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.f7750do.f15336do;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4596new(float f) {
        M7 m7 = this.f7741do;
        M7.Cdo cdo = m7.f2101do;
        if (!cdo.f2112do) {
            cdo.f2112do = true;
        }
        m7.invalidateSelf();
        float f2 = this.f7739do;
        float min = Math.min(1.0f, Math.abs(f / f2));
        float max = (((float) Math.max(min - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float abs = Math.abs(f) - f2;
        float f3 = this.f7766this;
        double max2 = Math.max(0.0f, Math.min(abs, f3 * 2.0f) / f3) / 4.0f;
        float pow = ((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f;
        int i = this.f7758goto + ((int) ((f3 * min) + (f3 * pow * 2.0f)));
        if (this.f7740do.getVisibility() != 0) {
            this.f7740do.setVisibility(0);
        }
        this.f7740do.setScaleX(1.0f);
        this.f7740do.setScaleY(1.0f);
        if (f < f2) {
            if (this.f7741do.f2101do.f2123new > 76) {
                C2918iG c2918iG = this.f7749do;
                if (!((c2918iG == null || !c2918iG.hasStarted() || c2918iG.hasEnded()) ? false : true)) {
                    C2918iG c2918iG2 = new C2918iG(this, this.f7741do.f2101do.f2123new, 76);
                    c2918iG2.setDuration(300L);
                    E7 e7 = this.f7740do;
                    e7.f737do = null;
                    e7.clearAnimation();
                    this.f7740do.startAnimation(c2918iG2);
                    this.f7749do = c2918iG2;
                }
            }
        } else if (this.f7741do.f2101do.f2123new < 255) {
            C2918iG c2918iG3 = this.f7760if;
            if (!((c2918iG3 == null || !c2918iG3.hasStarted() || c2918iG3.hasEnded()) ? false : true)) {
                C2918iG c2918iG4 = new C2918iG(this, this.f7741do.f2101do.f2123new, 255);
                c2918iG4.setDuration(300L);
                E7 e72 = this.f7740do;
                e72.f737do = null;
                e72.clearAnimation();
                this.f7740do.startAnimation(c2918iG4);
                this.f7760if = c2918iG4;
            }
        }
        M7 m72 = this.f7741do;
        float min2 = Math.min(0.8f, max * 0.8f);
        M7.Cdo cdo2 = m72.f2101do;
        cdo2.f2107do = 0.0f;
        cdo2.f2119if = min2;
        m72.invalidateSelf();
        M7 m73 = this.f7741do;
        float min3 = Math.min(1.0f, max);
        M7.Cdo cdo3 = m73.f2101do;
        if (min3 != cdo3.f2118goto) {
            cdo3.f2118goto = min3;
        }
        m73.invalidateSelf();
        M7 m74 = this.f7741do;
        m74.f2101do.f2115for = ((pow * 2.0f) + ((max * 0.4f) - 0.25f)) * 0.5f;
        m74.invalidateSelf();
        m4597this(i - this.f7764new);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m4590case();
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int findPointerIndex;
        m4595if();
        int actionMasked = motionEvent.getActionMasked();
        if (!isEnabled() || m4591do() || this.f7752do || this.f7761if) {
            return false;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i = this.f7767try;
                    if (i == -1 || (findPointerIndex = motionEvent.findPointerIndex(i)) < 0) {
                        return false;
                    }
                    m4589break(motionEvent.getY(findPointerIndex));
                } else if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        int actionIndex = motionEvent.getActionIndex();
                        if (motionEvent.getPointerId(actionIndex) == this.f7767try) {
                            this.f7767try = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                        }
                    }
                }
            }
            this.f7757for = false;
            this.f7767try = -1;
        } else {
            m4597this(this.f7758goto - this.f7740do.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.f7767try = pointerId;
            this.f7757for = false;
            int findPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (findPointerIndex2 < 0) {
                return false;
            }
            this.f7763new = motionEvent.getY(findPointerIndex2);
        }
        return this.f7757for;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.f7742do == null) {
            m4595if();
        }
        View view = this.f7742do;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.f7740do.getMeasuredWidth();
        int measuredHeight2 = this.f7740do.getMeasuredHeight();
        int i5 = measuredWidth / 2;
        int i6 = measuredWidth2 / 2;
        int i7 = this.f7764new;
        this.f7740do.layout(i5 - i6, i7, i5 + i6, measuredHeight2 + i7);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f7742do == null) {
            m4595if();
        }
        View view = this.f7742do;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        E7 e7 = this.f7740do;
        int i3 = this.f7737break;
        e7.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
        this.f7738case = -1;
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            if (getChildAt(i4) == this.f7740do) {
                this.f7738case = i4;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        return dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0) {
            float f = this.f7759if;
            if (f > 0.0f) {
                float f2 = i2;
                if (f2 > f) {
                    iArr[1] = i2 - ((int) f);
                    this.f7759if = 0.0f;
                } else {
                    this.f7759if = f - f2;
                    iArr[1] = i2;
                }
                m4596new(this.f7759if);
            }
        }
        int i3 = i - iArr[0];
        int i4 = i2 - iArr[1];
        int[] iArr2 = this.f7753do;
        if (dispatchNestedPreScroll(i3, i4, iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        dispatchNestedScroll(i, i2, i3, i4, this.f7762if);
        if (i4 + this.f7762if[1] >= 0 || m4591do()) {
            return;
        }
        float abs = this.f7759if + Math.abs(r11);
        this.f7759if = abs;
        m4596new(abs);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        this.f7751do.f15960do = i;
        startNestedScroll(i & 2);
        this.f7759if = 0.0f;
        this.f7761if = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        return (!isEnabled() || this.f7752do || (i & 2) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        this.f7751do.f15960do = 0;
        this.f7761if = false;
        float f = this.f7759if;
        if (f > 0.0f) {
            m4593for(f);
            this.f7759if = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (!isEnabled() || m4591do() || this.f7752do || this.f7761if) {
            return false;
        }
        if (actionMasked == 0) {
            this.f7767try = motionEvent.getPointerId(0);
            this.f7757for = false;
        } else {
            if (actionMasked == 1) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f7767try);
                if (findPointerIndex < 0) {
                    return false;
                }
                if (this.f7757for) {
                    float y = (motionEvent.getY(findPointerIndex) - this.f7755for) * 0.5f;
                    this.f7757for = false;
                    m4593for(y);
                }
                this.f7767try = -1;
                return false;
            }
            if (actionMasked == 2) {
                int findPointerIndex2 = motionEvent.findPointerIndex(this.f7767try);
                if (findPointerIndex2 < 0) {
                    return false;
                }
                float y2 = motionEvent.getY(findPointerIndex2);
                m4589break(y2);
                if (this.f7757for) {
                    float f = (y2 - this.f7755for) * 0.5f;
                    if (f <= 0.0f) {
                        return false;
                    }
                    m4596new(f);
                }
            } else {
                if (actionMasked == 3) {
                    return false;
                }
                if (actionMasked == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    if (actionIndex < 0) {
                        return false;
                    }
                    this.f7767try = motionEvent.getPointerId(actionIndex);
                } else if (actionMasked == 6) {
                    int actionIndex2 = motionEvent.getActionIndex();
                    if (motionEvent.getPointerId(actionIndex2) == this.f7767try) {
                        this.f7767try = motionEvent.getPointerId(actionIndex2 == 0 ? 1 : 0);
                    }
                }
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        View view = this.f7742do;
        if (view != null) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (!QK.Cnew.m1940throw(view)) {
                return;
            }
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            return;
        }
        m4590case();
    }

    @Override // android.view.View
    public final void setNestedScrollingEnabled(boolean z) {
        C3651ru c3651ru = this.f7750do;
        if (c3651ru.f15336do) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            QK.Cnew.m1926extends(c3651ru.f15334do);
        }
        c3651ru.f15336do = z;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return this.f7750do.m8026else(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        this.f7750do.m8028goto(0);
    }

    /* renamed from: this, reason: not valid java name */
    public final void m4597this(int i) {
        this.f7740do.bringToFront();
        QK.m1850const(this.f7740do, i);
        this.f7764new = this.f7740do.getTop();
    }

    /* renamed from: try, reason: not valid java name */
    public final void m4598try(float f) {
        m4597this((this.f7754else + ((int) ((this.f7758goto - r0) * f))) - this.f7740do.getTop());
    }
}
