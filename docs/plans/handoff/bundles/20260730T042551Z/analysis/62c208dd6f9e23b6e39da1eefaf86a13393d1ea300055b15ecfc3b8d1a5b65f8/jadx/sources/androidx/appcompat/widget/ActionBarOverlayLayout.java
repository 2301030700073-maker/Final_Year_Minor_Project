package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.app.Ccase;
import com.google.android.gms.common.api.Api;
import com.joeykrim.rootcheck.R;
import defpackage.C0633Yn;
import defpackage.C3150jM;
import defpackage.C3385nL;
import defpackage.C3444oL;
import defpackage.C3828uu;
import defpackage.InterfaceC2643dd;
import defpackage.InterfaceC2701ed;
import defpackage.InterfaceC3710su;
import defpackage.InterfaceC3769tu;
import defpackage.QK;
import java.util.WeakHashMap;

@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements InterfaceC2643dd, InterfaceC3710su, InterfaceC3769tu {

    /* renamed from: do, reason: not valid java name */
    public static final int[] f5575do = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};

    /* renamed from: case, reason: not valid java name */
    public int f5576case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f5577do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f5578do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewPropertyAnimator f5579do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public OverScroller f5580do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ActionBarContainer f5581do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f5582do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f5583do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f5584do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cnew f5585do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ContentFrameLayout f5586do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC2701ed f5587do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3150jM f5588do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3828uu f5589do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5590do;

    /* renamed from: for, reason: not valid java name */
    public int f5591for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final Rect f5592for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public C3150jM f5593for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f5594for;

    /* renamed from: if, reason: not valid java name */
    public final Rect f5595if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public C3150jM f5596if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f5597if;

    /* renamed from: new, reason: not valid java name */
    public int f5598new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public C3150jM f5599new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f5600new;

    /* renamed from: try, reason: not valid java name */
    public int f5601try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public boolean f5602try;

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {
        public Cdo() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f5579do = null;
            actionBarOverlayLayout.f5602try = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f5579do = null;
            actionBarOverlayLayout.f5602try = false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$for, reason: invalid class name */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.m3381native();
            actionBarOverlayLayout.f5579do = actionBarOverlayLayout.f5581do.animate().translationY(-actionBarOverlayLayout.f5581do.getHeight()).setListener(actionBarOverlayLayout.f5582do);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.m3381native();
            actionBarOverlayLayout.f5579do = actionBarOverlayLayout.f5581do.animate().translationY(0.0f).setListener(actionBarOverlayLayout.f5582do);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$new, reason: invalid class name */
    public interface Cnew {
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5598new = 0;
        this.f5577do = new Rect();
        this.f5595if = new Rect();
        this.f5592for = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        C3150jM c3150jM = C3150jM.f13675do;
        this.f5588do = c3150jM;
        this.f5596if = c3150jM;
        this.f5593for = c3150jM;
        this.f5599new = c3150jM;
        this.f5582do = new Cdo();
        this.f5584do = new Cif();
        this.f5583do = new Cfor();
        m3383public(context);
        this.f5589do = new C3828uu();
    }

    /* renamed from: import, reason: not valid java name */
    public static boolean m3369import(FrameLayout frameLayout, Rect rect, boolean z) {
        boolean z2;
        LayoutParams layoutParams = (LayoutParams) frameLayout.getLayoutParams();
        int i = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        int i2 = rect.left;
        if (i != i2) {
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = i2;
            z2 = true;
        } else {
            z2 = false;
        }
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        int i4 = rect.top;
        if (i3 != i4) {
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = i4;
            z2 = true;
        }
        int i5 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int i6 = rect.right;
        if (i5 != i6) {
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = i6;
            z2 = true;
        }
        if (z) {
            int i7 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            int i8 = rect.bottom;
            if (i7 != i8) {
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = i8;
                return true;
            }
        }
        return z2;
    }

    @Override // defpackage.InterfaceC2643dd
    /* renamed from: break, reason: not valid java name */
    public final void mo3370break() {
        m3384return();
        this.f5587do.mo3526class();
    }

    @Override // defpackage.InterfaceC2643dd
    /* renamed from: case, reason: not valid java name */
    public final boolean mo3371case() {
        m3384return();
        return this.f5587do.mo3524case();
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: catch, reason: not valid java name */
    public final void mo3372catch(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: class, reason: not valid java name */
    public final void mo3373class(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // defpackage.InterfaceC3769tu
    /* renamed from: const, reason: not valid java name */
    public final void mo3374const(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        mo3377final(view, i, i2, i3, i4, i5);
    }

    @Override // defpackage.InterfaceC2643dd
    /* renamed from: do, reason: not valid java name */
    public final boolean mo3375do() {
        m3384return();
        return this.f5587do.mo3528do();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        if (this.f5578do == null || this.f5590do) {
            return;
        }
        if (this.f5581do.getVisibility() == 0) {
            i = (int) (this.f5581do.getTranslationY() + this.f5581do.getBottom() + 0.5f);
        } else {
            i = 0;
        }
        this.f5578do.setBounds(0, i, getWidth(), this.f5578do.getIntrinsicHeight() + i);
        this.f5578do.draw(canvas);
    }

    @Override // defpackage.InterfaceC2643dd
    /* renamed from: else, reason: not valid java name */
    public final boolean mo3376else() {
        m3384return();
        return this.f5587do.mo3529else();
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: final, reason: not valid java name */
    public final void mo3377final(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // defpackage.InterfaceC2643dd
    /* renamed from: for, reason: not valid java name */
    public final void mo3378for(CharSequence charSequence) {
        m3384return();
        this.f5587do.mo3531for(charSequence);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public final int getNestedScrollAxes() {
        C3828uu c3828uu = this.f5589do;
        return c3828uu.f15961if | c3828uu.f15960do;
    }

    @Override // defpackage.InterfaceC2643dd
    /* renamed from: goto, reason: not valid java name */
    public final void mo3379goto() {
        m3384return();
        this.f5587do.mo3532goto();
    }

    @Override // defpackage.InterfaceC2643dd
    /* renamed from: if, reason: not valid java name */
    public final boolean mo3380if() {
        m3384return();
        return this.f5587do.mo3533if();
    }

    /* renamed from: native, reason: not valid java name */
    public final void m3381native() {
        removeCallbacks(this.f5584do);
        removeCallbacks(this.f5583do);
        ViewPropertyAnimator viewPropertyAnimator = this.f5579do;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // defpackage.InterfaceC2643dd
    /* renamed from: new, reason: not valid java name */
    public final void mo3382new(Window.Callback callback) {
        m3384return();
        this.f5587do.mo3536new(callback);
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        m3384return();
        C3150jM m7056this = C3150jM.m7056this(this, windowInsets);
        boolean m3369import = m3369import(this.f5581do, new Rect(m7056this.m7059for(), m7056this.m7063try(), m7056this.m7062new(), m7056this.m7061if()), false);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        Rect rect = this.f5577do;
        QK.Cnew.m1930if(this, m7056this, rect);
        int i = rect.left;
        int i2 = rect.top;
        int i3 = rect.right;
        int i4 = rect.bottom;
        C3150jM.Ccatch ccatch = m7056this.f13676do;
        C3150jM mo7071class = ccatch.mo7071class(i, i2, i3, i4);
        this.f5588do = mo7071class;
        boolean z = true;
        if (!this.f5596if.equals(mo7071class)) {
            this.f5596if = this.f5588do;
            m3369import = true;
        }
        Rect rect2 = this.f5595if;
        if (rect2.equals(rect)) {
            z = m3369import;
        } else {
            rect2.set(rect);
        }
        if (z) {
            requestLayout();
        }
        return ccatch.mo7079do().f13676do.mo7081for().f13676do.mo7083if().m7060goto();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m3383public(getContext());
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        QK.Cfor.m1903for(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m3381native();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int measuredHeight;
        m3384return();
        measureChildWithMargins(this.f5581do, i, 0, i2, 0);
        LayoutParams layoutParams = (LayoutParams) this.f5581do.getLayoutParams();
        int max = Math.max(0, this.f5581do.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
        int max2 = Math.max(0, this.f5581do.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f5581do.getMeasuredState());
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        boolean z = (getWindowSystemUiVisibility() & 256) != 0;
        if (z) {
            measuredHeight = this.f5591for;
            if (this.f5594for) {
                this.f5581do.getClass();
            }
        } else {
            measuredHeight = this.f5581do.getVisibility() != 8 ? this.f5581do.getMeasuredHeight() : 0;
        }
        Rect rect = this.f5577do;
        Rect rect2 = this.f5592for;
        rect2.set(rect);
        C3150jM c3150jM = this.f5588do;
        this.f5593for = c3150jM;
        if (this.f5597if || z) {
            C0633Yn m2951if = C0633Yn.m2951if(c3150jM.m7059for(), this.f5593for.m7063try() + measuredHeight, this.f5593for.m7062new(), this.f5593for.m7061if() + 0);
            C3150jM c3150jM2 = this.f5593for;
            int i3 = Build.VERSION.SDK_INT;
            C3150jM.Ctry cnew = i3 >= 30 ? new C3150jM.Cnew(c3150jM2) : i3 >= 29 ? new C3150jM.Cfor(c3150jM2) : new C3150jM.Cif(c3150jM2);
            cnew.mo7090else(m2951if);
            this.f5593for = cnew.mo7092if();
        } else {
            rect2.top += measuredHeight;
            rect2.bottom += 0;
            this.f5593for = c3150jM.f13676do.mo7071class(0, measuredHeight, 0, 0);
        }
        m3369import(this.f5586do, rect2, true);
        if (!this.f5599new.equals(this.f5593for)) {
            C3150jM c3150jM3 = this.f5593for;
            this.f5599new = c3150jM3;
            QK.m1856if(this.f5586do, c3150jM3);
        }
        measureChildWithMargins(this.f5586do, i, 0, i2, 0);
        LayoutParams layoutParams2 = (LayoutParams) this.f5586do.getLayoutParams();
        int max3 = Math.max(max, this.f5586do.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
        int max4 = Math.max(max2, this.f5586do.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f5586do.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + max3, getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + max4, getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.f5600new || !z) {
            return false;
        }
        this.f5580do.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER);
        if (this.f5580do.getFinalY() > this.f5581do.getHeight()) {
            m3381native();
            this.f5583do.run();
        } else {
            m3381native();
            this.f5584do.run();
        }
        this.f5602try = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        this.f5601try = this.f5601try + i2;
        m3381native();
        this.f5581do.setTranslationY(-Math.max(0, Math.min(r1, this.f5581do.getHeight())));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        Ccase ccase;
        C3444oL c3444oL;
        this.f5589do.f15960do = i;
        ActionBarContainer actionBarContainer = this.f5581do;
        this.f5601try = actionBarContainer != null ? -((int) actionBarContainer.getTranslationY()) : 0;
        m3381native();
        Cnew cnew = this.f5585do;
        if (cnew == null || (c3444oL = (ccase = (Ccase) cnew).f5318do) == null) {
            return;
        }
        c3444oL.m7707do();
        ccase.f5318do = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f5581do.getVisibility() != 0) {
            return false;
        }
        return this.f5600new;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (!this.f5600new || this.f5602try) {
            return;
        }
        if (this.f5601try <= this.f5581do.getHeight()) {
            m3381native();
            postDelayed(this.f5584do, 600L);
        } else {
            m3381native();
            postDelayed(this.f5583do, 600L);
        }
    }

    @Override // android.view.View
    @Deprecated
    public final void onWindowSystemUiVisibilityChanged(int i) {
        super.onWindowSystemUiVisibilityChanged(i);
        m3384return();
        int i2 = this.f5576case ^ i;
        this.f5576case = i;
        boolean z = (i & 4) == 0;
        boolean z2 = (i & 256) != 0;
        Cnew cnew = this.f5585do;
        if (cnew != null) {
            ((Ccase) cnew).f5326new = !z2;
            if (z || !z2) {
                Ccase ccase = (Ccase) cnew;
                if (ccase.f5328try) {
                    ccase.f5328try = false;
                    ccase.m3291public(true);
                }
            } else {
                Ccase ccase2 = (Ccase) cnew;
                if (!ccase2.f5328try) {
                    ccase2.f5328try = true;
                    ccase2.m3291public(true);
                }
            }
        }
        if ((i2 & 256) == 0 || this.f5585do == null) {
            return;
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        QK.Cfor.m1903for(this);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f5598new = i;
        Cnew cnew = this.f5585do;
        if (cnew != null) {
            ((Ccase) cnew).f5305do = i;
        }
    }

    /* renamed from: public, reason: not valid java name */
    public final void m3383public(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f5575do);
        this.f5591for = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f5578do = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        this.f5590do = context.getApplicationInfo().targetSdkVersion < 19;
        this.f5580do = new OverScroller(context);
    }

    /* renamed from: return, reason: not valid java name */
    public final void m3384return() {
        InterfaceC2701ed interfaceC2701ed;
        if (this.f5586do == null) {
            this.f5586do = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f5581do = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback findViewById = findViewById(R.id.action_bar);
            if (findViewById instanceof InterfaceC2701ed) {
                interfaceC2701ed = (InterfaceC2701ed) findViewById;
            } else {
                if (!(findViewById instanceof Toolbar)) {
                    throw new IllegalStateException("Can't make a decor toolbar out of ".concat(findViewById.getClass().getSimpleName()));
                }
                Toolbar toolbar = (Toolbar) findViewById;
                if (toolbar.f5935do == null) {
                    toolbar.f5935do = new androidx.appcompat.widget.Cnew(toolbar, true);
                }
                interfaceC2701ed = toolbar.f5935do;
            }
            this.f5587do = interfaceC2701ed;
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: super, reason: not valid java name */
    public final void mo3385super(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // defpackage.InterfaceC2643dd
    /* renamed from: this, reason: not valid java name */
    public final boolean mo3386this() {
        m3384return();
        return this.f5587do.mo3542this();
    }

    @Override // defpackage.InterfaceC2643dd
    /* renamed from: throw, reason: not valid java name */
    public final void mo3387throw(int i) {
        m3384return();
        if (i == 2) {
            this.f5587do.mo3535native();
            return;
        }
        if (i == 5) {
            this.f5587do.mo3525catch();
        } else {
            if (i != 109) {
                return;
            }
            this.f5597if = true;
            this.f5590do = getContext().getApplicationInfo().targetSdkVersion < 19;
        }
    }

    @Override // defpackage.InterfaceC2643dd
    /* renamed from: try, reason: not valid java name */
    public final void mo3388try(androidx.appcompat.view.menu.Ccase ccase, AppCompatDelegateImpl.Cfor cfor) {
        m3384return();
        this.f5587do.mo3545try(ccase, cfor);
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: while, reason: not valid java name */
    public final boolean mo3389while(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }
}
