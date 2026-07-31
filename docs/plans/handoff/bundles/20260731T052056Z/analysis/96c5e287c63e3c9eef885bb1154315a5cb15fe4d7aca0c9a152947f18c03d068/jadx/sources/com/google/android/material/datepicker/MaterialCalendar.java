package com.google.android.material.datepicker;

import android.R;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.core.provider.CallbackWrapper$2;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroupAdapter;
import androidx.preference.PreferenceRecyclerViewAccessibilityDelegate;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import coil3.Extras;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.google.android.material.datepicker.MaterialDatePicker;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.NavigationMenuItemView;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.WeakHashMap;
import kotlin.text.RegexKt;
import org.wikipedia.databinding.FragmentNewsBinding;
import org.wikipedia.games.onthisday.DateDecorator;
import org.wikipedia.language.LanguageUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MaterialCalendar<S> extends PickerFragment {
    public AccessibilityManager accessibilityManager;
    public CalendarConstraints calendarConstraints;
    public CalendarSelector calendarSelector;
    public FragmentNewsBinding calendarStyle;
    public Month current;
    public SingleDateSelector dateSelector;
    public View dayFrame;
    public DateDecorator dayViewDecorator;
    public boolean isFullscreen;
    public MaterialButton monthDropSelect;
    public View monthNext;
    public View monthPrev;
    public PagerSnapHelper pagerSnapHelper;
    public RecyclerView recyclerView;
    public int themeResId;
    public View yearFrame;
    public RecyclerView yearSelector;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$3, reason: invalid class name */
    public final class AnonymousClass3 {
        public /* synthetic */ AnonymousClass3() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CalendarSelector {
        private static final /* synthetic */ CalendarSelector[] $VALUES;
        public static final CalendarSelector DAY;
        public static final CalendarSelector YEAR;

        static {
            CalendarSelector calendarSelector = new CalendarSelector("DAY", 0);
            DAY = calendarSelector;
            CalendarSelector calendarSelector2 = new CalendarSelector("YEAR", 1);
            YEAR = calendarSelector2;
            $VALUES = new CalendarSelector[]{calendarSelector, calendarSelector2};
        }

        public static CalendarSelector valueOf(String str) {
            return (CalendarSelector) Enum.valueOf(CalendarSelector.class, str);
        }

        public static CalendarSelector[] values() {
            return (CalendarSelector[]) $VALUES.clone();
        }
    }

    @Override // com.google.android.material.datepicker.PickerFragment
    public final void addOnSelectionChangedListener(MaterialDatePicker.AnonymousClass2 anonymousClass2) {
        this.onSelectionChangedListeners.add(anonymousClass2);
    }

    public final boolean handleNavigateToMonthForKeyboard(boolean z) {
        Month month;
        if (this.isFullscreen) {
            return false;
        }
        if (this.recyclerView.getScrollState() != 0) {
            return true;
        }
        MonthsPagerAdapter monthsPagerAdapter = (MonthsPagerAdapter) this.recyclerView.getAdapter();
        if (monthsPagerAdapter == null || (month = this.current) == null) {
            return false;
        }
        int position = monthsPagerAdapter.getPosition(month) + (z ? 1 : -1);
        if (position < 0 || position >= monthsPagerAdapter.calendarConstraints.monthSpan) {
            return false;
        }
        monthsPagerAdapter.keyboardFocusDirection = z ? 2 : 1;
        setCurrentMonth(monthsPagerAdapter.getPageMonth(position));
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = this.mArguments;
        }
        this.themeResId = bundle.getInt("THEME_RES_ID_KEY");
        this.dateSelector = (SingleDateSelector) bundle.getParcelable("GRID_SELECTOR_KEY");
        this.calendarConstraints = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.dayViewDecorator = (DateDecorator) bundle.getParcelable("DAY_VIEW_DECORATOR_KEY");
        this.current = (Month) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        final int i2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.themeResId);
        this.calendarStyle = new FragmentNewsBinding(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        this.accessibilityManager = (AccessibilityManager) requireContext().getSystemService("accessibility");
        Month month = this.calendarConstraints.start;
        boolean readMaterialCalendarStyleBoolean = MaterialDatePicker.readMaterialCalendarStyleBoolean(contextThemeWrapper, R.attr.windowFullscreen);
        this.isFullscreen = readMaterialCalendarStyleBoolean;
        final int i3 = 0;
        final int i4 = 1;
        if (readMaterialCalendarStyleBoolean) {
            i = org.wikipedia.R.layout.mtrl_calendar_vertical;
            i2 = 1;
        } else {
            i = org.wikipedia.R.layout.mtrl_calendar_horizontal;
            i2 = 0;
        }
        View inflate = cloneInContext.inflate(i, viewGroup, false);
        Resources resources = requireContext().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(org.wikipedia.R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelOffset(org.wikipedia.R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelSize(org.wikipedia.R.dimen.mtrl_calendar_navigation_height);
        int dimensionPixelSize = resources.getDimensionPixelSize(org.wikipedia.R.dimen.mtrl_calendar_days_of_week_height);
        int i5 = MonthAdapter.MAXIMUM_WEEKS;
        inflate.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(org.wikipedia.R.dimen.mtrl_calendar_month_vertical_padding) * (i5 - 1)) + (resources.getDimensionPixelSize(org.wikipedia.R.dimen.mtrl_calendar_day_height) * i5) + resources.getDimensionPixelOffset(org.wikipedia.R.dimen.mtrl_calendar_bottom_padding));
        GridView gridView = (GridView) inflate.findViewById(org.wikipedia.R.id.mtrl_calendar_days_of_week);
        ViewCompat.setAccessibilityDelegate(gridView, new TextInputLayout.AnonymousClass2(3));
        int i6 = this.calendarConstraints.firstDayOfWeek;
        gridView.setAdapter((ListAdapter) (i6 > 0 ? new DaysOfWeekAdapter(i6) : new DaysOfWeekAdapter()));
        gridView.setNumColumns(month.daysInWeek);
        gridView.setEnabled(false);
        this.recyclerView = (RecyclerView) inflate.findViewById(org.wikipedia.R.id.mtrl_calendar_months);
        this.recyclerView.setLayoutManager(new LinearLayoutManager(i2) { // from class: com.google.android.material.datepicker.MaterialCalendar.2
            @Override // androidx.recyclerview.widget.LinearLayoutManager
            public final void calculateExtraLayoutSpace(RecyclerView.State state, int[] iArr) {
                MaterialCalendar materialCalendar = MaterialCalendar.this;
                RecyclerView recyclerView = materialCalendar.recyclerView;
                if (i2 == 0) {
                    iArr[0] = recyclerView.getWidth();
                    iArr[1] = materialCalendar.recyclerView.getWidth();
                } else {
                    iArr[0] = recyclerView.getHeight();
                    iArr[1] = materialCalendar.recyclerView.getHeight();
                }
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public final void smoothScrollToPosition(RecyclerView recyclerView, int i7) {
                CarouselLayoutManager.AnonymousClass1 anonymousClass1 = new CarouselLayoutManager.AnonymousClass1(recyclerView.getContext());
                anonymousClass1.mTargetPosition = i7;
                startSmoothScroll(anonymousClass1);
            }
        });
        this.recyclerView.setTag("MONTHS_VIEW_GROUP_TAG");
        final MonthsPagerAdapter monthsPagerAdapter = new MonthsPagerAdapter(contextThemeWrapper, this.dateSelector, this.calendarConstraints, this.dayViewDecorator, new AnonymousClass3(), new AnonymousClass3());
        this.recyclerView.setAdapter(monthsPagerAdapter);
        int integer = contextThemeWrapper.getResources().getInteger(org.wikipedia.R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(org.wikipedia.R.id.mtrl_calendar_year_selector_frame);
        this.yearSelector = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.yearSelector.setLayoutManager(new GridLayoutManager(integer, 0));
            this.yearSelector.setAdapter(new YearGridAdapter(this));
            this.yearSelector.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.google.android.material.datepicker.MaterialCalendar.6
                public final Calendar startItem = UtcDates.getUtcCalendarOf(null);
                public final Calendar endItem = UtcDates.getUtcCalendarOf(null);

                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public final void onDraw(Canvas canvas, RecyclerView recyclerView2, RecyclerView.State state) {
                    if ((recyclerView2.getAdapter() instanceof YearGridAdapter) && (recyclerView2.getLayoutManager() instanceof GridLayoutManager)) {
                        YearGridAdapter yearGridAdapter = (YearGridAdapter) recyclerView2.getAdapter();
                        GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView2.getLayoutManager();
                        MaterialCalendar materialCalendar = MaterialCalendar.this;
                        materialCalendar.dateSelector.getClass();
                        Iterator it = new ArrayList().iterator();
                        while (it.hasNext()) {
                            ((Pair) it.next()).getClass();
                            long longValue = ((Long) 0).longValue();
                            Calendar calendar = this.startItem;
                            calendar.setTimeInMillis(longValue);
                            long longValue2 = ((Long) (-16776961)).longValue();
                            Calendar calendar2 = this.endItem;
                            calendar2.setTimeInMillis(longValue2);
                            int i7 = calendar.get(1) - yearGridAdapter.materialCalendar.calendarConstraints.start.year;
                            int i8 = calendar2.get(1) - yearGridAdapter.materialCalendar.calendarConstraints.start.year;
                            View findViewByPosition = gridLayoutManager.findViewByPosition(i7);
                            View findViewByPosition2 = gridLayoutManager.findViewByPosition(i8);
                            int i9 = gridLayoutManager.mSpanCount;
                            int i10 = i7 / i9;
                            int i11 = i8 / i9;
                            for (int i12 = i10; i12 <= i11; i12++) {
                                View findViewByPosition3 = gridLayoutManager.findViewByPosition(gridLayoutManager.mSpanCount * i12);
                                if (findViewByPosition3 != null) {
                                    int top = findViewByPosition3.getTop() + ((Rect) ((RulerTrackingMap) materialCalendar.calendarStyle.headerImageView).rulers).top;
                                    int bottom = findViewByPosition3.getBottom() - ((Rect) ((RulerTrackingMap) materialCalendar.calendarStyle.headerImageView).rulers).bottom;
                                    canvas.drawRect((i12 != i10 || findViewByPosition == null) ? 0 : (findViewByPosition.getWidth() / 2) + findViewByPosition.getLeft(), top, (i12 != i11 || findViewByPosition2 == null) ? recyclerView2.getWidth() : (findViewByPosition2.getWidth() / 2) + findViewByPosition2.getLeft(), bottom, (Paint) materialCalendar.calendarStyle.toolbarContainer);
                                }
                            }
                        }
                    }
                }
            });
        }
        if (!this.isFullscreen) {
            PagerSnapHelper pagerSnapHelper = new PagerSnapHelper();
            this.pagerSnapHelper = pagerSnapHelper;
            pagerSnapHelper.attachToRecyclerView(this.recyclerView);
        }
        if (inflate.findViewById(org.wikipedia.R.id.month_navigation_fragment_toggle) != null) {
            MaterialButton materialButton = (MaterialButton) inflate.findViewById(org.wikipedia.R.id.month_navigation_fragment_toggle);
            this.monthDropSelect = materialButton;
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            ViewCompat.setAccessibilityDelegate(this.monthDropSelect, new AnonymousClass7(i3, this));
            View findViewById = inflate.findViewById(org.wikipedia.R.id.month_navigation_previous);
            this.monthPrev = findViewById;
            findViewById.setTag("NAVIGATION_PREV_TAG");
            RegexKt.setTooltipText(this.monthPrev, getString(org.wikipedia.R.string.mtrl_picker_prev_month_tooltip));
            View findViewById2 = inflate.findViewById(org.wikipedia.R.id.month_navigation_next);
            this.monthNext = findViewById2;
            findViewById2.setTag("NAVIGATION_NEXT_TAG");
            RegexKt.setTooltipText(this.monthNext, getString(org.wikipedia.R.string.mtrl_picker_next_month_tooltip));
            this.yearFrame = inflate.findViewById(org.wikipedia.R.id.mtrl_calendar_year_selector_frame);
            this.dayFrame = inflate.findViewById(org.wikipedia.R.id.mtrl_calendar_day_selector_frame);
            setSelector(CalendarSelector.DAY);
            MaterialButton materialButton2 = this.monthDropSelect;
            Month month2 = this.current;
            String str = month2.longName;
            if (str == null) {
                str = LanguageUtil.getYearMonth(month2.firstOfMonth.getTimeInMillis());
                month2.longName = str;
            }
            materialButton2.setText(str);
            this.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.8
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public final void onScrollStateChanged(RecyclerView recyclerView2, int i7) {
                    MaterialCalendar materialCalendar;
                    PagerSnapHelper pagerSnapHelper2;
                    if (i7 != 0 || (pagerSnapHelper2 = (materialCalendar = MaterialCalendar.this).pagerSnapHelper) == null) {
                        return;
                    }
                    View findSnapView = pagerSnapHelper2.findSnapView((LinearLayoutManager) materialCalendar.recyclerView.getLayoutManager());
                    if (findSnapView != null) {
                        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(findSnapView);
                        int absoluteAdapterPosition = childViewHolderInt != null ? childViewHolderInt.getAbsoluteAdapterPosition() : -1;
                        if (absoluteAdapterPosition != -1) {
                            MonthsPagerAdapter monthsPagerAdapter2 = monthsPagerAdapter;
                            materialCalendar.current = monthsPagerAdapter2.getPageMonth(absoluteAdapterPosition);
                            MaterialButton materialButton3 = materialCalendar.monthDropSelect;
                            Month pageMonth = monthsPagerAdapter2.getPageMonth(absoluteAdapterPosition);
                            String str2 = pageMonth.longName;
                            if (str2 == null) {
                                str2 = LanguageUtil.getYearMonth(pageMonth.firstOfMonth.getTimeInMillis());
                                pageMonth.longName = str2;
                            }
                            materialButton3.setText(str2);
                            materialCalendar.updateNavigationButtonsEnabled(absoluteAdapterPosition);
                        }
                    }
                    materialCalendar.updateCurrentVisibleMonth();
                }

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public final void onScrolled(RecyclerView recyclerView2, int i7, int i8) {
                    MaterialCalendar materialCalendar = MaterialCalendar.this;
                    RecyclerView recyclerView3 = materialCalendar.recyclerView;
                    int findFirstVisibleItemPosition = i7 < 0 ? ((LinearLayoutManager) recyclerView3.getLayoutManager()).findFirstVisibleItemPosition() : ((LinearLayoutManager) recyclerView3.getLayoutManager()).findLastVisibleItemPosition();
                    PagerSnapHelper pagerSnapHelper2 = materialCalendar.pagerSnapHelper;
                    MonthsPagerAdapter monthsPagerAdapter2 = monthsPagerAdapter;
                    if (pagerSnapHelper2 == null) {
                        materialCalendar.current = monthsPagerAdapter2.getPageMonth(findFirstVisibleItemPosition);
                    }
                    MaterialButton materialButton3 = materialCalendar.monthDropSelect;
                    Month pageMonth = monthsPagerAdapter2.getPageMonth(findFirstVisibleItemPosition);
                    String str2 = pageMonth.longName;
                    if (str2 == null) {
                        str2 = LanguageUtil.getYearMonth(pageMonth.firstOfMonth.getTimeInMillis());
                        pageMonth.longName = str2;
                    }
                    materialButton3.setText(str2);
                    materialCalendar.updateNavigationButtonsEnabled(findFirstVisibleItemPosition);
                }
            });
            this.monthDropSelect.setOnClickListener(new Preference.AnonymousClass1(6, this));
            this.monthNext.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.material.datepicker.MaterialCalendar.10
                public final /* synthetic */ MaterialCalendar this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i7 = i3;
                    MonthsPagerAdapter monthsPagerAdapter2 = monthsPagerAdapter;
                    MaterialCalendar materialCalendar = this.this$0;
                    switch (i7) {
                        case 0:
                            int findFirstVisibleItemPosition = ((LinearLayoutManager) materialCalendar.recyclerView.getLayoutManager()).findFirstVisibleItemPosition();
                            monthsPagerAdapter2.keyboardFocusDirection = 2;
                            materialCalendar.setCurrentMonth(monthsPagerAdapter2.getPageMonth(findFirstVisibleItemPosition + 1));
                            break;
                        default:
                            int findLastVisibleItemPosition = ((LinearLayoutManager) materialCalendar.recyclerView.getLayoutManager()).findLastVisibleItemPosition();
                            monthsPagerAdapter2.keyboardFocusDirection = 1;
                            materialCalendar.setCurrentMonth(monthsPagerAdapter2.getPageMonth(findLastVisibleItemPosition - 1));
                            break;
                    }
                }
            });
            this.monthPrev.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.material.datepicker.MaterialCalendar.10
                public final /* synthetic */ MaterialCalendar this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i7 = i4;
                    MonthsPagerAdapter monthsPagerAdapter2 = monthsPagerAdapter;
                    MaterialCalendar materialCalendar = this.this$0;
                    switch (i7) {
                        case 0:
                            int findFirstVisibleItemPosition = ((LinearLayoutManager) materialCalendar.recyclerView.getLayoutManager()).findFirstVisibleItemPosition();
                            monthsPagerAdapter2.keyboardFocusDirection = 2;
                            materialCalendar.setCurrentMonth(monthsPagerAdapter2.getPageMonth(findFirstVisibleItemPosition + 1));
                            break;
                        default:
                            int findLastVisibleItemPosition = ((LinearLayoutManager) materialCalendar.recyclerView.getLayoutManager()).findLastVisibleItemPosition();
                            monthsPagerAdapter2.keyboardFocusDirection = 1;
                            materialCalendar.setCurrentMonth(monthsPagerAdapter2.getPageMonth(findLastVisibleItemPosition - 1));
                            break;
                    }
                }
            });
            updateNavigationButtonsEnabled(monthsPagerAdapter.getPosition(this.current));
        }
        this.recyclerView.scrollToPosition(monthsPagerAdapter.getPosition(this.current));
        ViewCompat.setAccessibilityDelegate(this.recyclerView, new TextInputLayout.AnonymousClass2(4));
        updateAccessibilityPaneTitle(inflate);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("THEME_RES_ID_KEY", this.themeResId);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.calendarConstraints);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", this.dayViewDecorator);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.current);
    }

    public final void setCurrentMonth(Month month) {
        MonthsPagerAdapter monthsPagerAdapter = (MonthsPagerAdapter) this.recyclerView.getAdapter();
        int position = monthsPagerAdapter.getPosition(month);
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            int position2 = position - monthsPagerAdapter.getPosition(this.current);
            int i = 3;
            boolean z = Math.abs(position2) > 3;
            boolean z2 = position2 > 0;
            this.current = month;
            if (z && z2) {
                this.recyclerView.scrollToPosition(position - 3);
                this.recyclerView.post(new CallbackWrapper$2(position, i, this));
            } else {
                RecyclerView recyclerView = this.recyclerView;
                if (z) {
                    recyclerView.scrollToPosition(position + 3);
                    this.recyclerView.post(new CallbackWrapper$2(position, i, this));
                } else {
                    recyclerView.post(new CallbackWrapper$2(position, i, this));
                }
            }
        } else {
            this.current = month;
            this.recyclerView.scrollToPosition(position);
        }
        updateCurrentVisibleMonth();
        updateNavigationButtonsEnabled(position);
    }

    public final void setSelector(CalendarSelector calendarSelector) {
        this.calendarSelector = calendarSelector;
        if (calendarSelector == CalendarSelector.YEAR) {
            this.yearSelector.getLayoutManager().scrollToPosition(this.current.year - ((YearGridAdapter) this.yearSelector.getAdapter()).materialCalendar.calendarConstraints.start.year);
            this.yearFrame.setVisibility(0);
            this.dayFrame.setVisibility(8);
            this.monthPrev.setVisibility(8);
            this.monthNext.setVisibility(8);
            return;
        }
        if (calendarSelector == CalendarSelector.DAY) {
            this.yearFrame.setVisibility(8);
            this.dayFrame.setVisibility(0);
            this.monthPrev.setVisibility(0);
            this.monthNext.setVisibility(0);
            setCurrentMonth(this.current);
        }
    }

    public final void updateAccessibilityPaneTitle(View view) {
        if (view == null) {
            return;
        }
        CalendarSelector calendarSelector = this.calendarSelector;
        if (calendarSelector == CalendarSelector.YEAR) {
            ViewCompat.setAccessibilityPaneTitle(view, getString(org.wikipedia.R.string.mtrl_picker_pane_title_year_view));
        } else if (calendarSelector == CalendarSelector.DAY) {
            ViewCompat.setAccessibilityPaneTitle(view, getString(org.wikipedia.R.string.mtrl_picker_pane_title_calendar_view));
        }
    }

    public final void updateCurrentVisibleMonth() {
        Month month;
        MonthsPagerAdapter monthsPagerAdapter = (MonthsPagerAdapter) this.recyclerView.getAdapter();
        if (monthsPagerAdapter == null || this.isFullscreen || (month = this.current) == null || month.equals(monthsPagerAdapter.visibleMonth)) {
            return;
        }
        int position = monthsPagerAdapter.getPosition(monthsPagerAdapter.visibleMonth);
        monthsPagerAdapter.visibleMonth = month;
        int position2 = monthsPagerAdapter.getPosition(month);
        monthsPagerAdapter.notifyItemChanged(position);
        monthsPagerAdapter.notifyItemChanged(position2);
    }

    public final void updateNavigationButtonsEnabled(int i) {
        View view = this.monthNext;
        if (view != null) {
            view.setEnabled(i + 1 < this.recyclerView.getAdapter().getItemCount());
        }
        View view2 = this.monthPrev;
        if (view2 != null) {
            view2.setEnabled(i - 1 >= 0);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$7, reason: invalid class name */
    public final class AnonymousClass7 extends AccessibilityDelegateCompat {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public AnonymousClass7(DrawerLayout drawerLayout) {
            this.$r8$classId = 1;
            this.this$0 = drawerLayout;
            new Rect();
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            switch (this.$r8$classId) {
                case 1:
                    DrawerLayout drawerLayout = (DrawerLayout) this.this$0;
                    if (accessibilityEvent.getEventType() != 32) {
                        return this.mOriginalDelegate.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
                    }
                    accessibilityEvent.getText();
                    View findVisibleDrawer = drawerLayout.findVisibleDrawer();
                    if (findVisibleDrawer != null) {
                        int drawerViewAbsoluteGravity = drawerLayout.getDrawerViewAbsoluteGravity(findVisibleDrawer);
                        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                        Gravity.getAbsoluteGravity(drawerViewAbsoluteGravity, drawerLayout.getLayoutDirection());
                    }
                    return true;
                default:
                    return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            switch (this.$r8$classId) {
                case 1:
                    super.onInitializeAccessibilityEvent(view, accessibilityEvent);
                    accessibilityEvent.setClassName("androidx.drawerlayout.widget.DrawerLayout");
                    break;
                case 5:
                    super.onInitializeAccessibilityEvent(view, accessibilityEvent);
                    accessibilityEvent.setChecked(((CheckableImageButton) this.this$0).checked);
                    break;
                default:
                    super.onInitializeAccessibilityEvent(view, accessibilityEvent);
                    break;
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            View.AccessibilityDelegate accessibilityDelegate = this.mOriginalDelegate;
            switch (i) {
                case 0:
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.mInfo);
                    MaterialCalendar materialCalendar = (MaterialCalendar) obj;
                    accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, materialCalendar.dayFrame.getVisibility() == 0 ? materialCalendar.getString(org.wikipedia.R.string.mtrl_picker_toggle_to_year_selection) : materialCalendar.getString(org.wikipedia.R.string.mtrl_picker_toggle_to_day_selection)));
                    break;
                case 1:
                    int[] iArr = DrawerLayout.THEME_ATTRS;
                    AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.mInfo;
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                    accessibilityNodeInfoCompat.setClassName("androidx.drawerlayout.widget.DrawerLayout");
                    accessibilityNodeInfo.setFocusable(false);
                    accessibilityNodeInfo.setFocused(false);
                    accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_FOCUS.mAction);
                    accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLEAR_FOCUS.mAction);
                    break;
                case 2:
                    PreferenceRecyclerViewAccessibilityDelegate preferenceRecyclerViewAccessibilityDelegate = (PreferenceRecyclerViewAccessibilityDelegate) obj;
                    preferenceRecyclerViewAccessibilityDelegate.mDefaultItemDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                    RecyclerView recyclerView = preferenceRecyclerViewAccessibilityDelegate.mRecyclerView;
                    recyclerView.getClass();
                    RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                    r1 = childViewHolderInt != null ? childViewHolderInt.getAbsoluteAdapterPosition() : -1;
                    RecyclerView.Adapter adapter = recyclerView.getAdapter();
                    if (adapter instanceof PreferenceGroupAdapter) {
                        ((PreferenceGroupAdapter) adapter).getItem(r1);
                        break;
                    }
                    break;
                case 3:
                    AccessibilityNodeInfo accessibilityNodeInfo2 = accessibilityNodeInfoCompat.mInfo;
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo2);
                    if (!((BottomSheetDialog) obj).cancelable) {
                        accessibilityNodeInfo2.setDismissable(false);
                        break;
                    } else {
                        accessibilityNodeInfoCompat.addAction(1048576);
                        accessibilityNodeInfo2.setDismissable(true);
                        break;
                    }
                case 4:
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.mInfo);
                    MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) obj;
                    int i2 = MaterialButtonToggleGroup.$r8$clinit;
                    if (view instanceof MaterialButton) {
                        int i3 = 0;
                        int i4 = 0;
                        while (true) {
                            if (i3 < materialButtonToggleGroup.getChildCount()) {
                                if (materialButtonToggleGroup.getChildAt(i3) == view) {
                                    r1 = i4;
                                } else {
                                    if ((materialButtonToggleGroup.getChildAt(i3) instanceof MaterialButton) && materialButtonToggleGroup.getChildAt(i3).getVisibility() != 8) {
                                        i4++;
                                    }
                                    i3++;
                                }
                            }
                        }
                    }
                    accessibilityNodeInfoCompat.setCollectionItemInfo(Extras.Key.obtain(((MaterialButton) view).checked, 0, 1, r1, 1));
                    break;
                case 5:
                    AccessibilityNodeInfo accessibilityNodeInfo3 = accessibilityNodeInfoCompat.mInfo;
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo3);
                    CheckableImageButton checkableImageButton = (CheckableImageButton) obj;
                    accessibilityNodeInfo3.setCheckable(checkableImageButton.checkable);
                    accessibilityNodeInfo3.setChecked(checkableImageButton.checked);
                    break;
                case 6:
                    AccessibilityNodeInfo accessibilityNodeInfo4 = accessibilityNodeInfoCompat.mInfo;
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo4);
                    NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) obj;
                    accessibilityNodeInfo4.setCheckable(navigationMenuItemView.checkable);
                    accessibilityNodeInfo4.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", navigationMenuItemView.getResources().getString(org.wikipedia.R.string.item_view_role_description));
                    break;
                default:
                    AccessibilityNodeInfo accessibilityNodeInfo5 = accessibilityNodeInfoCompat.mInfo;
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo5);
                    accessibilityNodeInfoCompat.addAction(1048576);
                    accessibilityNodeInfo5.setDismissable(true);
                    break;
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            switch (this.$r8$classId) {
                case 1:
                    int[] iArr = DrawerLayout.THEME_ATTRS;
                    return this.mOriginalDelegate.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
                default:
                    return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            int i2 = this.$r8$classId;
            Object obj = this.this$0;
            switch (i2) {
                case 2:
                    break;
                case 3:
                    if (i == 1048576) {
                        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) obj;
                        if (bottomSheetDialog.cancelable) {
                            bottomSheetDialog.cancel();
                            break;
                        }
                    }
                    break;
                case 7:
                    if (i != 1048576) {
                        break;
                    } else {
                        ((Snackbar) ((BaseTransientBottomBar) obj)).dispatchDismiss(3);
                        break;
                    }
            }
            return super.performAccessibilityAction(view, i, bundle);
        }

        public /* synthetic */ AnonymousClass7(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }
    }
}
