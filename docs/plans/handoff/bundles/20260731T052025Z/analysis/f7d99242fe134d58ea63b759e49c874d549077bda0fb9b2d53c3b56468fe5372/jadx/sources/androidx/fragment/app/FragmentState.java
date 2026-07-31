package androidx.fragment.app;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.core.widget.NestedScrollView;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.preference.EditTextPreference;
import androidx.preference.ListPreference;
import androidx.preference.MultiSelectListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.SeekBarPreference;
import androidx.preference.TwoStatePreference;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.versionedparcelable.ParcelImpl;
import app.k9mail.ui.utils.linearlayoutmanager.LinearLayoutManager;
import com.bytehamster.lib.preferencesearch.PreferenceItem;
import com.bytehamster.lib.preferencesearch.SearchConfiguration;
import com.bytehamster.lib.preferencesearch.ui.RevealAnimationSetting;
import com.fsck.k9.activity.misc.Attachment;
import com.fsck.k9.ui.messageview.MessageTopView;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.material.checkbox.MaterialCheckBox;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
                    AppCompatSpinner.SavedState savedState = new AppCompatSpinner.SavedState(parcel);
                    savedState.mShowDropdown = parcel.readByte() != 0;
                    return savedState;
                case 4:
                    NestedScrollView.SavedState savedState2 = new NestedScrollView.SavedState(parcel);
                    savedState2.scrollPosition = parcel.readInt();
                    return savedState2;
                case 5:
                    return new BackStackRecordState(parcel);
                case 6:
                    return new BackStackState(parcel);
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    FragmentManager.LaunchedFragmentInfo launchedFragmentInfo = new FragmentManager.LaunchedFragmentInfo();
                    launchedFragmentInfo.mWho = parcel.readString();
                    launchedFragmentInfo.mRequestCode = parcel.readInt();
                    return launchedFragmentInfo;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
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
                    fragmentManagerState.mLaunchedFragments = parcel.createTypedArrayList(FragmentManager.LaunchedFragmentInfo.CREATOR);
                    return fragmentManagerState;
                case 9:
                    return new EditTextPreference.SavedState(parcel);
                case 10:
                    return new ListPreference.SavedState(parcel);
                case 11:
                    return new MultiSelectListPreference.SavedState(parcel);
                case BasicTextKt.ShiftMeta /* 12 */:
                    return new Preference.BaseSavedState(parcel);
                case 13:
                    return new PreferenceGroup.SavedState(parcel);
                case 14:
                    return new SeekBarPreference.SavedState(parcel);
                case OffsetKt.Horizontal /* 15 */:
                    return new TwoStatePreference.SavedState(parcel);
                case 16:
                    LinearLayoutManager.SavedState savedState3 = new LinearLayoutManager.SavedState();
                    savedState3.mAnchorPosition = parcel.readInt();
                    savedState3.mAnchorOffset = parcel.readInt();
                    savedState3.mAnchorLayoutFromEnd = parcel.readInt() == 1;
                    return savedState3;
                case 17:
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
                case 18:
                    StaggeredGridLayoutManager.SavedState savedState4 = new StaggeredGridLayoutManager.SavedState();
                    savedState4.mAnchorPosition = parcel.readInt();
                    savedState4.mVisibleAnchorPosition = parcel.readInt();
                    int readInt2 = parcel.readInt();
                    savedState4.mSpanOffsetsSize = readInt2;
                    if (readInt2 > 0) {
                        int[] iArr2 = new int[readInt2];
                        savedState4.mSpanOffsets = iArr2;
                        parcel.readIntArray(iArr2);
                    }
                    int readInt3 = parcel.readInt();
                    savedState4.mSpanLookupSize = readInt3;
                    if (readInt3 > 0) {
                        int[] iArr3 = new int[readInt3];
                        savedState4.mSpanLookup = iArr3;
                        parcel.readIntArray(iArr3);
                    }
                    savedState4.mReverseLayout = parcel.readInt() == 1;
                    savedState4.mAnchorLayoutFromEnd = parcel.readInt() == 1;
                    savedState4.mLastLayoutRTL = parcel.readInt() == 1;
                    savedState4.mFullSpanItems = parcel.readArrayList(StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class.getClassLoader());
                    return savedState4;
                case 19:
                    return new SwipeRefreshLayout.SavedState(parcel);
                case 20:
                    return new ParcelImpl(parcel);
                case 21:
                    LinearLayoutManager.SavedState savedState5 = new LinearLayoutManager.SavedState();
                    savedState5.mAnchorPosition = parcel.readInt();
                    savedState5.mAnchorOffset = parcel.readInt();
                    savedState5.mAnchorLayoutFromEnd = parcel.readInt() == 1;
                    return savedState5;
                case 22:
                    PreferenceItem preferenceItem = new PreferenceItem();
                    preferenceItem.keyBreadcrumbs = new ArrayList();
                    preferenceItem.lastScore = 0.0f;
                    preferenceItem.lastKeyword = null;
                    preferenceItem.title = parcel.readString();
                    preferenceItem.summary = parcel.readString();
                    preferenceItem.key = parcel.readString();
                    preferenceItem.breadcrumbs = parcel.readString();
                    preferenceItem.keywords = parcel.readString();
                    preferenceItem.resId = parcel.readInt();
                    return preferenceItem;
                case 23:
                    return new SearchConfiguration.SearchIndexItem(parcel);
                case 24:
                    RevealAnimationSetting revealAnimationSetting = new RevealAnimationSetting();
                    revealAnimationSetting.centerX = parcel.readInt();
                    revealAnimationSetting.centerY = parcel.readInt();
                    revealAnimationSetting.width = parcel.readInt();
                    revealAnimationSetting.height = parcel.readInt();
                    revealAnimationSetting.colorAccent = parcel.readInt();
                    return revealAnimationSetting;
                case 25:
                    parcel.getClass();
                    return new Attachment(parcel);
                case 26:
                    parcel.getClass();
                    MessageTopView.SavedState savedState6 = new MessageTopView.SavedState(parcel);
                    savedState6.showPicturesButtonClicked = parcel.readInt() != 0;
                    return savedState6;
                case 27:
                    FlexboxLayoutManager.LayoutParams layoutParams = new FlexboxLayoutManager.LayoutParams(-2, -2);
                    layoutParams.mFlexGrow = 0.0f;
                    layoutParams.mFlexShrink = 1.0f;
                    layoutParams.mAlignSelf = -1;
                    layoutParams.mFlexBasisPercent = -1.0f;
                    layoutParams.mMaxWidth = 16777215;
                    layoutParams.mMaxHeight = 16777215;
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
                case 28:
                    FlexboxLayoutManager.SavedState savedState7 = new FlexboxLayoutManager.SavedState();
                    savedState7.mAnchorPosition = parcel.readInt();
                    savedState7.mAnchorOffset = parcel.readInt();
                    return savedState7;
                default:
                    MaterialCheckBox.SavedState savedState8 = new MaterialCheckBox.SavedState(parcel);
                    savedState8.checkedState = ((Integer) parcel.readValue(MaterialCheckBox.SavedState.class.getClassLoader())).intValue();
                    return savedState8;
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
                    return new AppCompatSpinner.SavedState[i];
                case 4:
                    return new NestedScrollView.SavedState[i];
                case 5:
                    return new BackStackRecordState[i];
                case 6:
                    return new BackStackState[i];
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    return new FragmentManager.LaunchedFragmentInfo[i];
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    return new FragmentManagerState[i];
                case 9:
                    return new EditTextPreference.SavedState[i];
                case 10:
                    return new ListPreference.SavedState[i];
                case 11:
                    return new MultiSelectListPreference.SavedState[i];
                case BasicTextKt.ShiftMeta /* 12 */:
                    return new Preference.BaseSavedState[i];
                case 13:
                    return new PreferenceGroup.SavedState[i];
                case 14:
                    return new SeekBarPreference.SavedState[i];
                case OffsetKt.Horizontal /* 15 */:
                    return new TwoStatePreference.SavedState[i];
                case 16:
                    return new LinearLayoutManager.SavedState[i];
                case 17:
                    return new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem[i];
                case 18:
                    return new StaggeredGridLayoutManager.SavedState[i];
                case 19:
                    return new SwipeRefreshLayout.SavedState[i];
                case 20:
                    return new ParcelImpl[i];
                case 21:
                    return new LinearLayoutManager.SavedState[i];
                case 22:
                    return new PreferenceItem[i];
                case 23:
                    return new SearchConfiguration.SearchIndexItem[i];
                case 24:
                    return new RevealAnimationSetting[i];
                case 25:
                    return new Attachment[i];
                case 26:
                    return new MessageTopView.SavedState[i];
                case 27:
                    return new FlexboxLayoutManager.LayoutParams[i];
                case 28:
                    return new FlexboxLayoutManager.SavedState[i];
                default:
                    return new MaterialCheckBox.SavedState[i];
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

    public final Fragment instantiate(FragmentManager.AnonymousClass3 anonymousClass3) {
        Fragment instantiate = anonymousClass3.instantiate(this.mClassName);
        instantiate.mWho = this.mWho;
        instantiate.mFromLayout = this.mFromLayout;
        instantiate.mInDynamicContainer = this.mInDynamicContainer;
        instantiate.mRestored = true;
        instantiate.mFragmentId = this.mFragmentId;
        instantiate.mContainerId = this.mContainerId;
        instantiate.mTag = this.mTag;
        instantiate.mRetainInstance = this.mRetainInstance;
        instantiate.mRemoving = this.mRemoving;
        instantiate.mDetached = this.mDetached;
        instantiate.mHidden = this.mHidden;
        instantiate.mMaxState = Lifecycle.State.values()[this.mMaxLifecycleState];
        instantiate.mTargetWho = this.mTargetWho;
        instantiate.mTargetRequestCode = this.mTargetRequestCode;
        instantiate.mUserVisibleHint = this.mUserVisibleHint;
        return instantiate;
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
