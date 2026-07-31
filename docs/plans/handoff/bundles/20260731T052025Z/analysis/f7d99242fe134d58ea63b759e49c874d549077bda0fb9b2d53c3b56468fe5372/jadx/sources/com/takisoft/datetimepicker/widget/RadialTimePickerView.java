package com.takisoft.datetimepicker.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import androidx.work.Data;
import com.fsck.k9.R;
import com.google.android.material.animation.ImageMatrixProperty;
import com.google.android.material.button.MaterialButton;
import com.takisoft.datetimepicker.R$styleable;
import com.takisoft.datetimepicker.util.StateSet;
import com.takisoft.datetimepicker.widget.TimePickerClockDelegate;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class RadialTimePickerView extends View {
    public final MaterialButton.AnonymousClass1 HOURS_TO_MINUTES;
    public final ImageMatrixProperty HOURS_TO_MINUTES_OLD;
    public int mAmOrPm;
    public final int mCenterDotRadius;
    public boolean mChangedDuringTouch;
    public int mCircleRadius;
    public final float mDisabledAlpha;
    public int mHalfwayDist;
    public final String[] mHours12Texts;
    public float mHoursToMinutes;
    public ObjectAnimator mHoursToMinutesAnimator;
    public final String[] mInnerHours24Texts;
    public String[] mInnerTextHours;
    public final float[] mInnerTextX;
    public final float[] mInnerTextY;
    public boolean mInputEnabled;
    public boolean mIs24HourMode;
    public boolean mIsOnInnerCircle;
    public OnValueSelectedListener mListener;
    public int mMaxDistForOuterNumber;
    public int mMinDistForInnerNumber;
    public String[] mMinutesText;
    public final String[] mMinutesTexts;
    public final String[] mOuterHours24Texts;
    public String[] mOuterTextHours;
    public final float[][] mOuterTextX;
    public final float[][] mOuterTextY;
    public final Paint[] mPaint;
    public final Paint mPaintBackground;
    public final Paint mPaintCenter;
    public final Paint[] mPaintSelector;
    public final int[] mSelectionDegrees;
    public int mSelectorColor;
    public int mSelectorDotColor;
    public final int mSelectorDotRadius;
    public final Path mSelectorPath;
    public final int mSelectorRadius;
    public final int mSelectorStroke;
    public boolean mShowHours;
    public final ColorStateList[] mTextColor;
    public final int[] mTextInset;
    public final int[] mTextSize;
    public final RadialPickerTouchHelper mTouchHelper;
    public final Typeface mTypeface;
    public int mXCenter;
    public int mYCenter;
    public static final int[] HOURS_NUMBERS = {12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
    public static final int[] HOURS_NUMBERS_24 = {0, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23};
    public static final int[] MINUTES_NUMBERS = {0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55};
    public static final int[] SNAP_PREFER_30S_MAP = new int[361];
    public static final float[] COS_30 = new float[12];
    public static final float[] SIN_30 = new float[12];

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnValueSelectedListener {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RadialPickerTouchHelper extends ExploreByTouchHelper {
        public final Rect mTempRect;

        public RadialPickerTouchHelper() {
            super(RadialTimePickerView.this);
            this.mTempRect = new Rect();
        }

        public static int makeId(int i, int i2) {
            return i | (i2 << 8);
        }

        public final void adjustPicker(int i) {
            int i2;
            int currentMinute;
            int i3;
            RadialTimePickerView radialTimePickerView = RadialTimePickerView.this;
            int i4 = 0;
            if (radialTimePickerView.mShowHours) {
                currentMinute = radialTimePickerView.getCurrentHour();
                i2 = 1;
                if (radialTimePickerView.mIs24HourMode) {
                    i3 = 23;
                } else {
                    i3 = 12;
                    if (currentMinute == 0) {
                        currentMinute = 12;
                    } else if (currentMinute > 12) {
                        currentMinute -= 12;
                    }
                    i4 = 1;
                }
            } else {
                i2 = 5;
                currentMinute = radialTimePickerView.getCurrentMinute() / 5;
                i3 = 55;
            }
            int clamp = Validate.clamp((currentMinute + i) * i2, i4, i3);
            if (radialTimePickerView.mShowHours) {
                radialTimePickerView.setCurrentHour(clamp);
            } else {
                radialTimePickerView.setCurrentMinute(clamp);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final int getVirtualViewAt(float f, float f2) {
            int[] iArr = RadialTimePickerView.HOURS_NUMBERS;
            RadialTimePickerView radialTimePickerView = RadialTimePickerView.this;
            int degreesFromXY = radialTimePickerView.getDegreesFromXY(f, f2, true);
            if (degreesFromXY == -1) {
                return Integer.MIN_VALUE;
            }
            int snapOnly30s = RadialTimePickerView.snapOnly30s(degreesFromXY) % 360;
            if (radialTimePickerView.mShowHours) {
                int hourForDegrees = radialTimePickerView.getHourForDegrees(snapOnly30s, radialTimePickerView.getInnerCircleFromXY(f, f2));
                if (!radialTimePickerView.mIs24HourMode) {
                    if (hourForDegrees == 0) {
                        hourForDegrees = 12;
                    } else if (hourForDegrees > 12) {
                        hourForDegrees -= 12;
                    }
                }
                return makeId(1, hourForDegrees);
            }
            int currentMinute = radialTimePickerView.getCurrentMinute();
            int i = degreesFromXY / 6;
            int i2 = snapOnly30s / 6;
            int abs = Math.abs(currentMinute - i);
            if (abs > 30) {
                abs = 60 - abs;
            }
            int abs2 = Math.abs(i2 - i);
            if (abs2 > 30) {
                abs2 = 60 - abs2;
            }
            if (abs >= abs2) {
                currentMinute = i2;
            }
            return makeId(2, currentMinute);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void getVisibleVirtualViews(ArrayList arrayList) {
            RadialTimePickerView radialTimePickerView = RadialTimePickerView.this;
            if (radialTimePickerView.mShowHours) {
                boolean z = radialTimePickerView.mIs24HourMode;
                int i = z ? 23 : 12;
                for (int i2 = !z ? 1 : 0; i2 <= i; i2++) {
                    arrayList.add(Integer.valueOf(makeId(1, i2)));
                }
                return;
            }
            int currentMinute = radialTimePickerView.getCurrentMinute();
            for (int i3 = 0; i3 < 60; i3 += 5) {
                arrayList.add(Integer.valueOf(makeId(2, i3)));
                if (currentMinute > i3 && currentMinute < i3 + 5) {
                    arrayList.add(Integer.valueOf(makeId(2, currentMinute)));
                }
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper, androidx.core.view.AccessibilityDelegateCompat
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
        
            if (r5 == 0) goto L16;
         */
        @Override // androidx.customview.widget.ExploreByTouchHelper
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean onPerformActionForVirtualView(int r4, int r5) {
            /*
                r3 = this;
                r0 = 16
                r1 = 0
                if (r5 != r0) goto L30
                r5 = r4 & 15
                int r4 = r4 >>> 8
                r4 = r4 & 255(0xff, float:3.57E-43)
                com.takisoft.datetimepicker.widget.RadialTimePickerView r3 = com.takisoft.datetimepicker.widget.RadialTimePickerView.this
                r0 = 1
                if (r5 != r0) goto L29
                boolean r5 = r3.mIs24HourMode
                if (r5 == 0) goto L15
                goto L25
            L15:
                int r5 = r3.mAmOrPm
                r2 = 12
                if (r4 != r2) goto L1e
                if (r5 != 0) goto L23
                goto L24
            L1e:
                if (r5 != r0) goto L23
                int r1 = r4 + 12
                goto L24
            L23:
                r1 = r4
            L24:
                r4 = r1
            L25:
                r3.setCurrentHour(r4)
                return r0
            L29:
                r2 = 2
                if (r5 != r2) goto L30
                r3.setCurrentMinute(r4)
                return r0
            L30:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.takisoft.datetimepicker.widget.RadialTimePickerView.RadialPickerTouchHelper.onPerformActionForVirtualView(int, int):boolean");
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void onPopulateEventForVirtualView(int i, AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setClassName(RadialPickerTouchHelper.class.getName());
            int i2 = i & 15;
            accessibilityEvent.setContentDescription((i2 == 1 || i2 == 2) ? Integer.toString((i >>> 8) & 255) : null);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            float f;
            float f2;
            float f3;
            int makeId;
            int i2;
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.mInfo;
            accessibilityNodeInfoCompat.setClassName(RadialPickerTouchHelper.class.getName());
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            int i3 = i & 15;
            int i4 = (i >>> 8) & 255;
            accessibilityNodeInfoCompat.setContentDescription((i3 == 1 || i3 == 2) ? Integer.toString(i4) : null);
            RadialTimePickerView radialTimePickerView = RadialTimePickerView.this;
            int[] iArr = radialTimePickerView.mTextInset;
            int i5 = radialTimePickerView.mSelectorRadius;
            if (i3 == 1) {
                int[] iArr2 = RadialTimePickerView.HOURS_NUMBERS;
                boolean z = radialTimePickerView.mIs24HourMode;
                f = radialTimePickerView.mCircleRadius - (z && (i4 == 0 || i4 > 12) ? iArr[2] : iArr[0]);
                f2 = i5;
                if (z) {
                    if (i4 >= 12) {
                        i2 = i4 - 12;
                        f3 = i2 * 30;
                    }
                    i2 = i4;
                    f3 = i2 * 30;
                } else {
                    if (i4 == 12) {
                        i2 = 0;
                        f3 = i2 * 30;
                    }
                    i2 = i4;
                    f3 = i2 * 30;
                }
            } else if (i3 == 2) {
                f = radialTimePickerView.mCircleRadius - iArr[1];
                f3 = i4 * 6;
                f2 = i5;
            } else {
                f = 0.0f;
                f2 = 0.0f;
                f3 = 0.0f;
            }
            double radians = Math.toRadians(f3);
            float sin = (((float) Math.sin(radians)) * f) + radialTimePickerView.mXCenter;
            float cos = radialTimePickerView.mYCenter - (f * ((float) Math.cos(radians)));
            Rect rect = this.mTempRect;
            rect.set((int) (sin - f2), (int) (cos - f2), (int) (sin + f2), (int) (cos + f2));
            accessibilityNodeInfoCompat.setBoundsInParent(rect);
            accessibilityNodeInfo.setSelected(i3 != 1 ? i3 == 2 && radialTimePickerView.getCurrentMinute() == i4 : radialTimePickerView.getCurrentHour() == i4);
            if (i3 == 1) {
                int i6 = i4 + 1;
                if (i6 <= (radialTimePickerView.mIs24HourMode ? 23 : 12)) {
                    makeId = makeId(i3, i6);
                }
                makeId = Integer.MIN_VALUE;
            } else {
                if (i3 == 2) {
                    int currentMinute = radialTimePickerView.getCurrentMinute();
                    int i7 = (i4 - (i4 % 5)) + 5;
                    if (i4 < currentMinute && i7 > currentMinute) {
                        makeId = makeId(i3, currentMinute);
                    } else if (i7 < 60) {
                        makeId = makeId(i3, i7);
                    }
                }
                makeId = Integer.MIN_VALUE;
            }
            if (makeId != Integer.MIN_VALUE) {
                accessibilityNodeInfo.setTraversalBefore(radialTimePickerView, makeId);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            if (i == 4096) {
                adjustPicker(1);
                return true;
            }
            if (i != 8192) {
                return false;
            }
            adjustPicker(-1);
            return true;
        }
    }

    static {
        int i = 8;
        int i2 = 1;
        int i3 = 0;
        for (int i4 = 0; i4 < 361; i4++) {
            SNAP_PREFER_30S_MAP[i4] = i3;
            if (i2 == i) {
                i3 += 6;
                i = i3 == 360 ? 7 : i3 % 30 == 0 ? 14 : 4;
                i2 = 1;
            } else {
                i2++;
            }
        }
        double d = 1.5707963267948966d;
        for (int i5 = 0; i5 < 12; i5++) {
            COS_30[i5] = (float) Math.cos(d);
            SIN_30[i5] = (float) Math.sin(d);
            d += 0.5235987755982988d;
        }
    }

    public RadialTimePickerView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet);
        this.HOURS_TO_MINUTES = new MaterialButton.AnonymousClass1();
        this.HOURS_TO_MINUTES_OLD = new ImageMatrixProperty(this);
        this.mHours12Texts = new String[12];
        this.mOuterHours24Texts = new String[12];
        this.mInnerHours24Texts = new String[12];
        this.mMinutesTexts = new String[12];
        Paint[] paintArr = {r13, r13};
        this.mPaint = paintArr;
        Paint paint = new Paint();
        this.mPaintCenter = paint;
        Paint[] paintArr2 = {r13, r13, r13};
        this.mPaintSelector = paintArr2;
        Paint paint2 = new Paint();
        this.mPaintBackground = paint2;
        this.mTextColor = new ColorStateList[3];
        this.mTextSize = new int[]{r13.getDimensionPixelSize(R.dimen.timepicker_text_size_normal), r13.getDimensionPixelSize(R.dimen.timepicker_text_size_normal), r13.getDimensionPixelSize(R.dimen.timepicker_text_size_inner)};
        this.mTextInset = new int[]{r13.getDimensionPixelSize(R.dimen.timepicker_text_inset_normal), r13.getDimensionPixelSize(R.dimen.timepicker_text_inset_normal), r13.getDimensionPixelSize(R.dimen.timepicker_text_inset_inner)};
        Class cls = Float.TYPE;
        this.mOuterTextX = (float[][]) Array.newInstance((Class<?>) cls, 2, 12);
        this.mOuterTextY = (float[][]) Array.newInstance((Class<?>) cls, 2, 12);
        this.mInnerTextX = new float[12];
        this.mInnerTextY = new float[12];
        this.mSelectionDegrees = new int[2];
        this.mSelectorPath = new Path();
        this.mInputEnabled = true;
        this.mChangedDuringTouch = false;
        applyAttributes(attributeSet, i, i2);
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(android.R.attr.disabledAlpha, typedValue, true);
        this.mDisabledAlpha = typedValue.getFloat();
        this.mTypeface = Typeface.create("sans-serif", 0);
        Paint paint3 = new Paint();
        paint3.setAntiAlias(true);
        Paint paint4 = paintArr[0];
        Paint.Align align = Paint.Align.CENTER;
        paint4.setTextAlign(align);
        Paint paint5 = new Paint();
        paint5.setAntiAlias(true);
        paintArr[1].setTextAlign(align);
        paint.setAntiAlias(true);
        Paint paint6 = new Paint();
        paint6.setAntiAlias(true);
        Paint paint7 = new Paint();
        paint7.setAntiAlias(true);
        Paint paint8 = new Paint();
        paint8.setAntiAlias(true);
        paintArr2[2].setStrokeWidth(2.0f);
        paint2.setAntiAlias(true);
        Resources resources = getResources();
        this.mSelectorRadius = resources.getDimensionPixelSize(R.dimen.timepicker_selector_radius);
        this.mSelectorStroke = resources.getDimensionPixelSize(R.dimen.timepicker_selector_stroke);
        this.mSelectorDotRadius = resources.getDimensionPixelSize(R.dimen.timepicker_selector_dot_radius);
        this.mCenterDotRadius = resources.getDimensionPixelSize(R.dimen.timepicker_center_dot_radius);
        this.mShowHours = true;
        this.mHoursToMinutes = 0.0f;
        this.mIs24HourMode = false;
        this.mAmOrPm = 0;
        RadialPickerTouchHelper radialPickerTouchHelper = new RadialPickerTouchHelper();
        this.mTouchHelper = radialPickerTouchHelper;
        ViewCompat.setAccessibilityDelegate(this, radialPickerTouchHelper);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        for (int i3 = 0; i3 < 12; i3++) {
            String[] strArr = this.mHours12Texts;
            int[] iArr = HOURS_NUMBERS;
            strArr[i3] = String.format("%d", Integer.valueOf(iArr[i3]));
            this.mInnerHours24Texts[i3] = String.format("%02d", Integer.valueOf(HOURS_NUMBERS_24[i3]));
            this.mOuterHours24Texts[i3] = String.format("%d", Integer.valueOf(iArr[i3]));
            this.mMinutesTexts[i3] = String.format("%02d", Integer.valueOf(MINUTES_NUMBERS[i3]));
        }
        initData();
        Calendar calendar = Calendar.getInstance(Locale.getDefault());
        int i4 = calendar.get(11);
        int i5 = calendar.get(12);
        setCurrentHourInternal(i4, false);
        setCurrentMinuteInternal(i5, false);
        setHapticFeedbackEnabled(true);
    }

    public static void calculatePositions(Paint paint, float f, float f2, float f3, float f4, float[] fArr, float[] fArr2) {
        paint.setTextSize(f4);
        float ascent = f3 - ((paint.ascent() + paint.descent()) / 2.0f);
        for (int i = 0; i < 12; i++) {
            fArr[i] = f2 - (COS_30[i] * f);
            fArr2[i] = ascent - (SIN_30[i] * f);
        }
    }

    public static void drawTextElements(Canvas canvas, float f, Typeface typeface, ColorStateList colorStateList, String[] strArr, float[] fArr, float[] fArr2, Paint paint, int i, boolean z, int i2, boolean z2) {
        paint.setTextSize(f);
        paint.setTypeface(typeface);
        float f2 = i2 / 30.0f;
        int i3 = (int) f2;
        int ceil = ((int) Math.ceil(f2)) % 12;
        int i4 = 0;
        while (i4 < 12) {
            boolean z3 = i3 == i4 || ceil == i4;
            if (!z2 || z3) {
                paint.setColor(colorStateList.getColorForState(StateSet.get(((z && z3) ? 32 : 0) | 8), 0));
                paint.setAlpha((int) (((i / 255.0d) * Color.alpha(r5)) + 0.5d));
                canvas.drawText(strArr[i4], fArr[i4], fArr2[i4], paint);
            }
            i4++;
        }
    }

    public static int snapOnly30s(int i) {
        int i2 = (i / 30) * 30;
        int i3 = i2 + 30;
        return i - i2 < i3 - i ? i2 : i3;
    }

    public final void animatePicker(long j, boolean z) {
        float f = z ? 0.0f : 1.0f;
        if (this.mHoursToMinutes == f) {
            ObjectAnimator objectAnimator = this.mHoursToMinutesAnimator;
            if (objectAnimator == null || !objectAnimator.isStarted()) {
                return;
            }
            this.mHoursToMinutesAnimator.cancel();
            this.mHoursToMinutesAnimator = null;
            return;
        }
        int i = Build.VERSION.SDK_INT;
        ImageMatrixProperty imageMatrixProperty = this.HOURS_TO_MINUTES_OLD;
        if (i >= 24) {
            this.mHoursToMinutesAnimator = ObjectAnimator.ofFloat(this, imageMatrixProperty, f);
        } else {
            this.mHoursToMinutesAnimator = ObjectAnimator.ofFloat(this, imageMatrixProperty, f);
        }
        this.mHoursToMinutesAnimator.setAutoCancel(true);
        this.mHoursToMinutesAnimator.setDuration(j);
        this.mHoursToMinutesAnimator.start();
    }

    public final void applyAttributes(AttributeSet attributeSet, int i, int i2) {
        Context context = getContext();
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.TimePicker, i, i2);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(8);
        ColorStateList colorStateList2 = obtainStyledAttributes.getColorStateList(6);
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(-65281);
        }
        ColorStateList[] colorStateListArr = this.mTextColor;
        colorStateListArr[0] = colorStateList;
        if (colorStateList2 == null) {
            colorStateList2 = ColorStateList.valueOf(-65281);
        }
        colorStateListArr[2] = colorStateList2;
        colorStateListArr[1] = colorStateListArr[0];
        ColorStateList colorStateList3 = obtainStyledAttributes.getColorStateList(7);
        int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(StateSet.get(40), 0) : -65281;
        this.mPaintCenter.setColor(colorForState);
        int[] iArr = StateSet.get(40);
        this.mSelectorColor = colorForState;
        this.mSelectorDotColor = colorStateListArr[0].getColorForState(iArr, 0);
        this.mPaintBackground.setColor(obtainStyledAttributes.getColor(5, context.getColor(R.color.timepicker_default_numbers_background_color_material)));
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (this.mTouchHelper.dispatchHoverEvent(motionEvent)) {
            return true;
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    public final void drawHoursClipped(Canvas canvas, int i, boolean z) {
        String[] strArr;
        float f = this.mTextSize[0];
        ColorStateList[] colorStateListArr = this.mTextColor;
        ColorStateList colorStateList = colorStateListArr[0];
        String[] strArr2 = this.mOuterTextHours;
        float[] fArr = this.mOuterTextX[0];
        float[] fArr2 = this.mOuterTextY[0];
        Paint[] paintArr = this.mPaint;
        Paint paint = paintArr[0];
        boolean z2 = z && !this.mIsOnInnerCircle;
        int[] iArr = this.mSelectionDegrees;
        drawTextElements(canvas, f, this.mTypeface, colorStateList, strArr2, fArr, fArr2, paint, i, z2, iArr[0], z);
        if (!this.mIs24HourMode || (strArr = this.mInnerTextHours) == null) {
            return;
        }
        drawTextElements(canvas, r1[2], this.mTypeface, colorStateListArr[2], strArr, this.mInnerTextX, this.mInnerTextY, paintArr[0], i, z && this.mIsOnInnerCircle, iArr[0], z);
    }

    public final void drawMinutesClipped(Canvas canvas, int i, boolean z) {
        drawTextElements(canvas, this.mTextSize[1], this.mTypeface, this.mTextColor[1], this.mMinutesText, this.mOuterTextX[1], this.mOuterTextY[1], this.mPaint[1], i, z, this.mSelectionDegrees[1], z);
    }

    public int getAmOrPm() {
        return this.mAmOrPm;
    }

    public int getCurrentHour() {
        return getHourForDegrees(this.mSelectionDegrees[0], this.mIsOnInnerCircle);
    }

    public int getCurrentItemShowing() {
        return !this.mShowHours ? 1 : 0;
    }

    public int getCurrentMinute() {
        return this.mSelectionDegrees[1] / 6;
    }

    public final int getDegreesFromXY(float f, float f2, boolean z) {
        int i;
        int i2;
        if (this.mIs24HourMode && this.mShowHours) {
            i2 = this.mMinDistForInnerNumber;
            i = this.mMaxDistForOuterNumber;
        } else {
            int i3 = this.mCircleRadius - this.mTextInset[!this.mShowHours ? 1 : 0];
            int i4 = this.mSelectorRadius;
            int i5 = i3 - i4;
            i = i3 + i4;
            i2 = i5;
        }
        double d = f - this.mXCenter;
        double d2 = f2 - this.mYCenter;
        double sqrt = Math.sqrt((d2 * d2) + (d * d));
        if (sqrt < i2) {
            return -1;
        }
        if (z && sqrt > i) {
            return -1;
        }
        int degrees = (int) (Math.toDegrees(Math.atan2(d2, d) + 1.5707963267948966d) + 0.5d);
        return degrees < 0 ? degrees + 360 : degrees;
    }

    public final int getHourForDegrees(int i, boolean z) {
        int i2 = (i / 30) % 12;
        if (!this.mIs24HourMode) {
            return this.mAmOrPm == 1 ? i2 + 12 : i2;
        }
        if (z || i2 != 0) {
            return (!z || i2 == 0) ? i2 : i2 + 12;
        }
        return 12;
    }

    public final boolean getInnerCircleFromXY(float f, float f2) {
        if (!this.mIs24HourMode || !this.mShowHours) {
            return false;
        }
        double d = f - this.mXCenter;
        double d2 = f2 - this.mYCenter;
        return Math.sqrt((d2 * d2) + (d * d)) <= ((double) this.mHalfwayDist);
    }

    public final void initData() {
        if (this.mIs24HourMode) {
            this.mOuterTextHours = this.mOuterHours24Texts;
            this.mInnerTextHours = this.mInnerHours24Texts;
        } else {
            String[] strArr = this.mHours12Texts;
            this.mOuterTextHours = strArr;
            this.mInnerTextHours = strArr;
        }
        this.mMinutesText = this.mMinutesTexts;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f;
        float f2 = this.mInputEnabled ? 1.0f : this.mDisabledAlpha;
        canvas.drawCircle(this.mXCenter, this.mYCenter, this.mCircleRadius, this.mPaintBackground);
        int i = this.mIsOnInnerCircle ? 2 : 0;
        int[] iArr = this.mTextInset;
        int i2 = iArr[i];
        int[] iArr2 = this.mSelectionDegrees;
        int i3 = iArr2[i % 2];
        float f3 = i3 % 30 != 0 ? 1.0f : 0.0f;
        int i4 = iArr[1];
        float f4 = iArr2[1] % 30 != 0 ? 1.0f : 0.0f;
        float f5 = i2;
        float f6 = this.mCircleRadius - (((i4 - f5) * this.mHoursToMinutes) + f5);
        float f7 = i3;
        double radians = Math.toRadians((((((r6 - f7) + 180.0f) % 360.0f) - 180.0f) * r15) + f7);
        float sin = (((float) Math.sin(radians)) * f6) + this.mXCenter;
        float cos = this.mYCenter - (((float) Math.cos(radians)) * f6);
        Paint[] paintArr = this.mPaintSelector;
        Paint paint = paintArr[0];
        paint.setColor(this.mSelectorColor);
        float f8 = this.mSelectorRadius;
        canvas.drawCircle(sin, cos, f8, paint);
        Path path = this.mSelectorPath;
        if (path != null) {
            path.reset();
            f = 1.0f;
            path.addCircle(sin, cos, f8, Path.Direction.CCW);
        } else {
            f = 1.0f;
        }
        float m = CameraDevices$CC.m(f4, f3, this.mHoursToMinutes, f3);
        if (m > 0.0f) {
            Paint paint2 = paintArr[1];
            paint2.setColor(this.mSelectorDotColor);
            canvas.drawCircle(sin, cos, this.mSelectorDotRadius * m, paint2);
        }
        double sin2 = Math.sin(radians);
        double cos2 = Math.cos(radians);
        float f9 = f6 - f8;
        int i5 = this.mXCenter;
        int i6 = this.mCenterDotRadius;
        int i7 = this.mYCenter - ((int) (i6 * cos2));
        double d = f9;
        Paint paint3 = paintArr[2];
        paint3.setColor(this.mSelectorColor);
        paint3.setStrokeWidth(this.mSelectorStroke);
        canvas.drawLine(this.mXCenter, this.mYCenter, i5 + ((int) (r12 * sin2)) + ((int) (sin2 * d)), i7 - ((int) (d * cos2)), paint3);
        int i8 = (int) (((f - this.mHoursToMinutes) * 255.0f * f2) + 0.5f);
        if (i8 > 0) {
            canvas.save();
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            drawHoursClipped(canvas, i8, false);
            canvas.restore();
            canvas.save();
            canvas.clipPath(path, Region.Op.INTERSECT);
            drawHoursClipped(canvas, i8, true);
            canvas.restore();
        }
        int i9 = (int) ((this.mHoursToMinutes * 255.0f * f2) + 0.5f);
        if (i9 > 0) {
            canvas.save();
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            drawMinutesClipped(canvas, i9, false);
            canvas.restore();
            canvas.save();
            canvas.clipPath(path, Region.Op.INTERSECT);
            drawMinutesClipped(canvas, i9, true);
            canvas.restore();
        }
        Paint paint4 = this.mPaintCenter;
        paint4.setAlpha((int) ((f2 * 255.0f) + 0.5f));
        canvas.drawCircle(this.mXCenter, this.mYCenter, i6, paint4);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            this.mXCenter = getWidth() / 2;
            int height = getHeight() / 2;
            this.mYCenter = height;
            int min = Math.min(this.mXCenter, height);
            this.mCircleRadius = min;
            int[] iArr = this.mTextInset;
            int i5 = iArr[2];
            int i6 = this.mSelectorRadius;
            this.mMinDistForInnerNumber = (min - i5) - i6;
            int i7 = iArr[0];
            this.mMaxDistForOuterNumber = (min - i7) + i6;
            this.mHalfwayDist = min - ((i5 + i7) / 2);
            float f = min - i7;
            Paint[] paintArr = this.mPaint;
            Paint paint = paintArr[0];
            float f2 = this.mXCenter;
            float f3 = this.mYCenter;
            float f4 = this.mTextSize[0];
            float[][] fArr = this.mOuterTextX;
            float[] fArr2 = fArr[0];
            float[][] fArr3 = this.mOuterTextY;
            calculatePositions(paint, f, f2, f3, f4, fArr2, fArr3[0]);
            if (this.mIs24HourMode) {
                calculatePositions(paintArr[0], this.mCircleRadius - iArr[2], this.mXCenter, this.mYCenter, r4[2], this.mInnerTextX, this.mInnerTextY);
            }
            calculatePositions(paintArr[1], this.mCircleRadius - iArr[1], this.mXCenter, this.mYCenter, r4[1], fArr[1], fArr3[1]);
            this.mTouchHelper.invalidateRoot();
        }
    }

    @Override // android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        if (isEnabled()) {
            return getDegreesFromXY(motionEvent.getX(), motionEvent.getY(), false) != -1 ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            r9 = this;
            boolean r0 = r9.mInputEnabled
            r1 = 1
            if (r0 != 0) goto L6
            goto L12
        L6:
            int r0 = r10.getActionMasked()
            r2 = 2
            if (r0 == r2) goto L13
            if (r0 == r1) goto L13
            if (r0 != 0) goto L12
            goto L13
        L12:
            return r1
        L13:
            r2 = 0
            if (r0 != 0) goto L19
            r9.mChangedDuringTouch = r2
            goto L25
        L19:
            if (r0 != r1) goto L25
            boolean r0 = r9.mChangedDuringTouch
            if (r0 != 0) goto L22
            r0 = r1
        L20:
            r3 = r0
            goto L27
        L22:
            r3 = r1
            r0 = r2
            goto L27
        L25:
            r0 = r2
            goto L20
        L27:
            boolean r4 = r9.mChangedDuringTouch
            float r5 = r10.getX()
            float r10 = r10.getY()
            boolean r6 = r9.getInnerCircleFromXY(r5, r10)
            int r10 = r9.getDegreesFromXY(r5, r10, r2)
            r5 = -1
            if (r10 != r5) goto L3d
            goto L95
        L3d:
            boolean r5 = r9.mShowHours
            r7 = 60
            r9.animatePicker(r7, r5)
            boolean r5 = r9.mShowHours
            int[] r7 = r9.mSelectionDegrees
            if (r5 == 0) goto L66
            int r10 = snapOnly30s(r10)
            int r10 = r10 % 360
            boolean r5 = r9.mIsOnInnerCircle
            if (r5 != r6) goto L5b
            r5 = r7[r2]
            if (r5 == r10) goto L59
            goto L5b
        L59:
            r5 = r2
            goto L5c
        L5b:
            r5 = r1
        L5c:
            r9.mIsOnInnerCircle = r6
            r7[r2] = r10
            int r10 = r9.getCurrentHour()
            r6 = r2
            goto L7a
        L66:
            int[] r5 = com.takisoft.datetimepicker.widget.RadialTimePickerView.SNAP_PREFER_30S_MAP
            r10 = r5[r10]
            int r10 = r10 % 360
            r5 = r7[r1]
            if (r5 == r10) goto L72
            r5 = r1
            goto L73
        L72:
            r5 = r2
        L73:
            r7[r1] = r10
            int r10 = r9.getCurrentMinute()
            r6 = r1
        L7a:
            if (r5 != 0) goto L80
            if (r0 != 0) goto L80
            if (r3 == 0) goto L95
        L80:
            com.takisoft.datetimepicker.widget.RadialTimePickerView$OnValueSelectedListener r2 = r9.mListener
            if (r2 == 0) goto L89
            com.takisoft.datetimepicker.widget.TimePickerClockDelegate$2 r2 = (com.takisoft.datetimepicker.widget.TimePickerClockDelegate.AnonymousClass2) r2
            r2.onValueSelected(r6, r10, r3)
        L89:
            if (r5 != 0) goto L8d
            if (r0 == 0) goto L94
        L8d:
            r10 = 4
            r9.performHapticFeedback(r10)
            r9.invalidate()
        L94:
            r2 = r1
        L95:
            r10 = r4 | r2
            r9.mChangedDuringTouch = r10
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.takisoft.datetimepicker.widget.RadialTimePickerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setCurrentHour(int i) {
        setCurrentHourInternal(i, true);
    }

    public final void setCurrentHourInternal(int i, boolean z) {
        OnValueSelectedListener onValueSelectedListener;
        this.mSelectionDegrees[0] = (i % 12) * 30;
        boolean z2 = true;
        int i2 = (i == 0 || i % 24 < 12) ? 0 : 1;
        if (!this.mIs24HourMode || (i != 0 && i <= 12)) {
            z2 = false;
        }
        if (this.mAmOrPm != i2 || this.mIsOnInnerCircle != z2) {
            this.mAmOrPm = i2;
            this.mIsOnInnerCircle = z2;
            initData();
            this.mTouchHelper.invalidateRoot();
        }
        invalidate();
        if (!z || (onValueSelectedListener = this.mListener) == null) {
            return;
        }
        ((TimePickerClockDelegate.AnonymousClass2) onValueSelectedListener).onValueSelected(0, i, false);
    }

    public void setCurrentMinute(int i) {
        setCurrentMinuteInternal(i, true);
    }

    public final void setCurrentMinuteInternal(int i, boolean z) {
        OnValueSelectedListener onValueSelectedListener;
        this.mSelectionDegrees[1] = (i % 60) * 6;
        invalidate();
        if (!z || (onValueSelectedListener = this.mListener) == null) {
            return;
        }
        ((TimePickerClockDelegate.AnonymousClass2) onValueSelectedListener).onValueSelected(1, i, false);
    }

    public void setInputEnabled(boolean z) {
        this.mInputEnabled = z;
        invalidate();
    }

    public void setOnValueSelectedListener(OnValueSelectedListener onValueSelectedListener) {
        this.mListener = onValueSelectedListener;
    }

    public final void showPicker(boolean z, boolean z2) {
        if (this.mShowHours == z) {
            return;
        }
        this.mShowHours = z;
        if (z2) {
            animatePicker(500L, z);
        } else {
            ObjectAnimator objectAnimator = this.mHoursToMinutesAnimator;
            if (objectAnimator != null && objectAnimator.isStarted()) {
                this.mHoursToMinutesAnimator.cancel();
                this.mHoursToMinutesAnimator = null;
            }
            this.mHoursToMinutes = z ? 0.0f : 1.0f;
        }
        initData();
        invalidate();
        this.mTouchHelper.invalidateRoot();
    }

    public RadialTimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.timePickerStyle);
    }

    public RadialTimePickerView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, Data.Companion.isLightTheme(context) ? R.style.Widget_Material_Light_TimePicker : R.style.Widget_Material_TimePicker);
    }

    public RadialTimePickerView(Context context) {
        this(context, null);
    }
}
