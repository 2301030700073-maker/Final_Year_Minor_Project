package androidx.core.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import androidx.recyclerview.widget.RecyclerView;
import b.b.c.C0006e;
import b.b.c.C0013l;
import b.e.i.f;
import b.e.i.h;
import b.e.i.i;
import b.e.i.q;
import b.e.j.d;
import b.e.j.e;
import c.a.c.a.a;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements h {
    public static final d A = new d();
    public static final int[] B = {R.attr.fillViewport};

    /* renamed from: a, reason: collision with root package name */
    public long f88a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f89b;

    /* renamed from: c, reason: collision with root package name */
    public OverScroller f90c;

    /* renamed from: d, reason: collision with root package name */
    public EdgeEffect f91d;
    public EdgeEffect e;
    public int f;
    public boolean g;
    public boolean h;
    public View i;
    public boolean j;
    public VelocityTracker k;
    public boolean l;
    public boolean m;
    public int n;
    public int o;
    public int p;
    public int q;
    public final int[] r;
    public final int[] s;
    public int t;
    public int u;
    public SavedState v;
    public final i w;
    public final f x;
    public float y;
    public C0006e z;

    public class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator CREATOR = new e();

        /* renamed from: a, reason: collision with root package name */
        public int f92a;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder f = a.f("HorizontalScrollView.SavedState{");
            f.append(Integer.toHexString(System.identityHashCode(this)));
            f.append(" scrollPosition=");
            f.append(this.f92a);
            f.append("}");
            return f.toString();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f92a);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f92a = parcel.readInt();
        }
    }

    public NestedScrollView(Context context) {
        this(context, null);
    }

    public static int c(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        return i2 + i > i3 ? i3 - i2 : i;
    }

    public static boolean t(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && t((View) parent, view2);
    }

    public final boolean A(int i, int i2, int i3) {
        boolean z;
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = height + scrollY;
        boolean z2 = i == 33;
        ArrayList focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z3 = false;
        for (int i5 = 0; i5 < size; i5++) {
            View view2 = (View) focusables.get(i5);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i2 < bottom && top < i3) {
                boolean z4 = i2 < top && bottom < i3;
                if (view == null) {
                    view = view2;
                    z3 = z4;
                } else {
                    boolean z5 = (z2 && top < view.getTop()) || (!z2 && bottom > view.getBottom());
                    if (z3) {
                        if (z4) {
                            if (!z5) {
                            }
                            view = view2;
                        }
                    } else if (z4) {
                        view = view2;
                        z3 = true;
                    } else {
                        if (!z5) {
                        }
                        view = view2;
                    }
                }
            }
        }
        if (view == null) {
            view = this;
        }
        if (i2 < scrollY || i3 > i4) {
            f(z2 ? i2 - scrollY : i3 - i4);
            z = true;
        } else {
            z = false;
        }
        if (view != findFocus()) {
            view.requestFocus(i);
        }
        return z;
    }

    public final void B(View view) {
        view.getDrawingRect(this.f89b);
        offsetDescendantRectToMyCoords(view, this.f89b);
        int d2 = d(this.f89b);
        if (d2 != 0) {
            scrollBy(0, d2);
        }
    }

    public final void C(int i, int i2, int i3, boolean z) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f88a > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            this.f90c.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i2 + scrollY, Math.max(0, height - height2))) - scrollY, i3);
            z(z);
        } else {
            if (!this.f90c.isFinished()) {
                a();
            }
            scrollBy(i, i2);
        }
        this.f88a = AnimationUtils.currentAnimationTimeMillis();
    }

    public boolean D(int i, int i2) {
        return this.x.h(i, i2);
    }

    public void E(int i) {
        this.x.i(i);
    }

    public final void a() {
        this.f90c.abortAnimation();
        this.x.i(1);
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    public boolean b(int i) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i);
        int height = (int) (getHeight() * 0.5f);
        if (findNextFocus == null || !u(findNextFocus, height, getHeight())) {
            if (i == 33 && getScrollY() < height) {
                height = getScrollY();
            } else if (i == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                height = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), height);
            }
            if (height == 0) {
                return false;
            }
            if (i != 130) {
                height = -height;
            }
            f(height);
        } else {
            findNextFocus.getDrawingRect(this.f89b);
            offsetDescendantRectToMyCoords(findNextFocus, this.f89b);
            f(d(this.f89b));
            findNextFocus.requestFocus(i);
        }
        if (findFocus != null && findFocus.isFocused() && (!u(findFocus, 0, getHeight()))) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f90c.isFinished()) {
            return;
        }
        this.f90c.computeScrollOffset();
        int currY = this.f90c.getCurrY();
        int i = currY - this.u;
        this.u = currY;
        int[] iArr = this.s;
        boolean z = false;
        iArr[1] = 0;
        e(0, i, iArr, null, 1);
        int i2 = i - this.s[1];
        int r = r();
        if (i2 != 0) {
            int scrollY = getScrollY();
            x(0, i2, getScrollX(), scrollY, 0, r, 0, 0);
            int scrollY2 = getScrollY() - scrollY;
            int i3 = i2 - scrollY2;
            int[] iArr2 = this.s;
            iArr2[1] = 0;
            this.x.e(0, scrollY2, 0, i3, this.r, 1, iArr2);
            i2 = i3 - this.s[1];
        }
        if (i2 != 0) {
            int overScrollMode = getOverScrollMode();
            if (overScrollMode == 0 || (overScrollMode == 1 && r > 0)) {
                z = true;
            }
            if (z) {
                h();
                if (i2 < 0) {
                    if (this.f91d.isFinished()) {
                        this.f91d.onAbsorb((int) this.f90c.getCurrVelocity());
                    }
                } else if (this.e.isFinished()) {
                    this.e.onAbsorb((int) this.f90c.getCurrVelocity());
                }
            }
            a();
        }
        if (this.f90c.isFinished()) {
            this.x.i(1);
        } else {
            q.y(this);
        }
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > max ? bottom + (scrollY - max) : bottom;
    }

    public int d(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i2 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i - verticalFadingEdgeLength : i;
        if (rect.bottom > i2 && rect.top > scrollY) {
            return Math.min((rect.height() > height ? rect.top - scrollY : rect.bottom - i2) + 0, (childAt.getBottom() + layoutParams.bottomMargin) - i);
        }
        if (rect.top >= scrollY || rect.bottom >= i2) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i2 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || i(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.x.a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.x.b(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return e(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.x.d(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        if (this.f91d != null) {
            int scrollY = getScrollY();
            int i2 = 0;
            if (!this.f91d.isFinished()) {
                int save = canvas.save();
                int width = getWidth();
                int height = getHeight();
                int min = Math.min(0, scrollY);
                if (getClipToPadding()) {
                    width -= getPaddingRight() + getPaddingLeft();
                    i = getPaddingLeft() + 0;
                } else {
                    i = 0;
                }
                if (getClipToPadding()) {
                    height -= getPaddingBottom() + getPaddingTop();
                    min += getPaddingTop();
                }
                canvas.translate(i, min);
                this.f91d.setSize(width, height);
                if (this.f91d.draw(canvas)) {
                    q.y(this);
                }
                canvas.restoreToCount(save);
            }
            if (this.e.isFinished()) {
                return;
            }
            int save2 = canvas.save();
            int width2 = getWidth();
            int height2 = getHeight();
            int max = Math.max(r(), scrollY) + height2;
            if (getClipToPadding()) {
                width2 -= getPaddingRight() + getPaddingLeft();
                i2 = 0 + getPaddingLeft();
            }
            if (getClipToPadding()) {
                height2 -= getPaddingBottom() + getPaddingTop();
                max -= getPaddingBottom();
            }
            canvas.translate(i2 - width2, max);
            canvas.rotate(180.0f, width2, RecentsState.NO_OFFSET);
            this.e.setSize(width2, height2);
            if (this.e.draw(canvas)) {
                q.y(this);
            }
            canvas.restoreToCount(save2);
        }
    }

    public boolean e(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.x.c(i, i2, iArr, iArr2, i3);
    }

    public final void f(int i) {
        if (i != 0) {
            if (this.m) {
                C(0, i, 250, false);
            } else {
                scrollBy(0, i);
            }
        }
    }

    public final void g() {
        this.j = false;
        y();
        this.x.i(0);
        EdgeEffect edgeEffect = this.f91d;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.e.onRelease();
        }
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return RecentsState.NO_OFFSET;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        i iVar = this.w;
        return iVar.f767b | iVar.f766a;
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return RecentsState.NO_OFFSET;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public final void h() {
        if (getOverScrollMode() == 2) {
            this.f91d = null;
            this.e = null;
        } else if (this.f91d == null) {
            Context context = getContext();
            this.f91d = new EdgeEffect(context);
            this.e = new EdgeEffect(context);
        }
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return s(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean i(android.view.KeyEvent r7) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.i(android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.x.f765d;
    }

    @Override // b.e.i.g
    public void j(View view, View view2, int i, int i2) {
        i iVar = this.w;
        if (i2 == 1) {
            iVar.f767b = i;
        } else {
            iVar.f766a = i;
        }
        D(2, i2);
    }

    @Override // b.e.i.g
    public void k(View view, int i) {
        i iVar = this.w;
        if (i == 1) {
            iVar.f767b = 0;
        } else {
            iVar.f766a = 0;
        }
        E(i);
    }

    @Override // b.e.i.g
    public void l(View view, int i, int i2, int[] iArr, int i3) {
        e(i, i2, iArr, null, i3);
    }

    public void m(int i) {
        if (getChildCount() > 0) {
            this.f90c.fling(getScrollX(), getScrollY(), 0, i, 0, 0, RecyclerView.UNDEFINED_DURATION, Integer.MAX_VALUE, 0, 0);
            z(true);
        }
    }

    @Override // android.view.ViewGroup
    public void measureChild(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(FrameLayout.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(FrameLayout.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    public boolean n(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        Rect rect = this.f89b;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f89b.bottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            Rect rect2 = this.f89b;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.f89b;
        return A(i, rect3.top, rect3.bottom);
    }

    @Override // b.e.i.h
    public void o(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        v(i4, i5, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.h = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8 && !this.j) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue != RecentsState.NO_OFFSET) {
                if (this.y == RecentsState.NO_OFFSET) {
                    TypedValue typedValue = new TypedValue();
                    Context context = getContext();
                    if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                        throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
                    }
                    this.y = typedValue.getDimension(context.getResources().getDisplayMetrics());
                }
                int i = (int) (axisValue * this.y);
                int r = r();
                int scrollY = getScrollY();
                int i2 = scrollY - i;
                if (i2 < 0) {
                    r = 0;
                } else if (i2 <= r) {
                    r = i2;
                }
                if (r != scrollY) {
                    super.scrollTo(getScrollX(), r);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e9  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r12) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = 0;
        this.g = false;
        View view = this.i;
        if (view != null && t(view, this)) {
            B(this.i);
        }
        this.i = null;
        if (!this.h) {
            if (this.v != null) {
                scrollTo(getScrollX(), this.v.f92a);
                this.v = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i5 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int c2 = c(scrollY, paddingTop, i5);
            if (c2 != scrollY) {
                scrollTo(getScrollX(), c2);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.h = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.l && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(FrameLayout.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (z) {
            return false;
        }
        dispatchNestedFling(RecentsState.NO_OFFSET, f2, true);
        m((int) f2);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        e(i, i2, iArr, null, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        v(i4, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.w.f766a = i;
        D(2, 0);
    }

    @Override // android.view.View
    public void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (i == 2) {
            i = 130;
        } else if (i == 1) {
            i = 33;
        }
        View findNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i);
        if (findNextFocus == null || (!u(findNextFocus, 0, getHeight()))) {
            return false;
        }
        return findNextFocus.requestFocus(i, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.v = savedState;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f92a = getScrollY();
        return savedState;
    }

    @Override // android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        C0006e c0006e = this.z;
        if (c0006e != null) {
            C0013l.c(this, c0006e.f292a, c0006e.f293b);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus == null || this == findFocus || !u(findFocus, 0, i4)) {
            return;
        }
        findFocus.getDrawingRect(this.f89b);
        offsetDescendantRectToMyCoords(findFocus, this.f89b);
        f(d(this.f89b));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        this.w.f766a = 0;
        E(0);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        if (this.k == null) {
            this.k = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.t = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(RecentsState.NO_OFFSET, this.t);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.k;
                velocityTracker.computeCurrentVelocity(1000, this.p);
                int yVelocity = (int) velocityTracker.getYVelocity(this.q);
                if (Math.abs(yVelocity) >= this.o) {
                    int i = -yVelocity;
                    float f = i;
                    if (!dispatchNestedPreFling(RecentsState.NO_OFFSET, f)) {
                        dispatchNestedFling(RecentsState.NO_OFFSET, f, true);
                        m(i);
                    }
                } else if (this.f90c.springBack(getScrollX(), getScrollY(), 0, 0, 0, r())) {
                    q.y(this);
                }
                this.q = -1;
                g();
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.q);
                if (findPointerIndex == -1) {
                    StringBuilder f2 = a.f("Invalid pointerId=");
                    f2.append(this.q);
                    f2.append(" in onTouchEvent");
                    Log.e("NestedScrollView", f2.toString());
                } else {
                    int y = (int) motionEvent.getY(findPointerIndex);
                    int i2 = this.f - y;
                    if (!this.j && Math.abs(i2) > this.n) {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.j = true;
                        i2 = i2 > 0 ? i2 - this.n : i2 + this.n;
                    }
                    int i3 = i2;
                    if (this.j) {
                        if (e(0, i3, this.s, this.r, 0)) {
                            i3 -= this.s[1];
                            this.t += this.r[1];
                        }
                        int i4 = i3;
                        this.f = y - this.r[1];
                        int scrollY = getScrollY();
                        int r = r();
                        int overScrollMode = getOverScrollMode();
                        boolean z = overScrollMode == 0 || (overScrollMode == 1 && r > 0);
                        if (x(0, i4, 0, getScrollY(), 0, r, 0, 0) && !s(0)) {
                            this.k.clear();
                        }
                        int scrollY2 = getScrollY() - scrollY;
                        int[] iArr = this.s;
                        iArr[1] = 0;
                        this.x.e(0, scrollY2, 0, i4 - scrollY2, this.r, 0, iArr);
                        int i5 = this.f;
                        int[] iArr2 = this.r;
                        this.f = i5 - iArr2[1];
                        this.t += iArr2[1];
                        if (z) {
                            int i6 = i4 - this.s[1];
                            h();
                            int i7 = scrollY + i6;
                            if (i7 < 0) {
                                this.f91d.onPull(i6 / getHeight(), motionEvent.getX(findPointerIndex) / getWidth());
                                if (!this.e.isFinished()) {
                                    this.e.onRelease();
                                }
                            } else if (i7 > r) {
                                this.e.onPull(i6 / getHeight(), 1.0f - (motionEvent.getX(findPointerIndex) / getWidth()));
                                if (!this.f91d.isFinished()) {
                                    this.f91d.onRelease();
                                }
                            }
                            EdgeEffect edgeEffect = this.f91d;
                            if (edgeEffect != null && (!edgeEffect.isFinished() || !this.e.isFinished())) {
                                q.y(this);
                            }
                        }
                    }
                }
            } else if (actionMasked == 3) {
                if (this.j && getChildCount() > 0 && this.f90c.springBack(getScrollX(), getScrollY(), 0, 0, 0, r())) {
                    q.y(this);
                }
                this.q = -1;
                g();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f = (int) motionEvent.getY(actionIndex);
                this.q = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                w(motionEvent);
                this.f = (int) motionEvent.getY(motionEvent.findPointerIndex(this.q));
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            boolean z2 = !this.f90c.isFinished();
            this.j = z2;
            if (z2 && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f90c.isFinished()) {
                a();
            }
            this.f = (int) motionEvent.getY();
            this.q = motionEvent.getPointerId(0);
            D(2, 0);
        }
        VelocityTracker velocityTracker2 = this.k;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    @Override // b.e.i.g
    public void p(View view, int i, int i2, int i3, int i4, int i5) {
        v(i4, i5, null);
    }

    @Override // b.e.i.g
    public boolean q(View view, View view2, int i, int i2) {
        return (i & 2) != 0;
    }

    public int r() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (this.g) {
            this.i = view2;
        } else {
            B(view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int d2 = d(rect);
        boolean z2 = d2 != 0;
        if (z2) {
            if (z) {
                scrollBy(0, d2);
            } else {
                C(0, d2, 250, false);
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            y();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.g = true;
        super.requestLayout();
    }

    public boolean s(int i) {
        return this.x.f(i) != null;
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int c2 = c(i, width, width2);
            int c3 = c(i2, height, height2);
            if (c2 == getScrollX() && c3 == getScrollY()) {
                return;
            }
            super.scrollTo(c2, c3);
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        f fVar = this.x;
        if (fVar.f765d) {
            q.M(fVar.f764c);
        }
        fVar.f765d = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.x.h(i, 0);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        this.x.i(0);
    }

    public final boolean u(View view, int i, int i2) {
        view.getDrawingRect(this.f89b);
        offsetDescendantRectToMyCoords(view, this.f89b);
        return this.f89b.bottom + i >= getScrollY() && this.f89b.top - i <= getScrollY() + i2;
    }

    public final void v(int i, int i2, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.x.e(0, scrollY2, 0, i - scrollY2, null, i2, iArr);
    }

    public final void w(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.q) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f = (int) motionEvent.getY(i);
            this.q = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.k;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public boolean x(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        boolean z;
        boolean z2;
        int overScrollMode = getOverScrollMode();
        boolean z3 = computeHorizontalScrollRange() > computeHorizontalScrollExtent();
        boolean z4 = computeVerticalScrollRange() > computeVerticalScrollExtent();
        boolean z5 = overScrollMode == 0 || (overScrollMode == 1 && z3);
        boolean z6 = overScrollMode == 0 || (overScrollMode == 1 && z4);
        int i9 = i3 + i;
        int i10 = !z5 ? 0 : i7;
        int i11 = i4 + i2;
        int i12 = !z6 ? 0 : i8;
        int i13 = -i10;
        int i14 = i10 + i5;
        int i15 = -i12;
        int i16 = i12 + i6;
        if (i9 > i14) {
            i9 = i14;
            z = true;
        } else if (i9 < i13) {
            z = true;
            i9 = i13;
        } else {
            z = false;
        }
        if (i11 > i16) {
            i11 = i16;
            z2 = true;
        } else if (i11 < i15) {
            z2 = true;
            i11 = i15;
        } else {
            z2 = false;
        }
        if (z2 && !s(1)) {
            this.f90c.springBack(i9, i11, 0, 0, 0, r());
        }
        onOverScrolled(i9, i11, z, z2);
        return z || z2;
    }

    public final void y() {
        VelocityTracker velocityTracker = this.k;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.k = null;
        }
    }

    public final void z(boolean z) {
        if (z) {
            D(2, 1);
        } else {
            this.x.i(1);
        }
        this.u = getScrollY();
        q.y(this);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f89b = new Rect();
        this.g = true;
        this.h = false;
        this.i = null;
        this.j = false;
        this.m = true;
        this.q = -1;
        this.r = new int[2];
        this.s = new int[2];
        this.f90c = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.n = viewConfiguration.getScaledTouchSlop();
        this.o = viewConfiguration.getScaledMinimumFlingVelocity();
        this.p = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, B, i, 0);
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        if (z != this.l) {
            this.l = z;
            requestLayout();
        }
        obtainStyledAttributes.recycle();
        this.w = new i();
        this.x = new f(this);
        setNestedScrollingEnabled(true);
        q.D(this, A);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        if (getChildCount() <= 0) {
            super.addView(view, i);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }
}
