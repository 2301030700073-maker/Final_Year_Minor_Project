package b.b.g;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

/* renamed from: b.b.g.r0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0070r0 extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public boolean f577a;

    /* renamed from: b, reason: collision with root package name */
    public int f578b;

    /* renamed from: c, reason: collision with root package name */
    public int f579c;

    /* renamed from: d, reason: collision with root package name */
    public int f580d;
    public int e;
    public int f;
    public float g;
    public boolean h;
    public int[] i;
    public int[] j;
    public Drawable k;
    public int l;
    public int m;
    public int n;
    public int o;

    public C0070r0(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0069q0;
    }

    public void e(Canvas canvas, int i) {
        this.k.setBounds(getPaddingLeft() + this.o, i, (getWidth() - getPaddingRight()) - this.o, this.m + i);
        this.k.draw(canvas);
    }

    public void f(Canvas canvas, int i) {
        this.k.setBounds(i, getPaddingTop() + this.o, this.l + i, (getHeight() - getPaddingBottom()) - this.o);
        this.k.draw(canvas);
    }

    public final void g(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                C0069q0 c0069q0 = (C0069q0) childAt.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) c0069q0).height == -1) {
                    int i4 = ((ViewGroup.MarginLayoutParams) c0069q0).width;
                    ((ViewGroup.MarginLayoutParams) c0069q0).width = childAt.getMeasuredWidth();
                    measureChildWithMargins(childAt, i2, 0, makeMeasureSpec, 0);
                    ((ViewGroup.MarginLayoutParams) c0069q0).width = i4;
                }
            }
        }
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.f578b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.f578b;
        if (childCount <= i2) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i2);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f578b == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int i3 = this.f579c;
        if (this.f580d == 1 && (i = this.e & 112) != 48) {
            if (i == 16) {
                i3 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f) / 2;
            } else if (i == 80) {
                i3 = ((getBottom() - getTop()) - getPaddingBottom()) - this.f;
            }
        }
        return i3 + ((ViewGroup.MarginLayoutParams) ((C0069q0) childAt.getLayoutParams())).topMargin + baseline;
    }

    public final void h(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                C0069q0 c0069q0 = (C0069q0) childAt.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) c0069q0).width == -1) {
                    int i4 = ((ViewGroup.MarginLayoutParams) c0069q0).height;
                    ((ViewGroup.MarginLayoutParams) c0069q0).height = childAt.getMeasuredHeight();
                    measureChildWithMargins(childAt, makeMeasureSpec, 0, i2, 0);
                    ((ViewGroup.MarginLayoutParams) c0069q0).height = i4;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public C0069q0 i() {
        int i = this.f580d;
        if (i == 0) {
            return new C0069q0(-2, -2);
        }
        if (i == 1) {
            return new C0069q0(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public C0069q0 generateLayoutParams(AttributeSet attributeSet) {
        return new C0069q0(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public C0069q0 k(ViewGroup.LayoutParams layoutParams) {
        return new C0069q0(layoutParams);
    }

    public int l() {
        return 0;
    }

    public int m() {
        return 0;
    }

    public int n() {
        return 0;
    }

    public boolean o(int i) {
        if (i == 0) {
            return (this.n & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.n & 4) != 0;
        }
        if ((this.n & 2) == 0) {
            return false;
        }
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (getChildAt(i2).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int right;
        int left;
        int i;
        if (this.k == null) {
            return;
        }
        int i2 = 0;
        if (this.f580d == 1) {
            int childCount = getChildCount();
            while (i2 < childCount) {
                View childAt = getChildAt(i2);
                if (childAt != null && childAt.getVisibility() != 8 && o(i2)) {
                    e(canvas, (childAt.getTop() - ((ViewGroup.MarginLayoutParams) ((C0069q0) childAt.getLayoutParams())).topMargin) - this.m);
                }
                i2++;
            }
            if (o(childCount)) {
                View childAt2 = getChildAt(childCount - 1);
                e(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.m : childAt2.getBottom() + ((ViewGroup.MarginLayoutParams) ((C0069q0) childAt2.getLayoutParams())).bottomMargin);
                return;
            }
            return;
        }
        int childCount2 = getChildCount();
        boolean b2 = m1.b(this);
        while (i2 < childCount2) {
            View childAt3 = getChildAt(i2);
            if (childAt3 != null && childAt3.getVisibility() != 8 && o(i2)) {
                C0069q0 c0069q0 = (C0069q0) childAt3.getLayoutParams();
                f(canvas, b2 ? childAt3.getRight() + ((ViewGroup.MarginLayoutParams) c0069q0).rightMargin : (childAt3.getLeft() - ((ViewGroup.MarginLayoutParams) c0069q0).leftMargin) - this.l);
            }
            i2++;
        }
        if (o(childCount2)) {
            View childAt4 = getChildAt(childCount2 - 1);
            if (childAt4 != null) {
                C0069q0 c0069q02 = (C0069q0) childAt4.getLayoutParams();
                if (b2) {
                    left = childAt4.getLeft() - ((ViewGroup.MarginLayoutParams) c0069q02).leftMargin;
                    i = this.l;
                    right = left - i;
                } else {
                    right = childAt4.getRight() + ((ViewGroup.MarginLayoutParams) c0069q02).rightMargin;
                }
            } else if (b2) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i = this.l;
                right = left - i;
            }
            f(canvas, right);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01a6  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r24, int r25, int r26, int r27, int r28) {
        /*
            Method dump skipped, instructions count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.g.C0070r0.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:149:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x051c  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x054f  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x055c  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0487  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x04eb  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x04d4  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x048c  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x05f6  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x087f  */
    /* JADX WARN: Removed duplicated region for block: B:333:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:336:0x06bd  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x06dd  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r40, int r41) {
        /*
            Method dump skipped, instructions count: 2183
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.g.C0070r0.onMeasure(int, int):void");
    }

    public void p(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    public int q() {
        return 0;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public C0070r0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0070r0(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Drawable drawable;
        int resourceId;
        int[] iArr = b.b.b.m;
        this.f577a = true;
        this.f578b = -1;
        this.f579c = 0;
        this.e = 8388659;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        b.e.i.q.C(this, context, iArr, attributeSet, obtainStyledAttributes, i, 0);
        int i2 = obtainStyledAttributes.getInt(1, -1);
        if (i2 >= 0 && this.f580d != i2) {
            this.f580d = i2;
            requestLayout();
        }
        int i3 = obtainStyledAttributes.getInt(0, -1);
        if (i3 >= 0 && this.e != i3) {
            i3 = (8388615 & i3) == 0 ? i3 | 8388611 : i3;
            this.e = (i3 & 112) == 0 ? i3 | 48 : i3;
            requestLayout();
        }
        boolean z = obtainStyledAttributes.getBoolean(2, true);
        if (!z) {
            this.f577a = z;
        }
        this.g = obtainStyledAttributes.getFloat(4, -1.0f);
        this.f578b = obtainStyledAttributes.getInt(3, -1);
        this.h = obtainStyledAttributes.getBoolean(7, false);
        if (obtainStyledAttributes.hasValue(5) && (resourceId = obtainStyledAttributes.getResourceId(5, 0)) != 0) {
            drawable = b.b.a.a(context, resourceId);
        } else {
            drawable = obtainStyledAttributes.getDrawable(5);
        }
        if (drawable != this.k) {
            this.k = drawable;
            if (drawable != null) {
                this.l = drawable.getIntrinsicWidth();
                this.m = drawable.getIntrinsicHeight();
            } else {
                this.l = 0;
                this.m = 0;
            }
            setWillNotDraw(drawable == null);
            requestLayout();
        }
        this.n = obtainStyledAttributes.getInt(8, 0);
        this.o = obtainStyledAttributes.getDimensionPixelSize(6, 0);
        obtainStyledAttributes.recycle();
    }
}
