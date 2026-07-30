package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.Ccase;
import com.joeykrim.rootcheck.R;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public final class I5 extends AbstractC2895hu {

    /* renamed from: do, reason: not valid java name */
    public final ArrayList f1431do;

    /* renamed from: import, reason: not valid java name */
    public final int f1432import;

    /* renamed from: native, reason: not valid java name */
    public final int f1433native;

    /* renamed from: new, reason: not valid java name */
    public boolean f1434new;

    /* renamed from: throw, reason: not valid java name */
    public final int f1435throw;

    /* renamed from: while, reason: not valid java name */
    public final int f1436while;

    public I5(Context context) {
        super(context);
        this.f1431do = new ArrayList();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        Resources resources = getResources();
        this.f1435throw = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_max_width);
        this.f1436while = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_min_width);
        this.f1432import = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_max_width);
        this.f1433native = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_min_width);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                if (getLayoutDirection() == 1) {
                    int i9 = i5 - i7;
                    childAt.layout(i9 - childAt.getMeasuredWidth(), 0, i9, i6);
                } else {
                    childAt.layout(i7, 0, childAt.getMeasuredWidth() + i7, i6);
                }
                i7 += childAt.getMeasuredWidth();
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        Ccase ccase = ((AbstractC2895hu) this).f13380do;
        int size = View.MeasureSpec.getSize(i);
        int size2 = ccase.m3326class().size();
        int childCount = getChildCount();
        ArrayList arrayList = this.f1431do;
        arrayList.clear();
        int size3 = View.MeasureSpec.getSize(i2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size3, 1073741824);
        boolean m6839case = AbstractC2895hu.m6839case(((AbstractC2895hu) this).f13390for, size2);
        int i5 = this.f1432import;
        if (m6839case && this.f1434new) {
            View childAt = getChildAt(((AbstractC2895hu) this).f13401try);
            int visibility = childAt.getVisibility();
            int i6 = this.f1433native;
            if (visibility != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE), makeMeasureSpec);
                i6 = Math.max(i6, childAt.getMeasuredWidth());
            }
            int i7 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min = Math.min(size - (this.f1436while * i7), Math.min(i6, i5));
            int i8 = size - min;
            int min2 = Math.min(i8 / (i7 != 0 ? i7 : 1), this.f1435throw);
            int i9 = i8 - (i7 * min2);
            int i10 = 0;
            while (i10 < childCount) {
                if (getChildAt(i10).getVisibility() != 8) {
                    i4 = i10 == ((AbstractC2895hu) this).f13401try ? min : min2;
                    if (i9 > 0) {
                        i4++;
                        i9--;
                    }
                } else {
                    i4 = 0;
                }
                arrayList.add(Integer.valueOf(i4));
                i10++;
            }
        } else {
            int min3 = Math.min(size / (size2 != 0 ? size2 : 1), i5);
            int i11 = size - (size2 * min3);
            for (int i12 = 0; i12 < childCount; i12++) {
                if (getChildAt(i12).getVisibility() == 8) {
                    i3 = 0;
                } else if (i11 > 0) {
                    i3 = min3 + 1;
                    i11--;
                } else {
                    i3 = min3;
                }
                arrayList.add(Integer.valueOf(i3));
            }
        }
        int i13 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt2 = getChildAt(i14);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(((Integer) arrayList.get(i14)).intValue(), 1073741824), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i13 = childAt2.getMeasuredWidth() + i13;
            }
        }
        setMeasuredDimension(i13, size3);
    }

    @Override // defpackage.AbstractC2895hu
    /* renamed from: try, reason: not valid java name */
    public final AbstractC2718eu mo914try(Context context) {
        return new H5(context);
    }
}
