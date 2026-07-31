package com.takisoft.datetimepicker.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.fsck.k9.R;
import com.fsck.k9.activity.ChooseIdentity;
import com.takisoft.datetimepicker.widget.DatePickerCalendarDelegate;
import java.util.Calendar;
import java.util.Locale;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class YearPickerView extends ListView {
    public YearAdapter mAdapter;
    public int mChildSize;
    public DatePickerCalendarDelegate.AnonymousClass1 mOnYearSelectedListener;
    public int mViewSize;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class YearAdapter extends BaseAdapter {
        public int mActivatedYear;
        public int mCount;
        public final LayoutInflater mInflater;
        public int mMinYear;

        public YearAdapter(Context context) {
            this.mInflater = LayoutInflater.from(context);
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public final boolean areAllItemsEnabled() {
            return true;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.mCount;
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return Integer.valueOf(this.mMinYear + i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return this.mMinYear + i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            boolean z = view == null;
            TextView textView = z ? (TextView) this.mInflater.inflate(R.layout.year_label_text_view, viewGroup, false) : (TextView) view;
            int i2 = this.mMinYear + i;
            boolean z2 = this.mActivatedYear == i2;
            if (z || textView.isActivated() != z2) {
                textView.setTextAppearance(z2 ? R.style.TextAppearance_Material_DatePicker_List_YearLabel_Activated : R.style.TextAppearance_Material_DatePicker_List_YearLabel);
                textView.setActivated(z2);
            }
            textView.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i2)));
            return textView;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final boolean isEmpty() {
            return false;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public final boolean isEnabled(int i) {
            return true;
        }
    }

    public YearPickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, android.R.attr.listViewStyle);
    }

    public final void handleAttr(Context context) {
        setLayoutParams(new AbsListView.LayoutParams(-1, -2));
        Resources resources = context.getResources();
        this.mViewSize = resources.getDimensionPixelOffset(R.dimen.datepicker_view_animator_height);
        this.mChildSize = resources.getDimensionPixelOffset(R.dimen.datepicker_year_label_height);
        setOnItemClickListener(new ChooseIdentity.AnonymousClass1(5, this));
        YearAdapter yearAdapter = new YearAdapter(getContext());
        this.mAdapter = yearAdapter;
        setAdapter((ListAdapter) yearAdapter);
    }

    public final void setRange(Calendar calendar, Calendar calendar2) {
        YearAdapter yearAdapter = this.mAdapter;
        yearAdapter.getClass();
        int i = calendar.get(1);
        int i2 = (calendar2.get(1) - i) + 1;
        if (yearAdapter.mMinYear == i && yearAdapter.mCount == i2) {
            return;
        }
        yearAdapter.mMinYear = i;
        yearAdapter.mCount = i2;
        yearAdapter.notifyDataSetInvalidated();
    }

    public YearPickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        handleAttr(context);
    }

    public YearPickerView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        handleAttr(context);
    }
}
