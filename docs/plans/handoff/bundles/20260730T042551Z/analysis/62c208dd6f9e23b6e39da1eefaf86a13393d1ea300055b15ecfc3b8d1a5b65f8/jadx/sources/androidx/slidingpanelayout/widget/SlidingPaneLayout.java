package androidx.slidingpanelayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.customview.view.AbsSavedState;
import defpackage.C3385nL;
import defpackage.C3893w;
import defpackage.Cimplements;
import defpackage.QK;
import defpackage.VK;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class SlidingPaneLayout extends ViewGroup {

    /* renamed from: do, reason: not valid java name */
    public float f7711do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final VK f7712do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f7713do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f7714do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Cif> f7715do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f7716do;

    /* renamed from: for, reason: not valid java name */
    public float f7717for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int f7718for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f7719for;

    /* renamed from: if, reason: not valid java name */
    public float f7720if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f7721if;

    /* renamed from: new, reason: not valid java name */
    public final int f7722new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f7723new;

    /* renamed from: try, reason: not valid java name */
    public int f7724try;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public boolean f7730do;

        /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$SavedState$do, reason: invalid class name */
        public static class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(super.f6568do, i);
            parcel.writeInt(this.f7730do ? 1 : 0);
        }

        public SavedState(Parcel parcel) {
            super(parcel, null);
            this.f7730do = parcel.readInt() != 0;
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$do, reason: invalid class name */
    public class Cdo extends Cimplements {

        /* renamed from: do, reason: not valid java name */
        public final Rect f7731do = new Rect();

        public Cdo() {
        }

        @Override // defpackage.Cimplements
        /* renamed from: case */
        public final boolean mo4079case(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (SlidingPaneLayout.this.m4586if(view)) {
                return false;
            }
            return super.mo4079case(viewGroup, view, accessibilityEvent);
        }

        @Override // defpackage.Cimplements
        /* renamed from: for */
        public final void mo2847for(View view, AccessibilityEvent accessibilityEvent) {
            super.mo2847for(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }

        @Override // defpackage.Cimplements
        /* renamed from: new */
        public final void mo1356new(View view, C3893w c3893w) {
            AccessibilityNodeInfo accessibilityNodeInfo = c3893w.f16161do;
            AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(accessibilityNodeInfo);
            ((Cimplements) this).f13562do.onInitializeAccessibilityNodeInfo(view, obtain);
            Rect rect = this.f7731do;
            obtain.getBoundsInParent(rect);
            c3893w.m8507this(rect);
            obtain.getBoundsInScreen(rect);
            accessibilityNodeInfo.setBoundsInScreen(rect);
            accessibilityNodeInfo.setVisibleToUser(obtain.isVisibleToUser());
            accessibilityNodeInfo.setPackageName(obtain.getPackageName());
            c3893w.m8495break(obtain.getClassName());
            c3893w.m8498class(obtain.getContentDescription());
            accessibilityNodeInfo.setEnabled(obtain.isEnabled());
            accessibilityNodeInfo.setClickable(obtain.isClickable());
            accessibilityNodeInfo.setFocusable(obtain.isFocusable());
            accessibilityNodeInfo.setFocused(obtain.isFocused());
            accessibilityNodeInfo.setAccessibilityFocused(obtain.isAccessibilityFocused());
            accessibilityNodeInfo.setSelected(obtain.isSelected());
            accessibilityNodeInfo.setLongClickable(obtain.isLongClickable());
            c3893w.m8500do(obtain.getActions());
            accessibilityNodeInfo.setMovementGranularities(obtain.getMovementGranularities());
            c3893w.m8495break(SlidingPaneLayout.class.getName());
            c3893w.f16162if = -1;
            accessibilityNodeInfo.setSource(view);
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            Object parentForAccessibility = view.getParentForAccessibility();
            if (parentForAccessibility instanceof View) {
                c3893w.f16160do = -1;
                accessibilityNodeInfo.setParent((View) parentForAccessibility);
            }
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            int childCount = slidingPaneLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = slidingPaneLayout.getChildAt(i);
                if (!slidingPaneLayout.m4586if(childAt) && childAt.getVisibility() == 0) {
                    childAt.setImportantForAccessibility(1);
                    accessibilityNodeInfo.addChild(childAt);
                }
            }
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$for, reason: invalid class name */
    public class Cfor extends VK.Cfor {
        public Cfor() {
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: break */
        public final void mo2618break(View view, float f, float f2) {
            int paddingLeft;
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            if (slidingPaneLayout.m4585for()) {
                int paddingRight = slidingPaneLayout.getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                if (f < 0.0f || (f == 0.0f && slidingPaneLayout.f7711do > 0.5f)) {
                    paddingRight += slidingPaneLayout.f7724try;
                }
                paddingLeft = (slidingPaneLayout.getWidth() - paddingRight) - slidingPaneLayout.f7714do.getWidth();
            } else {
                paddingLeft = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + slidingPaneLayout.getPaddingLeft();
                if (f > 0.0f || (f == 0.0f && slidingPaneLayout.f7711do > 0.5f)) {
                    paddingLeft += slidingPaneLayout.f7724try;
                }
            }
            slidingPaneLayout.f7712do.m2609native(paddingLeft, view.getTop());
            slidingPaneLayout.invalidate();
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: catch */
        public final boolean mo2620catch(View view, int i) {
            if (SlidingPaneLayout.this.f7721if) {
                return false;
            }
            return ((LayoutParams) view.getLayoutParams()).f7728do;
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: do */
        public final int mo2621do(View view, int i) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            LayoutParams layoutParams = (LayoutParams) slidingPaneLayout.f7714do.getLayoutParams();
            if (!slidingPaneLayout.m4585for()) {
                int paddingLeft = slidingPaneLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                return Math.min(Math.max(i, paddingLeft), slidingPaneLayout.f7724try + paddingLeft);
            }
            int width = slidingPaneLayout.getWidth() - (slidingPaneLayout.f7714do.getWidth() + (slidingPaneLayout.getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin));
            return Math.max(Math.min(i, width), width - slidingPaneLayout.f7724try);
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: else */
        public final void mo2622else(View view, int i) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            int childCount = slidingPaneLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = slidingPaneLayout.getChildAt(i2);
                if (childAt.getVisibility() == 4) {
                    childAt.setVisibility(0);
                }
            }
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: for */
        public final int mo2623for(View view) {
            return SlidingPaneLayout.this.f7724try;
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: goto */
        public final void mo2624goto(int i) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            if (slidingPaneLayout.f7712do.f4086do == 0) {
                if (slidingPaneLayout.f7711do != 0.0f) {
                    slidingPaneLayout.sendAccessibilityEvent(32);
                    slidingPaneLayout.f7719for = true;
                } else {
                    slidingPaneLayout.m4588try(slidingPaneLayout.f7714do);
                    slidingPaneLayout.sendAccessibilityEvent(32);
                    slidingPaneLayout.f7719for = false;
                }
            }
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: if */
        public final int mo2625if(View view, int i) {
            return view.getTop();
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: this */
        public final void mo2627this(View view, int i, int i2) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            if (slidingPaneLayout.f7714do == null) {
                slidingPaneLayout.f7711do = 0.0f;
            } else {
                boolean m4585for = slidingPaneLayout.m4585for();
                LayoutParams layoutParams = (LayoutParams) slidingPaneLayout.f7714do.getLayoutParams();
                int width = slidingPaneLayout.f7714do.getWidth();
                if (m4585for) {
                    i = (slidingPaneLayout.getWidth() - i) - width;
                }
                float paddingRight = (i - ((m4585for ? slidingPaneLayout.getPaddingRight() : slidingPaneLayout.getPaddingLeft()) + (m4585for ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin))) / slidingPaneLayout.f7724try;
                slidingPaneLayout.f7711do = paddingRight;
                if (layoutParams.f7729if) {
                    slidingPaneLayout.m4584do(slidingPaneLayout.f7714do, paddingRight, slidingPaneLayout.f7718for);
                }
            }
            slidingPaneLayout.invalidate();
        }

        @Override // defpackage.VK.Cfor
        /* renamed from: try */
        public final void mo2628try(int i, int i2) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            slidingPaneLayout.f7712do.m2605for(slidingPaneLayout.f7714do, i2);
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final View f7734do;

        public Cif(View view) {
            this.f7734do = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            View view = this.f7734do;
            ViewParent parent = view.getParent();
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            if (parent == slidingPaneLayout) {
                view.setLayerType(0, null);
                slidingPaneLayout.getClass();
                Paint paint = ((LayoutParams) view.getLayoutParams()).f7727do;
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                view.setLayerPaint(paint);
            }
            slidingPaneLayout.f7715do.remove(this);
        }
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() {
        VK vk = this.f7712do;
        if (vk.m2606goto()) {
            if (!this.f7716do) {
                vk.m2602do();
            } else {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                postInvalidateOnAnimation();
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4584do(View view, float f, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f <= 0.0f || i == 0) {
            if (view.getLayerType() != 0) {
                Paint paint = layoutParams.f7727do;
                if (paint != null) {
                    paint.setColorFilter(null);
                }
                Cif cif = new Cif(view);
                this.f7715do.add(cif);
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                postOnAnimation(cif);
                return;
            }
            return;
        }
        int i2 = (((int) ((((-16777216) & i) >>> 24) * f)) << 24) | (i & 16777215);
        if (layoutParams.f7727do == null) {
            layoutParams.f7727do = new Paint();
        }
        layoutParams.f7727do.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_OVER));
        if (view.getLayerType() != 2) {
            view.setLayerType(2, layoutParams.f7727do);
        }
        Paint paint2 = ((LayoutParams) view.getLayoutParams()).f7727do;
        WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
        view.setLayerPaint(paint2);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        m4585for();
        if (getChildCount() > 1) {
            getChildAt(1);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save();
        if (this.f7716do && !layoutParams.f7728do && this.f7714do != null) {
            Rect rect = this.f7713do;
            canvas.getClipBounds(rect);
            if (m4585for()) {
                rect.left = Math.max(rect.left, this.f7714do.getRight());
            } else {
                rect.right = Math.min(rect.right, this.f7714do.getLeft());
            }
            canvas.clipRect(rect);
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        return drawChild;
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m4585for() {
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        return getLayoutDirection() == 1;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m4586if(View view) {
        if (view == null) {
            return false;
        }
        return this.f7716do && ((LayoutParams) view.getLayoutParams()).f7729if && this.f7711do > 0.0f;
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m4587new(float f) {
        int paddingLeft;
        if (!this.f7716do) {
            return false;
        }
        boolean m4585for = m4585for();
        LayoutParams layoutParams = (LayoutParams) this.f7714do.getLayoutParams();
        if (m4585for) {
            int paddingRight = getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            paddingLeft = (int) (getWidth() - (((f * this.f7724try) + paddingRight) + this.f7714do.getWidth()));
        } else {
            paddingLeft = (int) ((f * this.f7724try) + getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
        }
        View view = this.f7714do;
        if (!this.f7712do.m2612return(view, paddingLeft, view.getTop())) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        postInvalidateOnAnimation();
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f7723new = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f7723new = true;
        ArrayList<Cif> arrayList = this.f7715do;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).run();
        }
        arrayList.clear();
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View childAt;
        int actionMasked = motionEvent.getActionMasked();
        boolean z2 = this.f7716do;
        VK vk = this.f7712do;
        if (!z2 && actionMasked == 0 && getChildCount() > 1 && (childAt = getChildAt(1)) != null) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            vk.getClass();
            this.f7719for = !VK.m2596class(childAt, x, y);
        }
        if (!this.f7716do || (this.f7721if && actionMasked != 0)) {
            vk.m2607if();
            return super.onInterceptTouchEvent(motionEvent);
        }
        if (actionMasked == 3 || actionMasked == 1) {
            vk.m2607if();
            return false;
        }
        if (actionMasked == 0) {
            this.f7721if = false;
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            this.f7720if = x2;
            this.f7717for = y2;
            vk.getClass();
            if (VK.m2596class(this.f7714do, (int) x2, (int) y2) && m4586if(this.f7714do)) {
                z = true;
                return vk.m2611public(motionEvent) || z;
            }
        } else if (actionMasked == 2) {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            float abs = Math.abs(x3 - this.f7720if);
            float abs2 = Math.abs(y3 - this.f7717for);
            if (abs > vk.f4101if && abs2 > abs) {
                vk.m2607if();
                this.f7721if = true;
                return false;
            }
        }
        z = false;
        if (vk.m2611public(motionEvent)) {
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        boolean m4585for = m4585for();
        VK vk = this.f7712do;
        if (m4585for) {
            vk.f4096else = 2;
        } else {
            vk.f4096else = 1;
        }
        int i8 = i3 - i;
        int paddingRight = m4585for ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = m4585for ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.f7723new) {
            this.f7711do = (this.f7716do && this.f7719for) ? 1.0f : 0.0f;
        }
        int i9 = paddingRight;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.f7728do) {
                    int i11 = i8 - paddingLeft;
                    int min = (Math.min(paddingRight, i11 - this.f7722new) - i9) - (((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                    this.f7724try = min;
                    int i12 = m4585for ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    layoutParams.f7729if = (measuredWidth / 2) + ((i9 + i12) + min) > i11;
                    int i13 = (int) (min * this.f7711do);
                    i5 = i12 + i13 + i9;
                    this.f7711do = i13 / min;
                } else {
                    boolean z2 = this.f7716do;
                    i5 = paddingRight;
                }
                if (m4585for) {
                    i7 = (i8 - i5) + 0;
                    i6 = i7 - measuredWidth;
                } else {
                    i6 = i5 + 0;
                    i7 = i6 + measuredWidth;
                }
                childAt.layout(i6, paddingTop, i7, childAt.getMeasuredHeight() + paddingTop);
                paddingRight = childAt.getWidth() + paddingRight;
                i9 = i5;
            }
        }
        if (this.f7723new) {
            boolean z3 = this.f7716do;
            int i14 = this.f7718for;
            if (!z3) {
                for (int i15 = 0; i15 < childCount; i15++) {
                    m4584do(getChildAt(i15), 0.0f, i14);
                }
            } else if (((LayoutParams) this.f7714do.getLayoutParams()).f7729if) {
                m4584do(this.f7714do, this.f7711do, i14);
            }
            m4588try(this.f7714do);
        }
        this.f7723new = false;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int paddingTop;
        int i3;
        int i4;
        int i5;
        int i6;
        int makeMeasureSpec;
        int i7;
        int makeMeasureSpec2;
        float f;
        int i8;
        int makeMeasureSpec3;
        int makeMeasureSpec4;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
            }
            if (mode != Integer.MIN_VALUE && mode == 0) {
                size = 300;
            }
        } else if (mode2 == 0) {
            if (!isInEditMode()) {
                throw new IllegalStateException("Height must not be UNSPECIFIED");
            }
            if (mode2 == 0) {
                mode2 = Integer.MIN_VALUE;
                size2 = 300;
            }
        }
        boolean z = false;
        if (mode2 == Integer.MIN_VALUE) {
            paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
            i3 = 0;
        } else if (mode2 != 1073741824) {
            i3 = 0;
            paddingTop = 0;
        } else {
            i3 = (size2 - getPaddingTop()) - getPaddingBottom();
            paddingTop = i3;
        }
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int childCount = getChildCount();
        this.f7714do = null;
        int i9 = paddingLeft;
        int i10 = 0;
        boolean z2 = false;
        float f2 = 0.0f;
        while (true) {
            i4 = 8;
            if (i10 >= childCount) {
                break;
            }
            View childAt = getChildAt(i10);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                layoutParams.f7729if = z;
            } else {
                float f3 = layoutParams.f7726do;
                if (f3 > 0.0f) {
                    f2 += f3;
                    if (((ViewGroup.MarginLayoutParams) layoutParams).width == 0) {
                    }
                }
                int i11 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int i12 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                if (i12 == -2) {
                    makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(paddingLeft - i11, Integer.MIN_VALUE);
                    f = f2;
                    i8 = Integer.MIN_VALUE;
                } else {
                    f = f2;
                    i8 = Integer.MIN_VALUE;
                    makeMeasureSpec3 = i12 == -1 ? View.MeasureSpec.makeMeasureSpec(paddingLeft - i11, 1073741824) : View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
                }
                int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                if (i13 == -2) {
                    makeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(paddingTop, i8);
                } else {
                    makeMeasureSpec4 = i13 == -1 ? View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824) : View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
                }
                childAt.measure(makeMeasureSpec3, makeMeasureSpec4);
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (mode2 == i8 && measuredHeight > i3) {
                    i3 = Math.min(measuredHeight, paddingTop);
                }
                i9 -= measuredWidth;
                boolean z3 = i9 < 0;
                layoutParams.f7728do = z3;
                z2 |= z3;
                if (z3) {
                    this.f7714do = childAt;
                }
                f2 = f;
            }
            i10++;
            z = false;
        }
        if (z2 || f2 > 0.0f) {
            int i14 = paddingLeft - this.f7722new;
            int i15 = 0;
            while (i15 < childCount) {
                View childAt2 = getChildAt(i15);
                if (childAt2.getVisibility() != i4) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != i4) {
                        int i16 = ((ViewGroup.MarginLayoutParams) layoutParams2).width;
                        float f4 = layoutParams2.f7726do;
                        boolean z4 = i16 == 0 && f4 > 0.0f;
                        int measuredWidth2 = z4 ? 0 : childAt2.getMeasuredWidth();
                        i5 = childCount;
                        if (!z2 || childAt2 == this.f7714do) {
                            if (f4 > 0.0f) {
                                if (((ViewGroup.MarginLayoutParams) layoutParams2).width == 0) {
                                    int i17 = ((ViewGroup.MarginLayoutParams) layoutParams2).height;
                                    if (i17 == -2) {
                                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE);
                                        i6 = 1073741824;
                                    } else if (i17 == -1) {
                                        i6 = 1073741824;
                                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824);
                                    } else {
                                        i6 = 1073741824;
                                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i17, 1073741824);
                                    }
                                } else {
                                    i6 = 1073741824;
                                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                }
                                if (z2) {
                                    int i18 = paddingLeft - (((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
                                    int makeMeasureSpec5 = View.MeasureSpec.makeMeasureSpec(i18, i6);
                                    if (measuredWidth2 != i18) {
                                        childAt2.measure(makeMeasureSpec5, makeMeasureSpec);
                                    }
                                } else {
                                    childAt2.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2 + ((int) ((f4 * Math.max(0, i9)) / f2)), 1073741824), makeMeasureSpec);
                                    i15++;
                                    childCount = i5;
                                    i4 = 8;
                                }
                            }
                        } else if (((ViewGroup.MarginLayoutParams) layoutParams2).width < 0 && (measuredWidth2 > i14 || f4 > 0.0f)) {
                            if (z4) {
                                int i19 = ((ViewGroup.MarginLayoutParams) layoutParams2).height;
                                if (i19 == -2) {
                                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE);
                                    i7 = 1073741824;
                                } else if (i19 == -1) {
                                    i7 = 1073741824;
                                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824);
                                } else {
                                    i7 = 1073741824;
                                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i19, 1073741824);
                                }
                            } else {
                                i7 = 1073741824;
                                makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                            }
                            childAt2.measure(View.MeasureSpec.makeMeasureSpec(i14, i7), makeMeasureSpec2);
                        }
                        i15++;
                        childCount = i5;
                        i4 = 8;
                    }
                }
                i5 = childCount;
                i15++;
                childCount = i5;
                i4 = 8;
            }
        }
        setMeasuredDimension(size, getPaddingBottom() + getPaddingTop() + i3);
        this.f7716do = z2;
        VK vk = this.f7712do;
        if (vk.f4086do == 0 || z2) {
            return;
        }
        vk.m2602do();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(((AbsSavedState) savedState).f6568do);
        if (savedState.f7730do) {
            if (this.f7723new || m4587new(1.0f)) {
                this.f7719for = true;
            }
        } else if (this.f7723new || m4587new(0.0f)) {
            this.f7719for = false;
        }
        this.f7719for = savedState.f7730do;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        boolean z = this.f7716do;
        savedState.f7730do = z ? !z || this.f7711do == 1.0f : this.f7719for;
        return savedState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.f7723new = true;
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f7716do) {
            return super.onTouchEvent(motionEvent);
        }
        VK vk = this.f7712do;
        vk.m2601const(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.f7720if = x;
            this.f7717for = y;
        } else if (actionMasked == 1 && m4586if(this.f7714do)) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            float f = x2 - this.f7720if;
            float f2 = y2 - this.f7717for;
            int i = vk.f4101if;
            if ((f2 * f2) + (f * f) < i * i && VK.m2596class(this.f7714do, (int) x2, (int) y2) && (this.f7723new || m4587new(0.0f))) {
                this.f7719for = false;
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode() || this.f7716do) {
            return;
        }
        this.f7719for = view == this.f7714do;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m4588try(View view) {
        int i;
        int i2;
        int i3;
        int i4;
        View childAt;
        boolean z;
        View view2 = view;
        boolean m4585for = m4585for();
        int width = m4585for ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = m4585for ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        if (view2 == null || !view.isOpaque()) {
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        } else {
            i = view.getLeft();
            i2 = view.getRight();
            i3 = view.getTop();
            i4 = view.getBottom();
        }
        int childCount = getChildCount();
        int i5 = 0;
        while (i5 < childCount && (childAt = getChildAt(i5)) != view2) {
            if (childAt.getVisibility() == 8) {
                z = m4585for;
            } else {
                z = m4585for;
                childAt.setVisibility((Math.max(m4585for ? paddingLeft : width, childAt.getLeft()) < i || Math.max(paddingTop, childAt.getTop()) < i3 || Math.min(m4585for ? width : paddingLeft, childAt.getRight()) > i2 || Math.min(height, childAt.getBottom()) > i4) ? 0 : 4);
            }
            i5++;
            view2 = view;
            m4585for = z;
        }
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: do, reason: not valid java name */
        public static final int[] f7725do = {R.attr.layout_weight};

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final float f7726do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Paint f7727do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7728do;

        /* renamed from: if, reason: not valid java name */
        public boolean f7729if;

        public LayoutParams() {
            super(-1, -1);
            this.f7726do = 0.0f;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f7726do = 0.0f;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f7726do = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f7726do = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f7725do);
            this.f7726do = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7718for = -858993460;
        this.f7723new = true;
        this.f7713do = new Rect();
        this.f7715do = new ArrayList<>();
        float f = context.getResources().getDisplayMetrics().density;
        this.f7722new = (int) ((32.0f * f) + 0.5f);
        setWillNotDraw(false);
        QK.m1858native(this, new Cdo());
        setImportantForAccessibility(1);
        VK m2597this = VK.m2597this(this, 0.5f, new Cfor());
        this.f7712do = m2597this;
        m2597this.f4100if = f * 400.0f;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }
}
