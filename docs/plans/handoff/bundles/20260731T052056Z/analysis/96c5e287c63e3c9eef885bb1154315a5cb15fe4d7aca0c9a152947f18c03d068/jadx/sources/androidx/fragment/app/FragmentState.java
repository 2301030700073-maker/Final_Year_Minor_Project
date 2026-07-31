package androidx.fragment.app;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.core.widget.NestedScrollView;
import androidx.preference.EditTextPreference;
import androidx.preference.ListPreference;
import androidx.preference.MultiSelectListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.SeekBarPreference;
import androidx.preference.TwoStatePreference;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.versionedparcelable.ParcelImpl;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.datepicker.CompositeDateValidator;
import com.google.android.material.datepicker.DateValidatorPointBackward;
import com.google.android.material.datepicker.Month;
import java.util.ArrayList;
import java.util.Locale;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new AnonymousClass1(0);
    public final String mClassName;
    public final int mContainerId;
    public final boolean mDetached;
    public final int mFragmentId;
    public final boolean mFromLayout;
    public final boolean mHidden;
    public final boolean mInDynamicContainer;
    public final int mMaxLifecycleState;
    public final boolean mRemoving;
    public final boolean mRetainInstance;
    public final String mTag;
    public final int mTargetRequestCode;
    public final String mTargetWho;
    public final boolean mUserVisibleHint;
    public final String mWho;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.fragment.app.FragmentState$1, reason: invalid class name */
    public final class AnonymousClass1 implements Parcelable.Creator {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            switch (this.$r8$classId) {
                case 0:
                    return new FragmentState(parcel);
                case 1:
                    parcel.getClass();
                    return new ActivityResult(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                case 2:
                    parcel.getClass();
                    Parcelable readParcelable = parcel.readParcelable(IntentSender.class.getClassLoader());
                    readParcelable.getClass();
                    return new IntentSenderRequest((IntentSender) readParcelable, (Intent) parcel.readParcelable(Intent.class.getClassLoader()), parcel.readInt(), parcel.readInt());
                case 3:
                    ActionMenuPresenter.SavedState savedState = new ActionMenuPresenter.SavedState();
                    savedState.openSubMenuId = parcel.readInt();
                    return savedState;
                case 4:
                    AppCompatSpinner.SavedState savedState2 = new AppCompatSpinner.SavedState(parcel);
                    savedState2.mShowDropdown = parcel.readByte() != 0;
                    return savedState2;
                case 5:
                    NestedScrollView.SavedState savedState3 = new NestedScrollView.SavedState(parcel);
                    savedState3.scrollPosition = parcel.readInt();
                    return savedState3;
                case 6:
                    return new BackStackRecordState(parcel);
                case 7:
                    return new BackStackState(parcel);
                case 8:
                    FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo = new FragmentManager$LaunchedFragmentInfo();
                    fragmentManager$LaunchedFragmentInfo.mWho = parcel.readString();
                    fragmentManager$LaunchedFragmentInfo.mRequestCode = parcel.readInt();
                    return fragmentManager$LaunchedFragmentInfo;
                case 9:
                    FragmentManagerState fragmentManagerState = new FragmentManagerState();
                    fragmentManagerState.mPrimaryNavActiveWho = null;
                    fragmentManagerState.mBackStackStateKeys = new ArrayList();
                    fragmentManagerState.mBackStackStates = new ArrayList();
                    fragmentManagerState.mActive = parcel.createStringArrayList();
                    fragmentManagerState.mAdded = parcel.createStringArrayList();
                    fragmentManagerState.mBackStack = (BackStackRecordState[]) parcel.createTypedArray(BackStackRecordState.CREATOR);
                    fragmentManagerState.mBackStackIndex = parcel.readInt();
                    fragmentManagerState.mPrimaryNavActiveWho = parcel.readString();
                    fragmentManagerState.mBackStackStateKeys = parcel.createStringArrayList();
                    fragmentManagerState.mBackStackStates = parcel.createTypedArrayList(BackStackState.CREATOR);
                    fragmentManagerState.mLaunchedFragments = parcel.createTypedArrayList(FragmentManager$LaunchedFragmentInfo.CREATOR);
                    return fragmentManagerState;
                case 10:
                    return new EditTextPreference.SavedState(parcel);
                case 11:
                    return new ListPreference.SavedState(parcel);
                case 12:
                    return new MultiSelectListPreference.SavedState(parcel);
                case IMAGE_VALUE:
                    return new Preference.BaseSavedState(parcel);
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    return new PreferenceGroup.SavedState(parcel);
                case 15:
                    return new SeekBarPreference.SavedState(parcel);
                case LAZY_VERTICAL_GRID_VALUE:
                    return new TwoStatePreference.SavedState(parcel);
                case VERTICAL_GRID_ITEM_VALUE:
                    LinearLayoutManager.SavedState savedState4 = new LinearLayoutManager.SavedState();
                    savedState4.mAnchorPosition = parcel.readInt();
                    savedState4.mAnchorOffset = parcel.readInt();
                    savedState4.mAnchorLayoutFromEnd = parcel.readInt() == 1;
                    return savedState4;
                case RADIO_GROUP_VALUE:
                    StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem();
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition = parcel.readInt();
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapDir = parcel.readInt();
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mHasUnwantedGapAfter = parcel.readInt() == 1;
                    int readInt = parcel.readInt();
                    if (readInt > 0) {
                        int[] iArr = new int[readInt];
                        staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapPerSpan = iArr;
                        parcel.readIntArray(iArr);
                    }
                    return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
                case RADIO_BUTTON_VALUE:
                    StaggeredGridLayoutManager.SavedState savedState5 = new StaggeredGridLayoutManager.SavedState();
                    savedState5.mAnchorPosition = parcel.readInt();
                    savedState5.mVisibleAnchorPosition = parcel.readInt();
                    int readInt2 = parcel.readInt();
                    savedState5.mSpanOffsetsSize = readInt2;
                    if (readInt2 > 0) {
                        int[] iArr2 = new int[readInt2];
                        savedState5.mSpanOffsets = iArr2;
                        parcel.readIntArray(iArr2);
                    }
                    int readInt3 = parcel.readInt();
                    savedState5.mSpanLookupSize = readInt3;
                    if (readInt3 > 0) {
                        int[] iArr3 = new int[readInt3];
                        savedState5.mSpanLookup = iArr3;
                        parcel.readIntArray(iArr3);
                    }
                    savedState5.mReverseLayout = parcel.readInt() == 1;
                    savedState5.mAnchorLayoutFromEnd = parcel.readInt() == 1;
                    savedState5.mLastLayoutRTL = parcel.readInt() == 1;
                    savedState5.mFullSpanItems = parcel.readArrayList(StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class.getClassLoader());
                    return savedState5;
                case RADIO_ROW_VALUE:
                    return new SwipeRefreshLayout.SavedState(parcel);
                case RADIO_COLUMN_VALUE:
                    return new ParcelImpl(parcel);
                case SIZE_BOX_VALUE:
                    FlexboxLayout.LayoutParams layoutParams = new FlexboxLayout.LayoutParams(0, 0);
                    layoutParams.mOrder = 1;
                    layoutParams.mFlexGrow = RecyclerView.DECELERATION_RATE;
                    layoutParams.mFlexShrink = 1.0f;
                    layoutParams.mAlignSelf = -1;
                    layoutParams.mFlexBasisPercent = -1.0f;
                    layoutParams.mMinWidth = -1;
                    layoutParams.mMinHeight = -1;
                    layoutParams.mMaxWidth = 16777215;
                    layoutParams.mMaxHeight = 16777215;
                    layoutParams.mOrder = parcel.readInt();
                    layoutParams.mFlexGrow = parcel.readFloat();
                    layoutParams.mFlexShrink = parcel.readFloat();
                    layoutParams.mAlignSelf = parcel.readInt();
                    layoutParams.mFlexBasisPercent = parcel.readFloat();
                    layoutParams.mMinWidth = parcel.readInt();
                    layoutParams.mMinHeight = parcel.readInt();
                    layoutParams.mMaxWidth = parcel.readInt();
                    layoutParams.mMaxHeight = parcel.readInt();
                    layoutParams.mWrapBefore = parcel.readByte() != 0;
                    ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = parcel.readInt();
                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = parcel.readInt();
                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = parcel.readInt();
                    ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = parcel.readInt();
                    ((ViewGroup.MarginLayoutParams) layoutParams).height = parcel.readInt();
                    ((ViewGroup.MarginLayoutParams) layoutParams).width = parcel.readInt();
                    return layoutParams;
                case 23:
                    FlexboxLayoutManager.LayoutParams layoutParams2 = new FlexboxLayoutManager.LayoutParams(-2, -2);
                    layoutParams2.mFlexGrow = RecyclerView.DECELERATION_RATE;
                    layoutParams2.mFlexShrink = 1.0f;
                    layoutParams2.mAlignSelf = -1;
                    layoutParams2.mFlexBasisPercent = -1.0f;
                    layoutParams2.mMaxWidth = 16777215;
                    layoutParams2.mMaxHeight = 16777215;
                    layoutParams2.mFlexGrow = parcel.readFloat();
                    layoutParams2.mFlexShrink = parcel.readFloat();
                    layoutParams2.mAlignSelf = parcel.readInt();
                    layoutParams2.mFlexBasisPercent = parcel.readFloat();
                    layoutParams2.mMinWidth = parcel.readInt();
                    layoutParams2.mMinHeight = parcel.readInt();
                    layoutParams2.mMaxWidth = parcel.readInt();
                    layoutParams2.mMaxHeight = parcel.readInt();
                    layoutParams2.mWrapBefore = parcel.readByte() != 0;
                    ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = parcel.readInt();
                    ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin = parcel.readInt();
                    ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin = parcel.readInt();
                    ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = parcel.readInt();
                    ((ViewGroup.MarginLayoutParams) layoutParams2).height = parcel.readInt();
                    ((ViewGroup.MarginLayoutParams) layoutParams2).width = parcel.readInt();
                    return layoutParams2;
                case 24:
                    FlexboxLayoutManager.SavedState savedState6 = new FlexboxLayoutManager.SavedState();
                    savedState6.mAnchorPosition = parcel.readInt();
                    savedState6.mAnchorOffset = parcel.readInt();
                    return savedState6;
                case 25:
                    BadgeState.State state = new BadgeState.State();
                    state.alpha = 255;
                    state.number = -2;
                    state.maxCharacterCount = -2;
                    state.maxNumber = -2;
                    state.isVisible = Boolean.TRUE;
                    state.badgeResId = parcel.readInt();
                    state.backgroundColor = (Integer) parcel.readSerializable();
                    state.badgeTextColor = (Integer) parcel.readSerializable();
                    state.badgeTextAppearanceResId = (Integer) parcel.readSerializable();
                    state.badgeShapeAppearanceResId = (Integer) parcel.readSerializable();
                    state.badgeShapeAppearanceOverlayResId = (Integer) parcel.readSerializable();
                    state.badgeWithTextShapeAppearanceResId = (Integer) parcel.readSerializable();
                    state.badgeWithTextShapeAppearanceOverlayResId = (Integer) parcel.readSerializable();
                    state.alpha = parcel.readInt();
                    state.text = parcel.readString();
                    state.number = parcel.readInt();
                    state.maxCharacterCount = parcel.readInt();
                    state.maxNumber = parcel.readInt();
                    state.contentDescriptionForText = parcel.readString();
                    state.contentDescriptionNumberless = parcel.readString();
                    state.contentDescriptionQuantityStrings = parcel.readInt();
                    state.badgeGravity = (Integer) parcel.readSerializable();
                    state.badgeHorizontalPadding = (Integer) parcel.readSerializable();
                    state.badgeVerticalPadding = (Integer) parcel.readSerializable();
                    state.horizontalOffsetWithoutText = (Integer) parcel.readSerializable();
                    state.verticalOffsetWithoutText = (Integer) parcel.readSerializable();
                    state.horizontalOffsetWithText = (Integer) parcel.readSerializable();
                    state.verticalOffsetWithText = (Integer) parcel.readSerializable();
                    state.largeFontVerticalOffsetAdjustment = (Integer) parcel.readSerializable();
                    state.additionalHorizontalOffset = (Integer) parcel.readSerializable();
                    state.additionalVerticalOffset = (Integer) parcel.readSerializable();
                    state.isVisible = (Boolean) parcel.readSerializable();
                    state.numberLocale = (Locale) parcel.readSerializable();
                    state.autoAdjustToWithinGrandparentBounds = (Boolean) parcel.readSerializable();
                    state.badgeFixedEdge = (Integer) parcel.readSerializable();
                    return state;
                case 26:
                    MaterialCheckBox.SavedState savedState7 = new MaterialCheckBox.SavedState(parcel);
                    savedState7.checkedState = ((Integer) parcel.readValue(MaterialCheckBox.SavedState.class.getClassLoader())).intValue();
                    return savedState7;
                case 27:
                    return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (CalendarConstraints.DateValidator) parcel.readParcelable(CalendarConstraints.DateValidator.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), parcel.readInt());
                case 28:
                    ArrayList readArrayList = parcel.readArrayList(CalendarConstraints.DateValidator.class.getClassLoader());
                    int readInt4 = parcel.readInt();
                    CompositeDateValidator.Operator operator = CompositeDateValidator.ALL_OPERATOR;
                    if (readInt4 != 2 && readInt4 == 1) {
                        operator = CompositeDateValidator.ANY_OPERATOR;
                    }
                    readArrayList.getClass();
                    return new CompositeDateValidator(readArrayList, operator);
                default:
                    return new DateValidatorPointBackward(parcel.readLong());
            }
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            switch (this.$r8$classId) {
                case 0:
                    return new FragmentState[i];
                case 1:
                    return new ActivityResult[i];
                case 2:
                    return new IntentSenderRequest[i];
                case 3:
                    return new ActionMenuPresenter.SavedState[i];
                case 4:
                    return new AppCompatSpinner.SavedState[i];
                case 5:
                    return new NestedScrollView.SavedState[i];
                case 6:
                    return new BackStackRecordState[i];
                case 7:
                    return new BackStackState[i];
                case 8:
                    return new FragmentManager$LaunchedFragmentInfo[i];
                case 9:
                    return new FragmentManagerState[i];
                case 10:
                    return new EditTextPreference.SavedState[i];
                case 11:
                    return new ListPreference.SavedState[i];
                case 12:
                    return new MultiSelectListPreference.SavedState[i];
                case IMAGE_VALUE:
                    return new Preference.BaseSavedState[i];
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    return new PreferenceGroup.SavedState[i];
                case 15:
                    return new SeekBarPreference.SavedState[i];
                case LAZY_VERTICAL_GRID_VALUE:
                    return new TwoStatePreference.SavedState[i];
                case VERTICAL_GRID_ITEM_VALUE:
                    return new LinearLayoutManager.SavedState[i];
                case RADIO_GROUP_VALUE:
                    return new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem[i];
                case RADIO_BUTTON_VALUE:
                    return new StaggeredGridLayoutManager.SavedState[i];
                case RADIO_ROW_VALUE:
                    return new SwipeRefreshLayout.SavedState[i];
                case RADIO_COLUMN_VALUE:
                    return new ParcelImpl[i];
                case SIZE_BOX_VALUE:
                    return new FlexboxLayout.LayoutParams[i];
                case 23:
                    return new FlexboxLayoutManager.LayoutParams[i];
                case 24:
                    return new FlexboxLayoutManager.SavedState[i];
                case 25:
                    return new BadgeState.State[i];
                case 26:
                    return new MaterialCheckBox.SavedState[i];
                case 27:
                    return new CalendarConstraints[i];
                case 28:
                    return new CompositeDateValidator[i];
                default:
                    return new DateValidatorPointBackward[i];
            }
        }
    }

    public FragmentState(Parcel parcel) {
        this.mClassName = parcel.readString();
        this.mWho = parcel.readString();
        this.mFromLayout = parcel.readInt() != 0;
        this.mInDynamicContainer = parcel.readInt() != 0;
        this.mFragmentId = parcel.readInt();
        this.mContainerId = parcel.readInt();
        this.mTag = parcel.readString();
        this.mRetainInstance = parcel.readInt() != 0;
        this.mRemoving = parcel.readInt() != 0;
        this.mDetached = parcel.readInt() != 0;
        this.mHidden = parcel.readInt() != 0;
        this.mMaxLifecycleState = parcel.readInt();
        this.mTargetWho = parcel.readString();
        this.mTargetRequestCode = parcel.readInt();
        this.mUserVisibleHint = parcel.readInt() != 0;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.mClassName);
        sb.append(" (");
        sb.append(this.mWho);
        sb.append(")}:");
        if (this.mFromLayout) {
            sb.append(" fromLayout");
        }
        if (this.mInDynamicContainer) {
            sb.append(" dynamicContainer");
        }
        int i = this.mContainerId;
        if (i != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(i));
        }
        String str = this.mTag;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(str);
        }
        if (this.mRetainInstance) {
            sb.append(" retainInstance");
        }
        if (this.mRemoving) {
            sb.append(" removing");
        }
        if (this.mDetached) {
            sb.append(" detached");
        }
        if (this.mHidden) {
            sb.append(" hidden");
        }
        String str2 = this.mTargetWho;
        if (str2 != null) {
            sb.append(" targetWho=");
            sb.append(str2);
            sb.append(" targetRequestCode=");
            sb.append(this.mTargetRequestCode);
        }
        if (this.mUserVisibleHint) {
            sb.append(" userVisibleHint");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mClassName);
        parcel.writeString(this.mWho);
        parcel.writeInt(this.mFromLayout ? 1 : 0);
        parcel.writeInt(this.mInDynamicContainer ? 1 : 0);
        parcel.writeInt(this.mFragmentId);
        parcel.writeInt(this.mContainerId);
        parcel.writeString(this.mTag);
        parcel.writeInt(this.mRetainInstance ? 1 : 0);
        parcel.writeInt(this.mRemoving ? 1 : 0);
        parcel.writeInt(this.mDetached ? 1 : 0);
        parcel.writeInt(this.mHidden ? 1 : 0);
        parcel.writeInt(this.mMaxLifecycleState);
        parcel.writeString(this.mTargetWho);
        parcel.writeInt(this.mTargetRequestCode);
        parcel.writeInt(this.mUserVisibleHint ? 1 : 0);
    }

    public FragmentState(Fragment fragment) {
        this.mClassName = fragment.getClass().getName();
        this.mWho = fragment.mWho;
        this.mFromLayout = fragment.mFromLayout;
        this.mInDynamicContainer = fragment.mInDynamicContainer;
        this.mFragmentId = fragment.mFragmentId;
        this.mContainerId = fragment.mContainerId;
        this.mTag = fragment.mTag;
        this.mRetainInstance = fragment.mRetainInstance;
        this.mRemoving = fragment.mRemoving;
        this.mDetached = fragment.mDetached;
        this.mHidden = fragment.mHidden;
        this.mMaxLifecycleState = fragment.mMaxState.ordinal();
        this.mTargetWho = fragment.mTargetWho;
        this.mTargetRequestCode = fragment.mTargetRequestCode;
        this.mUserVisibleHint = fragment.mUserVisibleHint;
    }
}
