package com.takisoft.datetimepicker.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.Scroller;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.SearchView;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.preference.Preference;
import androidx.work.Data;
import androidx.work.impl.constraints.IndividualNetworkCallback;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;
import com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;
import com.bumptech.glide.util.Util;
import com.fsck.k9.R;
import com.fsck.k9.controller.MessagingController;
import com.takisoft.datetimepicker.R$styleable;
import com.takisoft.datetimepicker.util.StateSet;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class NumberPicker extends LinearLayout {
    public View.AccessibilityDelegate mAccessibilityDelegate;
    public AccessibilityNodeProviderImpl mAccessibilityNodeProvider;
    public Scroller mAdjustScroller;
    public MessagingController.AnonymousClass1 mBeginSoftInputOnLongPressCommand;
    public int mBottomSelectionDividerBottom;
    public ChangeCurrentByOneFromLongPressCommand mChangeCurrentByOneFromLongPressCommand;
    public boolean mComputeMaxWidth;
    public int mCurrentScrollOffset;
    public ImageButton mDecrementButton;
    public boolean mDecrementVirtualButtonPressed;
    public String[] mDisplayedValues;
    public Scroller mFlingScroller;
    public Formatter mFormatter;
    public boolean mHasSelectorWheel;
    public boolean mHideWheelUntilFocused;
    public boolean mIgnoreMoveEvents;
    public ImageButton mIncrementButton;
    public boolean mIncrementVirtualButtonPressed;
    public int mInitialScrollOffset;
    public EditText mInputText;
    public long mLastDownEventTime;
    public float mLastDownEventY;
    public float mLastDownOrMoveEventY;
    public int mLastHandledDownDpadKeyCode;
    public int mLastHoveredChildVirtualViewId;
    public long mLongPressUpdateInterval;
    public int mMaxHeight;
    public int mMaxValue;
    public int mMaxWidth;
    public int mMaximumFlingVelocity;
    public int mMinHeight;
    public int mMinValue;
    public int mMinWidth;
    public int mMinimumFlingVelocity;
    public OnValueChangeListener mOnValueChangeListener;
    public boolean mPerformClickOnTap;
    public PressedStateHelper mPressedStateHelper;
    public int mPreviousScrollerY;
    public int mScrollState;
    public Drawable mSelectionDivider;
    public int mSelectionDividerHeight;
    public int mSelectionDividersDistance;
    public int mSelectorElementHeight;
    public final SparseArray mSelectorIndexToStringCache;
    public final int[] mSelectorIndices;
    public int mSelectorTextGapHeight;
    public Paint mSelectorWheelPaint;
    public SetSelectionCommand mSetSelectionCommand;
    public int mSolidColor;
    public int mTextSize;
    public int mTopSelectionDividerTop;
    public int mTouchSlop;
    public int mValue;
    public VelocityTracker mVelocityTracker;
    public Drawable mVirtualButtonPressedDrawable;
    public boolean mWrapSelectorWheel;
    public boolean mWrapSelectorWheelPreferred;
    public static final TwoDigitFormatter sTwoDigitFormatter = new TwoDigitFormatter();
    public static final char[] DIGIT_CHARACTERS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 1632, 1633, 1634, 1635, 1636, 1637, 1638, 1639, 1640, 1641, 1776, 1777, 1778, 1779, 1780, 1781, 1782, 1783, 1784, 1785, 2406, 2407, 2408, 2409, 2410, 2411, 2412, 2413, 2414, 2415, 2534, 2535, 2536, 2537, 2538, 2539, 2540, 2541, 2542, 2543, 3302, 3303, 3304, 3305, 3306, 3307, 3308, 3309, 3310, 3311};

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AccessibilityNodeProviderImpl extends AccessibilityNodeProvider {
        public final AccessibilityManager accessibilityManager;
        public final Rect mTempRect = new Rect();
        public final int[] mTempArray = new int[2];
        public int mAccessibilityFocusedView = Integer.MIN_VALUE;

        public AccessibilityNodeProviderImpl() {
            this.accessibilityManager = (AccessibilityManager) NumberPicker.this.getContext().getSystemService("accessibility");
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            NumberPicker numberPicker = NumberPicker.this;
            int left = numberPicker.getLeft();
            int right = numberPicker.getRight();
            int top = numberPicker.getTop();
            int bottom = numberPicker.getBottom();
            int scrollX = numberPicker.getScrollX();
            int scrollY = numberPicker.getScrollY();
            int[] iArr = this.mTempArray;
            Rect rect = this.mTempRect;
            if (i != -1) {
                if (i == 1) {
                    return createAccessibilityNodeInfoForVirtualButton(1, getVirtualIncrementButtonText(), scrollX, numberPicker.mBottomSelectionDividerBottom - numberPicker.mSelectionDividerHeight, (right - left) + scrollX, (bottom - top) + scrollY);
                }
                if (i != 2) {
                    return i != 3 ? super.createAccessibilityNodeInfo(i) : createAccessibilityNodeInfoForVirtualButton(3, getVirtualDecrementButtonText(), scrollX, scrollY, (right - left) + scrollX, numberPicker.mTopSelectionDividerTop + numberPicker.mSelectionDividerHeight);
                }
                int i2 = numberPicker.mTopSelectionDividerTop;
                int i3 = numberPicker.mSelectionDividerHeight;
                int i4 = i2 + i3;
                int i5 = (right - left) + scrollX;
                int i6 = numberPicker.mBottomSelectionDividerBottom - i3;
                AccessibilityNodeInfo createAccessibilityNodeInfo = numberPicker.mInputText.createAccessibilityNodeInfo();
                createAccessibilityNodeInfo.setSource(numberPicker, 2);
                if (this.mAccessibilityFocusedView != 2) {
                    createAccessibilityNodeInfo.addAction(64);
                }
                if (this.mAccessibilityFocusedView == 2) {
                    createAccessibilityNodeInfo.addAction(128);
                }
                rect.set(scrollX, i4, i5, i6);
                createAccessibilityNodeInfo.setVisibleToUser(false);
                createAccessibilityNodeInfo.setBoundsInParent(rect);
                numberPicker.getLocationOnScreen(iArr);
                rect.offset(iArr[0], iArr[1]);
                createAccessibilityNodeInfo.setBoundsInScreen(rect);
                return createAccessibilityNodeInfo;
            }
            int i7 = (right - left) + scrollX;
            int i8 = (bottom - top) + scrollY;
            AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain();
            AccessibilityNodeInfo accessibilityNodeInfo = obtain.mInfo;
            obtain.setClassName(NumberPicker.class.getName());
            accessibilityNodeInfo.setPackageName(numberPicker.getContext().getPackageName());
            obtain.mVirtualDescendantId = -1;
            accessibilityNodeInfo.setSource(numberPicker);
            if (numberPicker.getWrapSelectorWheel() || numberPicker.getValue() > numberPicker.getMinValue()) {
                accessibilityNodeInfo.addChild(numberPicker, 3);
            }
            accessibilityNodeInfo.addChild(numberPicker, 2);
            if (numberPicker.getWrapSelectorWheel() || numberPicker.getValue() < numberPicker.getMaxValue()) {
                accessibilityNodeInfo.addChild(numberPicker, 1);
            }
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            View view = (View) numberPicker.getParentForAccessibility();
            obtain.mParentVirtualDescendantId = -1;
            accessibilityNodeInfo.setParent(view);
            obtain.setEnabled(numberPicker.isEnabled());
            obtain.setScrollable(true);
            rect.set(scrollX, scrollY, i7, i8);
            obtain.setBoundsInParent(rect);
            obtain.setVisibleToUser(false);
            numberPicker.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
            obtain.setBoundsInScreen(rect);
            if (this.mAccessibilityFocusedView != -1) {
                obtain.addAction(64);
            }
            if (this.mAccessibilityFocusedView == -1) {
                obtain.addAction(128);
            }
            if (numberPicker.isEnabled()) {
                if (numberPicker.getWrapSelectorWheel() || numberPicker.getValue() < numberPicker.getMaxValue()) {
                    obtain.addAction(4096);
                }
                if (numberPicker.getWrapSelectorWheel() || numberPicker.getValue() > numberPicker.getMinValue()) {
                    obtain.addAction(8192);
                }
            }
            return accessibilityNodeInfo;
        }

        public final AccessibilityNodeInfo createAccessibilityNodeInfoForVirtualButton(int i, String str, int i2, int i3, int i4, int i5) {
            AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain();
            obtain.setClassName(Button.class.getName());
            NumberPicker numberPicker = NumberPicker.this;
            String packageName = numberPicker.getContext().getPackageName();
            AccessibilityNodeInfo accessibilityNodeInfo = obtain.mInfo;
            accessibilityNodeInfo.setPackageName(packageName);
            obtain.mVirtualDescendantId = i;
            accessibilityNodeInfo.setSource(numberPicker, i);
            obtain.mParentVirtualDescendantId = -1;
            accessibilityNodeInfo.setParent(numberPicker);
            obtain.setText(str);
            accessibilityNodeInfo.setClickable(true);
            accessibilityNodeInfo.setLongClickable(true);
            obtain.setEnabled(numberPicker.isEnabled());
            Rect rect = this.mTempRect;
            rect.set(i2, i3, i4, i5);
            TwoDigitFormatter twoDigitFormatter = NumberPicker.sTwoDigitFormatter;
            obtain.setVisibleToUser(false);
            obtain.setBoundsInParent(rect);
            int[] iArr = this.mTempArray;
            numberPicker.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
            obtain.setBoundsInScreen(rect);
            if (this.mAccessibilityFocusedView != i) {
                obtain.addAction(64);
            }
            if (this.mAccessibilityFocusedView == i) {
                obtain.addAction(128);
            }
            if (numberPicker.isEnabled()) {
                obtain.addAction(16);
            }
            return accessibilityNodeInfo;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final List findAccessibilityNodeInfosByText(String str, int i) {
            if (TextUtils.isEmpty(str)) {
                return Collections.EMPTY_LIST;
            }
            String lowerCase = str.toLowerCase();
            ArrayList arrayList = new ArrayList();
            if (i == -1) {
                findAccessibilityNodeInfosByTextInChild(lowerCase, 3, arrayList);
                findAccessibilityNodeInfosByTextInChild(lowerCase, 2, arrayList);
                findAccessibilityNodeInfosByTextInChild(lowerCase, 1, arrayList);
                return arrayList;
            }
            if (i != 1 && i != 2 && i != 3) {
                return super.findAccessibilityNodeInfosByText(str, i);
            }
            findAccessibilityNodeInfosByTextInChild(lowerCase, i, arrayList);
            return arrayList;
        }

        public final void findAccessibilityNodeInfosByTextInChild(String str, int i, ArrayList arrayList) {
            if (i == 1) {
                String virtualIncrementButtonText = getVirtualIncrementButtonText();
                if (TextUtils.isEmpty(virtualIncrementButtonText) || !virtualIncrementButtonText.toString().toLowerCase().contains(str)) {
                    return;
                }
                arrayList.add(createAccessibilityNodeInfo(1));
                return;
            }
            if (i != 2) {
                if (i != 3) {
                    return;
                }
                String virtualDecrementButtonText = getVirtualDecrementButtonText();
                if (TextUtils.isEmpty(virtualDecrementButtonText) || !virtualDecrementButtonText.toString().toLowerCase().contains(str)) {
                    return;
                }
                arrayList.add(createAccessibilityNodeInfo(3));
                return;
            }
            NumberPicker numberPicker = NumberPicker.this;
            Editable text = numberPicker.mInputText.getText();
            if (!TextUtils.isEmpty(text) && text.toString().toLowerCase().contains(str)) {
                arrayList.add(createAccessibilityNodeInfo(2));
                return;
            }
            Editable text2 = numberPicker.mInputText.getText();
            if (TextUtils.isEmpty(text2) || !text2.toString().toLowerCase().contains(str)) {
                return;
            }
            arrayList.add(createAccessibilityNodeInfo(2));
        }

        public final String getVirtualDecrementButtonText() {
            NumberPicker numberPicker = NumberPicker.this;
            int i = numberPicker.mValue - 1;
            if (numberPicker.mWrapSelectorWheel) {
                i = numberPicker.getWrappedSelectorIndex(i);
            }
            int i2 = numberPicker.mMinValue;
            if (i < i2) {
                return null;
            }
            String[] strArr = numberPicker.mDisplayedValues;
            return strArr == null ? numberPicker.formatNumber(i) : strArr[i - i2];
        }

        public final String getVirtualIncrementButtonText() {
            NumberPicker numberPicker = NumberPicker.this;
            int i = numberPicker.mValue + 1;
            if (numberPicker.mWrapSelectorWheel) {
                i = numberPicker.getWrappedSelectorIndex(i);
            }
            if (i > numberPicker.mMaxValue) {
                return null;
            }
            String[] strArr = numberPicker.mDisplayedValues;
            return strArr == null ? numberPicker.formatNumber(i) : strArr[i - numberPicker.mMinValue];
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final boolean performAction(int i, int i2, Bundle bundle) {
            NumberPicker numberPicker = NumberPicker.this;
            int right = numberPicker.getRight();
            int bottom = numberPicker.getBottom();
            if (i == -1) {
                if (i2 != 64) {
                    if (i2 != 128) {
                        if (i2 != 4096) {
                            if (i2 == 8192) {
                                if (numberPicker.isEnabled() && (numberPicker.getWrapSelectorWheel() || numberPicker.getValue() > numberPicker.getMinValue())) {
                                    numberPicker.changeValueByOne(false);
                                    return true;
                                }
                            }
                            return super.performAction(i, i2, bundle);
                        }
                        if (numberPicker.isEnabled() && (numberPicker.getWrapSelectorWheel() || numberPicker.getValue() < numberPicker.getMaxValue())) {
                            numberPicker.changeValueByOne(true);
                            return true;
                        }
                    } else if (this.mAccessibilityFocusedView == i) {
                        this.mAccessibilityFocusedView = Integer.MIN_VALUE;
                        TwoDigitFormatter twoDigitFormatter = NumberPicker.sTwoDigitFormatter;
                        return true;
                    }
                } else if (this.mAccessibilityFocusedView != i) {
                    this.mAccessibilityFocusedView = i;
                    TwoDigitFormatter twoDigitFormatter2 = NumberPicker.sTwoDigitFormatter;
                    return true;
                }
                return false;
            }
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        if (i2 != 16) {
                            if (i2 != 64) {
                                if (i2 == 128 && this.mAccessibilityFocusedView == i) {
                                    this.mAccessibilityFocusedView = Integer.MIN_VALUE;
                                    sendAccessibilityEventForVirtualView(i, 65536);
                                    numberPicker.invalidate(0, 0, right, numberPicker.mTopSelectionDividerTop);
                                    return true;
                                }
                            } else if (this.mAccessibilityFocusedView != i) {
                                this.mAccessibilityFocusedView = i;
                                sendAccessibilityEventForVirtualView(i, 32768);
                                numberPicker.invalidate(0, 0, right, numberPicker.mTopSelectionDividerTop);
                                return true;
                            }
                        } else if (numberPicker.isEnabled()) {
                            boolean z = i == 1;
                            TwoDigitFormatter twoDigitFormatter3 = NumberPicker.sTwoDigitFormatter;
                            numberPicker.changeValueByOne(z);
                            sendAccessibilityEventForVirtualView(i, 1);
                            return true;
                        }
                    }
                    return super.performAction(i, i2, bundle);
                }
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 16) {
                            if (i2 != 32) {
                                if (i2 != 64) {
                                    if (i2 != 128) {
                                        EditText editText = numberPicker.mInputText;
                                        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                                        return editText.performAccessibilityAction(i2, bundle);
                                    }
                                    if (this.mAccessibilityFocusedView == i) {
                                        this.mAccessibilityFocusedView = Integer.MIN_VALUE;
                                        sendAccessibilityEventForVirtualView(i, 65536);
                                        numberPicker.mInputText.invalidate();
                                        return true;
                                    }
                                } else if (this.mAccessibilityFocusedView != i) {
                                    this.mAccessibilityFocusedView = i;
                                    sendAccessibilityEventForVirtualView(i, 32768);
                                    numberPicker.mInputText.invalidate();
                                    return true;
                                }
                            } else if (numberPicker.isEnabled()) {
                                numberPicker.performLongClick();
                                return true;
                            }
                        } else if (numberPicker.isEnabled()) {
                            numberPicker.performClick();
                            return true;
                        }
                    } else if (numberPicker.isEnabled() && numberPicker.mInputText.isFocused()) {
                        numberPicker.mInputText.clearFocus();
                        return true;
                    }
                } else if (numberPicker.isEnabled() && !numberPicker.mInputText.isFocused()) {
                    return numberPicker.mInputText.requestFocus();
                }
            } else if (i2 != 16) {
                if (i2 != 64) {
                    if (i2 == 128 && this.mAccessibilityFocusedView == i) {
                        this.mAccessibilityFocusedView = Integer.MIN_VALUE;
                        sendAccessibilityEventForVirtualView(i, 65536);
                        numberPicker.invalidate(0, numberPicker.mBottomSelectionDividerBottom, right, bottom);
                        return true;
                    }
                } else if (this.mAccessibilityFocusedView != i) {
                    this.mAccessibilityFocusedView = i;
                    sendAccessibilityEventForVirtualView(i, 32768);
                    numberPicker.invalidate(0, numberPicker.mBottomSelectionDividerBottom, right, bottom);
                    return true;
                }
            } else if (numberPicker.isEnabled()) {
                TwoDigitFormatter twoDigitFormatter4 = NumberPicker.sTwoDigitFormatter;
                numberPicker.changeValueByOne(true);
                sendAccessibilityEventForVirtualView(i, 1);
                return true;
            }
            return false;
        }

        public final void sendAccessibilityEventForVirtualButton(int i, String str, int i2) {
            AccessibilityManager accessibilityManager = this.accessibilityManager;
            if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
                return;
            }
            AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
            obtain.setClassName(Button.class.getName());
            NumberPicker numberPicker = NumberPicker.this;
            obtain.setPackageName(numberPicker.getContext().getPackageName());
            obtain.getText().add(str);
            obtain.setEnabled(numberPicker.isEnabled());
            obtain.setSource(numberPicker, i);
            numberPicker.requestSendAccessibilityEvent(numberPicker, obtain);
        }

        public final void sendAccessibilityEventForVirtualView(int i, int i2) {
            NumberPicker numberPicker = NumberPicker.this;
            if (i == 1) {
                if (numberPicker.getWrapSelectorWheel() || numberPicker.getValue() < numberPicker.getMaxValue()) {
                    sendAccessibilityEventForVirtualButton(i, getVirtualIncrementButtonText(), i2);
                    return;
                }
                return;
            }
            if (i != 2) {
                if (i != 3) {
                    return;
                }
                if (numberPicker.getWrapSelectorWheel() || numberPicker.getValue() > numberPicker.getMinValue()) {
                    sendAccessibilityEventForVirtualButton(i, getVirtualDecrementButtonText(), i2);
                    return;
                }
                return;
            }
            AccessibilityManager accessibilityManager = this.accessibilityManager;
            if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
                return;
            }
            AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
            numberPicker.mInputText.onInitializeAccessibilityEvent(obtain);
            numberPicker.mInputText.onPopulateAccessibilityEvent(obtain);
            obtain.setSource(numberPicker, 2);
            numberPicker.requestSendAccessibilityEvent(numberPicker, obtain);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static class CustomEditText extends AppCompatEditText {
        public CustomEditText(Context context, AttributeSet attributeSet) {
            super(context, attributeSet, R.attr.editTextStyle);
        }

        @Override // android.widget.TextView
        public void onEditorAction(int i) {
            super.onEditorAction(i);
            if (i == 6) {
                clearFocus();
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Formatter {
        String format(int i);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class InputTextFilter extends NumberKeyListener {
        public InputTextFilter() {
        }

        @Override // android.text.method.NumberKeyListener, android.text.InputFilter
        public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            NumberPicker numberPicker = NumberPicker.this;
            SetSelectionCommand setSelectionCommand = numberPicker.mSetSelectionCommand;
            if (setSelectionCommand != null && setSelectionCommand.mPosted) {
                setSelectionCommand.mInputText.removeCallbacks(setSelectionCommand);
                setSelectionCommand.mPosted = false;
            }
            if (numberPicker.mDisplayedValues == null) {
                CharSequence filter = super.filter(charSequence, i, i2, spanned, i3, i4);
                if (filter == null) {
                    filter = charSequence.subSequence(i, i2);
                }
                String str = String.valueOf(spanned.subSequence(0, i3)) + ((Object) filter) + ((Object) spanned.subSequence(i4, spanned.length()));
                if ("".equals(str)) {
                    return str;
                }
                if (numberPicker.getSelectedPos(str) <= numberPicker.mMaxValue && str.length() <= String.valueOf(numberPicker.mMaxValue).length()) {
                    return filter;
                }
            } else {
                String valueOf = String.valueOf(charSequence.subSequence(i, i2));
                if (!TextUtils.isEmpty(valueOf)) {
                    String str2 = String.valueOf(spanned.subSequence(0, i3)) + ((Object) valueOf) + ((Object) spanned.subSequence(i4, spanned.length()));
                    String lowerCase = str2.toLowerCase();
                    for (String str3 : numberPicker.mDisplayedValues) {
                        if (str3.toLowerCase().startsWith(lowerCase)) {
                            int length = str2.length();
                            int length2 = str3.length();
                            if (numberPicker.mSetSelectionCommand == null) {
                                numberPicker.mSetSelectionCommand = new SetSelectionCommand(numberPicker.mInputText);
                            }
                            SetSelectionCommand setSelectionCommand2 = numberPicker.mSetSelectionCommand;
                            setSelectionCommand2.mSelectionStart = length;
                            setSelectionCommand2.mSelectionEnd = length2;
                            if (!setSelectionCommand2.mPosted) {
                                setSelectionCommand2.mInputText.post(setSelectionCommand2);
                                setSelectionCommand2.mPosted = true;
                            }
                            return str3.subSequence(i3, str3.length());
                        }
                    }
                }
            }
            return "";
        }

        @Override // android.text.method.NumberKeyListener
        public final char[] getAcceptedChars() {
            return NumberPicker.DIGIT_CHARACTERS;
        }

        @Override // android.text.method.KeyListener
        public final int getInputType() {
            return 1;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnScrollListener {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnValueChangeListener {
        void onValueChange(NumberPicker numberPicker, int i, int i2);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PressedStateHelper implements Runnable {
        public int mManagedButton;
        public int mMode;

        public PressedStateHelper() {
        }

        public final void cancel() {
            NumberPicker numberPicker = NumberPicker.this;
            int right = numberPicker.getRight();
            int bottom = numberPicker.getBottom();
            this.mMode = 0;
            this.mManagedButton = 0;
            numberPicker.removeCallbacks(this);
            if (numberPicker.mIncrementVirtualButtonPressed) {
                numberPicker.mIncrementVirtualButtonPressed = false;
                numberPicker.invalidate(0, numberPicker.mBottomSelectionDividerBottom, right, bottom);
            }
            numberPicker.mDecrementVirtualButtonPressed = false;
        }

        /* JADX WARN: Type inference failed for: r7v10, types: [boolean, byte] */
        /* JADX WARN: Type inference failed for: r7v6, types: [boolean, byte] */
        @Override // java.lang.Runnable
        public final void run() {
            NumberPicker numberPicker = NumberPicker.this;
            int bottom = numberPicker.getBottom();
            int right = numberPicker.getRight();
            int i = this.mMode;
            if (i == 1) {
                int i2 = this.mManagedButton;
                if (i2 == 1) {
                    numberPicker.mIncrementVirtualButtonPressed = true;
                    numberPicker.invalidate(0, numberPicker.mBottomSelectionDividerBottom, right, bottom);
                    return;
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    numberPicker.mDecrementVirtualButtonPressed = true;
                    numberPicker.invalidate(0, 0, right, numberPicker.mTopSelectionDividerTop);
                    return;
                }
            }
            if (i != 2) {
                return;
            }
            int i3 = this.mManagedButton;
            if (i3 == 1) {
                if (!numberPicker.mIncrementVirtualButtonPressed) {
                    numberPicker.postDelayed(this, ViewConfiguration.getPressedStateDuration());
                }
                numberPicker.mIncrementVirtualButtonPressed = (byte) (!numberPicker.mIncrementVirtualButtonPressed ? 1 : 0);
                numberPicker.invalidate(0, numberPicker.mBottomSelectionDividerBottom, right, bottom);
                return;
            }
            if (i3 != 2) {
                return;
            }
            if (!numberPicker.mDecrementVirtualButtonPressed) {
                numberPicker.postDelayed(this, ViewConfiguration.getPressedStateDuration());
            }
            numberPicker.mDecrementVirtualButtonPressed = (byte) (!numberPicker.mDecrementVirtualButtonPressed ? 1 : 0);
            numberPicker.invalidate(0, 0, right, numberPicker.mTopSelectionDividerTop);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SetSelectionCommand implements Runnable {
        public final EditText mInputText;
        public boolean mPosted;
        public int mSelectionEnd;
        public int mSelectionStart;

        public SetSelectionCommand(EditText editText) {
            this.mInputText = editText;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.mPosted = false;
            this.mInputText.setSelection(this.mSelectionStart, this.mSelectionEnd);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TwoDigitFormatter implements Formatter {
        public final Object[] mArgs;
        public final StringBuilder mBuilder;
        public java.util.Formatter mFmt;
        public char mZeroDigit;

        public TwoDigitFormatter() {
            StringBuilder sb = new StringBuilder();
            this.mBuilder = sb;
            this.mArgs = new Object[1];
            Locale locale = Locale.getDefault();
            this.mFmt = new java.util.Formatter(sb, locale);
            this.mZeroDigit = DecimalFormatSymbols.getInstance(locale).getZeroDigit();
        }

        @Override // com.takisoft.datetimepicker.widget.NumberPicker.Formatter
        public final String format(int i) {
            Locale locale = Locale.getDefault();
            char c = this.mZeroDigit;
            char zeroDigit = DecimalFormatSymbols.getInstance(locale).getZeroDigit();
            StringBuilder sb = this.mBuilder;
            if (c != zeroDigit) {
                this.mFmt = new java.util.Formatter(sb, locale);
                this.mZeroDigit = DecimalFormatSymbols.getInstance(locale).getZeroDigit();
            }
            Integer valueOf = Integer.valueOf(i);
            Object[] objArr = this.mArgs;
            objArr[0] = valueOf;
            sb.delete(0, sb.length());
            this.mFmt.format("%02d", objArr);
            return this.mFmt.toString();
        }
    }

    public NumberPicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mWrapSelectorWheelPreferred = true;
        this.mLongPressUpdateInterval = 300L;
        this.mSelectorIndexToStringCache = new SparseArray();
        this.mSelectorIndices = new int[3];
        this.mInitialScrollOffset = Integer.MIN_VALUE;
        this.mScrollState = 0;
        this.mLastHandledDownDpadKeyCode = -1;
        attrHandler(context, attributeSet, i, Data.Companion.isLightTheme(context) ? R.style.Widget_Material_Light_NumberPicker : R.style.Widget_Material_NumberPicker);
    }

    public static final Formatter getTwoDigitFormatter() {
        return sTwoDigitFormatter;
    }

    public static int makeMeasureSpec(int i, int i2) {
        if (i2 != -1) {
            int size = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            if (mode == Integer.MIN_VALUE) {
                return View.MeasureSpec.makeMeasureSpec(Math.min(size, i2), 1073741824);
            }
            if (mode == 0) {
                return View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
            }
            if (mode != 1073741824) {
                UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Unknown measure mode: ", mode));
                return 0;
            }
        }
        return i;
    }

    public final void attrHandler(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.NumberPicker, i, i2);
        int i3 = 1;
        int resourceId = obtainStyledAttributes.getResourceId(1, R.layout.number_picker_material);
        this.mHasSelectorWheel = resourceId != 0;
        this.mHideWheelUntilFocused = obtainStyledAttributes.getBoolean(0, false);
        int i4 = 9;
        this.mSolidColor = obtainStyledAttributes.getColor(9, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(6);
        if (drawable != null) {
            drawable.setCallback(this);
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            drawable.setLayoutDirection(getLayoutDirection());
            if (drawable.isStateful()) {
                drawable.setState(getDrawableState());
            }
        }
        this.mSelectionDivider = drawable;
        this.mSelectionDividerHeight = obtainStyledAttributes.getDimensionPixelSize(7, (int) TypedValue.applyDimension(1, 2.0f, getResources().getDisplayMetrics()));
        this.mSelectionDividersDistance = obtainStyledAttributes.getDimensionPixelSize(8, (int) TypedValue.applyDimension(1, 48.0f, getResources().getDisplayMetrics()));
        this.mMinHeight = obtainStyledAttributes.getDimensionPixelSize(4, -1);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, -1);
        this.mMaxHeight = dimensionPixelSize;
        int i5 = this.mMinHeight;
        if (i5 != -1 && dimensionPixelSize != -1 && i5 > dimensionPixelSize) {
            UriKt$$ExternalSyntheticBUOutline0.m("minHeight > maxHeight");
            return;
        }
        this.mMinWidth = obtainStyledAttributes.getDimensionPixelSize(5, -1);
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(3, -1);
        this.mMaxWidth = dimensionPixelSize2;
        int i6 = this.mMinWidth;
        if (i6 != -1 && dimensionPixelSize2 != -1 && i6 > dimensionPixelSize2) {
            UriKt$$ExternalSyntheticBUOutline0.m("minWidth > maxWidth");
            return;
        }
        this.mComputeMaxWidth = dimensionPixelSize2 == -1;
        this.mVirtualButtonPressedDrawable = obtainStyledAttributes.getDrawable(10);
        obtainStyledAttributes.recycle();
        this.mPressedStateHelper = new PressedStateHelper();
        setWillNotDraw(!this.mHasSelectorWheel);
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(resourceId, (ViewGroup) this, true);
        Preference.AnonymousClass1 anonymousClass1 = new Preference.AnonymousClass1(i4, this);
        View.OnLongClickListener onLongClickListener = new View.OnLongClickListener() { // from class: com.takisoft.datetimepicker.widget.NumberPicker.2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                TwoDigitFormatter twoDigitFormatter = NumberPicker.sTwoDigitFormatter;
                NumberPicker numberPicker = NumberPicker.this;
                numberPicker.hideSoftInput();
                numberPicker.mInputText.clearFocus();
                if (view.getId() == R.id.increment) {
                    numberPicker.postChangeCurrentByOneFromLongPress(0L, true);
                    return true;
                }
                numberPicker.postChangeCurrentByOneFromLongPress(0L, false);
                return true;
            }
        };
        if (this.mHasSelectorWheel) {
            this.mIncrementButton = null;
        } else {
            ImageButton imageButton = (ImageButton) findViewById(R.id.increment);
            this.mIncrementButton = imageButton;
            imageButton.setOnClickListener(anonymousClass1);
            this.mIncrementButton.setOnLongClickListener(onLongClickListener);
        }
        if (this.mHasSelectorWheel) {
            this.mDecrementButton = null;
        } else {
            ImageButton imageButton2 = (ImageButton) findViewById(R.id.decrement);
            this.mDecrementButton = imageButton2;
            imageButton2.setOnClickListener(anonymousClass1);
            this.mDecrementButton.setOnLongClickListener(onLongClickListener);
        }
        EditText editText = (EditText) findViewById(R.id.numberpicker_input);
        this.mInputText = editText;
        editText.setOnFocusChangeListener(new SearchView.AnonymousClass3(i3, this));
        this.mInputText.setFilters(new InputFilter[]{new InputTextFilter()});
        this.mInputText.setRawInputType(2);
        this.mInputText.setImeOptions(6);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinimumFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaximumFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity() / 8;
        this.mTextSize = (int) this.mInputText.getTextSize();
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setTextAlign(Paint.Align.CENTER);
        paint.setTextSize(this.mTextSize);
        paint.setTypeface(this.mInputText.getTypeface());
        paint.setColor(this.mInputText.getTextColors().getColorForState(LinearLayout.ENABLED_STATE_SET, -1));
        this.mSelectorWheelPaint = paint;
        this.mFlingScroller = new Scroller(getContext(), null, true);
        this.mAdjustScroller = new Scroller(getContext(), new DecelerateInterpolator(2.5f));
        updateInputTextView();
        WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    public final void changeValueByOne(boolean z) {
        if (!this.mHasSelectorWheel) {
            int i = this.mValue;
            if (z) {
                setValueInternal(i + 1, true);
                return;
            } else {
                setValueInternal(i - 1, true);
                return;
            }
        }
        this.mInputText.setVisibility(4);
        if (!moveToFinalScrollerPosition(this.mFlingScroller)) {
            moveToFinalScrollerPosition(this.mAdjustScroller);
        }
        this.mPreviousScrollerY = 0;
        Scroller scroller = this.mFlingScroller;
        if (z) {
            scroller.startScroll(0, 0, 0, -this.mSelectorElementHeight, 300);
        } else {
            scroller.startScroll(0, 0, 0, this.mSelectorElementHeight, 300);
        }
        invalidate();
    }

    @Override // android.view.View
    public final void computeScroll() {
        Scroller scroller = this.mFlingScroller;
        if (scroller.isFinished()) {
            scroller = this.mAdjustScroller;
            if (scroller.isFinished()) {
                return;
            }
        }
        scroller.computeScrollOffset();
        int currY = scroller.getCurrY();
        if (this.mPreviousScrollerY == 0) {
            this.mPreviousScrollerY = scroller.getStartY();
        }
        scrollBy(0, currY - this.mPreviousScrollerY);
        this.mPreviousScrollerY = currY;
        if (!scroller.isFinished()) {
            invalidate();
            return;
        }
        if (scroller != this.mFlingScroller) {
            if (this.mScrollState != 1) {
                updateInputTextView();
            }
        } else {
            if (!ensureScrollWheelAdjusted()) {
                updateInputTextView();
            }
            if (this.mScrollState == 0) {
                return;
            }
            this.mScrollState = 0;
        }
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return getHeight();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return this.mCurrentScrollOffset;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        return ((this.mMaxValue - this.mMinValue) + 1) * this.mSelectorElementHeight;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (!this.mHasSelectorWheel) {
            return super.dispatchHoverEvent(motionEvent);
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return false;
        }
        int y = (int) motionEvent.getY();
        int i = y < this.mTopSelectionDividerTop ? 3 : y > this.mBottomSelectionDividerBottom ? 1 : 2;
        int actionMasked = motionEvent.getActionMasked();
        AccessibilityNodeProviderImpl accessibilityNodeProviderImpl = (AccessibilityNodeProviderImpl) getAccessibilityNodeProvider();
        if (actionMasked == 7) {
            int i2 = this.mLastHoveredChildVirtualViewId;
            if (i2 == i || i2 == -1) {
                return false;
            }
            accessibilityNodeProviderImpl.sendAccessibilityEventForVirtualView(i2, 256);
            accessibilityNodeProviderImpl.sendAccessibilityEventForVirtualView(i, 128);
            this.mLastHoveredChildVirtualViewId = i;
            accessibilityNodeProviderImpl.performAction(i, 64, null);
            return false;
        }
        if (actionMasked == 9) {
            accessibilityNodeProviderImpl.sendAccessibilityEventForVirtualView(i, 128);
            this.mLastHoveredChildVirtualViewId = i;
            accessibilityNodeProviderImpl.performAction(i, 64, null);
            return false;
        }
        if (actionMasked != 10) {
            return false;
        }
        accessibilityNodeProviderImpl.sendAccessibilityEventForVirtualView(i, 256);
        this.mLastHoveredChildVirtualViewId = -1;
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 19 || keyCode == 20) {
            if (this.mHasSelectorWheel) {
                int action = keyEvent.getAction();
                if (action == 0) {
                    if (!this.mWrapSelectorWheel) {
                        if (keyCode == 20) {
                        }
                    }
                    requestFocus();
                    this.mLastHandledDownDpadKeyCode = keyCode;
                    removeAllCallbacks();
                    if (this.mFlingScroller.isFinished()) {
                        changeValueByOne(keyCode == 20);
                    }
                    return true;
                }
                if (action == 1 && this.mLastHandledDownDpadKeyCode == keyCode) {
                    this.mLastHandledDownDpadKeyCode = -1;
                    return true;
                }
            }
        } else if (keyCode == 23 || keyCode == 66) {
            removeAllCallbacks();
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            removeAllCallbacks();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            removeAllCallbacks();
        }
        return super.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mSelectionDivider;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidateDrawable(drawable);
        }
    }

    public final void ensureCachedScrollSelectorValue(int i) {
        String str;
        SparseArray sparseArray = this.mSelectorIndexToStringCache;
        if (((String) sparseArray.get(i)) != null) {
            return;
        }
        int i2 = this.mMinValue;
        if (i < i2 || i > this.mMaxValue) {
            str = "";
        } else {
            String[] strArr = this.mDisplayedValues;
            str = strArr != null ? strArr[i - i2] : formatNumber(i);
        }
        sparseArray.put(i, str);
    }

    public final boolean ensureScrollWheelAdjusted() {
        int i = this.mInitialScrollOffset - this.mCurrentScrollOffset;
        if (i == 0) {
            return false;
        }
        this.mPreviousScrollerY = 0;
        int abs = Math.abs(i);
        int i2 = this.mSelectorElementHeight;
        if (abs > i2 / 2) {
            if (i > 0) {
                i2 = -i2;
            }
            i += i2;
        }
        this.mAdjustScroller.startScroll(0, 0, 0, i, 800);
        invalidate();
        return true;
    }

    public final String formatNumber(int i) {
        Formatter formatter = this.mFormatter;
        return formatter != null ? formatter.format(i) : String.format(Locale.getDefault(), "%d", Integer.valueOf(i));
    }

    @Override // android.view.View
    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        if (!this.mHasSelectorWheel) {
            return super.getAccessibilityNodeProvider();
        }
        if (this.mAccessibilityNodeProvider == null) {
            this.mAccessibilityNodeProvider = new AccessibilityNodeProviderImpl();
        }
        return this.mAccessibilityNodeProvider;
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        return 0.9f;
    }

    public CharSequence getDisplayedValueForCurrentSelection() {
        return (CharSequence) this.mSelectorIndexToStringCache.get(getValue());
    }

    public String[] getDisplayedValues() {
        return this.mDisplayedValues;
    }

    public int getMaxValue() {
        return this.mMaxValue;
    }

    public int getMinValue() {
        return this.mMinValue;
    }

    public final int getSelectedPos(String str) {
        try {
            if (this.mDisplayedValues == null) {
                return Integer.parseInt(str);
            }
            for (int i = 0; i < this.mDisplayedValues.length; i++) {
                str = str.toLowerCase();
                if (this.mDisplayedValues[i].toLowerCase().startsWith(str)) {
                    return this.mMinValue + i;
                }
            }
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return this.mMinValue;
        }
    }

    @Override // android.view.View
    public int getSolidColor() {
        return this.mSolidColor;
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        return 0.9f;
    }

    public int getValue() {
        return this.mValue;
    }

    public boolean getWrapSelectorWheel() {
        return this.mWrapSelectorWheel;
    }

    public final int getWrappedSelectorIndex(int i) {
        int i2 = this.mMaxValue;
        int i3 = this.mMinValue;
        return i > i2 ? (((i - i2) % (i2 - i3)) + i3) - 1 : i < i3 ? (i2 - ((i3 - i) % (i2 - i3))) + 1 : i;
    }

    public final void hideSoftInput() {
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager == null || !inputMethodManager.isActive(this.mInputText)) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        if (this.mHasSelectorWheel) {
            this.mInputText.setVisibility(4);
        }
    }

    public final void initializeSelectorWheelIndices() {
        this.mSelectorIndexToStringCache.clear();
        int value = getValue();
        int i = 0;
        while (true) {
            int[] iArr = this.mSelectorIndices;
            if (i >= iArr.length) {
                return;
            }
            int i2 = (i - 1) + value;
            if (this.mWrapSelectorWheel) {
                i2 = getWrappedSelectorIndex(i2);
            }
            iArr[i] = i2;
            ensureCachedScrollSelectorValue(i2);
            i++;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.mSelectionDivider;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    public final boolean moveToFinalScrollerPosition(Scroller scroller) {
        scroller.forceFinished(true);
        int finalY = scroller.getFinalY() - scroller.getCurrY();
        int i = this.mInitialScrollOffset - ((this.mCurrentScrollOffset + finalY) % this.mSelectorElementHeight);
        if (i == 0) {
            return false;
        }
        int abs = Math.abs(i);
        int i2 = this.mSelectorElementHeight;
        if (abs > i2 / 2) {
            i = i > 0 ? i - i2 : i + i2;
        }
        scrollBy(0, finalY + i);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeAllCallbacks();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable drawable;
        Drawable drawable2;
        if (!this.mHasSelectorWheel) {
            super.onDraw(canvas);
            return;
        }
        int right = getRight();
        int left = getLeft();
        int bottom = getBottom();
        boolean hasFocus = this.mHideWheelUntilFocused ? hasFocus() : true;
        float f = (right - left) / 2;
        float f2 = this.mCurrentScrollOffset;
        int[] iArr = StateSet.get(16);
        if (hasFocus && (drawable2 = this.mVirtualButtonPressedDrawable) != null && this.mScrollState == 0) {
            if (this.mDecrementVirtualButtonPressed) {
                drawable2.setState(iArr);
                this.mVirtualButtonPressedDrawable.setBounds(0, 0, right, this.mTopSelectionDividerTop);
                this.mVirtualButtonPressedDrawable.draw(canvas);
            }
            if (this.mIncrementVirtualButtonPressed) {
                this.mVirtualButtonPressedDrawable.setState(iArr);
                this.mVirtualButtonPressedDrawable.setBounds(0, this.mBottomSelectionDividerBottom, right, bottom);
                this.mVirtualButtonPressedDrawable.draw(canvas);
            }
        }
        int i = 0;
        while (true) {
            int[] iArr2 = this.mSelectorIndices;
            if (i >= iArr2.length) {
                break;
            }
            String str = (String) this.mSelectorIndexToStringCache.get(iArr2[i]);
            if ((hasFocus && i != 1) || (i == 1 && this.mInputText.getVisibility() != 0)) {
                canvas.drawText(str, f, f2, this.mSelectorWheelPaint);
            }
            f2 += this.mSelectorElementHeight;
            i++;
        }
        if (!hasFocus || (drawable = this.mSelectionDivider) == null) {
            return;
        }
        int i2 = this.mTopSelectionDividerTop;
        drawable.setBounds(0, i2, right, this.mSelectionDividerHeight + i2);
        this.mSelectionDivider.draw(canvas);
        int i3 = this.mBottomSelectionDividerBottom;
        this.mSelectionDivider.setBounds(0, i3 - this.mSelectionDividerHeight, right, i3);
        this.mSelectionDivider.draw(canvas);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (this.mAccessibilityDelegate == null) {
            accessibilityEvent.setClassName(NumberPicker.class.getName());
            accessibilityEvent.setScrollable(true);
            accessibilityEvent.setScrollY((this.mMinValue + this.mValue) * this.mSelectorElementHeight);
            accessibilityEvent.setMaxScrollY((this.mMaxValue - this.mMinValue) * this.mSelectorElementHeight);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.mHasSelectorWheel || !isEnabled() || motionEvent.getActionMasked() != 0) {
            return false;
        }
        removeAllCallbacks();
        this.mInputText.setVisibility(4);
        float y = motionEvent.getY();
        this.mLastDownEventY = y;
        this.mLastDownOrMoveEventY = y;
        this.mLastDownEventTime = motionEvent.getEventTime();
        this.mIgnoreMoveEvents = false;
        this.mPerformClickOnTap = false;
        float f = this.mLastDownEventY;
        if (f < this.mTopSelectionDividerTop) {
            if (this.mScrollState == 0) {
                PressedStateHelper pressedStateHelper = this.mPressedStateHelper;
                pressedStateHelper.cancel();
                pressedStateHelper.mMode = 1;
                pressedStateHelper.mManagedButton = 2;
                NumberPicker.this.postDelayed(pressedStateHelper, ViewConfiguration.getTapTimeout());
            }
        } else if (f > this.mBottomSelectionDividerBottom && this.mScrollState == 0) {
            PressedStateHelper pressedStateHelper2 = this.mPressedStateHelper;
            pressedStateHelper2.cancel();
            pressedStateHelper2.mMode = 1;
            pressedStateHelper2.mManagedButton = 1;
            NumberPicker.this.postDelayed(pressedStateHelper2, ViewConfiguration.getTapTimeout());
        }
        getParent().requestDisallowInterceptTouchEvent(true);
        if (!this.mFlingScroller.isFinished()) {
            this.mFlingScroller.forceFinished(true);
            this.mAdjustScroller.forceFinished(true);
            if (this.mScrollState == 0) {
                return true;
            }
            this.mScrollState = 0;
            return true;
        }
        if (!this.mAdjustScroller.isFinished()) {
            this.mFlingScroller.forceFinished(true);
            this.mAdjustScroller.forceFinished(true);
            return true;
        }
        float f2 = this.mLastDownEventY;
        if (f2 < this.mTopSelectionDividerTop) {
            hideSoftInput();
            postChangeCurrentByOneFromLongPress(ViewConfiguration.getLongPressTimeout(), false);
            return true;
        }
        if (f2 > this.mBottomSelectionDividerBottom) {
            hideSoftInput();
            postChangeCurrentByOneFromLongPress(ViewConfiguration.getLongPressTimeout(), true);
            return true;
        }
        this.mPerformClickOnTap = true;
        MessagingController.AnonymousClass1 anonymousClass1 = this.mBeginSoftInputOnLongPressCommand;
        if (anonymousClass1 == null) {
            this.mBeginSoftInputOnLongPressCommand = new MessagingController.AnonymousClass1(6, this);
        } else {
            removeCallbacks(anonymousClass1);
        }
        postDelayed(this.mBeginSoftInputOnLongPressCommand, ViewConfiguration.getLongPressTimeout());
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (!this.mHasSelectorWheel) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int measuredWidth2 = this.mInputText.getMeasuredWidth();
        int measuredHeight2 = this.mInputText.getMeasuredHeight();
        int i5 = (measuredWidth - measuredWidth2) / 2;
        int i6 = (measuredHeight - measuredHeight2) / 2;
        this.mInputText.layout(i5, i6, measuredWidth2 + i5, measuredHeight2 + i6);
        if (z) {
            int top = getTop();
            int bottom = getBottom();
            initializeSelectorWheelIndices();
            int length = this.mSelectorIndices.length;
            int i7 = this.mTextSize;
            int length2 = (int) ((((bottom - top) - (length * i7)) / r4.length) + 0.5f);
            this.mSelectorTextGapHeight = length2;
            this.mSelectorElementHeight = i7 + length2;
            int top2 = (this.mInputText.getTop() + this.mInputText.getBaseline()) - this.mSelectorElementHeight;
            this.mInitialScrollOffset = top2;
            this.mCurrentScrollOffset = top2;
            updateInputTextView();
            int top3 = getTop();
            int bottom2 = getBottom();
            setVerticalFadingEdgeEnabled(true);
            setFadingEdgeLength(((bottom2 - top3) - this.mTextSize) / 2);
            int height = getHeight();
            int i8 = this.mSelectionDividersDistance;
            int i9 = this.mSelectionDividerHeight;
            int i10 = ((height - i8) / 2) - i9;
            this.mTopSelectionDividerTop = i10;
            this.mBottomSelectionDividerBottom = (i9 * 2) + i10 + i8;
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        if (!this.mHasSelectorWheel) {
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(makeMeasureSpec(i, this.mMaxWidth), makeMeasureSpec(i2, this.mMaxHeight));
        int i3 = this.mMinWidth;
        int measuredWidth = getMeasuredWidth();
        if (i3 != -1) {
            measuredWidth = View.resolveSizeAndState(Math.max(i3, measuredWidth), i, 0);
        }
        int i4 = this.mMinHeight;
        int measuredHeight = getMeasuredHeight();
        if (i4 != -1) {
            measuredHeight = View.resolveSizeAndState(Math.max(i4, measuredHeight), i2, 0);
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || !this.mHasSelectorWheel) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked != 2 || this.mIgnoreMoveEvents) {
                return true;
            }
            float y = motionEvent.getY();
            if (this.mScrollState == 1) {
                scrollBy(0, (int) (y - this.mLastDownOrMoveEventY));
                invalidate();
            } else if (((int) Math.abs(y - this.mLastDownEventY)) > this.mTouchSlop) {
                removeAllCallbacks();
                if (this.mScrollState != 1) {
                    this.mScrollState = 1;
                }
            }
            this.mLastDownOrMoveEventY = y;
            return true;
        }
        MessagingController.AnonymousClass1 anonymousClass1 = this.mBeginSoftInputOnLongPressCommand;
        if (anonymousClass1 != null) {
            removeCallbacks(anonymousClass1);
        }
        ChangeCurrentByOneFromLongPressCommand changeCurrentByOneFromLongPressCommand = this.mChangeCurrentByOneFromLongPressCommand;
        if (changeCurrentByOneFromLongPressCommand != null) {
            removeCallbacks(changeCurrentByOneFromLongPressCommand);
        }
        this.mPressedStateHelper.cancel();
        VelocityTracker velocityTracker = this.mVelocityTracker;
        velocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
        int yVelocity = (int) velocityTracker.getYVelocity();
        if (Math.abs(yVelocity) > this.mMinimumFlingVelocity) {
            this.mPreviousScrollerY = 0;
            Scroller scroller = this.mFlingScroller;
            if (yVelocity > 0) {
                scroller.fling(0, 0, 0, yVelocity, 0, 0, 0, Integer.MAX_VALUE);
            } else {
                scroller.fling(0, Integer.MAX_VALUE, 0, yVelocity, 0, 0, 0, Integer.MAX_VALUE);
            }
            invalidate();
            if (this.mScrollState != 2) {
                this.mScrollState = 2;
            }
        } else {
            int y2 = (int) motionEvent.getY();
            int abs = (int) Math.abs(y2 - this.mLastDownEventY);
            long eventTime = motionEvent.getEventTime() - this.mLastDownEventTime;
            if (abs > this.mTouchSlop || eventTime >= ViewConfiguration.getTapTimeout()) {
                ensureScrollWheelAdjusted();
            } else if (this.mPerformClickOnTap) {
                this.mPerformClickOnTap = false;
                performClick();
            } else {
                int i = (y2 / this.mSelectorElementHeight) - 1;
                if (i > 0) {
                    changeValueByOne(true);
                    PressedStateHelper pressedStateHelper = this.mPressedStateHelper;
                    pressedStateHelper.cancel();
                    pressedStateHelper.mMode = 2;
                    pressedStateHelper.mManagedButton = 1;
                    NumberPicker.this.post(pressedStateHelper);
                } else if (i < 0) {
                    changeValueByOne(false);
                    PressedStateHelper pressedStateHelper2 = this.mPressedStateHelper;
                    pressedStateHelper2.cancel();
                    pressedStateHelper2.mMode = 2;
                    pressedStateHelper2.mManagedButton = 2;
                    NumberPicker.this.post(pressedStateHelper2);
                }
            }
            if (this.mScrollState != 0) {
                this.mScrollState = 0;
            }
        }
        this.mVelocityTracker.recycle();
        this.mVelocityTracker = null;
        return true;
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (!this.mHasSelectorWheel) {
            return super.performClick();
        }
        if (super.performClick()) {
            return true;
        }
        showSoftInput();
        return true;
    }

    @Override // android.view.View
    public final boolean performLongClick() {
        if (!this.mHasSelectorWheel) {
            return super.performLongClick();
        }
        if (!super.performLongClick()) {
            showSoftInput();
            this.mIgnoreMoveEvents = true;
        }
        return true;
    }

    public final void postChangeCurrentByOneFromLongPress(long j, boolean z) {
        Runnable runnable = this.mChangeCurrentByOneFromLongPressCommand;
        if (runnable == null) {
            this.mChangeCurrentByOneFromLongPressCommand = new ChangeCurrentByOneFromLongPressCommand(this);
        } else {
            removeCallbacks(runnable);
        }
        ChangeCurrentByOneFromLongPressCommand changeCurrentByOneFromLongPressCommand = this.mChangeCurrentByOneFromLongPressCommand;
        changeCurrentByOneFromLongPressCommand.mIncrement = z;
        postDelayed(changeCurrentByOneFromLongPressCommand, j);
    }

    public final void removeAllCallbacks() {
        ChangeCurrentByOneFromLongPressCommand changeCurrentByOneFromLongPressCommand = this.mChangeCurrentByOneFromLongPressCommand;
        if (changeCurrentByOneFromLongPressCommand != null) {
            removeCallbacks(changeCurrentByOneFromLongPressCommand);
        }
        SetSelectionCommand setSelectionCommand = this.mSetSelectionCommand;
        if (setSelectionCommand != null && setSelectionCommand.mPosted) {
            setSelectionCommand.mInputText.removeCallbacks(setSelectionCommand);
            setSelectionCommand.mPosted = false;
        }
        MessagingController.AnonymousClass1 anonymousClass1 = this.mBeginSoftInputOnLongPressCommand;
        if (anonymousClass1 != null) {
            removeCallbacks(anonymousClass1);
        }
        this.mPressedStateHelper.cancel();
    }

    @Override // android.view.View
    public final void scrollBy(int i, int i2) {
        boolean z = this.mWrapSelectorWheel;
        int[] iArr = this.mSelectorIndices;
        if (!z && i2 > 0 && iArr[1] <= this.mMinValue) {
            this.mCurrentScrollOffset = this.mInitialScrollOffset;
            return;
        }
        if (!z && i2 < 0 && iArr[1] >= this.mMaxValue) {
            this.mCurrentScrollOffset = this.mInitialScrollOffset;
            return;
        }
        this.mCurrentScrollOffset += i2;
        while (true) {
            int i3 = this.mCurrentScrollOffset;
            if (i3 - this.mInitialScrollOffset <= this.mSelectorTextGapHeight) {
                break;
            }
            this.mCurrentScrollOffset = i3 - this.mSelectorElementHeight;
            for (int length = iArr.length - 1; length > 0; length--) {
                iArr[length] = iArr[length - 1];
            }
            int i4 = iArr[1] - 1;
            if (this.mWrapSelectorWheel && i4 < this.mMinValue) {
                i4 = this.mMaxValue;
            }
            iArr[0] = i4;
            ensureCachedScrollSelectorValue(i4);
            setValueInternal(iArr[1], true);
            if (!this.mWrapSelectorWheel && iArr[1] <= this.mMinValue) {
                this.mCurrentScrollOffset = this.mInitialScrollOffset;
            }
        }
        while (true) {
            int i5 = this.mCurrentScrollOffset;
            if (i5 - this.mInitialScrollOffset >= (-this.mSelectorTextGapHeight)) {
                return;
            }
            this.mCurrentScrollOffset = i5 + this.mSelectorElementHeight;
            int i6 = 0;
            while (i6 < iArr.length - 1) {
                int i7 = i6 + 1;
                iArr[i6] = iArr[i7];
                i6 = i7;
            }
            int i8 = iArr[iArr.length - 2] + 1;
            if (this.mWrapSelectorWheel && i8 > this.mMaxValue) {
                i8 = this.mMinValue;
            }
            iArr[iArr.length - 1] = i8;
            ensureCachedScrollSelectorValue(i8);
            setValueInternal(iArr[1], true);
            if (!this.mWrapSelectorWheel && iArr[1] >= this.mMaxValue) {
                this.mCurrentScrollOffset = this.mInitialScrollOffset;
            }
        }
    }

    @Override // android.view.View
    public void setAccessibilityDelegate(View.AccessibilityDelegate accessibilityDelegate) {
        super.setAccessibilityDelegate(accessibilityDelegate);
        this.mAccessibilityDelegate = accessibilityDelegate;
    }

    public void setDisplayedValues(String[] strArr) {
        if (this.mDisplayedValues == strArr) {
            return;
        }
        this.mDisplayedValues = strArr;
        EditText editText = this.mInputText;
        if (strArr != null) {
            editText.setRawInputType(524289);
        } else {
            editText.setRawInputType(2);
        }
        updateInputTextView();
        initializeSelectorWheelIndices();
        tryComputeMaxWidth();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!this.mHasSelectorWheel) {
            this.mIncrementButton.setEnabled(z);
        }
        if (!this.mHasSelectorWheel) {
            this.mDecrementButton.setEnabled(z);
        }
        this.mInputText.setEnabled(z);
    }

    public void setFormatter(Formatter formatter) {
        if (formatter == this.mFormatter) {
            return;
        }
        this.mFormatter = formatter;
        initializeSelectorWheelIndices();
        updateInputTextView();
    }

    public void setMaxValue(int i) {
        if (this.mMaxValue == i) {
            return;
        }
        if (i < 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("maxValue must be >= 0");
            return;
        }
        this.mMaxValue = i;
        if (i < this.mValue) {
            this.mValue = i;
        }
        updateWrapSelectorWheel();
        initializeSelectorWheelIndices();
        updateInputTextView();
        tryComputeMaxWidth();
        invalidate();
    }

    public void setMinValue(int i) {
        if (this.mMinValue == i) {
            return;
        }
        if (i < 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("minValue must be >= 0");
            return;
        }
        this.mMinValue = i;
        if (i > this.mValue) {
            this.mValue = i;
        }
        updateWrapSelectorWheel();
        initializeSelectorWheelIndices();
        updateInputTextView();
        tryComputeMaxWidth();
        invalidate();
    }

    public void setOnLongPressUpdateInterval(long j) {
        this.mLongPressUpdateInterval = j;
    }

    public void setOnValueChangedListener(OnValueChangeListener onValueChangeListener) {
        this.mOnValueChangeListener = onValueChangeListener;
    }

    public void setValue(int i) {
        setValueInternal(i, false);
    }

    public final void setValueInternal(int i, boolean z) {
        OnValueChangeListener onValueChangeListener;
        if (this.mValue == i) {
            return;
        }
        int wrappedSelectorIndex = this.mWrapSelectorWheel ? getWrappedSelectorIndex(i) : Math.min(Math.max(i, this.mMinValue), this.mMaxValue);
        int i2 = this.mValue;
        this.mValue = wrappedSelectorIndex;
        updateInputTextView();
        if (z && (onValueChangeListener = this.mOnValueChangeListener) != null) {
            onValueChangeListener.onValueChange(this, i2, this.mValue);
        }
        initializeSelectorWheelIndices();
        invalidate();
    }

    public void setWrapSelectorWheel(boolean z) {
        this.mWrapSelectorWheelPreferred = z;
        updateWrapSelectorWheel();
    }

    public final void showSoftInput() {
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            if (this.mHasSelectorWheel) {
                this.mInputText.setVisibility(0);
            }
            this.mInputText.requestFocus();
            inputMethodManager.showSoftInput(this.mInputText, 0);
        }
    }

    public final void tryComputeMaxWidth() {
        int i;
        if (this.mComputeMaxWidth) {
            String[] strArr = this.mDisplayedValues;
            int i2 = 0;
            if (strArr == null) {
                float f = 0.0f;
                for (int i3 = 0; i3 <= 9; i3++) {
                    float measureText = this.mSelectorWheelPaint.measureText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i3)));
                    if (measureText > f) {
                        f = measureText;
                    }
                }
                for (int i4 = this.mMaxValue; i4 > 0; i4 /= 10) {
                    i2++;
                }
                i = (int) (i2 * f);
            } else {
                int length = strArr.length;
                int i5 = 0;
                while (i2 < length) {
                    float measureText2 = this.mSelectorWheelPaint.measureText(this.mDisplayedValues[i2]);
                    if (measureText2 > i5) {
                        i5 = (int) measureText2;
                    }
                    i2++;
                }
                i = i5;
            }
            int paddingRight = this.mInputText.getPaddingRight() + this.mInputText.getPaddingLeft() + i;
            if (this.mMaxWidth != paddingRight) {
                int i6 = this.mMinWidth;
                if (paddingRight > i6) {
                    this.mMaxWidth = paddingRight;
                } else {
                    this.mMaxWidth = i6;
                }
                invalidate();
            }
        }
    }

    public final void updateInputTextView() {
        String[] strArr = this.mDisplayedValues;
        int i = this.mValue;
        String formatNumber = strArr == null ? formatNumber(i) : strArr[i - this.mMinValue];
        if (TextUtils.isEmpty(formatNumber) || formatNumber.equals(this.mInputText.getText().toString())) {
            return;
        }
        this.mInputText.setText(formatNumber);
    }

    public final void updateWrapSelectorWheel() {
        this.mWrapSelectorWheel = this.mMaxValue - this.mMinValue >= this.mSelectorIndices.length && this.mWrapSelectorWheelPreferred;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ChangeCurrentByOneFromLongPressCommand implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public boolean mIncrement;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ ChangeCurrentByOneFromLongPressCommand(int i, Object obj, boolean z) {
            this.$r8$classId = i;
            this.this$0 = obj;
            this.mIncrement = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    NumberPicker numberPicker = (NumberPicker) obj;
                    boolean z = this.mIncrement;
                    TwoDigitFormatter twoDigitFormatter = NumberPicker.sTwoDigitFormatter;
                    numberPicker.changeValueByOne(z);
                    numberPicker.postDelayed(this, numberPicker.mLongPressUpdateInterval);
                    break;
                case 1:
                    boolean z2 = this.mIncrement;
                    Util.assertMainThread();
                    SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24 singletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24 = (SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24) ((IndividualNetworkCallback) obj).onConstraintState;
                    boolean z3 = singletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24.isConnected;
                    singletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24.isConnected = z2;
                    if (z3 != z2) {
                        singletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24.listener.onConnectivityChanged(z2);
                        break;
                    }
                    break;
                default:
                    ((SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24) obj).listener.onConnectivityChanged(this.mIncrement);
                    break;
            }
        }

        public ChangeCurrentByOneFromLongPressCommand(NumberPicker numberPicker) {
            this.$r8$classId = 0;
            this.this$0 = numberPicker;
        }
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
    }

    public NumberPicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.numberPickerStyle);
    }

    public NumberPicker(Context context) {
        this(context, null);
    }

    public NumberPicker(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mWrapSelectorWheelPreferred = true;
        this.mLongPressUpdateInterval = 300L;
        this.mSelectorIndexToStringCache = new SparseArray();
        this.mSelectorIndices = new int[3];
        this.mInitialScrollOffset = Integer.MIN_VALUE;
        this.mScrollState = 0;
        this.mLastHandledDownDpadKeyCode = -1;
        attrHandler(context, attributeSet, i, i2);
    }
}
