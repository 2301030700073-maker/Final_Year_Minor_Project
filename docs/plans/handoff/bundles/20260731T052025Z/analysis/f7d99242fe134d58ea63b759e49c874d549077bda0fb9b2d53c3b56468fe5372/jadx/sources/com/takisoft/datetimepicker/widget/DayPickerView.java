package com.takisoft.datetimepicker.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.ImageButton;
import androidx.core.view.ViewCompat;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.preference.Preference;
import androidx.viewpager.widget.ViewPager;
import androidx.work.Data;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.takisoft.datetimepicker.R$styleable;
import com.takisoft.datetimepicker.widget.DayPickerPagerAdapter;
import java.util.Calendar;
import java.util.Locale;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class DayPickerView extends ViewGroup {
    public static final int[] ATTRS_TEXT_COLOR = {R.attr.textColor};
    public AccessibilityManager mAccessibilityManager;
    public DayPickerPagerAdapter mAdapter;
    public final Calendar mMaxDate;
    public final Calendar mMinDate;
    public ImageButton mNextButton;
    public final Preference.AnonymousClass1 mOnClickListener;
    public OnDaySelectedListener mOnDaySelectedListener;
    public final AnonymousClass1 mOnPageChangedListener;
    public ImageButton mPrevButton;
    public final Calendar mSelectedDay;
    public Calendar mTempCalendar;
    public ViewPager mViewPager;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.takisoft.datetimepicker.widget.DayPickerView$1, reason: invalid class name */
    public final class AnonymousClass1 implements ViewPager.OnPageChangeListener {
        public /* synthetic */ AnonymousClass1() {
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnDaySelectedListener {
        void onDaySelected(Calendar calendar);
    }

    public DayPickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSelectedDay = Calendar.getInstance();
        this.mMinDate = Calendar.getInstance();
        this.mMaxDate = Calendar.getInstance();
        this.mOnPageChangedListener = new AnonymousClass1();
        this.mOnClickListener = new Preference.AnonymousClass1(8, this);
        attrHandler(context, attributeSet, i, Data.Companion.isLightTheme(context) ? com.fsck.k9.R.style.Widget_Material_Light_CalendarView : com.fsck.k9.R.style.Widget_Material_CalendarView);
    }

    public final void attrHandler(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mAccessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CalendarView, i, i2);
        int i3 = obtainStyledAttributes.getInt(5, Calendar.getInstance(Locale.getDefault()).getFirstDayOfWeek());
        String string = obtainStyledAttributes.getString(7);
        String string2 = obtainStyledAttributes.getString(6);
        int resourceId = obtainStyledAttributes.getResourceId(4, com.fsck.k9.R.style.TextAppearance_Material_Widget_Calendar_Month);
        int resourceId2 = obtainStyledAttributes.getResourceId(8, com.fsck.k9.R.style.TextAppearance_Material_Widget_Calendar_DayOfWeek);
        int resourceId3 = obtainStyledAttributes.getResourceId(0, com.fsck.k9.R.style.TextAppearance_Material_Widget_Calendar_Day);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(3);
        ColorStateList colorStateList2 = obtainStyledAttributes.getColorStateList(2);
        obtainStyledAttributes.recycle();
        DayPickerPagerAdapter dayPickerPagerAdapter = new DayPickerPagerAdapter(context);
        this.mAdapter = dayPickerPagerAdapter;
        dayPickerPagerAdapter.mMonthTextAppearance = resourceId;
        dayPickerPagerAdapter.notifyDataSetChanged();
        DayPickerPagerAdapter dayPickerPagerAdapter2 = this.mAdapter;
        dayPickerPagerAdapter2.mDayOfWeekTextAppearance = resourceId2;
        dayPickerPagerAdapter2.notifyDataSetChanged();
        DayPickerPagerAdapter dayPickerPagerAdapter3 = this.mAdapter;
        dayPickerPagerAdapter3.mDayTextAppearance = resourceId3;
        dayPickerPagerAdapter3.notifyDataSetChanged();
        DayPickerPagerAdapter dayPickerPagerAdapter4 = this.mAdapter;
        dayPickerPagerAdapter4.mDaySelectorColor = colorStateList;
        dayPickerPagerAdapter4.notifyDataSetChanged();
        DayPickerPagerAdapter dayPickerPagerAdapter5 = this.mAdapter;
        dayPickerPagerAdapter5.mDayHighlightColor = colorStateList2;
        dayPickerPagerAdapter5.notifyDataSetChanged();
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(com.fsck.k9.R.layout.day_picker_content_material, (ViewGroup) this, false);
        while (viewGroup.getChildCount() > 0) {
            View childAt = viewGroup.getChildAt(0);
            viewGroup.removeViewAt(0);
            addView(childAt);
        }
        ImageButton imageButton = (ImageButton) findViewById(com.fsck.k9.R.id.prev);
        this.mPrevButton = imageButton;
        Preference.AnonymousClass1 anonymousClass1 = this.mOnClickListener;
        imageButton.setOnClickListener(anonymousClass1);
        ImageButton imageButton2 = this.mPrevButton;
        Context context2 = getContext();
        Drawable drawable = Utf8.SafeProcessor.getDrawable(getContext(), com.fsck.k9.R.drawable.ic_chevron_start);
        Data.Companion.tintDrawable(context2, drawable);
        imageButton2.setImageDrawable(drawable);
        ImageButton imageButton3 = (ImageButton) findViewById(com.fsck.k9.R.id.next);
        this.mNextButton = imageButton3;
        imageButton3.setOnClickListener(anonymousClass1);
        ImageButton imageButton4 = this.mNextButton;
        Context context3 = getContext();
        Drawable drawable2 = Utf8.SafeProcessor.getDrawable(getContext(), com.fsck.k9.R.drawable.ic_chevron_end);
        Data.Companion.tintDrawable(context3, drawable2);
        imageButton4.setImageDrawable(drawable2);
        ViewPager viewPager = (ViewPager) findViewById(com.fsck.k9.R.id.day_picker_view_pager);
        this.mViewPager = viewPager;
        viewPager.setAdapter(this.mAdapter);
        this.mViewPager.setOnPageChangeListener(this.mOnPageChangedListener);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(null, ATTRS_TEXT_COLOR, 0, resourceId);
            ColorStateList colorStateList3 = obtainStyledAttributes2.getColorStateList(0);
            if (colorStateList3 != null) {
                this.mPrevButton.setImageTintList(colorStateList3);
                this.mNextButton.setImageTintList(colorStateList3);
            }
            obtainStyledAttributes2.recycle();
        }
        Calendar calendar = Calendar.getInstance();
        if (!CalendarView.parseDate(string, calendar)) {
            calendar.set(1900, 0, 1);
        }
        long timeInMillis = calendar.getTimeInMillis();
        if (!CalendarView.parseDate(string2, calendar)) {
            calendar.set(2100, 11, 31);
        }
        long timeInMillis2 = calendar.getTimeInMillis();
        if (timeInMillis2 < timeInMillis) {
            UriKt$$ExternalSyntheticBUOutline0.m("maxDate must be >= minDate");
            return;
        }
        long max = Math.max(Math.min(System.currentTimeMillis(), timeInMillis2), timeInMillis);
        setFirstDayOfWeek(i3);
        this.mMinDate.setTimeInMillis(timeInMillis);
        onRangeChanged();
        this.mMaxDate.setTimeInMillis(timeInMillis2);
        onRangeChanged();
        setDate(max, false, true);
        this.mAdapter.mOnDaySelectedListener = new AnonymousClass1();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ImageButton imageButton;
        ImageButton imageButton2;
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        if (getLayoutDirection() == 1) {
            imageButton = this.mNextButton;
            imageButton2 = this.mPrevButton;
        } else {
            imageButton = this.mPrevButton;
            imageButton2 = this.mNextButton;
        }
        int i5 = i3 - i;
        this.mViewPager.layout(0, 0, i5, i4 - i2);
        SimpleMonthView simpleMonthView = (SimpleMonthView) this.mViewPager.getChildAt(0);
        int i6 = simpleMonthView.mMonthHeight;
        int i7 = simpleMonthView.mCellWidth;
        int measuredWidth = imageButton.getMeasuredWidth();
        int measuredHeight = imageButton.getMeasuredHeight();
        int paddingTop = ((i6 - measuredHeight) / 2) + simpleMonthView.getPaddingTop();
        int paddingLeft = ((i7 - measuredWidth) / 2) + simpleMonthView.getPaddingLeft();
        imageButton.layout(paddingLeft, paddingTop, measuredWidth + paddingLeft, measuredHeight + paddingTop);
        int measuredWidth2 = imageButton2.getMeasuredWidth();
        int measuredHeight2 = imageButton2.getMeasuredHeight();
        int paddingTop2 = ((i6 - measuredHeight2) / 2) + simpleMonthView.getPaddingTop();
        int paddingRight = (i5 - simpleMonthView.getPaddingRight()) - ((i7 - measuredWidth2) / 2);
        imageButton2.layout(paddingRight - measuredWidth2, paddingTop2, paddingRight, measuredHeight2 + paddingTop2);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        ViewPager viewPager = this.mViewPager;
        measureChild(viewPager, i, i2);
        setMeasuredDimension(viewPager.getMeasuredWidthAndState(), viewPager.getMeasuredHeightAndState());
        int measuredWidth = viewPager.getMeasuredWidth();
        int measuredHeight = viewPager.getMeasuredHeight();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, Integer.MIN_VALUE);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, Integer.MIN_VALUE);
        this.mPrevButton.measure(makeMeasureSpec, makeMeasureSpec2);
        this.mNextButton.measure(makeMeasureSpec, makeMeasureSpec2);
    }

    public final void onRangeChanged() {
        DayPickerPagerAdapter dayPickerPagerAdapter = this.mAdapter;
        Calendar calendar = dayPickerPagerAdapter.mMinDate;
        calendar.setTimeInMillis(this.mMinDate.getTimeInMillis());
        Calendar calendar2 = dayPickerPagerAdapter.mMaxDate;
        calendar2.setTimeInMillis(this.mMaxDate.getTimeInMillis());
        dayPickerPagerAdapter.mCount = ((calendar2.get(1) - calendar.get(1)) * 12) + (calendar2.get(2) - calendar.get(2)) + 1;
        dayPickerPagerAdapter.notifyDataSetChanged();
        setDate(this.mSelectedDay.getTimeInMillis(), false, false);
        updateButtonVisibility(this.mViewPager.getCurrentItem());
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        requestLayout();
    }

    public final void setDate(long j, boolean z, boolean z2) {
        if (z2) {
            this.mSelectedDay.setTimeInMillis(j);
        }
        Calendar calendar = this.mMaxDate;
        int i = calendar.get(1);
        Calendar calendar2 = this.mMinDate;
        int i2 = ((i - calendar2.get(1)) * 12) + (calendar.get(2) - calendar2.get(2));
        if (this.mTempCalendar == null) {
            this.mTempCalendar = Calendar.getInstance();
        }
        this.mTempCalendar.setTimeInMillis(j);
        Calendar calendar3 = this.mTempCalendar;
        int max = Math.max(Math.min(((calendar3.get(1) - calendar2.get(1)) * 12) + (calendar3.get(2) - calendar2.get(2)), i2), 0);
        if (max != this.mViewPager.getCurrentItem()) {
            ViewPager viewPager = this.mViewPager;
            viewPager.mPopulatePending = false;
            viewPager.setCurrentItemInternal(max, 0, z, false);
        }
        this.mTempCalendar.setTimeInMillis(j);
        this.mAdapter.setSelectedDay(this.mTempCalendar);
    }

    public final void setFirstDayOfWeek(int i) {
        DayPickerPagerAdapter dayPickerPagerAdapter = this.mAdapter;
        dayPickerPagerAdapter.mFirstDayOfWeek = i;
        SparseArray sparseArray = dayPickerPagerAdapter.mItems;
        int size = sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            SimpleMonthView simpleMonthView = ((DayPickerPagerAdapter.ViewHolder) sparseArray.valueAt(i2)).calendar;
            if (i < 1 || i > 7) {
                simpleMonthView.mWeekStart = simpleMonthView.mCalendar.getFirstDayOfWeek();
            } else {
                simpleMonthView.mWeekStart = i;
            }
            simpleMonthView.updateDayOfWeekLabels();
            simpleMonthView.mTouchHelper.invalidateRoot();
            simpleMonthView.invalidate();
        }
    }

    public final void updateButtonVisibility(int i) {
        boolean z = i > 0;
        boolean z2 = i < this.mAdapter.mCount - 1;
        this.mPrevButton.setVisibility(z ? 0 : 4);
        this.mNextButton.setVisibility(z2 ? 0 : 4);
    }

    public DayPickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.fsck.k9.R.attr.calendarViewStyle);
    }

    public DayPickerView(Context context) {
        this(context, null);
    }

    public DayPickerView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mSelectedDay = Calendar.getInstance();
        this.mMinDate = Calendar.getInstance();
        this.mMaxDate = Calendar.getInstance();
        this.mOnPageChangedListener = new AnonymousClass1();
        this.mOnClickListener = new Preference.AnonymousClass1(8, this);
        attrHandler(context, attributeSet, i, i2);
    }
}
