package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.appcompat.widget.ListPopupWindow;
import androidx.appcompat.widget.SuggestionsAdapter;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.constraintlayout.core.SolverVariable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.preference.PreferenceGroupAdapter;
import androidx.preference.PreferenceRecyclerViewAccessibilityDelegate;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GapWorker;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.util.TableInfo;
import app.k9mail.feature.widget.message.list.MessageListItem;
import app.k9mail.legacy.ui.folder.DisplayFolder;
import app.k9mail.ui.utils.bottomsheet.ToolbarBottomSheetDialog;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.mail.folders.RemoteFolder;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mail.internet.ParameterSection;
import com.fsck.k9.view.RecipientSelectView;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.Snackbar;
import com.takisoft.datetimepicker.util.StateSet;
import com.takisoft.datetimepicker.widget.DayPickerPagerAdapter;
import com.takisoft.datetimepicker.widget.DayPickerView;
import com.takisoft.datetimepicker.widget.SimpleMonthView;
import de.cketti.changelog.ReleaseItem;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import net.thunderbird.feature.mail.folder.api.FolderType;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.ZipEntry;
import org.jetbrains.compose.resources.DensityQualifier;
import org.minidns.record.MX;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ViewPager extends ViewGroup {
    public static final AnonymousClass1 COMPARATOR;
    public static final int[] LAYOUT_ATTRS = {R.attr.layout_gravity};
    public static final AnonymousClass2 sInterpolator;
    public int mActivePointerId;
    public PagerAdapter mAdapter;
    public int mBottomPageBounds;
    public boolean mCalledSuper;
    public final int mCloseEnough;
    public int mCurItem;
    public int mDecorChildCount;
    public final Fragment.AnonymousClass1 mEndScrollRunnable;
    public int mExpectedAdapterCount;
    public boolean mFirstLayout;
    public float mFirstOffset;
    public final int mFlingDistance;
    public float mInitialMotionX;
    public float mInitialMotionY;
    public boolean mIsBeingDragged;
    public boolean mIsScrollStarted;
    public boolean mIsUnableToDrag;
    public final ArrayList mItems;
    public float mLastMotionX;
    public float mLastMotionY;
    public float mLastOffset;
    public final EdgeEffect mLeftEdge;
    public Drawable mMarginDrawable;
    public final int mMaximumVelocity;
    public final int mMinimumVelocity;
    public PagerObserver mObserver;
    public int mOffscreenPageLimit;
    public OnPageChangeListener mOnPageChangeListener;
    public int mPageMargin;
    public boolean mPopulatePending;
    public int mRestoredCurItem;
    public final EdgeEffect mRightEdge;
    public int mScrollState;
    public final Scroller mScroller;
    public boolean mScrollingCacheEnabled;
    public final ItemInfo mTempItem;
    public final Rect mTempRect;
    public int mTopPageBounds;
    public final int mTouchSlop;
    public VelocityTracker mVelocityTracker;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.viewpager.widget.ViewPager$1, reason: invalid class name */
    public final class AnonymousClass1 implements Comparator {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int i = this.$r8$classId;
            FolderType folderType = FolderType.INBOX;
            switch (i) {
                case 0:
                    return ((ItemInfo) obj).position - ((ItemInfo) obj2).position;
                case 1:
                    return Util.compareValues((String) ((Pair) obj).first, (String) ((Pair) obj2).first);
                case 2:
                    return ((SolverVariable) obj).id - ((SolverVariable) obj2).id;
                case 3:
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    float z = ((View) obj).getZ();
                    float z2 = ((View) obj2).getZ();
                    if (z > z2) {
                        return -1;
                    }
                    return z < z2 ? 1 : 0;
                case 4:
                    return ((DiffUtil.Diagonal) obj).x - ((DiffUtil.Diagonal) obj2).x;
                case 5:
                    GapWorker.Task task = (GapWorker.Task) obj;
                    GapWorker.Task task2 = (GapWorker.Task) obj2;
                    RecyclerView recyclerView = task.view;
                    if ((recyclerView == null) == (task2.view == null)) {
                        boolean z3 = task.neededNextFrame;
                        if (z3 == task2.neededNextFrame) {
                            int i2 = task2.viewVelocity - task.viewVelocity;
                            if (i2 != 0) {
                                return i2;
                            }
                            int i3 = task.distanceToItem - task2.distanceToItem;
                            if (i3 != 0) {
                                return i3;
                            }
                            return 0;
                        }
                        if (z3) {
                            return -1;
                        }
                    } else if (recyclerView != null) {
                        return -1;
                    }
                    return 1;
                case 6:
                    return Util.compareValues((Integer) ((Map.Entry) obj).getKey(), (Integer) ((Map.Entry) obj2).getKey());
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    return Util.compareValues((Integer) ((Map.Entry) obj).getKey(), (Integer) ((Map.Entry) obj2).getKey());
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    return Util.compareValues(((TableInfo.Column) obj).name, ((TableInfo.Column) obj2).name);
                case 9:
                    return Util.compareValues(((TableInfo.Index) obj).name, ((TableInfo.Index) obj2).name);
                case 10:
                    return ((int[]) obj)[0] - ((int[]) obj2)[0];
                case 11:
                    return Integer.valueOf(((MX) obj).priority).compareTo(Integer.valueOf(((MX) obj2).priority));
                case BasicTextKt.ShiftMeta /* 12 */:
                    com.fsck.k9.mail.FolderType folderType2 = ((RemoteFolder) obj2).type;
                    com.fsck.k9.mail.FolderType folderType3 = com.fsck.k9.mail.FolderType.INBOX;
                    return Boolean.valueOf(folderType2 == folderType3).compareTo(Boolean.valueOf(((RemoteFolder) obj).type == folderType3));
                case 13:
                    return Long.valueOf(((MessageListItem) obj2).sortMessageDate).compareTo(Long.valueOf(((MessageListItem) obj).sortMessageDate));
                case 14:
                    return Boolean.valueOf(((DisplayFolder) obj2).folder.type == folderType).compareTo(Boolean.valueOf(((DisplayFolder) obj).folder.type == folderType));
                case OffsetKt.Horizontal /* 15 */:
                    RecipientSelectView.Recipient recipient = (RecipientSelectView.Recipient) obj;
                    RecipientSelectView.Recipient recipient2 = (RecipientSelectView.Recipient) obj2;
                    boolean z4 = recipient2.starred;
                    String str = recipient2.sortKey;
                    if (z4 == recipient.starred) {
                        int i4 = recipient2.timesContacted - recipient.timesContacted;
                        if (i4 != 0) {
                            return i4;
                        }
                        String str2 = recipient.sortKey;
                        if (str2 == null && str == null) {
                            return 0;
                        }
                        if (str2 != null) {
                            if (str == null) {
                                return -1;
                            }
                            return String.CASE_INSENSITIVE_ORDER.compare(str2, str);
                        }
                    } else if (!z4) {
                        return -1;
                    }
                    return 1;
                case 16:
                    MimeMessage mimeMessage = (MimeMessage) obj;
                    MimeMessage mimeMessage2 = (MimeMessage) obj2;
                    mimeMessage.getClass();
                    mimeMessage2.getClass();
                    String str3 = mimeMessage.mUid;
                    Long longOrNull = str3 != null ? StringsKt__StringsJVMKt.toLongOrNull(str3) : null;
                    String str4 = mimeMessage2.mUid;
                    Long longOrNull2 = str4 != null ? StringsKt__StringsJVMKt.toLongOrNull(str4) : null;
                    if (longOrNull == null && longOrNull2 == null) {
                        return 0;
                    }
                    if (longOrNull == null) {
                        return 1;
                    }
                    if (longOrNull2 == null) {
                        return -1;
                    }
                    return Intrinsics.compare(longOrNull2.longValue(), longOrNull.longValue());
                case 17:
                    return Util.compareValues(((ParameterSection) obj).section, ((ParameterSection) obj2).section);
                case 18:
                    return Boolean.valueOf(((net.thunderbird.feature.mail.folder.api.RemoteFolder) obj2).type == folderType).compareTo(Boolean.valueOf(((net.thunderbird.feature.mail.folder.api.RemoteFolder) obj).type == folderType));
                case 19:
                    return ((View) obj).getTop() - ((View) obj2).getTop();
                case 20:
                    return ((Comparable) obj).compareTo((Comparable) obj2);
                case 21:
                    float[] fArr = new float[3];
                    Color.colorToHSV(((Integer) obj).intValue(), fArr);
                    float f = fArr[0];
                    float f2 = fArr[1];
                    float f3 = fArr[2];
                    float[] fArr2 = new float[3];
                    Color.colorToHSV(((Integer) obj2).intValue(), fArr2);
                    float f4 = fArr2[0];
                    float f5 = fArr2[1];
                    float f6 = fArr2[2];
                    if (f >= f4) {
                        if (f > f4) {
                            return -1;
                        }
                        if (f2 >= f5) {
                            if (f2 > f5) {
                                return -1;
                            }
                            if (f3 >= f6) {
                                return f3 > f6 ? -1 : 0;
                            }
                        }
                    }
                    return 1;
                case 22:
                    int i5 = ((ReleaseItem) obj).versionCode;
                    int i6 = ((ReleaseItem) obj2).versionCode;
                    if (i5 < i6) {
                        return 1;
                    }
                    return i5 > i6 ? -1 : 0;
                case 23:
                    return Util.compareValues(((Field) obj).getName(), ((Field) obj2).getName());
                case 24:
                    Comparable comparable = (Comparable) obj;
                    comparable.getClass();
                    return ((Comparable) obj2).compareTo(comparable);
                case 25:
                    return Util.compareValues(((ZipEntry) obj).canonicalPath, ((ZipEntry) obj2).canonicalPath);
                case 26:
                    return Integer.valueOf(((DensityQualifier) obj).dpi).compareTo(Integer.valueOf(((DensityQualifier) obj2).dpi));
                default:
                    return Integer.valueOf(((DensityQualifier) obj2).dpi).compareTo(Integer.valueOf(((DensityQualifier) obj).dpi));
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.viewpager.widget.ViewPager$2, reason: invalid class name */
    public final class AnonymousClass2 implements Interpolator {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass2(int i) {
            this.$r8$classId = i;
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            switch (this.$r8$classId) {
                case 0:
                case 1:
                case 3:
                default:
                    float f2 = f - 1.0f;
                    return (f2 * f2 * f2 * f2 * f2) + 1.0f;
                case 2:
                    return f * f * f * f * f;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Retention(RetentionPolicy.RUNTIME)
    public @interface DecorView {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ItemInfo {
        public DayPickerPagerAdapter.ViewHolder object;
        public float offset;
        public int position;
        public boolean scrolling;
        public float widthFactor;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LayoutParams extends ViewGroup.LayoutParams {
        public int gravity;
        public boolean isDecor;
        public float widthFactor;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnPageChangeListener {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PagerObserver extends DataSetObserver {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ PagerObserver(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    ((ViewPager) obj).dataSetChanged();
                    break;
                case 1:
                    ListPopupWindow listPopupWindow = (ListPopupWindow) obj;
                    if (listPopupWindow.mPopup.isShowing()) {
                        listPopupWindow.show();
                        break;
                    }
                    break;
                default:
                    SuggestionsAdapter suggestionsAdapter = (SuggestionsAdapter) obj;
                    suggestionsAdapter.mDataValid = true;
                    suggestionsAdapter.notifyDataSetChanged();
                    break;
            }
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    ((ViewPager) obj).dataSetChanged();
                    break;
                case 1:
                    ((ListPopupWindow) obj).dismiss();
                    break;
                default:
                    SuggestionsAdapter suggestionsAdapter = (SuggestionsAdapter) obj;
                    suggestionsAdapter.mDataValid = false;
                    suggestionsAdapter.notifyDataSetInvalidated();
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AbsSavedState.AnonymousClass2(8);
        public Parcelable adapterState;
        public int position;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? SavedState.class.getClassLoader() : classLoader;
            this.position = parcel.readInt();
            this.adapterState = parcel.readParcelable(classLoader);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("FragmentPager.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" position=");
            return CameraDevices$CC.m(sb, this.position, "}");
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.position);
            parcel.writeParcelable(this.adapterState, i);
        }
    }

    static {
        int i = 0;
        COMPARATOR = new AnonymousClass1(i);
        sInterpolator = new AnonymousClass2(i);
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mItems = new ArrayList();
        this.mTempItem = new ItemInfo();
        this.mTempRect = new Rect();
        this.mRestoredCurItem = -1;
        this.mFirstOffset = -3.4028235E38f;
        this.mLastOffset = Float.MAX_VALUE;
        this.mOffscreenPageLimit = 1;
        this.mActivePointerId = -1;
        this.mFirstLayout = true;
        this.mEndScrollRunnable = new Fragment.AnonymousClass1(24, this);
        this.mScrollState = 0;
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context2 = getContext();
        this.mScroller = new Scroller(context2, sInterpolator);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context2);
        float f = context2.getResources().getDisplayMetrics().density;
        this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
        this.mMinimumVelocity = (int) (400.0f * f);
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mLeftEdge = new EdgeEffect(context2);
        this.mRightEdge = new EdgeEffect(context2);
        this.mFlingDistance = (int) (25.0f * f);
        this.mCloseEnough = (int) (f * 2.0f);
        ViewCompat.setAccessibilityDelegate(this, new MyAccessibilityDelegate(0, this));
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(this, new Base64Util(this));
    }

    public static boolean canScroll(int i, int i2, int i3, View view, boolean z) {
        int i4;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && canScroll(i, i5 - childAt.getLeft(), i4 - childAt.getTop(), childAt, true)) {
                    break;
                }
            }
        }
        return z && view.canScrollHorizontally(-i);
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.mScrollingCacheEnabled != z) {
            this.mScrollingCacheEnabled = z;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        ItemInfo infoForChild;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.position == this.mCurItem) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    public final ItemInfo addNewItem(int i, int i2) {
        ItemInfo itemInfo = new ItemInfo();
        itemInfo.position = i;
        DayPickerPagerAdapter dayPickerPagerAdapter = (DayPickerPagerAdapter) this.mAdapter;
        Calendar calendar = dayPickerPagerAdapter.mMaxDate;
        Calendar calendar2 = dayPickerPagerAdapter.mMinDate;
        View inflate = dayPickerPagerAdapter.mInflater.inflate(dayPickerPagerAdapter.mLayoutResId, (ViewGroup) this, false);
        SimpleMonthView simpleMonthView = (SimpleMonthView) inflate.findViewById(dayPickerPagerAdapter.mCalendarViewId);
        simpleMonthView.mOnDayClickListener = dayPickerPagerAdapter.mOnDayClickListener;
        simpleMonthView.applyTextAppearance(simpleMonthView.mMonthPaint, dayPickerPagerAdapter.mMonthTextAppearance);
        simpleMonthView.invalidate();
        simpleMonthView.applyTextAppearance(simpleMonthView.mDayOfWeekPaint, dayPickerPagerAdapter.mDayOfWeekTextAppearance);
        simpleMonthView.invalidate();
        ColorStateList applyTextAppearance = simpleMonthView.applyTextAppearance(simpleMonthView.mDayPaint, dayPickerPagerAdapter.mDayTextAppearance);
        if (applyTextAppearance != null) {
            simpleMonthView.mDayTextColor = applyTextAppearance;
        }
        simpleMonthView.invalidate();
        ColorStateList colorStateList = dayPickerPagerAdapter.mDaySelectorColor;
        if (colorStateList != null) {
            int colorForState = colorStateList.getColorForState(StateSet.get(40), 0);
            simpleMonthView.mDaySelectorPaint.setColor(colorForState);
            Paint paint = simpleMonthView.mDayHighlightSelectorPaint;
            paint.setColor(colorForState);
            paint.setAlpha(176);
            simpleMonthView.invalidate();
        }
        ColorStateList colorStateList2 = dayPickerPagerAdapter.mDayHighlightColor;
        if (colorStateList2 != null) {
            simpleMonthView.mDayHighlightPaint.setColor(colorStateList2.getColorForState(StateSet.get(24), 0));
            simpleMonthView.invalidate();
        }
        int i3 = (calendar2.get(2) + i) % 12;
        int i4 = calendar2.get(1) + ((calendar2.get(2) + i) / 12);
        Calendar calendar3 = dayPickerPagerAdapter.mSelectedDay;
        int i5 = (calendar3 == null || calendar3.get(2) != i3) ? -1 : dayPickerPagerAdapter.mSelectedDay.get(5);
        int i6 = (calendar2.get(2) == i3 && calendar2.get(1) == i4) ? calendar2.get(5) : 1;
        int i7 = 31;
        int i8 = (calendar.get(2) == i3 && calendar.get(1) == i4) ? calendar.get(5) : 31;
        int i9 = dayPickerPagerAdapter.mFirstDayOfWeek;
        simpleMonthView.mActivatedDay = i5;
        if (i3 >= 0 && i3 <= 11) {
            simpleMonthView.mMonth = i3;
        }
        simpleMonthView.mYear = i4;
        simpleMonthView.mCalendar.set(2, simpleMonthView.mMonth);
        simpleMonthView.mCalendar.set(1, simpleMonthView.mYear);
        simpleMonthView.mCalendar.set(5, 1);
        simpleMonthView.mDayOfWeekStart = simpleMonthView.mCalendar.get(7);
        if (i9 < 1 || i9 > 7) {
            simpleMonthView.mWeekStart = simpleMonthView.mCalendar.getFirstDayOfWeek();
        } else {
            simpleMonthView.mWeekStart = i9;
        }
        Calendar calendar4 = Calendar.getInstance();
        simpleMonthView.mToday = -1;
        int i10 = simpleMonthView.mMonth;
        int i11 = simpleMonthView.mYear;
        switch (i10) {
            case 0:
            case 2:
            case 4:
            case 6:
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
            case 9:
            case 11:
                break;
            case 1:
                if (i11 % 4 != 0) {
                    i7 = 28;
                    break;
                } else {
                    i7 = 29;
                    break;
                }
            case 3:
            case 5:
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
            case 10:
                i7 = 30;
                break;
            default:
                UriKt$$ExternalSyntheticBUOutline0.m("Invalid Month");
                return null;
        }
        simpleMonthView.mDaysInMonth = i7;
        int i12 = 0;
        while (true) {
            int i13 = simpleMonthView.mDaysInMonth;
            if (i12 >= i13) {
                int i14 = i6 >= 1 ? i6 > i13 ? i13 : i6 : 1;
                simpleMonthView.mEnabledDayStart = i14;
                if (i8 < i14) {
                    i8 = i14;
                } else if (i8 > i13) {
                    i8 = i13;
                }
                simpleMonthView.mEnabledDayEnd = i8;
                simpleMonthView.updateMonthYearLabel();
                simpleMonthView.updateDayOfWeekLabels();
                simpleMonthView.mTouchHelper.invalidateRoot();
                simpleMonthView.invalidate();
                DayPickerPagerAdapter.ViewHolder viewHolder = new DayPickerPagerAdapter.ViewHolder(i, inflate, simpleMonthView);
                dayPickerPagerAdapter.mItems.put(i, viewHolder);
                addView(inflate);
                itemInfo.object = viewHolder;
                this.mAdapter.getClass();
                itemInfo.widthFactor = 1.0f;
                ArrayList arrayList = this.mItems;
                if (i2 < 0 || i2 >= arrayList.size()) {
                    arrayList.add(itemInfo);
                    return itemInfo;
                }
                arrayList.add(i2, itemInfo);
                return itemInfo;
            }
            i12++;
            if (simpleMonthView.mYear == calendar4.get(1) && simpleMonthView.mMonth == calendar4.get(2) && i12 == calendar4.get(5)) {
                simpleMonthView.mToday = i12;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addTouchables(ArrayList arrayList) {
        ItemInfo infoForChild;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.position == this.mCurItem) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateDefaultLayoutParams();
        }
        ((LayoutParams) layoutParams).isDecor |= view.getClass().getAnnotation(DecorView.class) != null;
        super.addView(view, i, layoutParams);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean arrowScroll(int r8) {
        /*
            r7 = this;
            android.view.View r0 = r7.findFocus()
            r1 = 0
            if (r0 != r7) goto L9
        L7:
            r0 = r1
            goto L58
        L9:
            if (r0 == 0) goto L58
            android.view.ViewParent r2 = r0.getParent()
        Lf:
            boolean r3 = r2 instanceof android.view.ViewGroup
            if (r3 == 0) goto L1b
            if (r2 != r7) goto L16
            goto L58
        L16:
            android.view.ViewParent r2 = r2.getParent()
            goto Lf
        L1b:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.Class r3 = r0.getClass()
            java.lang.String r3 = r3.getSimpleName()
            r2.append(r3)
            android.view.ViewParent r0 = r0.getParent()
        L2f:
            boolean r3 = r0 instanceof android.view.ViewGroup
            if (r3 == 0) goto L48
            java.lang.String r3 = " => "
            r2.append(r3)
            java.lang.Class r3 = r0.getClass()
            java.lang.String r3 = r3.getSimpleName()
            r2.append(r3)
            android.view.ViewParent r0 = r0.getParent()
            goto L2f
        L48:
            java.lang.String r0 = r2.toString()
            java.lang.String r2 = "arrowScroll tried to find focus based on non-child current focused view "
            java.lang.String r0 = r2.concat(r0)
            java.lang.String r2 = "ViewPager"
            android.util.Log.e(r2, r0)
            goto L7
        L58:
            android.view.FocusFinder r1 = android.view.FocusFinder.getInstance()
            android.view.View r1 = r1.findNextFocus(r7, r0, r8)
            r2 = 1
            r3 = 0
            r4 = 66
            r5 = 17
            if (r1 == 0) goto Lab
            if (r1 == r0) goto Lab
            android.graphics.Rect r6 = r7.mTempRect
            if (r8 != r5) goto L8f
            android.graphics.Rect r4 = r7.getChildRectInPagerCoordinates(r6, r1)
            int r4 = r4.left
            android.graphics.Rect r5 = r7.getChildRectInPagerCoordinates(r6, r0)
            int r5 = r5.left
            if (r0 == 0) goto L89
            if (r4 < r5) goto L89
            int r0 = r7.mCurItem
            if (r0 <= 0) goto Lc5
            int r0 = r0 - r2
            r7.mPopulatePending = r3
            r7.setCurrentItemInternal(r0, r3, r2, r3)
            goto Lc6
        L89:
            boolean r0 = r1.requestFocus()
        L8d:
            r3 = r0
            goto Lc7
        L8f:
            if (r8 != r4) goto Lc7
            android.graphics.Rect r2 = r7.getChildRectInPagerCoordinates(r6, r1)
            int r2 = r2.left
            android.graphics.Rect r3 = r7.getChildRectInPagerCoordinates(r6, r0)
            int r3 = r3.left
            if (r0 == 0) goto La6
            if (r2 > r3) goto La6
            boolean r0 = r7.pageRight()
            goto L8d
        La6:
            boolean r0 = r1.requestFocus()
            goto L8d
        Lab:
            if (r8 == r5) goto Lba
            if (r8 != r2) goto Lb0
            goto Lba
        Lb0:
            if (r8 == r4) goto Lb5
            r0 = 2
            if (r8 != r0) goto Lc7
        Lb5:
            boolean r3 = r7.pageRight()
            goto Lc7
        Lba:
            int r0 = r7.mCurItem
            if (r0 <= 0) goto Lc5
            int r0 = r0 - r2
            r7.mPopulatePending = r3
            r7.setCurrentItemInternal(r0, r3, r2, r3)
            goto Lc6
        Lc5:
            r2 = r3
        Lc6:
            r3 = r2
        Lc7:
            if (r3 == 0) goto Ld0
            int r8 = android.view.SoundEffectConstants.getContantForFocusDirection(r8)
            r7.playSoundEffect(r8)
        Ld0:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.arrowScroll(int):boolean");
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i) {
        if (this.mAdapter == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i < 0 ? scrollX > ((int) (((float) clientWidth) * this.mFirstOffset)) : i > 0 && scrollX < ((int) (((float) clientWidth) * this.mLastOffset));
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public final void completeScroll(boolean z) {
        boolean z2 = this.mScrollState == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            Scroller scroller = this.mScroller;
            if (!scroller.isFinished()) {
                scroller.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = scroller.getCurrX();
                int currY = scroller.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        pageScrolled(currX);
                    }
                }
            }
        }
        this.mPopulatePending = false;
        int i = 0;
        while (true) {
            ArrayList arrayList = this.mItems;
            if (i >= arrayList.size()) {
                break;
            }
            ItemInfo itemInfo = (ItemInfo) arrayList.get(i);
            if (itemInfo.scrolling) {
                itemInfo.scrolling = false;
                z2 = true;
            }
            i++;
        }
        if (z2) {
            Fragment.AnonymousClass1 anonymousClass1 = this.mEndScrollRunnable;
            if (!z) {
                anonymousClass1.run();
            } else {
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                postOnAnimation(anonymousClass1);
            }
        }
    }

    @Override // android.view.View
    public final void computeScroll() {
        this.mIsScrollStarted = true;
        Scroller scroller = this.mScroller;
        if (scroller.isFinished() || !scroller.computeScrollOffset()) {
            completeScroll(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = scroller.getCurrX();
        int currY = scroller.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!pageScrolled(currX)) {
                scroller.abortAnimation();
                scrollTo(0, currY);
            }
        }
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        postInvalidateOnAnimation();
    }

    public final void dataSetChanged() {
        int i = ((DayPickerPagerAdapter) this.mAdapter).mCount;
        this.mExpectedAdapterCount = i;
        ArrayList arrayList = this.mItems;
        boolean z = arrayList.size() < (this.mOffscreenPageLimit * 2) + 1 && arrayList.size() < i;
        int i2 = this.mCurItem;
        int i3 = 0;
        boolean z2 = false;
        while (i3 < arrayList.size()) {
            ItemInfo itemInfo = (ItemInfo) arrayList.get(i3);
            PagerAdapter pagerAdapter = this.mAdapter;
            DayPickerPagerAdapter.ViewHolder viewHolder = itemInfo.object;
            ((DayPickerPagerAdapter) pagerAdapter).getClass();
            int i4 = viewHolder.position;
            if (i4 != -1) {
                if (i4 == -2) {
                    arrayList.remove(i3);
                    i3--;
                    if (!z2) {
                        this.mAdapter.getClass();
                        z2 = true;
                    }
                    this.mAdapter.destroyItem(this, itemInfo.position, itemInfo.object);
                    int i5 = this.mCurItem;
                    if (i5 == itemInfo.position) {
                        i2 = Math.max(0, Math.min(i5, i - 1));
                    }
                } else {
                    int i6 = itemInfo.position;
                    if (i6 != i4) {
                        if (i6 == this.mCurItem) {
                            i2 = i4;
                        }
                        itemInfo.position = i4;
                    }
                }
                z = true;
            }
            i3++;
        }
        if (z2) {
            this.mAdapter.getClass();
        }
        Collections.sort(arrayList, COMPARATOR);
        if (z) {
            int childCount = getChildCount();
            for (int i7 = 0; i7 < childCount; i7++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i7).getLayoutParams();
                if (!layoutParams.isDecor) {
                    layoutParams.widthFactor = 0.0f;
                }
            }
            setCurrentItemInternal(i2, 0, false, true);
            requestLayout();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0065 A[RETURN] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchKeyEvent(android.view.KeyEvent r6) {
        /*
            r5 = this;
            boolean r0 = super.dispatchKeyEvent(r6)
            r1 = 1
            if (r0 != 0) goto L66
            int r0 = r6.getAction()
            r2 = 0
            if (r0 != 0) goto L61
            int r0 = r6.getKeyCode()
            r3 = 21
            r4 = 2
            if (r0 == r3) goto L48
            r3 = 22
            if (r0 == r3) goto L36
            r3 = 61
            if (r0 == r3) goto L20
            goto L61
        L20:
            boolean r0 = r6.hasNoModifiers()
            if (r0 == 0) goto L2b
            boolean r5 = r5.arrowScroll(r4)
            goto L62
        L2b:
            boolean r6 = r6.hasModifiers(r1)
            if (r6 == 0) goto L61
            boolean r5 = r5.arrowScroll(r1)
            goto L62
        L36:
            boolean r6 = r6.hasModifiers(r4)
            if (r6 == 0) goto L41
            boolean r5 = r5.pageRight()
            goto L62
        L41:
            r6 = 66
            boolean r5 = r5.arrowScroll(r6)
            goto L62
        L48:
            boolean r6 = r6.hasModifiers(r4)
            if (r6 == 0) goto L5a
            int r6 = r5.mCurItem
            if (r6 <= 0) goto L61
            int r6 = r6 - r1
            r5.mPopulatePending = r2
            r5.setCurrentItemInternal(r6, r2, r1, r2)
            r5 = r1
            goto L62
        L5a:
            r6 = 17
            boolean r5 = r5.arrowScroll(r6)
            goto L62
        L61:
            r5 = r2
        L62:
            if (r5 == 0) goto L65
            goto L66
        L65:
            return r2
        L66:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        ItemInfo infoForChild;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.position == this.mCurItem && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        PagerAdapter pagerAdapter;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        EdgeEffect edgeEffect = this.mRightEdge;
        EdgeEffect edgeEffect2 = this.mLeftEdge;
        boolean z = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (pagerAdapter = this.mAdapter) != null && ((DayPickerPagerAdapter) pagerAdapter).mCount > 1)) {
            if (!edgeEffect2.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height), this.mFirstOffset * width);
                edgeEffect2.setSize(height, width);
                z = edgeEffect2.draw(canvas);
                canvas.restoreToCount(save);
            }
            if (!edgeEffect.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.mLastOffset + 1.0f)) * width2);
                edgeEffect.setSize(height2, width2);
                z |= edgeEffect.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            edgeEffect2.finish();
            edgeEffect.finish();
        }
        if (z) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mMarginDrawable;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        layoutParams.widthFactor = 0.0f;
        return layoutParams;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        LayoutParams layoutParams = new LayoutParams(context, attributeSet);
        layoutParams.widthFactor = 0.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, LAYOUT_ATTRS);
        layoutParams.gravity = obtainStyledAttributes.getInteger(0, 48);
        obtainStyledAttributes.recycle();
        return layoutParams;
    }

    public PagerAdapter getAdapter() {
        return this.mAdapter;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        throw null;
    }

    public final Rect getChildRectInPagerCoordinates(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    public int getCurrentItem() {
        return this.mCurItem;
    }

    public int getOffscreenPageLimit() {
        return this.mOffscreenPageLimit;
    }

    public int getPageMargin() {
        return this.mPageMargin;
    }

    public final ItemInfo infoForChild(View view) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.mItems;
            if (i >= arrayList.size()) {
                return null;
            }
            ItemInfo itemInfo = (ItemInfo) arrayList.get(i);
            PagerAdapter pagerAdapter = this.mAdapter;
            DayPickerPagerAdapter.ViewHolder viewHolder = itemInfo.object;
            ((DayPickerPagerAdapter) pagerAdapter).getClass();
            if (view == viewHolder.container) {
                return itemInfo;
            }
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0072, code lost:
    
        return r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.viewpager.widget.ViewPager.ItemInfo infoForCurrentScrollPosition() {
        /*
            r13 = this;
            int r0 = r13.getClientWidth()
            r1 = 0
            if (r0 <= 0) goto Lf
            int r2 = r13.getScrollX()
            float r2 = (float) r2
            float r3 = (float) r0
            float r2 = r2 / r3
            goto L10
        Lf:
            r2 = r1
        L10:
            if (r0 <= 0) goto L18
            int r3 = r13.mPageMargin
            float r3 = (float) r3
            float r0 = (float) r0
            float r3 = r3 / r0
            goto L19
        L18:
            r3 = r1
        L19:
            r0 = 0
            r4 = -1
            r5 = 1
            r6 = 0
            r8 = r0
            r9 = r5
            r7 = r6
            r6 = r4
            r4 = r1
        L22:
            java.util.ArrayList r10 = r13.mItems
            int r11 = r10.size()
            if (r8 >= r11) goto L72
            java.lang.Object r11 = r10.get(r8)
            androidx.viewpager.widget.ViewPager$ItemInfo r11 = (androidx.viewpager.widget.ViewPager.ItemInfo) r11
            if (r9 != 0) goto L4c
            int r12 = r11.position
            int r6 = r6 + r5
            if (r12 == r6) goto L4c
            float r1 = r1 + r4
            float r1 = r1 + r3
            androidx.viewpager.widget.ViewPager$ItemInfo r4 = r13.mTempItem
            r4.offset = r1
            r4.position = r6
            androidx.viewpager.widget.PagerAdapter r1 = r13.mAdapter
            r1.getClass()
            r1 = 1065353216(0x3f800000, float:1.0)
            r4.widthFactor = r1
            int r8 = r8 + (-1)
            r6 = r4
            goto L4d
        L4c:
            r6 = r11
        L4d:
            float r1 = r6.offset
            float r4 = r6.widthFactor
            float r4 = r4 + r1
            float r4 = r4 + r3
            if (r9 != 0) goto L59
            int r9 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r9 < 0) goto L72
        L59:
            int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r4 < 0) goto L71
            int r4 = r10.size()
            int r4 = r4 - r5
            if (r8 != r4) goto L65
            goto L71
        L65:
            int r4 = r6.position
            float r7 = r6.widthFactor
            int r8 = r8 + 1
            r9 = r6
            r6 = r4
            r4 = r7
            r7 = r9
            r9 = r0
            goto L22
        L71:
            return r6
        L72:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.infoForCurrentScrollPosition():androidx.viewpager.widget.ViewPager$ItemInfo");
    }

    public final ItemInfo infoForPosition(int i) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.mItems;
            if (i2 >= arrayList.size()) {
                return null;
            }
            ItemInfo itemInfo = (ItemInfo) arrayList.get(i2);
            if (itemInfo.position == i) {
                return itemInfo;
            }
            i2++;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.mEndScrollRunnable);
        Scroller scroller = this.mScroller;
        if (scroller != null && !scroller.isFinished()) {
            scroller.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i;
        float f;
        ArrayList arrayList;
        int i2;
        super.onDraw(canvas);
        if (this.mPageMargin <= 0 || this.mMarginDrawable == null) {
            return;
        }
        ArrayList arrayList2 = this.mItems;
        if (arrayList2.size() <= 0 || this.mAdapter == null) {
            return;
        }
        int scrollX = getScrollX();
        float width = getWidth();
        float f2 = this.mPageMargin / width;
        int i3 = 0;
        ItemInfo itemInfo = (ItemInfo) arrayList2.get(0);
        float f3 = itemInfo.offset;
        int size = arrayList2.size();
        int i4 = itemInfo.position;
        int i5 = ((ItemInfo) arrayList2.get(size - 1)).position;
        while (i4 < i5) {
            while (true) {
                i = itemInfo.position;
                if (i4 <= i || i3 >= size) {
                    break;
                }
                i3++;
                itemInfo = (ItemInfo) arrayList2.get(i3);
            }
            if (i4 == i) {
                float f4 = itemInfo.offset;
                float f5 = itemInfo.widthFactor;
                f = (f4 + f5) * width;
                f3 = f4 + f5 + f2;
            } else {
                this.mAdapter.getClass();
                f = (f3 + 1.0f) * width;
                f3 = 1.0f + f2 + f3;
            }
            if (this.mPageMargin + f > scrollX) {
                arrayList = arrayList2;
                i2 = scrollX;
                this.mMarginDrawable.setBounds(Math.round(f), this.mTopPageBounds, Math.round(this.mPageMargin + f), this.mBottomPageBounds);
                this.mMarginDrawable.draw(canvas);
            } else {
                arrayList = arrayList2;
                i2 = scrollX;
            }
            if (f > i2 + r3) {
                return;
            }
            i4++;
            arrayList2 = arrayList;
            scrollX = i2;
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            resetTouch();
            return false;
        }
        if (action != 0) {
            if (this.mIsBeingDragged) {
                return true;
            }
            if (this.mIsUnableToDrag) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.mInitialMotionX = x;
            this.mLastMotionX = x;
            float y = motionEvent.getY();
            this.mInitialMotionY = y;
            this.mLastMotionY = y;
            this.mActivePointerId = motionEvent.getPointerId(0);
            this.mIsUnableToDrag = false;
            this.mIsScrollStarted = true;
            Scroller scroller = this.mScroller;
            scroller.computeScrollOffset();
            if (this.mScrollState != 2 || Math.abs(scroller.getFinalX() - scroller.getCurrX()) <= this.mCloseEnough) {
                completeScroll(false);
                this.mIsBeingDragged = false;
            } else {
                scroller.abortAnimation();
                this.mPopulatePending = false;
                populate();
                this.mIsBeingDragged = true;
                ViewParent parent = getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                setScrollState(1);
            }
        } else if (action == 2) {
            int i = this.mActivePointerId;
            if (i != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i);
                float x2 = motionEvent.getX(findPointerIndex);
                float f = x2 - this.mLastMotionX;
                float abs = Math.abs(f);
                float y2 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y2 - this.mInitialMotionY);
                if (f != 0.0f) {
                    float f2 = this.mLastMotionX;
                    if ((f2 >= 0.0f || f <= 0.0f) && ((f2 <= getWidth() || f >= 0.0f) && canScroll((int) f, (int) x2, (int) y2, this, false))) {
                        this.mLastMotionX = x2;
                        this.mLastMotionY = y2;
                        this.mIsUnableToDrag = true;
                        return false;
                    }
                }
                int i2 = this.mTouchSlop;
                float f3 = i2;
                if (abs > f3 && abs * 0.5f > abs2) {
                    this.mIsBeingDragged = true;
                    ViewParent parent2 = getParent();
                    if (parent2 != null) {
                        parent2.requestDisallowInterceptTouchEvent(true);
                    }
                    setScrollState(1);
                    float f4 = this.mInitialMotionX;
                    float f5 = i2;
                    this.mLastMotionX = f > 0.0f ? f4 + f5 : f4 - f5;
                    this.mLastMotionY = y2;
                    setScrollingCacheEnabled(true);
                } else if (abs2 > f3) {
                    this.mIsUnableToDrag = true;
                }
                if (this.mIsBeingDragged && performDrag(x2)) {
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            onSecondaryPointerUp(motionEvent);
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        return this.mIsBeingDragged;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0094  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onPageScrolled(float r12) {
        /*
            r11 = this;
            int r0 = r11.mDecorChildCount
            r1 = 1
            if (r0 <= 0) goto L6b
            int r0 = r11.getScrollX()
            int r2 = r11.getPaddingLeft()
            int r3 = r11.getPaddingRight()
            int r4 = r11.getWidth()
            int r5 = r11.getChildCount()
            r6 = 0
        L1a:
            if (r6 >= r5) goto L6b
            android.view.View r7 = r11.getChildAt(r6)
            android.view.ViewGroup$LayoutParams r8 = r7.getLayoutParams()
            androidx.viewpager.widget.ViewPager$LayoutParams r8 = (androidx.viewpager.widget.ViewPager.LayoutParams) r8
            boolean r9 = r8.isDecor
            if (r9 != 0) goto L2b
            goto L68
        L2b:
            int r8 = r8.gravity
            r8 = r8 & 7
            if (r8 == r1) goto L4f
            r9 = 3
            if (r8 == r9) goto L49
            r9 = 5
            if (r8 == r9) goto L39
            r8 = r2
            goto L5c
        L39:
            int r8 = r4 - r3
            int r9 = r7.getMeasuredWidth()
            int r8 = r8 - r9
            int r9 = r7.getMeasuredWidth()
            int r3 = r3 + r9
        L45:
            r10 = r8
            r8 = r2
            r2 = r10
            goto L5c
        L49:
            int r8 = r7.getWidth()
            int r8 = r8 + r2
            goto L5c
        L4f:
            int r8 = r7.getMeasuredWidth()
            int r8 = r4 - r8
            int r8 = r8 / 2
            int r8 = java.lang.Math.max(r8, r2)
            goto L45
        L5c:
            int r2 = r2 + r0
            int r9 = r7.getLeft()
            int r2 = r2 - r9
            if (r2 == 0) goto L67
            r7.offsetLeftAndRight(r2)
        L67:
            r2 = r8
        L68:
            int r6 = r6 + 1
            goto L1a
        L6b:
            androidx.viewpager.widget.ViewPager$OnPageChangeListener r0 = r11.mOnPageChangeListener
            if (r0 == 0) goto L87
            com.takisoft.datetimepicker.widget.DayPickerView$1 r0 = (com.takisoft.datetimepicker.widget.DayPickerView.AnonymousClass1) r0
            r2 = 1056964608(0x3f000000, float:0.5)
            float r2 = r2 - r12
            float r12 = java.lang.Math.abs(r2)
            r2 = 1073741824(0x40000000, float:2.0)
            float r12 = r12 * r2
            com.takisoft.datetimepicker.widget.DayPickerView r0 = com.takisoft.datetimepicker.widget.DayPickerView.this
            android.widget.ImageButton r2 = r0.mPrevButton
            r2.setAlpha(r12)
            android.widget.ImageButton r0 = r0.mNextButton
            r0.setAlpha(r12)
        L87:
            r11.mCalledSuper = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onPageScrolled(float):void");
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        int i4;
        ItemInfo infoForChild;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i3 = childCount;
            i2 = 0;
            i4 = 1;
        } else {
            i2 = childCount - 1;
            i3 = -1;
            i4 = -1;
        }
        while (i2 != i3) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.position == this.mCurItem && childAt.requestFocus(i, rect)) {
                return true;
            }
            i2 += i4;
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.mSuperState);
        PagerAdapter pagerAdapter = this.mAdapter;
        int i = savedState.position;
        if (pagerAdapter != null) {
            setCurrentItemInternal(i, 0, false, true);
        } else {
            this.mRestoredCurItem = i;
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.position = this.mCurItem;
        PagerAdapter pagerAdapter = this.mAdapter;
        if (pagerAdapter != null) {
            pagerAdapter.getClass();
            savedState.adapterState = null;
        }
        return savedState;
    }

    public final void onSecondaryPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
            int i = actionIndex == 0 ? 1 : 0;
            this.mLastMotionX = motionEvent.getX(i);
            this.mActivePointerId = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.mPageMargin;
            recomputeScrollPosition(i, i3, i5, i5);
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        PagerAdapter pagerAdapter;
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (pagerAdapter = this.mAdapter) == null || ((DayPickerPagerAdapter) pagerAdapter).mCount == 0) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.mScroller.abortAnimation();
            this.mPopulatePending = false;
            populate();
            float x = motionEvent.getX();
            this.mInitialMotionX = x;
            this.mLastMotionX = x;
            float y = motionEvent.getY();
            this.mInitialMotionY = y;
            this.mLastMotionY = y;
            this.mActivePointerId = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.mIsBeingDragged) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                    if (findPointerIndex == -1) {
                        z = resetTouch();
                    } else {
                        float x2 = motionEvent.getX(findPointerIndex);
                        float abs = Math.abs(x2 - this.mLastMotionX);
                        float y2 = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y2 - this.mLastMotionY);
                        int i = this.mTouchSlop;
                        if (abs > i && abs > abs2) {
                            this.mIsBeingDragged = true;
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                            float f = this.mInitialMotionX;
                            this.mLastMotionX = x2 - f > 0.0f ? f + i : f - i;
                            this.mLastMotionY = y2;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.mIsBeingDragged) {
                    z = performDrag(motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId)));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    this.mLastMotionX = motionEvent.getX(actionIndex);
                    this.mActivePointerId = motionEvent.getPointerId(actionIndex);
                } else if (action == 6) {
                    onSecondaryPointerUp(motionEvent);
                    this.mLastMotionX = motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId));
                }
            } else if (this.mIsBeingDragged) {
                scrollToItem(this.mCurItem, 0, true, false);
                z = resetTouch();
            }
        } else if (this.mIsBeingDragged) {
            VelocityTracker velocityTracker = this.mVelocityTracker;
            velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
            int xVelocity = (int) velocityTracker.getXVelocity(this.mActivePointerId);
            this.mPopulatePending = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            ItemInfo infoForCurrentScrollPosition = infoForCurrentScrollPosition();
            float f2 = clientWidth;
            int i2 = infoForCurrentScrollPosition.position;
            float f3 = ((scrollX / f2) - infoForCurrentScrollPosition.offset) / (infoForCurrentScrollPosition.widthFactor + (this.mPageMargin / f2));
            if (Math.abs((int) (motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId)) - this.mInitialMotionX)) <= this.mFlingDistance || Math.abs(xVelocity) <= this.mMinimumVelocity) {
                i2 += (int) (f3 + (i2 >= this.mCurItem ? 0.4f : 0.6f));
            } else if (xVelocity <= 0) {
                i2++;
            }
            ArrayList arrayList = this.mItems;
            if (arrayList.size() > 0) {
                i2 = Math.max(((ItemInfo) arrayList.get(0)).position, Math.min(i2, ((ItemInfo) arrayList.get(arrayList.size() - 1)).position));
            }
            setCurrentItemInternal(i2, xVelocity, true, true);
            z = resetTouch();
        }
        if (z) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            postInvalidateOnAnimation();
        }
        return true;
    }

    public final boolean pageRight() {
        int i;
        PagerAdapter pagerAdapter = this.mAdapter;
        if (pagerAdapter == null || (i = this.mCurItem) >= ((DayPickerPagerAdapter) pagerAdapter).mCount - 1) {
            return false;
        }
        this.mPopulatePending = false;
        setCurrentItemInternal(i + 1, 0, true, false);
        return true;
    }

    public final boolean pageScrolled(int i) {
        if (this.mItems.size() == 0) {
            if (!this.mFirstLayout) {
                this.mCalledSuper = false;
                onPageScrolled(0.0f);
                if (!this.mCalledSuper) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("onPageScrolled did not call superclass implementation");
                    return false;
                }
            }
            return false;
        }
        ItemInfo infoForCurrentScrollPosition = infoForCurrentScrollPosition();
        float clientWidth = getClientWidth();
        int i2 = infoForCurrentScrollPosition.position;
        float f = ((i / clientWidth) - infoForCurrentScrollPosition.offset) / (infoForCurrentScrollPosition.widthFactor + (this.mPageMargin / clientWidth));
        this.mCalledSuper = false;
        onPageScrolled(f);
        if (this.mCalledSuper) {
            return true;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("onPageScrolled did not call superclass implementation");
        return false;
    }

    public final boolean performDrag(float f) {
        boolean z;
        boolean z2;
        float f2 = this.mLastMotionX - f;
        this.mLastMotionX = f;
        float scrollX = getScrollX() + f2;
        float clientWidth = getClientWidth();
        float f3 = this.mFirstOffset * clientWidth;
        float f4 = this.mLastOffset * clientWidth;
        ArrayList arrayList = this.mItems;
        boolean z3 = false;
        ItemInfo itemInfo = (ItemInfo) arrayList.get(0);
        ItemInfo itemInfo2 = (ItemInfo) arrayList.get(arrayList.size() - 1);
        if (itemInfo.position != 0) {
            f3 = itemInfo.offset * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (itemInfo2.position != ((DayPickerPagerAdapter) this.mAdapter).mCount - 1) {
            f4 = itemInfo2.offset * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX < f3) {
            if (z) {
                this.mLeftEdge.onPull(Math.abs(f3 - scrollX) / clientWidth);
                z3 = true;
            }
            scrollX = f3;
        } else if (scrollX > f4) {
            if (z2) {
                this.mRightEdge.onPull(Math.abs(scrollX - f4) / clientWidth);
                z3 = true;
            }
            scrollX = f4;
        }
        int i = (int) scrollX;
        this.mLastMotionX = (scrollX - i) + this.mLastMotionX;
        scrollTo(i, getScrollY());
        pageScrolled(i);
        return z3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x005b, code lost:
    
        if (r10 == r11) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void populate(int r18) {
        /*
            Method dump skipped, instructions count: 862
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.populate(int):void");
    }

    public final void recomputeScrollPosition(int i, int i2, int i3, int i4) {
        if (i2 <= 0 || this.mItems.isEmpty()) {
            ItemInfo infoForPosition = infoForPosition(this.mCurItem);
            int min = (int) ((infoForPosition != null ? Math.min(infoForPosition.offset, this.mLastOffset) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
            if (min != getScrollX()) {
                completeScroll(false);
                scrollTo(min, getScrollY());
                return;
            }
            return;
        }
        Scroller scroller = this.mScroller;
        if (!scroller.isFinished()) {
            scroller.setFinalX(getCurrentItem() * getClientWidth());
        } else {
            scrollTo((int) ((getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((i - getPaddingLeft()) - getPaddingRight()) + i3)), getScrollY());
        }
    }

    public final boolean resetTouch() {
        this.mActivePointerId = -1;
        this.mIsBeingDragged = false;
        this.mIsUnableToDrag = false;
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
        EdgeEffect edgeEffect = this.mLeftEdge;
        edgeEffect.onRelease();
        EdgeEffect edgeEffect2 = this.mRightEdge;
        edgeEffect2.onRelease();
        return edgeEffect.isFinished() || edgeEffect2.isFinished();
    }

    public final void scrollToItem(int i, int i2, boolean z, boolean z2) {
        OnPageChangeListener onPageChangeListener;
        int scrollX;
        int abs;
        OnPageChangeListener onPageChangeListener2;
        ItemInfo infoForPosition = infoForPosition(i);
        int max = infoForPosition != null ? (int) (Math.max(this.mFirstOffset, Math.min(infoForPosition.offset, this.mLastOffset)) * getClientWidth()) : 0;
        if (!z) {
            if (z2 && (onPageChangeListener = this.mOnPageChangeListener) != null) {
                DayPickerView.this.updateButtonVisibility(i);
            }
            completeScroll(false);
            scrollTo(max, 0);
            pageScrolled(max);
            return;
        }
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
        } else {
            Scroller scroller = this.mScroller;
            if (scroller == null || scroller.isFinished()) {
                scrollX = getScrollX();
            } else {
                scrollX = this.mIsScrollStarted ? scroller.getCurrX() : scroller.getStartX();
                scroller.abortAnimation();
                setScrollingCacheEnabled(false);
            }
            int i3 = scrollX;
            int scrollY = getScrollY();
            int i4 = max - i3;
            int i5 = 0 - scrollY;
            if (i4 == 0 && i5 == 0) {
                completeScroll(false);
                populate();
                setScrollState(0);
            } else {
                setScrollingCacheEnabled(true);
                setScrollState(2);
                int clientWidth = getClientWidth();
                int i6 = clientWidth / 2;
                float f = clientWidth;
                float f2 = i6;
                float sin = (((float) Math.sin((Math.min(1.0f, (Math.abs(i4) * 1.0f) / f) - 0.5f) * 0.47123894f)) * f2) + f2;
                int abs2 = Math.abs(i2);
                if (abs2 > 0) {
                    abs = Math.round(Math.abs(sin / abs2) * 1000.0f) * 4;
                } else {
                    this.mAdapter.getClass();
                    abs = (int) (((Math.abs(i4) / ((f * 1.0f) + this.mPageMargin)) + 1.0f) * 100.0f);
                }
                int min = Math.min(abs, 600);
                this.mIsScrollStarted = false;
                this.mScroller.startScroll(i3, scrollY, i4, i5, min);
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                postInvalidateOnAnimation();
            }
        }
        if (!z2 || (onPageChangeListener2 = this.mOnPageChangeListener) == null) {
            return;
        }
        DayPickerView.this.updateButtonVisibility(i);
    }

    public void setAdapter(PagerAdapter pagerAdapter) {
        ArrayList arrayList = this.mItems;
        PagerAdapter pagerAdapter2 = this.mAdapter;
        int i = 0;
        if (pagerAdapter2 != null) {
            synchronized (pagerAdapter2) {
                pagerAdapter2.mViewPagerObserver = null;
            }
            this.mAdapter.getClass();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ItemInfo itemInfo = (ItemInfo) arrayList.get(i2);
                this.mAdapter.destroyItem(this, itemInfo.position, itemInfo.object);
            }
            this.mAdapter.getClass();
            arrayList.clear();
            int i3 = 0;
            while (i3 < getChildCount()) {
                if (!((LayoutParams) getChildAt(i3).getLayoutParams()).isDecor) {
                    removeViewAt(i3);
                    i3--;
                }
                i3++;
            }
            this.mCurItem = 0;
            scrollTo(0, 0);
        }
        this.mAdapter = pagerAdapter;
        this.mExpectedAdapterCount = 0;
        if (pagerAdapter != null) {
            if (this.mObserver == null) {
                this.mObserver = new PagerObserver(i, this);
            }
            this.mAdapter.setViewPagerObserver(this.mObserver);
            this.mPopulatePending = false;
            boolean z = this.mFirstLayout;
            this.mFirstLayout = true;
            PagerAdapter pagerAdapter3 = this.mAdapter;
            this.mExpectedAdapterCount = ((DayPickerPagerAdapter) pagerAdapter3).mCount;
            if (this.mRestoredCurItem >= 0) {
                pagerAdapter3.getClass();
                setCurrentItemInternal(this.mRestoredCurItem, 0, false, true);
                this.mRestoredCurItem = -1;
            } else if (z) {
                requestLayout();
            } else {
                populate();
            }
        }
    }

    public void setCurrentItem(int i) {
        this.mPopulatePending = false;
        setCurrentItemInternal(i, 0, !this.mFirstLayout, false);
    }

    public final void setCurrentItemInternal(int i, int i2, boolean z, boolean z2) {
        OnPageChangeListener onPageChangeListener;
        PagerAdapter pagerAdapter = this.mAdapter;
        if (pagerAdapter == null || ((DayPickerPagerAdapter) pagerAdapter).mCount <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        ArrayList arrayList = this.mItems;
        if (!z2 && this.mCurItem == i && arrayList.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i < 0) {
            i = 0;
        } else {
            int i3 = ((DayPickerPagerAdapter) this.mAdapter).mCount;
            if (i >= i3) {
                i = i3 - 1;
            }
        }
        int i4 = this.mOffscreenPageLimit;
        int i5 = this.mCurItem;
        if (i > i5 + i4 || i < i5 - i4) {
            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                ((ItemInfo) arrayList.get(i6)).scrolling = true;
            }
        }
        boolean z3 = this.mCurItem != i;
        if (!this.mFirstLayout) {
            populate(i);
            scrollToItem(i, i2, z, z3);
            return;
        }
        this.mCurItem = i;
        if (z3 && (onPageChangeListener = this.mOnPageChangeListener) != null) {
            DayPickerView.this.updateButtonVisibility(i);
        }
        requestLayout();
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i = 1;
        }
        if (i != this.mOffscreenPageLimit) {
            this.mOffscreenPageLimit = i;
            populate();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.mOnPageChangeListener = onPageChangeListener;
    }

    public void setPageMargin(int i) {
        int i2 = this.mPageMargin;
        this.mPageMargin = i;
        int width = getWidth();
        recomputeScrollPosition(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.mMarginDrawable = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i) {
        if (this.mScrollState == i) {
            return;
        }
        this.mScrollState = i;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mMarginDrawable;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class MyAccessibilityDelegate extends AccessibilityDelegateCompat {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public MyAccessibilityDelegate(DrawerLayout drawerLayout) {
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

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
        
            if (((com.takisoft.datetimepicker.widget.DayPickerPagerAdapter) r2).mCount > 1) goto L16;
         */
        @Override // androidx.core.view.AccessibilityDelegateCompat
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onInitializeAccessibilityEvent(android.view.View r3, android.view.accessibility.AccessibilityEvent r4) {
            /*
                r2 = this;
                int r0 = r2.$r8$classId
                java.lang.Object r1 = r2.this$0
                switch(r0) {
                    case 0: goto L1f;
                    case 1: goto L16;
                    case 2: goto L7;
                    case 3: goto L7;
                    case 4: goto Lb;
                    default: goto L7;
                }
            L7:
                super.onInitializeAccessibilityEvent(r3, r4)
                return
            Lb:
                super.onInitializeAccessibilityEvent(r3, r4)
                com.google.android.material.internal.CheckableImageButton r1 = (com.google.android.material.internal.CheckableImageButton) r1
                boolean r2 = r1.checked
                r4.setChecked(r2)
                return
            L16:
                super.onInitializeAccessibilityEvent(r3, r4)
                java.lang.String r2 = "androidx.drawerlayout.widget.DrawerLayout"
                r4.setClassName(r2)
                return
            L1f:
                androidx.viewpager.widget.ViewPager r1 = (androidx.viewpager.widget.ViewPager) r1
                super.onInitializeAccessibilityEvent(r3, r4)
                java.lang.Class<androidx.viewpager.widget.ViewPager> r2 = androidx.viewpager.widget.ViewPager.class
                java.lang.String r2 = r2.getName()
                r4.setClassName(r2)
                androidx.viewpager.widget.PagerAdapter r2 = r1.mAdapter
                if (r2 == 0) goto L39
                com.takisoft.datetimepicker.widget.DayPickerPagerAdapter r2 = (com.takisoft.datetimepicker.widget.DayPickerPagerAdapter) r2
                int r2 = r2.mCount
                r3 = 1
                if (r2 <= r3) goto L39
                goto L3a
            L39:
                r3 = 0
            L3a:
                r4.setScrollable(r3)
                int r2 = r4.getEventType()
                r3 = 4096(0x1000, float:5.74E-42)
                if (r2 != r3) goto L5a
                androidx.viewpager.widget.PagerAdapter r2 = r1.mAdapter
                if (r2 == 0) goto L5a
                com.takisoft.datetimepicker.widget.DayPickerPagerAdapter r2 = (com.takisoft.datetimepicker.widget.DayPickerPagerAdapter) r2
                int r2 = r2.mCount
                r4.setItemCount(r2)
                int r2 = r1.mCurItem
                r4.setFromIndex(r2)
                int r2 = r1.mCurItem
                r4.setToIndex(r2)
            L5a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.MyAccessibilityDelegate.onInitializeAccessibilityEvent(android.view.View, android.view.accessibility.AccessibilityEvent):void");
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            int i = this.$r8$classId;
            boolean z = false;
            Object obj = this.this$0;
            View.AccessibilityDelegate accessibilityDelegate = this.mOriginalDelegate;
            switch (i) {
                case 0:
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.mInfo);
                    accessibilityNodeInfoCompat.setClassName(ViewPager.class.getName());
                    ViewPager viewPager = (ViewPager) obj;
                    PagerAdapter pagerAdapter = viewPager.mAdapter;
                    if (pagerAdapter != null && ((DayPickerPagerAdapter) pagerAdapter).mCount > 1) {
                        z = true;
                    }
                    accessibilityNodeInfoCompat.setScrollable(z);
                    if (viewPager.canScrollHorizontally(1)) {
                        accessibilityNodeInfoCompat.addAction(4096);
                    }
                    if (viewPager.canScrollHorizontally(-1)) {
                        accessibilityNodeInfoCompat.addAction(8192);
                        break;
                    }
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
                    int absoluteAdapterPosition = childViewHolderInt != null ? childViewHolderInt.getAbsoluteAdapterPosition() : -1;
                    RecyclerView.Adapter adapter = recyclerView.getAdapter();
                    if (adapter instanceof PreferenceGroupAdapter) {
                        ((PreferenceGroupAdapter) adapter).getItem(absoluteAdapterPosition);
                        break;
                    }
                    break;
                case 3:
                    view.getClass();
                    AccessibilityNodeInfo accessibilityNodeInfo2 = accessibilityNodeInfoCompat.mInfo;
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo2);
                    accessibilityNodeInfoCompat.addAction(1048576);
                    accessibilityNodeInfo2.setDismissable(true);
                    break;
                case 4:
                    AccessibilityNodeInfo accessibilityNodeInfo3 = accessibilityNodeInfoCompat.mInfo;
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo3);
                    CheckableImageButton checkableImageButton = (CheckableImageButton) obj;
                    accessibilityNodeInfo3.setCheckable(checkableImageButton.checkable);
                    accessibilityNodeInfo3.setChecked(checkableImageButton.checked);
                    break;
                default:
                    AccessibilityNodeInfo accessibilityNodeInfo4 = accessibilityNodeInfoCompat.mInfo;
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo4);
                    accessibilityNodeInfoCompat.addAction(1048576);
                    accessibilityNodeInfo4.setDismissable(true);
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
                case 0:
                    ViewPager viewPager = (ViewPager) obj;
                    if (!super.performAccessibilityAction(view, i, bundle)) {
                        if (i == 4096) {
                            if (viewPager.canScrollHorizontally(1)) {
                                viewPager.setCurrentItem(viewPager.mCurItem + 1);
                                break;
                            }
                        } else if (i == 8192 && viewPager.canScrollHorizontally(-1)) {
                            viewPager.setCurrentItem(viewPager.mCurItem - 1);
                            break;
                        }
                    }
                    break;
                case 3:
                    view.getClass();
                    if (i != 1048576) {
                        break;
                    } else {
                        ((ToolbarBottomSheetDialog) obj).cancel();
                        break;
                    }
                case 5:
                    if (i != 1048576) {
                        break;
                    } else {
                        ((Snackbar) ((BaseTransientBottomBar) obj)).dispatchDismiss(3);
                        break;
                    }
            }
            return super.performAccessibilityAction(view, i, bundle);
        }

        public /* synthetic */ MyAccessibilityDelegate(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(getContext().getDrawable(i));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public void populate() {
        populate(this.mCurItem);
    }
}
