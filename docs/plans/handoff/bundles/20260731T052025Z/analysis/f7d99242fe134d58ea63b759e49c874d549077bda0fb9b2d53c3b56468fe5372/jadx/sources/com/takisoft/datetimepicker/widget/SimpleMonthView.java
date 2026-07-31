package com.takisoft.datetimepicker.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.icu.text.DisplayContext;
import android.os.Build;
import android.text.TextPaint;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.fsck.k9.R;
import com.takisoft.datetimepicker.R$styleable;
import com.takisoft.datetimepicker.util.StateSet;
import com.takisoft.datetimepicker.widget.DayPickerView;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import java.util.WeakHashMap;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class SimpleMonthView extends View {
    public static final /* synthetic */ int $r8$clinit = 0;
    public int mActivatedDay;
    public Calendar mCalendar;
    public int mCellWidth;
    public NumberFormat mDayFormatter;
    public int mDayHeight;
    public final Paint mDayHighlightPaint;
    public final Paint mDayHighlightSelectorPaint;
    public int mDayOfWeekHeight;
    public final String[] mDayOfWeekLabels;
    public final TextPaint mDayOfWeekPaint;
    public int mDayOfWeekStart;
    public final TextPaint mDayPaint;
    public final Paint mDaySelectorPaint;
    public int mDaySelectorRadius;
    public ColorStateList mDayTextColor;
    public int mDaysInMonth;
    public int mDesiredCellWidth;
    public int mDesiredDayHeight;
    public int mDesiredDayOfWeekHeight;
    public int mDesiredDaySelectorRadius;
    public int mDesiredMonthHeight;
    public int mEnabledDayEnd;
    public int mEnabledDayStart;
    public int mHighlightedDay;
    public Locale mLocale;
    public int mMonth;
    public int mMonthHeight;
    public final TextPaint mMonthPaint;
    public String mMonthYearLabel;
    public ConnectionPool mOnDayClickListener;
    public int mPaddedHeight;
    public int mPaddedWidth;
    public int mPreviouslyHighlightedDay;
    public int mToday;
    public MonthViewTouchHelper mTouchHelper;
    public int mWeekStart;
    public int mYear;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class MonthViewTouchHelper extends ExploreByTouchHelper {
        public final Calendar mTempCalendar;
        public final Rect mTempRect;

        public MonthViewTouchHelper(SimpleMonthView simpleMonthView) {
            super(simpleMonthView);
            this.mTempRect = new Rect();
            this.mTempCalendar = Calendar.getInstance();
        }

        public final CharSequence getDayDescription(int i) {
            int i2 = SimpleMonthView.$r8$clinit;
            SimpleMonthView simpleMonthView = SimpleMonthView.this;
            if (!simpleMonthView.isValidDayOfMonth(i)) {
                return "";
            }
            int i3 = simpleMonthView.mYear;
            int i4 = simpleMonthView.mMonth;
            Calendar calendar = this.mTempCalendar;
            calendar.set(i3, i4, i);
            return DateFormat.format("dd MMMM yyyy", calendar.getTimeInMillis());
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final int getVirtualViewAt(float f, float f2) {
            int i = SimpleMonthView.$r8$clinit;
            int dayAtLocation = SimpleMonthView.this.getDayAtLocation((int) (f + 0.5f), (int) (f2 + 0.5f));
            if (dayAtLocation != -1) {
                return dayAtLocation;
            }
            return Integer.MIN_VALUE;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void getVisibleVirtualViews(ArrayList arrayList) {
            for (int i = 1; i <= SimpleMonthView.this.mDaysInMonth; i++) {
                arrayList.add(Integer.valueOf(i));
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final boolean onPerformActionForVirtualView(int i, int i2) {
            if (i2 != 16) {
                return false;
            }
            int i3 = SimpleMonthView.$r8$clinit;
            return SimpleMonthView.this.onDayClicked(i);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void onPopulateEventForVirtualView(int i, AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setContentDescription(getDayDescription(i));
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            int i2 = SimpleMonthView.$r8$clinit;
            SimpleMonthView simpleMonthView = SimpleMonthView.this;
            Rect rect = this.mTempRect;
            boolean z = false;
            if (!simpleMonthView.getBoundsForDay(i, rect)) {
                rect.setEmpty();
                accessibilityNodeInfoCompat.setContentDescription("");
                accessibilityNodeInfoCompat.setBoundsInParent(rect);
                accessibilityNodeInfoCompat.setVisibleToUser(false);
                return;
            }
            accessibilityNodeInfoCompat.setText(simpleMonthView.isValidDayOfMonth(i) ? simpleMonthView.mDayFormatter.format(i) : null);
            accessibilityNodeInfoCompat.setContentDescription(getDayDescription(i));
            accessibilityNodeInfoCompat.setBoundsInParent(rect);
            if (i >= simpleMonthView.mEnabledDayStart && i <= simpleMonthView.mEnabledDayEnd) {
                z = true;
            }
            if (z) {
                accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            }
            accessibilityNodeInfoCompat.setEnabled(z);
            if (i == simpleMonthView.mActivatedDay) {
                accessibilityNodeInfoCompat.mInfo.setChecked(true);
            }
        }
    }

    public SimpleMonthView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mMonthPaint = new TextPaint();
        this.mDayOfWeekPaint = new TextPaint();
        this.mDayPaint = new TextPaint();
        this.mDaySelectorPaint = new Paint();
        this.mDayHighlightPaint = new Paint();
        this.mDayHighlightSelectorPaint = new Paint();
        this.mDayOfWeekLabels = new String[7];
        this.mActivatedDay = -1;
        this.mToday = -1;
        this.mWeekStart = 1;
        this.mEnabledDayStart = 1;
        this.mEnabledDayEnd = 31;
        this.mHighlightedDay = -1;
        this.mPreviouslyHighlightedDay = -1;
        attrHandler(context);
    }

    public final ColorStateList applyTextAppearance(TextPaint textPaint, int i) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.TextAppearance, 0, i);
        String string = obtainStyledAttributes.getString(12);
        if (string != null) {
            textPaint.setTypeface(Typeface.create(string, 0));
        }
        textPaint.setTextSize(obtainStyledAttributes.getDimensionPixelSize(0, (int) textPaint.getTextSize()));
        getContext();
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(3);
        if (colorStateList != null) {
            textPaint.setColor(colorStateList.getColorForState(View.ENABLED_STATE_SET, 0));
        }
        obtainStyledAttributes.recycle();
        return colorStateList;
    }

    public final void attrHandler(Context context) {
        Resources resources = context.getResources();
        this.mDesiredMonthHeight = resources.getDimensionPixelSize(R.dimen.date_picker_month_height);
        this.mDesiredDayOfWeekHeight = resources.getDimensionPixelSize(R.dimen.date_picker_day_of_week_height);
        this.mDesiredDayHeight = resources.getDimensionPixelSize(R.dimen.date_picker_day_height);
        this.mDesiredCellWidth = resources.getDimensionPixelSize(R.dimen.date_picker_day_width);
        this.mDesiredDaySelectorRadius = resources.getDimensionPixelSize(R.dimen.date_picker_day_selector_radius);
        MonthViewTouchHelper monthViewTouchHelper = new MonthViewTouchHelper(this);
        this.mTouchHelper = monthViewTouchHelper;
        ViewCompat.setAccessibilityDelegate(this, monthViewTouchHelper);
        setImportantForAccessibility(1);
        Locale locale = resources.getConfiguration().locale;
        this.mLocale = locale;
        this.mCalendar = Calendar.getInstance(locale);
        this.mDayFormatter = NumberFormat.getIntegerInstance(this.mLocale);
        updateMonthYearLabel();
        updateDayOfWeekLabels();
        String string = resources.getString(R.string.date_picker_month_typeface);
        String string2 = resources.getString(R.string.date_picker_day_of_week_typeface);
        String string3 = resources.getString(R.string.date_picker_day_typeface);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.date_picker_month_text_size);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.date_picker_day_of_week_text_size);
        int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.date_picker_day_text_size);
        TextPaint textPaint = this.mMonthPaint;
        textPaint.setAntiAlias(true);
        textPaint.setTextSize(dimensionPixelSize);
        textPaint.setTypeface(Typeface.create(string, 0));
        Paint.Align align = Paint.Align.CENTER;
        textPaint.setTextAlign(align);
        Paint.Style style = Paint.Style.FILL;
        textPaint.setStyle(style);
        TextPaint textPaint2 = this.mDayOfWeekPaint;
        textPaint2.setAntiAlias(true);
        textPaint2.setTextSize(dimensionPixelSize2);
        textPaint2.setTypeface(Typeface.create(string2, 0));
        textPaint2.setTextAlign(align);
        textPaint2.setStyle(style);
        Paint paint = this.mDaySelectorPaint;
        paint.setAntiAlias(true);
        paint.setStyle(style);
        Paint paint2 = this.mDayHighlightPaint;
        paint2.setAntiAlias(true);
        paint2.setStyle(style);
        Paint paint3 = this.mDayHighlightSelectorPaint;
        paint3.setAntiAlias(true);
        paint3.setStyle(style);
        TextPaint textPaint3 = this.mDayPaint;
        textPaint3.setAntiAlias(true);
        textPaint3.setTextSize(dimensionPixelSize3);
        textPaint3.setTypeface(Typeface.create(string3, 0));
        textPaint3.setTextAlign(align);
        textPaint3.setStyle(style);
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.mTouchHelper.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    public final void ensureFocusedDay() {
        if (this.mHighlightedDay != -1) {
            return;
        }
        int i = this.mPreviouslyHighlightedDay;
        if (i != -1) {
            this.mHighlightedDay = i;
            return;
        }
        int i2 = this.mActivatedDay;
        if (i2 != -1) {
            this.mHighlightedDay = i2;
        } else {
            this.mHighlightedDay = 1;
        }
    }

    public final int findClosestColumn(Rect rect) {
        if (rect == null) {
            return 3;
        }
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        int centerX = (rect.centerX() - getPaddingStart()) / this.mCellWidth;
        if (centerX < 0) {
            centerX = 0;
        } else if (centerX > 6) {
            centerX = 6;
        }
        return isLayoutRtl() ? 6 - centerX : centerX;
    }

    public final int findClosestRow(Rect rect) {
        if (rect == null) {
            return 3;
        }
        int centerY = rect.centerY();
        int i = this.mMonthHeight + this.mDayOfWeekHeight;
        int i2 = this.mDayHeight;
        TextPaint textPaint = this.mDayPaint;
        int round = Math.round(((int) (centerY - (((i2 / 2) + i) - ((textPaint.descent() + textPaint.ascent()) / 2.0f)))) / i2);
        int findDayOffset = findDayOffset() + this.mDaysInMonth;
        int i3 = (findDayOffset / 7) - (findDayOffset % 7 == 0 ? 1 : 0);
        if (round < 0) {
            return 0;
        }
        return round > i3 ? i3 : round;
    }

    public final int findDayOffset() {
        int i = this.mDayOfWeekStart;
        int i2 = this.mWeekStart;
        int i3 = i - i2;
        return i < i2 ? i3 + 7 : i3;
    }

    public final boolean getBoundsForDay(int i, Rect rect) {
        if (!isValidDayOfMonth(i)) {
            return false;
        }
        int findDayOffset = findDayOffset() + (i - 1);
        int i2 = findDayOffset % 7;
        int i3 = this.mCellWidth;
        int width = isLayoutRtl() ? (getWidth() - getPaddingRight()) - ((i2 + 1) * i3) : getPaddingLeft() + (i2 * i3);
        int i4 = this.mDayHeight;
        int paddingTop = ((findDayOffset / 7) * i4) + getPaddingTop() + this.mMonthHeight + this.mDayOfWeekHeight;
        rect.set(width, paddingTop, i3 + width, i4 + paddingTop);
        return true;
    }

    public final int getDayAtLocation(int i, int i2) {
        int i3;
        int paddingTop;
        int paddingLeft = i - getPaddingLeft();
        if (paddingLeft < 0 || paddingLeft >= this.mPaddedWidth || (paddingTop = i2 - getPaddingTop()) < (i3 = this.mMonthHeight + this.mDayOfWeekHeight) || paddingTop >= this.mPaddedHeight) {
            return -1;
        }
        if (isLayoutRtl()) {
            paddingLeft = this.mPaddedWidth - paddingLeft;
        }
        int findDayOffset = (((((paddingTop - i3) / this.mDayHeight) * 7) + ((paddingLeft * 7) / this.mPaddedWidth)) + 1) - findDayOffset();
        if (isValidDayOfMonth(findDayOffset)) {
            return findDayOffset;
        }
        return -1;
    }

    @Override // android.view.View
    public final void getFocusedRect(Rect rect) {
        int i = this.mHighlightedDay;
        if (i > 0) {
            getBoundsForDay(i, rect);
        } else {
            super.getFocusedRect(rect);
        }
    }

    public final boolean isLayoutRtl() {
        return getLayoutDirection() == 1;
    }

    public final boolean isValidDayOfMonth(int i) {
        return i >= 1 && i <= this.mDaysInMonth;
    }

    public final boolean moveOneDay(boolean z) {
        int i;
        int i2;
        ensureFocusedDay();
        int i3 = this.mHighlightedDay;
        if (z) {
            if ((findDayOffset() + i3) % 7 != 0 && (i2 = this.mHighlightedDay) < this.mDaysInMonth) {
                this.mHighlightedDay = i2 + 1;
                return true;
            }
        } else if (((findDayOffset() + i3) - 1) % 7 != 0 && (i = this.mHighlightedDay) > 1) {
            this.mHighlightedDay = i - 1;
            return true;
        }
        return false;
    }

    public final boolean onDayClicked(int i) {
        DayPickerView.OnDaySelectedListener onDaySelectedListener;
        if (!isValidDayOfMonth(i) || i < this.mEnabledDayStart || i > this.mEnabledDayEnd) {
            return false;
        }
        if (this.mOnDayClickListener != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(this.mYear, this.mMonth, i);
            DayPickerPagerAdapter dayPickerPagerAdapter = (DayPickerPagerAdapter) this.mOnDayClickListener.delegate;
            dayPickerPagerAdapter.setSelectedDay(calendar);
            DayPickerView.AnonymousClass1 anonymousClass1 = dayPickerPagerAdapter.mOnDaySelectedListener;
            if (anonymousClass1 != null && (onDaySelectedListener = DayPickerView.this.mOnDaySelectedListener) != null) {
                onDaySelectedListener.onDaySelected(calendar);
            }
        }
        this.mTouchHelper.sendEventForVirtualView(i, 1);
        return true;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Paint paint;
        int i;
        canvas.translate(getPaddingLeft(), getPaddingTop());
        TextPaint textPaint = this.mMonthPaint;
        canvas.drawText(this.mMonthYearLabel, this.mPaddedWidth / 2.0f, (this.mMonthHeight - (textPaint.descent() + textPaint.ascent())) / 2.0f, textPaint);
        int i2 = this.mMonthHeight;
        int i3 = this.mDayOfWeekHeight;
        int i4 = this.mCellWidth;
        TextPaint textPaint2 = this.mDayOfWeekPaint;
        float descent = (textPaint2.descent() + textPaint2.ascent()) / 2.0f;
        int i5 = (i3 / 2) + i2;
        for (int i6 = 0; i6 < 7; i6++) {
            int i7 = (i4 / 2) + (i4 * i6);
            if (isLayoutRtl()) {
                i7 = this.mPaddedWidth - i7;
            }
            canvas.drawText(this.mDayOfWeekLabels[i6], i7, i5 - descent, textPaint2);
        }
        int i8 = this.mMonthHeight + this.mDayOfWeekHeight;
        int i9 = this.mDayHeight;
        int i10 = this.mCellWidth;
        TextPaint textPaint3 = this.mDayPaint;
        float descent2 = (textPaint3.descent() + textPaint3.ascent()) / 2.0f;
        int i11 = (i9 / 2) + i8;
        int findDayOffset = findDayOffset();
        int i12 = 1;
        while (i12 <= this.mDaysInMonth) {
            int i13 = (i10 / 2) + (i10 * findDayOffset);
            if (isLayoutRtl()) {
                i13 = this.mPaddedWidth - i13;
            }
            boolean z = i12 >= this.mEnabledDayStart && i12 <= this.mEnabledDayEnd;
            int i14 = z ? 8 : 0;
            boolean z2 = this.mActivatedDay == i12;
            boolean z3 = this.mHighlightedDay == i12;
            Paint paint2 = this.mDaySelectorPaint;
            if (z2) {
                i14 |= 32;
                paint = paint2;
                i = findDayOffset;
                canvas.drawCircle(i13, i11, this.mDaySelectorRadius, z3 ? this.mDayHighlightSelectorPaint : paint2);
            } else {
                paint = paint2;
                i = findDayOffset;
                if (z3) {
                    i14 |= 16;
                    if (z) {
                        canvas.drawCircle(i13, i11, this.mDaySelectorRadius, this.mDayHighlightPaint);
                    }
                }
            }
            textPaint3.setColor((this.mToday != i12 || z2) ? this.mDayTextColor.getColorForState(StateSet.get(i14), 0) : paint.getColor());
            canvas.drawText(this.mDayFormatter.format(i12), i13, i11 - descent2, textPaint3);
            findDayOffset = i + 1;
            if (findDayOffset == 7) {
                i11 += i9;
                findDayOffset = 0;
            }
            i12++;
        }
        canvas.translate(-r2, -r3);
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        if (z) {
            int findDayOffset = findDayOffset();
            if (i == 17) {
                this.mHighlightedDay = Math.min(this.mDaysInMonth, ((findClosestRow(rect) + 1) * 7) - findDayOffset);
            } else if (i == 33) {
                int findClosestColumn = findClosestColumn(rect);
                int i2 = this.mDaysInMonth;
                int i3 = (((findDayOffset + i2) / 7) * 7) + (findClosestColumn - findDayOffset);
                int i4 = i3 + 1;
                if (i4 > i2) {
                    i4 = i3 - 6;
                }
                this.mHighlightedDay = i4;
            } else if (i == 66) {
                int findClosestRow = findClosestRow(rect);
                this.mHighlightedDay = findClosestRow != 0 ? 1 + ((findClosestRow * 7) - findDayOffset) : 1;
            } else if (i == 130) {
                int findClosestColumn2 = findClosestColumn(rect) - findDayOffset;
                int i5 = findClosestColumn2 + 1;
                if (i5 < 1) {
                    i5 = findClosestColumn2 + 8;
                }
                this.mHighlightedDay = i5;
            }
            ensureFocusedDay();
            invalidate();
        }
        super.onFocusChanged(z, i, rect);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        boolean z = false;
        if (keyCode != 61) {
            if (keyCode != 66) {
                switch (keyCode) {
                    case 19:
                        if (keyEvent.hasNoModifiers()) {
                            ensureFocusedDay();
                            int i2 = this.mHighlightedDay;
                            if (i2 > 7) {
                                this.mHighlightedDay = i2 - 7;
                                z = true;
                                break;
                            }
                        }
                        break;
                    case 20:
                        if (keyEvent.hasNoModifiers()) {
                            ensureFocusedDay();
                            int i3 = this.mHighlightedDay;
                            if (i3 <= this.mDaysInMonth - 7) {
                                this.mHighlightedDay = i3 + 7;
                                z = true;
                                break;
                            }
                        }
                        break;
                    case 21:
                        if (keyEvent.hasNoModifiers()) {
                            z = moveOneDay(isLayoutRtl());
                            break;
                        }
                        break;
                    case 22:
                        if (keyEvent.hasNoModifiers()) {
                            z = moveOneDay(!isLayoutRtl());
                            break;
                        }
                        break;
                }
                return true;
            }
            int i4 = this.mHighlightedDay;
            if (i4 != -1) {
                onDayClicked(i4);
                return true;
            }
        } else {
            int i5 = keyEvent.hasNoModifiers() ? 2 : keyEvent.hasModifiers(1) ? 1 : 0;
            if (i5 != 0) {
                ViewParent parent = getParent();
                View view = this;
                do {
                    view = view.focusSearch(i5);
                    if (view == null || view == this) {
                        break;
                    }
                } while (view.getParent() == parent);
                if (view != null) {
                    view.requestFocus();
                    return true;
                }
            }
        }
        if (!z) {
            return super.onKeyDown(i, keyEvent);
        }
        invalidate();
        return true;
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            int i5 = i3 - i;
            int i6 = i4 - i2;
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int paddingRight = getPaddingRight();
            int paddingBottom = getPaddingBottom();
            int i7 = (i5 - paddingRight) - paddingLeft;
            int i8 = (i6 - paddingBottom) - paddingTop;
            if (i7 == this.mPaddedWidth || i8 == this.mPaddedHeight) {
                return;
            }
            this.mPaddedWidth = i7;
            this.mPaddedHeight = i8;
            float measuredHeight = i8 / ((getMeasuredHeight() - paddingTop) - paddingBottom);
            int i9 = this.mPaddedWidth / 7;
            this.mMonthHeight = (int) (this.mDesiredMonthHeight * measuredHeight);
            this.mDayOfWeekHeight = (int) (this.mDesiredDayOfWeekHeight * measuredHeight);
            this.mDayHeight = (int) (this.mDesiredDayHeight * measuredHeight);
            this.mCellWidth = i9;
            this.mDaySelectorRadius = Math.min(this.mDesiredDaySelectorRadius, Math.min(Math.min(paddingLeft, paddingRight) + (i9 / 2), (this.mDayHeight / 2) + paddingBottom));
            this.mTouchHelper.invalidateRoot();
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        int paddingStart = getPaddingStart();
        setMeasuredDimension(View.resolveSize((this.mDesiredCellWidth * 7) + paddingStart + getPaddingEnd(), i), View.resolveSize(getPaddingBottom() + getPaddingTop() + (this.mDesiredDayHeight * 6) + this.mDesiredDayOfWeekHeight + this.mDesiredMonthHeight, i2));
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
    
        if (r5 != 3) goto L19;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            float r0 = r5.getX()
            r1 = 1056964608(0x3f000000, float:0.5)
            float r0 = r0 + r1
            int r0 = (int) r0
            float r2 = r5.getY()
            float r2 = r2 + r1
            int r1 = (int) r2
            int r5 = r5.getAction()
            r2 = 1
            if (r5 == 0) goto L2c
            if (r5 == r2) goto L1e
            r3 = 2
            if (r5 == r3) goto L2c
            r0 = 3
            if (r5 == r0) goto L25
            goto L41
        L1e:
            int r5 = r4.getDayAtLocation(r0, r1)
            r4.onDayClicked(r5)
        L25:
            r5 = -1
            r4.mHighlightedDay = r5
            r4.invalidate()
            goto L41
        L2c:
            int r0 = r4.getDayAtLocation(r0, r1)
            int r1 = r4.mHighlightedDay
            if (r1 == r0) goto L3b
            r4.mHighlightedDay = r0
            r4.mPreviouslyHighlightedDay = r0
            r4.invalidate()
        L3b:
            if (r5 != 0) goto L41
            if (r0 >= 0) goto L41
            r4 = 0
            return r4
        L41:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.takisoft.datetimepicker.widget.SimpleMonthView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void updateDayOfWeekLabels() {
        String[] strArr = new String[7];
        Calendar calendar = Calendar.getInstance();
        int i = 0;
        while (i < 7) {
            int i2 = i + 1;
            calendar.set(7, i2);
            strArr[i] = calendar.getDisplayName(7, 1, this.mLocale).toUpperCase(this.mLocale).substring(0, 1);
            i = i2;
        }
        for (int i3 = 0; i3 < 7; i3++) {
            this.mDayOfWeekLabels[i3] = strArr[((this.mWeekStart + i3) - 1) % 7];
        }
    }

    public final void updateMonthYearLabel() {
        DisplayContext displayContext;
        getContext();
        String bestDateTimePattern = DateFormat.getBestDateTimePattern(this.mLocale, "MMMMy");
        if (Build.VERSION.SDK_INT < 24) {
            this.mMonthYearLabel = new SimpleDateFormat(bestDateTimePattern, this.mLocale).format((Object) this.mCalendar.getTime());
            return;
        }
        android.icu.text.SimpleDateFormat simpleDateFormat = new android.icu.text.SimpleDateFormat(bestDateTimePattern, this.mLocale);
        displayContext = DisplayContext.CAPITALIZATION_FOR_STANDALONE;
        simpleDateFormat.setContext(displayContext);
        this.mMonthYearLabel = simpleDateFormat.format(this.mCalendar.getTime());
    }

    public SimpleMonthView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.datePickerStyle);
    }

    public SimpleMonthView(Context context) {
        this(context, null);
    }

    public SimpleMonthView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mMonthPaint = new TextPaint();
        this.mDayOfWeekPaint = new TextPaint();
        this.mDayPaint = new TextPaint();
        this.mDaySelectorPaint = new Paint();
        this.mDayHighlightPaint = new Paint();
        this.mDayHighlightSelectorPaint = new Paint();
        this.mDayOfWeekLabels = new String[7];
        this.mActivatedDay = -1;
        this.mToday = -1;
        this.mWeekStart = 1;
        this.mEnabledDayStart = 1;
        this.mEnabledDayEnd = 31;
        this.mHighlightedDay = -1;
        this.mPreviouslyHighlightedDay = -1;
        attrHandler(context);
    }
}
