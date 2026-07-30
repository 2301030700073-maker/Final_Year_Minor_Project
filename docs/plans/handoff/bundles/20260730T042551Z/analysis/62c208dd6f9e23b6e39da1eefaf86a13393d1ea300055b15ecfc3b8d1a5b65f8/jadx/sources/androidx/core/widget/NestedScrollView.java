package androidx.core.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import com.google.android.gms.common.api.Api;
import defpackage.C3385nL;
import defpackage.C3518pe;
import defpackage.C3651ru;
import defpackage.C3813uf;
import defpackage.C3828uu;
import defpackage.C3893w;
import defpackage.Cimplements;
import defpackage.InterfaceC3577qe;
import defpackage.InterfaceC3593qu;
import defpackage.InterfaceC3769tu;
import defpackage.QK;
import defpackage.V1;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements InterfaceC3769tu, InterfaceC3593qu {

    /* renamed from: case, reason: not valid java name */
    public int f6537case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float f6538do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f6539do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f6540do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public VelocityTracker f6541do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f6542do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final EdgeEffect f6543do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public OverScroller f6544do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public SavedState f6545do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cnew f6546do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3518pe f6547do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3651ru f6548do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3828uu f6549do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f6550do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f6551do;

    /* renamed from: else, reason: not valid java name */
    public int f6552else;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f6553for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f6554for;

    /* renamed from: goto, reason: not valid java name */
    public int f6555goto;

    /* renamed from: if, reason: not valid java name */
    public float f6556if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final EdgeEffect f6557if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f6558if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final int[] f6559if;

    /* renamed from: new, reason: not valid java name */
    public int f6560new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f6561new;

    /* renamed from: this, reason: not valid java name */
    public int f6562this;

    /* renamed from: try, reason: not valid java name */
    public int f6563try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public final boolean f6564try;

    /* renamed from: for, reason: not valid java name */
    public static final float f6535for = (float) (Math.log(0.78d) / Math.log(0.9d));

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f6534do = new Cdo();

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static final int[] f6536for = {R.attr.fillViewport};

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: for, reason: not valid java name */
        public int f6565for;

        /* renamed from: androidx.core.widget.NestedScrollView$SavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("HorizontalScrollView.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" scrollPosition=");
            return V1.m2506this(sb, this.f6565for, "}");
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f6565for);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f6565for = parcel.readInt();
        }
    }

    /* renamed from: androidx.core.widget.NestedScrollView$do, reason: invalid class name */
    public static class Cdo extends Cimplements {
        @Override // defpackage.Cimplements
        /* renamed from: else, reason: not valid java name */
        public final boolean mo3759else(View view, int i, Bundle bundle) {
            if (super.mo3759else(view, i, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            int height = nestedScrollView.getHeight();
            Rect rect = new Rect();
            if (nestedScrollView.getMatrix().isIdentity() && nestedScrollView.getGlobalVisibleRect(rect)) {
                height = rect.height();
            }
            if (i != 4096) {
                if (i == 8192 || i == 16908344) {
                    int max = Math.max(nestedScrollView.getScrollY() - ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (max == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.m3754switch(true, 0 - nestedScrollView.getScrollX(), max - nestedScrollView.getScrollY());
                    return true;
                }
                if (i != 16908346) {
                    return false;
                }
            }
            int min = Math.min(nestedScrollView.getScrollY() + ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.m3741case());
            if (min == nestedScrollView.getScrollY()) {
                return false;
            }
            nestedScrollView.m3754switch(true, 0 - nestedScrollView.getScrollX(), min - nestedScrollView.getScrollY());
            return true;
        }

        @Override // defpackage.Cimplements
        /* renamed from: for */
        public final void mo2847for(View view, AccessibilityEvent accessibilityEvent) {
            super.mo2847for(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.m3741case() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            accessibilityEvent.setMaxScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setMaxScrollY(nestedScrollView.m3741case());
        }

        @Override // defpackage.Cimplements
        /* renamed from: new */
        public final void mo1356new(View view, C3893w c3893w) {
            int m3741case;
            ((Cimplements) this).f13562do.onInitializeAccessibilityNodeInfo(view, c3893w.f16161do);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            c3893w.m8495break(ScrollView.class.getName());
            if (!nestedScrollView.isEnabled() || (m3741case = nestedScrollView.m3741case()) <= 0) {
                return;
            }
            c3893w.m8502final(true);
            if (nestedScrollView.getScrollY() > 0) {
                c3893w.m8505if(C3893w.Cdo.f16174try);
                c3893w.m8505if(C3893w.Cdo.f16173this);
            }
            if (nestedScrollView.getScrollY() < m3741case) {
                c3893w.m8505if(C3893w.Cdo.f16172new);
                c3893w.m8505if(C3893w.Cdo.f16164break);
            }
        }
    }

    /* renamed from: androidx.core.widget.NestedScrollView$for, reason: invalid class name */
    public class Cfor implements InterfaceC3577qe {
        public Cfor() {
        }
    }

    /* renamed from: androidx.core.widget.NestedScrollView$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static boolean m3760do(ViewGroup viewGroup) {
            return viewGroup.getClipToPadding();
        }
    }

    /* renamed from: androidx.core.widget.NestedScrollView$new, reason: invalid class name */
    public interface Cnew {
        /* renamed from: do */
        void mo3117do(NestedScrollView nestedScrollView);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.joeykrim.rootcheck.R.attr.nestedScrollViewStyle);
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m3739goto(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && m3739goto((View) parent, view2);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    /* renamed from: break, reason: not valid java name */
    public final void m3740break(int[] iArr, int i, int i2) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f6548do.m8030new(scrollY2, i - scrollY2, i2, iArr);
    }

    /* renamed from: case, reason: not valid java name */
    public final int m3741case() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: catch */
    public final void mo3372catch(View view, int i, int i2, int[] iArr, int i3) {
        this.f6548do.m8027for(i, i2, i3, iArr, null);
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: class */
    public final void mo3373class(View view, int i) {
        C3828uu c3828uu = this.f6549do;
        if (i == 1) {
            c3828uu.f15961if = 0;
        } else {
            c3828uu.f15960do = 0;
        }
        m3745extends(i);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ec  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void computeScroll() {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.computeScroll():void");
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
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

    @Override // defpackage.InterfaceC3769tu
    /* renamed from: const */
    public final void mo3374const(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        m3740break(iArr, i4, i5);
    }

    /* renamed from: default, reason: not valid java name */
    public final boolean m3742default(MotionEvent motionEvent) {
        boolean z;
        EdgeEffect edgeEffect = this.f6543do;
        if (C3813uf.m8389do(edgeEffect) != 0.0f) {
            C3813uf.m8390if(edgeEffect, 0.0f, motionEvent.getX() / getWidth());
            z = true;
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.f6557if;
        if (C3813uf.m8389do(edgeEffect2) == 0.0f) {
            return z;
        }
        C3813uf.m8390if(edgeEffect2, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m3746for(keyEvent);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f6548do.m8025do(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return this.f6548do.m8029if(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.f6548do.m8027for(i, i2, 0, iArr, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f6548do.m8031try(i, i2, i3, i4, iArr, 0, null);
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m3743do(int i) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i);
        int height = (int) (getHeight() * 0.5f);
        if (findNextFocus == null || !m3755this(findNextFocus, height, getHeight())) {
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
            m3752return(true, height, 0, 1);
        } else {
            Rect rect = this.f6540do;
            findNextFocus.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(findNextFocus, rect);
            m3752return(true, m3747if(rect), 0, 1);
            findNextFocus.requestFocus(i);
        }
        if (findFocus != null && findFocus.isFocused() && (!m3755this(findFocus, 0, getHeight()))) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        int scrollY = getScrollY();
        EdgeEffect edgeEffect = this.f6543do;
        int i2 = 0;
        if (!edgeEffect.isFinished()) {
            int save = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int min = Math.min(0, scrollY);
            if (Cif.m3760do(this)) {
                width -= getPaddingRight() + getPaddingLeft();
                i = getPaddingLeft() + 0;
            } else {
                i = 0;
            }
            if (Cif.m3760do(this)) {
                height -= getPaddingBottom() + getPaddingTop();
                min += getPaddingTop();
            }
            canvas.translate(i, min);
            edgeEffect.setSize(width, height);
            if (edgeEffect.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect2 = this.f6557if;
        if (edgeEffect2.isFinished()) {
            return;
        }
        int save2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int max = Math.max(m3741case(), scrollY) + height2;
        if (Cif.m3760do(this)) {
            width2 -= getPaddingRight() + getPaddingLeft();
            i2 = 0 + getPaddingLeft();
        }
        if (Cif.m3760do(this)) {
            height2 -= getPaddingBottom() + getPaddingTop();
            max -= getPaddingBottom();
        }
        canvas.translate(i2 - width2, max);
        canvas.rotate(180.0f, width2, 0.0f);
        edgeEffect2.setSize(width2, height2);
        if (edgeEffect2.draw(canvas)) {
            postInvalidateOnAnimation();
        }
        canvas.restoreToCount(save2);
    }

    /* renamed from: else, reason: not valid java name */
    public final float m3744else() {
        if (this.f6556if == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.f6556if = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.f6556if;
    }

    /* renamed from: extends, reason: not valid java name */
    public final void m3745extends(int i) {
        this.f6548do.m8028goto(i);
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: final */
    public final void mo3377final(View view, int i, int i2, int i3, int i4, int i5) {
        m3740break(null, i4, i5);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0038  */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3746for(android.view.KeyEvent r6) {
        /*
            r5 = this;
            android.graphics.Rect r0 = r5.f6540do
            r0.setEmpty()
            int r0 = r5.getChildCount()
            r1 = 1
            r2 = 0
            if (r0 <= 0) goto L33
            android.view.View r0 = r5.getChildAt(r2)
            android.view.ViewGroup$LayoutParams r3 = r0.getLayoutParams()
            android.widget.FrameLayout$LayoutParams r3 = (android.widget.FrameLayout.LayoutParams) r3
            int r0 = r0.getHeight()
            int r4 = r3.topMargin
            int r0 = r0 + r4
            int r3 = r3.bottomMargin
            int r0 = r0 + r3
            int r3 = r5.getHeight()
            int r4 = r5.getPaddingTop()
            int r3 = r3 - r4
            int r4 = r5.getPaddingBottom()
            int r3 = r3 - r4
            if (r0 <= r3) goto L33
            r0 = 1
            goto L34
        L33:
            r0 = 0
        L34:
            r3 = 130(0x82, float:1.82E-43)
            if (r0 != 0) goto L62
            boolean r0 = r5.isFocused()
            if (r0 == 0) goto L61
            int r6 = r6.getKeyCode()
            r0 = 4
            if (r6 == r0) goto L61
            android.view.View r6 = r5.findFocus()
            if (r6 != r5) goto L4c
            r6 = 0
        L4c:
            android.view.FocusFinder r0 = android.view.FocusFinder.getInstance()
            android.view.View r6 = r0.findNextFocus(r5, r6, r3)
            if (r6 == 0) goto L5f
            if (r6 == r5) goto L5f
            boolean r6 = r6.requestFocus(r3)
            if (r6 == 0) goto L5f
            goto L60
        L5f:
            r1 = 0
        L60:
            return r1
        L61:
            return r2
        L62:
            int r0 = r6.getAction()
            if (r0 != 0) goto Lc8
            int r0 = r6.getKeyCode()
            r1 = 19
            r4 = 33
            if (r0 == r1) goto Lb9
            r1 = 20
            if (r0 == r1) goto La9
            r1 = 62
            if (r0 == r1) goto L9d
            r6 = 92
            if (r0 == r6) goto L98
            r6 = 93
            if (r0 == r6) goto L93
            r6 = 122(0x7a, float:1.71E-43)
            if (r0 == r6) goto L8f
            r6 = 123(0x7b, float:1.72E-43)
            if (r0 == r6) goto L8b
            goto Lc8
        L8b:
            r5.m3749native(r3)
            goto Lc8
        L8f:
            r5.m3749native(r4)
            goto Lc8
        L93:
            boolean r2 = r5.m3758try(r3)
            goto Lc8
        L98:
            boolean r2 = r5.m3758try(r4)
            goto Lc8
        L9d:
            boolean r6 = r6.isShiftPressed()
            if (r6 == 0) goto La5
            r3 = 33
        La5:
            r5.m3749native(r3)
            goto Lc8
        La9:
            boolean r6 = r6.isAltPressed()
            if (r6 == 0) goto Lb4
            boolean r2 = r5.m3758try(r3)
            goto Lc8
        Lb4:
            boolean r2 = r5.m3743do(r3)
            goto Lc8
        Lb9:
            boolean r6 = r6.isAltPressed()
            if (r6 == 0) goto Lc4
            boolean r2 = r5.m3758try(r4)
            goto Lc8
        Lc4:
            boolean r2 = r5.m3743do(r4)
        Lc8:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.m3746for(android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public final float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
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
    public final int getNestedScrollAxes() {
        C3828uu c3828uu = this.f6549do;
        return c3828uu.f15961if | c3828uu.f15960do;
    }

    @Override // android.view.View
    public final float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.f6548do.m8024case(0) != null;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m3747if(Rect rect) {
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
        int i3 = rect.bottom;
        if (i3 > i2 && rect.top > scrollY) {
            return Math.min((rect.height() > height ? rect.top - scrollY : rect.bottom - i2) + 0, (childAt.getBottom() + layoutParams.bottomMargin) - i);
        }
        if (rect.top >= scrollY || i3 >= i2) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i2 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x002a  */
    /* renamed from: import, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3748import(int r10, int r11, int r12, int r13) {
        /*
            r9 = this;
            int r0 = r9.getOverScrollMode()
            r9.computeHorizontalScrollRange()
            r9.computeHorizontalScrollExtent()
            r9.computeVerticalScrollRange()
            r9.computeVerticalScrollExtent()
            r1 = 1
            r0 = 0
            int r11 = r11 + r0
            int r12 = r12 + r10
            int r13 = r13 + r0
            if (r11 <= 0) goto L18
            goto L1a
        L18:
            if (r11 >= 0) goto L1d
        L1a:
            r10 = 1
            r11 = 0
            goto L1e
        L1d:
            r10 = 0
        L1e:
            if (r12 <= r13) goto L22
            r12 = r13
            goto L25
        L22:
            if (r12 >= 0) goto L27
            r12 = 0
        L25:
            r13 = 1
            goto L28
        L27:
            r13 = 0
        L28:
            if (r13 == 0) goto L45
            ru r2 = r9.f6548do
            android.view.ViewParent r2 = r2.m8024case(r1)
            if (r2 == 0) goto L34
            r2 = 1
            goto L35
        L34:
            r2 = 0
        L35:
            if (r2 != 0) goto L45
            android.widget.OverScroller r2 = r9.f6544do
            r5 = 0
            r6 = 0
            r7 = 0
            int r8 = r9.m3741case()
            r3 = r11
            r4 = r12
            r2.springBack(r3, r4, r5, r6, r7, r8)
        L45:
            r9.onOverScrolled(r11, r12, r10, r13)
            if (r10 != 0) goto L4e
            if (r13 == 0) goto L4d
            goto L4e
        L4d:
            r1 = 0
        L4e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.m3748import(int, int, int, int):boolean");
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.f6548do.f15336do;
    }

    @Override // android.view.ViewGroup
    public final void measureChild(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public final void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    /* renamed from: native, reason: not valid java name */
    public final void m3749native(int i) {
        boolean z = i == 130;
        int height = getHeight();
        Rect rect = this.f6540do;
        if (z) {
            rect.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
                if (rect.top + height > paddingBottom) {
                    rect.top = paddingBottom - height;
                }
            }
        } else {
            int scrollY = getScrollY() - height;
            rect.top = scrollY;
            if (scrollY < 0) {
                rect.top = 0;
            }
        }
        int i2 = rect.top;
        int i3 = height + i2;
        rect.bottom = i3;
        m3751public(i, i2, i3);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m3750new(int i) {
        if (getChildCount() > 0) {
            this.f6544do.fling(getScrollX(), getScrollY(), 0, i, 0, 0, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER, 0, 0);
            m3757throws(2, 1);
            this.f6562this = getScrollY();
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f6558if = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:154:0x0136, code lost:
    
        if (r4 >= 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x00df, code lost:
    
        if (r5 >= 0) goto L60;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02d0  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onGenericMotionEvent(android.view.MotionEvent r29) {
        /*
            Method dump skipped, instructions count: 892
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ea  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onInterceptTouchEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        super.onLayout(z, i, i2, i3, i4);
        int i6 = 0;
        this.f6550do = false;
        View view = this.f6542do;
        if (view != null && m3739goto(view, this)) {
            View view2 = this.f6542do;
            Rect rect = this.f6540do;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int m3747if = m3747if(rect);
            if (m3747if != 0) {
                scrollBy(0, m3747if);
            }
        }
        this.f6542do = null;
        if (!this.f6558if) {
            if (this.f6545do != null) {
                scrollTo(getScrollX(), this.f6545do.f6565for);
                this.f6545do = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i5 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            } else {
                i5 = 0;
            }
            int paddingTop = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            if (paddingTop < i5 && scrollY >= 0) {
                i6 = paddingTop + scrollY > i5 ? i5 - paddingTop : scrollY;
            }
            if (i6 != scrollY) {
                scrollTo(getScrollX(), i6);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f6558if = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f6561new && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (z) {
            return false;
        }
        dispatchNestedFling(0.0f, f2, true);
        m3750new((int) f2);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo3372catch(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        m3740break(null, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        mo3385super(view, view2, i, 0);
    }

    @Override // android.view.View
    public final void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (i == 2) {
            i = 130;
        } else if (i == 1) {
            i = 33;
        }
        View findNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i);
        if (findNextFocus == null || (true ^ m3755this(findNextFocus, 0, getHeight()))) {
            return false;
        }
        return findNextFocus.requestFocus(i, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f6545do = savedState;
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f6565for = getScrollY();
        return savedState;
    }

    @Override // android.view.View
    public final void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        Cnew cnew = this.f6546do;
        if (cnew != null) {
            cnew.mo3117do(this);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus == null || this == findFocus || !m3755this(findFocus, 0, i4)) {
            return;
        }
        Rect rect = this.f6540do;
        findFocus.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(findFocus, rect);
        int m3747if = m3747if(rect);
        if (m3747if != 0) {
            if (this.f6564try) {
                m3754switch(false, 0, m3747if);
            } else {
                scrollBy(0, m3747if);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        return mo3389while(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        mo3373class(view, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x018a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r20) {
        /*
            Method dump skipped, instructions count: 523
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: public, reason: not valid java name */
    public final boolean m3751public(int i, int i2, int i3) {
        boolean z;
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = height + scrollY;
        boolean z2 = i == 33;
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z3 = false;
        for (int i5 = 0; i5 < size; i5++) {
            View view2 = focusables.get(i5);
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
            m3752return(true, z2 ? i2 - scrollY : i3 - i4, 0, 1);
            z = true;
        } else {
            z = false;
        }
        if (view != findFocus()) {
            view.requestFocus(i);
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (this.f6550do) {
            this.f6542do = view2;
        } else {
            Rect rect = this.f6540do;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int m3747if = m3747if(rect);
            if (m3747if != 0) {
                scrollBy(0, m3747if);
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int m3747if = m3747if(rect);
        boolean z2 = m3747if != 0;
        if (z2) {
            if (z) {
                scrollBy(0, m3747if);
            } else {
                m3754switch(false, 0, m3747if);
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        VelocityTracker velocityTracker;
        if (z && (velocityTracker = this.f6541do) != null) {
            velocityTracker.recycle();
            this.f6541do = null;
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f6550do = true;
        super.requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b3  */
    /* renamed from: return, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m3752return(boolean r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.m3752return(boolean, int, int, int):int");
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (width >= width2 || i < 0) {
                i = 0;
            } else if (width + i > width2) {
                i = width2 - width;
            }
            if (height >= height2 || i2 < 0) {
                i2 = 0;
            } else if (height + i2 > height2) {
                i2 = height2 - height;
            }
            if (i == getScrollX() && i2 == getScrollY()) {
                return;
            }
            super.scrollTo(i, i2);
        }
    }

    @Override // android.view.View
    public final void setNestedScrollingEnabled(boolean z) {
        C3651ru c3651ru = this.f6548do;
        if (c3651ru.f15336do) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            QK.Cnew.m1926extends(c3651ru.f15334do);
        }
        c3651ru.f15336do = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return m3757throws(i, 0);
    }

    /* renamed from: static, reason: not valid java name */
    public final boolean m3753static(EdgeEffect edgeEffect, int i) {
        if (i > 0) {
            return true;
        }
        float m8389do = C3813uf.m8389do(edgeEffect) * getHeight();
        float abs = Math.abs(-i) * 0.35f;
        float f = this.f6538do * 0.015f;
        double log = Math.log(abs / f);
        double d = f6535for;
        return ((float) (Math.exp((d / (d - 1.0d)) * log) * ((double) f))) < m8389do;
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        m3745extends(0);
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: super */
    public final void mo3385super(View view, View view2, int i, int i2) {
        C3828uu c3828uu = this.f6549do;
        if (i2 == 1) {
            c3828uu.f15961if = i;
        } else {
            c3828uu.f15960do = i;
        }
        m3757throws(2, i2);
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m3754switch(boolean z, int i, int i2) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f6539do > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            this.f6544do.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i2 + scrollY, Math.max(0, height - height2))) - scrollY, 250);
            if (z) {
                m3757throws(2, 1);
            } else {
                m3745extends(1);
            }
            this.f6562this = getScrollY();
            postInvalidateOnAnimation();
        } else {
            if (!this.f6544do.isFinished()) {
                this.f6544do.abortAnimation();
                m3745extends(1);
            }
            scrollBy(i, i2);
        }
        this.f6539do = AnimationUtils.currentAnimationTimeMillis();
    }

    /* renamed from: this, reason: not valid java name */
    public final boolean m3755this(View view, int i, int i2) {
        Rect rect = this.f6540do;
        view.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(view, rect);
        return rect.bottom + i >= getScrollY() && rect.top - i <= getScrollY() + i2;
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m3756throw(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f6552else) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f6553for = (int) motionEvent.getY(i);
            this.f6552else = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f6541do;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public final boolean m3757throws(int i, int i2) {
        return this.f6548do.m8026else(i, i2);
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m3758try(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        Rect rect = this.f6540do;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            rect.bottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            rect.top = rect.bottom - height;
        }
        return m3751public(i, rect.top, rect.bottom);
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: while */
    public final boolean mo3389while(View view, View view2, int i, int i2) {
        return (i & 2) != 0;
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6540do = new Rect();
        this.f6550do = true;
        this.f6558if = false;
        this.f6542do = null;
        this.f6554for = false;
        this.f6564try = true;
        this.f6552else = -1;
        this.f6551do = new int[2];
        this.f6559if = new int[2];
        this.f6547do = new C3518pe(getContext(), new Cfor());
        int i2 = Build.VERSION.SDK_INT;
        this.f6543do = i2 >= 31 ? C3813uf.Cif.m8392do(context, attributeSet) : new EdgeEffect(context);
        this.f6557if = i2 >= 31 ? C3813uf.Cif.m8392do(context, attributeSet) : new EdgeEffect(context);
        this.f6538do = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        this.f6544do = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f6560new = viewConfiguration.getScaledTouchSlop();
        this.f6563try = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f6537case = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f6536for, i, 0);
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        if (z != this.f6561new) {
            this.f6561new = z;
            requestLayout();
        }
        obtainStyledAttributes.recycle();
        this.f6549do = new C3828uu();
        this.f6548do = new C3651ru(this);
        setNestedScrollingEnabled(true);
        QK.m1858native(this, f6534do);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i) {
        if (getChildCount() <= 0) {
            super.addView(view, i);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }
}
