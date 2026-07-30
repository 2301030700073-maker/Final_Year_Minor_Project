package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import defpackage.C3645ro;
import defpackage.C3915wL;
import defpackage.O4;
import defpackage.QK;

/* loaded from: classes.dex */
public class LinearLayoutCompat extends ViewGroup {

    /* renamed from: break, reason: not valid java name */
    public final int f5763break;

    /* renamed from: case, reason: not valid java name */
    public int f5764case;

    /* renamed from: catch, reason: not valid java name */
    public final int f5765catch;

    /* renamed from: do, reason: not valid java name */
    public final float f5766do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f5767do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5768do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f5769do;

    /* renamed from: else, reason: not valid java name */
    public int f5770else;

    /* renamed from: for, reason: not valid java name */
    public final int f5771for;

    /* renamed from: goto, reason: not valid java name */
    public int f5772goto;

    /* renamed from: if, reason: not valid java name */
    public final boolean f5773if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int[] f5774if;

    /* renamed from: new, reason: not valid java name */
    public int f5775new;

    /* renamed from: this, reason: not valid java name */
    public int f5776this;

    /* renamed from: try, reason: not valid java name */
    public int f5777try;

    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i) {
            super(i, -2);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    /* renamed from: break, reason: not valid java name */
    public final boolean m3442break(int i) {
        int i2 = this.f5763break;
        if (i == 0) {
            return (i2 & 1) != 0;
        }
        if (i == getChildCount()) {
            return (i2 & 4) != 0;
        }
        if ((i2 & 2) == 0) {
            return false;
        }
        for (int i3 = i - 1; i3 >= 0; i3--) {
            if (getChildAt(i3).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    /* renamed from: case, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.f5777try;
        if (i == 0) {
            return new LayoutParams(-2);
        }
        if (i == 1) {
            return new LayoutParams(-1);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public final int getBaseline() {
        int i;
        int i2 = this.f5771for;
        if (i2 < 0) {
            return super.getBaseline();
        }
        if (getChildCount() <= i2) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i2);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (i2 == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int i3 = this.f5775new;
        if (this.f5777try == 1 && (i = this.f5764case & 112) != 48) {
            if (i == 16) {
                i3 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f5770else) / 2;
            } else if (i == 80) {
                i3 = ((getBottom() - getTop()) - getPaddingBottom()) - this.f5770else;
            }
        }
        return i3 + ((LinearLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
    }

    @Override // android.view.ViewGroup
    /* renamed from: goto, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m3443new(Canvas canvas, int i) {
        Drawable drawable = this.f5767do;
        int paddingLeft = getPaddingLeft();
        int i2 = this.f5765catch;
        drawable.setBounds(paddingLeft + i2, i, (getWidth() - getPaddingRight()) - i2, this.f5776this + i);
        this.f5767do.draw(canvas);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int right;
        int left;
        int i;
        if (this.f5767do == null) {
            return;
        }
        int i2 = 0;
        if (this.f5777try == 1) {
            int childCount = getChildCount();
            while (i2 < childCount) {
                View childAt = getChildAt(i2);
                if (childAt != null && childAt.getVisibility() != 8 && m3442break(i2)) {
                    m3443new(canvas, (childAt.getTop() - ((LinearLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin) - this.f5776this);
                }
                i2++;
            }
            if (m3442break(childCount)) {
                View childAt2 = getChildAt(childCount - 1);
                m3443new(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f5776this : childAt2.getBottom() + ((LinearLayout.LayoutParams) ((LayoutParams) childAt2.getLayoutParams())).bottomMargin);
                return;
            }
            return;
        }
        int childCount2 = getChildCount();
        boolean m8568do = C3915wL.m8568do(this);
        while (i2 < childCount2) {
            View childAt3 = getChildAt(i2);
            if (childAt3 != null && childAt3.getVisibility() != 8 && m3442break(i2)) {
                LayoutParams layoutParams = (LayoutParams) childAt3.getLayoutParams();
                m3444try(canvas, m8568do ? childAt3.getRight() + ((LinearLayout.LayoutParams) layoutParams).rightMargin : (childAt3.getLeft() - ((LinearLayout.LayoutParams) layoutParams).leftMargin) - this.f5772goto);
            }
            i2++;
        }
        if (m3442break(childCount2)) {
            View childAt4 = getChildAt(childCount2 - 1);
            if (childAt4 != null) {
                LayoutParams layoutParams2 = (LayoutParams) childAt4.getLayoutParams();
                if (m8568do) {
                    left = childAt4.getLeft() - ((LinearLayout.LayoutParams) layoutParams2).leftMargin;
                    i = this.f5772goto;
                    right = left - i;
                } else {
                    right = childAt4.getRight() + ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                }
            } else if (m8568do) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i = this.f5772goto;
                right = left - i;
            }
            m3444try(canvas, right);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x018d  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r18, int r19, int r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:172:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0501  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0523  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0555  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0564  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x056f  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0496  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x04f7  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x04e1  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x04ca  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x049b  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x0601  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x088b  */
    /* JADX WARN: Removed duplicated region for block: B:359:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:363:0x06c1  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x06e1  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x07cf  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r38, int r39) {
        /*
            Method dump skipped, instructions count: 2250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    /* renamed from: this, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    /* renamed from: try, reason: not valid java name */
    public final void m3444try(Canvas canvas, int i) {
        Drawable drawable = this.f5767do;
        int paddingTop = getPaddingTop();
        int i2 = this.f5765catch;
        drawable.setBounds(i, paddingTop + i2, this.f5772goto + i, (getHeight() - getPaddingBottom()) - i2);
        this.f5767do.draw(canvas);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Drawable drawable;
        int resourceId;
        this.f5768do = true;
        this.f5771for = -1;
        this.f5775new = 0;
        this.f5764case = 8388659;
        int[] iArr = O4.f2569static;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        QK.m1857import(this, context, iArr, attributeSet, obtainStyledAttributes, i);
        int i2 = obtainStyledAttributes.getInt(1, -1);
        if (i2 >= 0 && this.f5777try != i2) {
            this.f5777try = i2;
            requestLayout();
        }
        int i3 = obtainStyledAttributes.getInt(0, -1);
        if (i3 >= 0 && this.f5764case != i3) {
            i3 = (8388615 & i3) == 0 ? i3 | 8388611 : i3;
            this.f5764case = (i3 & 112) == 0 ? i3 | 48 : i3;
            requestLayout();
        }
        boolean z = obtainStyledAttributes.getBoolean(2, true);
        if (!z) {
            this.f5768do = z;
        }
        this.f5766do = obtainStyledAttributes.getFloat(4, -1.0f);
        this.f5771for = obtainStyledAttributes.getInt(3, -1);
        this.f5773if = obtainStyledAttributes.getBoolean(7, false);
        if (obtainStyledAttributes.hasValue(5) && (resourceId = obtainStyledAttributes.getResourceId(5, 0)) != 0) {
            drawable = C3645ro.m7997extends(context, resourceId);
        } else {
            drawable = obtainStyledAttributes.getDrawable(5);
        }
        if (drawable != this.f5767do) {
            this.f5767do = drawable;
            if (drawable != null) {
                this.f5772goto = drawable.getIntrinsicWidth();
                this.f5776this = drawable.getIntrinsicHeight();
            } else {
                this.f5772goto = 0;
                this.f5776this = 0;
            }
            setWillNotDraw(drawable == null);
            requestLayout();
        }
        this.f5763break = obtainStyledAttributes.getInt(8, 0);
        this.f5765catch = obtainStyledAttributes.getDimensionPixelSize(6, 0);
        obtainStyledAttributes.recycle();
    }
}
