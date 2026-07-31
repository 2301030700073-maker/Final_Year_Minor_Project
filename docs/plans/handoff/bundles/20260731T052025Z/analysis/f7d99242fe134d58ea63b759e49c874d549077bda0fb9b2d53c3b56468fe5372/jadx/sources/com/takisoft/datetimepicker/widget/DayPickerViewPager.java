package com.takisoft.datetimepicker.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.ViewPager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class DayPickerViewPager extends ViewPager {
    public final ArrayList mMatchParentChildren;

    public DayPickerViewPager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet);
        this.mMatchParentChildren = new ArrayList(1);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        ArrayList arrayList;
        try {
            Method declaredMethod = ViewPager.class.getDeclaredMethod("populate", null);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(this, null);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
        int childCount = getChildCount();
        boolean z = (View.MeasureSpec.getMode(i) == 1073741824 && View.MeasureSpec.getMode(i2) == 1073741824) ? false : true;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            arrayList = this.mMatchParentChildren;
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i, i2);
                ViewPager.LayoutParams layoutParams = (ViewPager.LayoutParams) childAt.getLayoutParams();
                i4 = Math.max(i4, childAt.getMeasuredWidth());
                i5 = Math.max(i5, childAt.getMeasuredHeight());
                i6 = View.combineMeasuredStates(i6, childAt.getMeasuredState());
                if (z && (((ViewGroup.LayoutParams) layoutParams).width == -1 || ((ViewGroup.LayoutParams) layoutParams).height == -1)) {
                    arrayList.add(childAt);
                }
            }
            i3++;
        }
        int paddingRight = getPaddingRight() + getPaddingLeft() + i4;
        int max = Math.max(getPaddingBottom() + getPaddingTop() + i5, getSuggestedMinimumHeight());
        int max2 = Math.max(paddingRight, getSuggestedMinimumWidth());
        Drawable foreground = getForeground();
        if (foreground != null) {
            max = Math.max(max, foreground.getMinimumHeight());
            max2 = Math.max(max2, foreground.getMinimumWidth());
        }
        setMeasuredDimension(View.resolveSizeAndState(max2, i, i6), View.resolveSizeAndState(max, i2, i6 << 16));
        int size = arrayList.size();
        if (size > 1) {
            for (int i7 = 0; i7 < size; i7++) {
                View view = (View) arrayList.get(i7);
                ViewPager.LayoutParams layoutParams2 = (ViewPager.LayoutParams) view.getLayoutParams();
                view.measure(((ViewGroup.LayoutParams) layoutParams2).width == -1 ? View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824) : ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft(), ((ViewGroup.LayoutParams) layoutParams2).width), ((ViewGroup.LayoutParams) layoutParams2).height == -1 ? View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824) : ViewGroup.getChildMeasureSpec(i2, getPaddingBottom() + getPaddingTop(), ((ViewGroup.LayoutParams) layoutParams2).height));
            }
        }
        arrayList.clear();
    }

    public DayPickerViewPager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DayPickerViewPager(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public DayPickerViewPager(Context context) {
        this(context, null);
    }
}
