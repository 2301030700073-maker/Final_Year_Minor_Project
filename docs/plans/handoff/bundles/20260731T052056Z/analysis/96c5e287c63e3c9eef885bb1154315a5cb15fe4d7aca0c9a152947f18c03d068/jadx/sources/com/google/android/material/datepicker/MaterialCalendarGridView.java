package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.core.util.Pair;
import androidx.core.view.ViewCompat;
import androidx.work.Operation$State;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.android.material.datepicker.MaterialCalendar;
import com.google.android.material.focus.FocusRingDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import org.wikipedia.R;
import org.wikipedia.databinding.FragmentNewsBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
final class MaterialCalendarGridView extends GridView {
    public final Calendar dayCompute;
    public final boolean nestedScrollable;
    public MaterialCalendar.AnonymousClass3 onMonthNavigationListener;

    public static void $r8$lambda$PqZsnkFZF7YntKmtXySyj_K1Prk(MaterialCalendarGridView materialCalendarGridView) {
        MonthAdapter monthAdapter = (MonthAdapter) super.getAdapter();
        Drawable selector = materialCalendarGridView.getSelector();
        if (selector instanceof FocusRingDrawable) {
            return;
        }
        Context context = materialCalendarGridView.getContext();
        ColorDrawable colorDrawable = FocusRingDrawable.EMPTY_DRAWABLE;
        if (Build.VERSION.SDK_INT >= 24 && Operation$State.resolveBoolean(context.getTheme(), R.attr.focusRingsEnabled, false)) {
            selector = new FocusRingDrawable(context, selector);
        }
        if (selector instanceof FocusRingDrawable) {
            FocusRingDrawable focusRingDrawable = (FocusRingDrawable) selector;
            FragmentNewsBinding fragmentNewsBinding = monthAdapter.calendarStyle;
            if (fragmentNewsBinding != null) {
                focusRingDrawable.state.ringShapeAppearance = (ShapeAppearanceModel) ((RulerTrackingMap) fragmentNewsBinding.rootView).newRulers;
            }
            materialCalendarGridView.setDrawSelectorOnTop(true);
            materialCalendarGridView.setSelector(focusRingDrawable);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.dayCompute = UtcDates.getUtcCalendarOf(null);
        if (MaterialDatePicker.readMaterialCalendarStyleBoolean(getContext(), android.R.attr.windowFullscreen)) {
            setNextFocusLeftId(R.id.cancel_button);
            setNextFocusRightId(R.id.confirm_button);
        }
        this.nestedScrollable = MaterialDatePicker.readMaterialCalendarStyleBoolean(getContext(), R.attr.nestedScrollable);
        ViewCompat.setAccessibilityDelegate(this, new TextInputLayout.AnonymousClass2(5));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.widget.GridView, android.widget.AdapterView
    public final ListAdapter getAdapter() {
        return (MonthAdapter) super.getAdapter();
    }

    public final View getChildAtPosition(int i) {
        return getChildAt(i - getFirstVisiblePosition());
    }

    public final boolean handleHorizontalNavigation(int i, boolean z) {
        MaterialCalendar.AnonymousClass3 anonymousClass3;
        MaterialCalendar.AnonymousClass3 anonymousClass32;
        int findNextValidDayPosition = z ? ((MonthAdapter) super.getAdapter()).findNextValidDayPosition(i) : ((MonthAdapter) super.getAdapter()).findPreviousValidDayPosition(i);
        if (findNextValidDayPosition != -1) {
            setSelection(findNextValidDayPosition);
            return true;
        }
        if (!z && (anonymousClass32 = this.onMonthNavigationListener) != null) {
            return MaterialCalendar.this.handleNavigateToMonthForKeyboard(false);
        }
        if (!z || (anonymousClass3 = this.onMonthNavigationListener) == null) {
            return true;
        }
        return MaterialCalendar.this.handleNavigateToMonthForKeyboard(true);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((MonthAdapter) super.getAdapter()).notifyDataSetChanged();
        post(new DateSelector$$ExternalSyntheticLambda1(this, 1));
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int firstPositionInMonth;
        int width;
        int firstPositionInMonth2;
        int width2;
        int i;
        int i2;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        MonthAdapter monthAdapter = (MonthAdapter) super.getAdapter();
        SingleDateSelector singleDateSelector = monthAdapter.dateSelector;
        int i3 = monthAdapter.month.daysInWeek;
        FragmentNewsBinding fragmentNewsBinding = monthAdapter.calendarStyle;
        int max = Math.max(monthAdapter.firstPositionInMonth(), materialCalendarGridView.getFirstVisiblePosition());
        int min = Math.min(monthAdapter.lastPositionInMonth(), materialCalendarGridView.getLastVisiblePosition());
        Long item = monthAdapter.getItem(max);
        Long item2 = monthAdapter.getItem(min);
        singleDateSelector.getClass();
        Iterator it = new ArrayList().iterator();
        while (it.hasNext()) {
            ((Pair) it.next()).getClass();
            Long l = (Long) 0;
            long longValue = l.longValue();
            Long l2 = (Long) (-16776961);
            long longValue2 = l2.longValue();
            if (item == null || item2 == null || l.longValue() > item2.longValue() || l2.longValue() < item.longValue()) {
                materialCalendarGridView = this;
                i3 = i3;
                it = it;
                monthAdapter = monthAdapter;
            } else {
                boolean z = materialCalendarGridView.getLayoutDirection() == 1;
                long longValue3 = item.longValue();
                Calendar calendar = materialCalendarGridView.dayCompute;
                if (longValue < longValue3) {
                    width = max % i3 == 0 ? 0 : !z ? materialCalendarGridView.getChildAtPosition(max - 1).getRight() : materialCalendarGridView.getChildAtPosition(max - 1).getLeft();
                    firstPositionInMonth = max;
                } else {
                    calendar.setTimeInMillis(longValue);
                    firstPositionInMonth = monthAdapter.firstPositionInMonth() + (calendar.get(5) - 1);
                    View childAtPosition = materialCalendarGridView.getChildAtPosition(firstPositionInMonth);
                    width = (childAtPosition.getWidth() / 2) + childAtPosition.getLeft();
                }
                if (longValue2 > item2.longValue()) {
                    width2 = (min + 1) % i3 == 0 ? materialCalendarGridView.getWidth() : !z ? materialCalendarGridView.getChildAtPosition(min).getRight() : materialCalendarGridView.getChildAtPosition(min).getLeft();
                    firstPositionInMonth2 = min;
                } else {
                    calendar.setTimeInMillis(longValue2);
                    firstPositionInMonth2 = monthAdapter.firstPositionInMonth() + (calendar.get(5) - 1);
                    View childAtPosition2 = materialCalendarGridView.getChildAtPosition(firstPositionInMonth2);
                    width2 = (childAtPosition2.getWidth() / 2) + childAtPosition2.getLeft();
                }
                int itemId = (int) monthAdapter.getItemId(firstPositionInMonth);
                Iterator it2 = it;
                int i4 = i3;
                int itemId2 = (int) monthAdapter.getItemId(firstPositionInMonth2);
                while (itemId <= itemId2) {
                    int numColumns = materialCalendarGridView.getNumColumns() * itemId;
                    MonthAdapter monthAdapter2 = monthAdapter;
                    int numColumns2 = (materialCalendarGridView.getNumColumns() + numColumns) - 1;
                    View childAtPosition3 = materialCalendarGridView.getChildAtPosition(numColumns);
                    int top = childAtPosition3.getTop() + ((Rect) ((RulerTrackingMap) fragmentNewsBinding.rootView).rulers).top;
                    int i5 = itemId2;
                    int bottom = childAtPosition3.getBottom() - ((Rect) ((RulerTrackingMap) fragmentNewsBinding.rootView).rulers).bottom;
                    if (z) {
                        int i6 = firstPositionInMonth2 > numColumns2 ? 0 : width2;
                        int width3 = numColumns > firstPositionInMonth ? getWidth() : width;
                        i = i6;
                        i2 = width3;
                    } else {
                        i = numColumns > firstPositionInMonth ? 0 : width;
                        i2 = firstPositionInMonth2 > numColumns2 ? getWidth() : width2;
                    }
                    canvas.drawRect(i, top, i2, bottom, (Paint) fragmentNewsBinding.toolbarContainer);
                    itemId++;
                    materialCalendarGridView = this;
                    monthAdapter = monthAdapter2;
                    itemId2 = i5;
                }
                materialCalendarGridView = this;
                i3 = i4;
                it = it2;
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        int findPreviousValidDayPosition;
        if (!z) {
            super.onFocusChanged(false, i, rect);
            return;
        }
        if (i == 33 || i == 1) {
            MonthAdapter monthAdapter = (MonthAdapter) super.getAdapter();
            findPreviousValidDayPosition = monthAdapter.findPreviousValidDayPosition(monthAdapter.lastPositionInMonth() + 1);
        } else if (i == 130 || i == 2) {
            MonthAdapter monthAdapter2 = (MonthAdapter) super.getAdapter();
            findPreviousValidDayPosition = monthAdapter2.findNextValidDayPosition(monthAdapter2.firstPositionInMonth() - 1);
        } else {
            findPreviousValidDayPosition = -1;
        }
        if (findPreviousValidDayPosition != -1) {
            setSelection(findPreviousValidDayPosition);
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        int selectedItemPosition = getSelectedItemPosition();
        if (selectedItemPosition == -1) {
            return super.onKeyDown(i, keyEvent);
        }
        boolean z = getLayoutDirection() == 1;
        if (i == 21) {
            return handleHorizontalNavigation(selectedItemPosition, z);
        }
        if (i == 22) {
            return handleHorizontalNavigation(selectedItemPosition, !z);
        }
        if (i == 61) {
            int findPreviousValidDayPosition = keyEvent.isShiftPressed() ? ((MonthAdapter) super.getAdapter()).findPreviousValidDayPosition(selectedItemPosition) : ((MonthAdapter) super.getAdapter()).findNextValidDayPosition(selectedItemPosition);
            if (findPreviousValidDayPosition == -1) {
                return false;
            }
            setSelection(findPreviousValidDayPosition);
            return true;
        }
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        MonthAdapter monthAdapter = (MonthAdapter) super.getAdapter();
        int selectedItemPosition2 = getSelectedItemPosition();
        if (selectedItemPosition2 == -1 || monthAdapter.isDayPositionValid(selectedItemPosition2)) {
            return true;
        }
        MonthAdapter monthAdapter2 = (MonthAdapter) super.getAdapter();
        if (!trySelectNearestValidDayPosition(selectedItemPosition2)) {
            if (19 != i) {
                if (i == 20) {
                    int numColumns = getNumColumns();
                    while (true) {
                        numColumns += selectedItemPosition2;
                        if (numColumns > monthAdapter2.lastPositionInMonth()) {
                            break;
                        }
                        if (trySelectNearestValidDayPosition(numColumns)) {
                            break;
                        }
                        selectedItemPosition2 = getNumColumns();
                    }
                }
                return false;
            }
            int numColumns2 = getNumColumns();
            while (true) {
                selectedItemPosition2 -= numColumns2;
                if (selectedItemPosition2 < monthAdapter2.firstPositionInMonth()) {
                    break;
                }
                if (trySelectNearestValidDayPosition(selectedItemPosition2)) {
                    break;
                }
                numColumns2 = getNumColumns();
            }
        }
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onMeasure(int i, int i2) {
        if (!this.nestedScrollable) {
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof MonthAdapter) {
            super.setAdapter(listAdapter);
        } else {
            ContextsKt$$ExternalSyntheticBUOutline0.m("%1$s must have its Adapter set to a %2$s", new Object[]{MaterialCalendarGridView.class.getCanonicalName(), MonthAdapter.class.getCanonicalName()});
        }
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final void setSelection(int i) {
        super.setSelection(Math.max(i, ((MonthAdapter) super.getAdapter()).findNextValidDayPosition(r0.firstPositionInMonth() - 1)));
    }

    public final boolean trySelectNearestValidDayPosition(int i) {
        MonthAdapter monthAdapter = (MonthAdapter) super.getAdapter();
        if (!monthAdapter.isDayPositionValid(i)) {
            long itemId = monthAdapter.getItemId(i);
            for (int i2 = 1; i2 < monthAdapter.month.daysInWeek; i2++) {
                int i3 = i + i2;
                if ((i3 < MonthAdapter.MAXIMUM_GRID_CELLS && monthAdapter.getItemId(i3) == itemId && monthAdapter.isDayPositionValid(i3)) || ((i3 = i - i2) >= 0 && monthAdapter.getItemId(i3) == itemId && monthAdapter.isDayPositionValid(i3))) {
                    i = i3;
                    break;
                }
            }
            i = -1;
        }
        if (i == -1) {
            return false;
        }
        setSelection(i);
        return true;
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    /* renamed from: getAdapter, reason: avoid collision after fix types in other method */
    public final ListAdapter getAdapter2() {
        return (MonthAdapter) super.getAdapter();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final ListAdapter getAdapter() {
        return (MonthAdapter) super.getAdapter();
    }
}
