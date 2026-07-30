package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;

/* renamed from: mu, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3357mu extends AbstractC2895hu {

    /* renamed from: do, reason: not valid java name */
    public final FrameLayout.LayoutParams f14411do;

    /* renamed from: throw, reason: not valid java name */
    public int f14412throw;

    public C3357mu(Context context) {
        super(context);
        this.f14412throw = -1;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        this.f14411do = layoutParams;
        layoutParams.gravity = 49;
        setLayoutParams(layoutParams);
        ((AbstractC2895hu) this).f13392for = true;
        AbstractC2718eu[] abstractC2718euArr = ((AbstractC2895hu) this).f13387do;
        if (abstractC2718euArr != null) {
            for (AbstractC2718eu abstractC2718eu : abstractC2718euArr) {
                abstractC2718eu.f12769new = true;
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final int m7480else(View view, int i, int i2, int i3) {
        int makeMeasureSpec;
        int i4;
        if (view == null) {
            int max = i2 / Math.max(1, i3);
            int i5 = this.f14412throw;
            if (i5 == -1) {
                i5 = View.MeasureSpec.getSize(i);
            }
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(i5, max), 0);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0);
        }
        int childCount = getChildCount();
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt != view) {
                if (childAt.getVisibility() != 8) {
                    childAt.measure(i, makeMeasureSpec);
                    i4 = childAt.getMeasuredHeight();
                } else {
                    i4 = 0;
                }
                i6 += i4;
            }
        }
        return i6;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                int measuredHeight = childAt.getMeasuredHeight() + i6;
                childAt.layout(0, i6, i5, measuredHeight);
                i6 = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int m7480else;
        int i3;
        int size = View.MeasureSpec.getSize(i2);
        int size2 = ((AbstractC2895hu) this).f13380do.m3326class().size();
        if (size2 <= 1 || !AbstractC2895hu.m6839case(((AbstractC2895hu) this).f13390for, size2)) {
            m7480else = m7480else(null, i, size, size2);
        } else {
            View childAt = getChildAt(((AbstractC2895hu) this).f13401try);
            if (childAt != null) {
                int max = size / Math.max(1, size2);
                int i4 = this.f14412throw;
                if (i4 == -1) {
                    i4 = View.MeasureSpec.getSize(i);
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(i4, max), 0);
                if (childAt.getVisibility() != 8) {
                    childAt.measure(i, makeMeasureSpec);
                    i3 = childAt.getMeasuredHeight();
                } else {
                    i3 = 0;
                }
                size -= i3;
                size2--;
            } else {
                i3 = 0;
            }
            m7480else = m7480else(childAt, i, size, size2) + i3;
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), View.resolveSizeAndState(m7480else, i2, 0));
    }

    @Override // defpackage.AbstractC2895hu
    /* renamed from: try */
    public final AbstractC2718eu mo914try(Context context) {
        return new C3298lu(context);
    }
}
