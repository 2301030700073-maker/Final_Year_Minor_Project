package androidx.fragment.app;

import android.content.Intent;
import android.content.IntentSender;
import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.os.IResultReceiver;
import android.support.v4.os.IResultReceiver$Stub$Proxy;
import android.support.v4.os.ResultReceiver;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.FragmentManager;
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
import com.google.android.material.badge.BadgeState;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.livefront.bridge.wrapper.BitmapWrapper;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Locale;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.fragment.app.FragmentState$1, reason: invalid class name */
    public final class AnonymousClass1 implements Parcelable.Creator {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            IResultReceiver iResultReceiver = null;
            switch (this.$r8$classId) {
                case 0:
                    return new FragmentState(parcel);
                case 1:
                    return new MediaBrowserCompat.MediaItem(parcel);
                case 2:
                    return MediaDescriptionCompat.fromMediaDescription(MediaDescription.CREATOR.createFromParcel(parcel));
                case 3:
                    return new MediaMetadataCompat(parcel);
                case 4:
                    return new RatingCompat(parcel.readInt(), parcel.readFloat());
                case 5:
                    ResultReceiver resultReceiver = new ResultReceiver();
                    IBinder readStrongBinder = parcel.readStrongBinder();
                    int i = ResultReceiver.MyResultReceiver.$r8$clinit;
                    if (readStrongBinder != null) {
                        IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(IResultReceiver.DESCRIPTOR);
                        if (queryLocalInterface == null || !(queryLocalInterface instanceof IResultReceiver)) {
                            IResultReceiver$Stub$Proxy iResultReceiver$Stub$Proxy = new IResultReceiver$Stub$Proxy();
                            iResultReceiver$Stub$Proxy.mRemote = readStrongBinder;
                            iResultReceiver = iResultReceiver$Stub$Proxy;
                        } else {
                            iResultReceiver = (IResultReceiver) queryLocalInterface;
                        }
                    }
                    resultReceiver.mReceiver = iResultReceiver;
                    return resultReceiver;
                case 6:
                    parcel.getClass();
                    return new ActivityResult(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                case 7:
                    parcel.getClass();
                    Parcelable readParcelable = parcel.readParcelable(IntentSender.class.getClassLoader());
                    readParcelable.getClass();
                    return new IntentSenderRequest((IntentSender) readParcelable, (Intent) parcel.readParcelable(Intent.class.getClassLoader()), parcel.readInt(), parcel.readInt());
                case 8:
                    ActionMenuPresenter.SavedState savedState = new ActionMenuPresenter.SavedState();
                    savedState.openSubMenuId = parcel.readInt();
                    return savedState;
                case 9:
                    AppCompatSpinner.SavedState savedState2 = new AppCompatSpinner.SavedState(parcel);
                    savedState2.mShowDropdown = parcel.readByte() != 0;
                    return savedState2;
                case 10:
                    NestedScrollView.SavedState savedState3 = new NestedScrollView.SavedState(parcel);
                    savedState3.scrollPosition = parcel.readInt();
                    return savedState3;
                case 11:
                    return new BackStackRecordState(parcel);
                case 12:
                    return new BackStackState(parcel);
                case 13:
                    FragmentManager.LaunchedFragmentInfo launchedFragmentInfo = new FragmentManager.LaunchedFragmentInfo();
                    launchedFragmentInfo.mWho = parcel.readString();
                    launchedFragmentInfo.mRequestCode = parcel.readInt();
                    return launchedFragmentInfo;
                case 14:
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
                case 15:
                    return new EditTextPreference.SavedState(parcel);
                case 16:
                    return new ListPreference.SavedState(parcel);
                case 17:
                    return new MultiSelectListPreference.SavedState(parcel);
                case 18:
                    return new Preference.BaseSavedState(parcel);
                case 19:
                    return new PreferenceGroup.SavedState(parcel);
                case 20:
                    return new SeekBarPreference.SavedState(parcel);
                case 21:
                    return new TwoStatePreference.SavedState(parcel);
                case 22:
                    LinearLayoutManager.SavedState savedState4 = new LinearLayoutManager.SavedState();
                    savedState4.mAnchorPosition = parcel.readInt();
                    savedState4.mAnchorOffset = parcel.readInt();
                    savedState4.mAnchorLayoutFromEnd = parcel.readInt() == 1;
                    return savedState4;
                case 23:
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
                case 24:
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
                case 25:
                    return new SwipeRefreshLayout.SavedState(parcel);
                case 26:
                    return new ParcelImpl(parcel);
                case 27:
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
                    return state;
                case 28:
                    MaterialCheckBox.SavedState savedState6 = new MaterialCheckBox.SavedState(parcel);
                    savedState6.checkedState = ((Integer) parcel.readValue(MaterialCheckBox.SavedState.class.getClassLoader())).intValue();
                    return savedState6;
                default:
                    BitmapWrapper bitmapWrapper = new BitmapWrapper();
                    int readInt4 = parcel.readInt();
                    int readInt5 = parcel.readInt();
                    Bitmap.Config config = Bitmap.Config.values()[parcel.readInt()];
                    byte[] createByteArray = parcel.createByteArray();
                    Bitmap createBitmap = Bitmap.createBitmap(readInt4, readInt5, config);
                    bitmapWrapper.mBitmap = createBitmap;
                    createBitmap.copyPixelsFromBuffer(ByteBuffer.wrap(createByteArray));
                    return bitmapWrapper;
            }
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            switch (this.$r8$classId) {
                case 0:
                    return new FragmentState[i];
                case 1:
                    return new MediaBrowserCompat.MediaItem[i];
                case 2:
                    return new MediaDescriptionCompat[i];
                case 3:
                    return new MediaMetadataCompat[i];
                case 4:
                    return new RatingCompat[i];
                case 5:
                    return new ResultReceiver[i];
                case 6:
                    return new ActivityResult[i];
                case 7:
                    return new IntentSenderRequest[i];
                case 8:
                    return new ActionMenuPresenter.SavedState[i];
                case 9:
                    return new AppCompatSpinner.SavedState[i];
                case 10:
                    return new NestedScrollView.SavedState[i];
                case 11:
                    return new BackStackRecordState[i];
                case 12:
                    return new BackStackState[i];
                case 13:
                    return new FragmentManager.LaunchedFragmentInfo[i];
                case 14:
                    return new FragmentManagerState[i];
                case 15:
                    return new EditTextPreference.SavedState[i];
                case 16:
                    return new ListPreference.SavedState[i];
                case 17:
                    return new MultiSelectListPreference.SavedState[i];
                case 18:
                    return new Preference.BaseSavedState[i];
                case 19:
                    return new PreferenceGroup.SavedState[i];
                case 20:
                    return new SeekBarPreference.SavedState[i];
                case 21:
                    return new TwoStatePreference.SavedState[i];
                case 22:
                    return new LinearLayoutManager.SavedState[i];
                case 23:
                    return new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem[i];
                case 24:
                    return new StaggeredGridLayoutManager.SavedState[i];
                case 25:
                    return new SwipeRefreshLayout.SavedState[i];
                case 26:
                    return new ParcelImpl[i];
                case 27:
                    return new BadgeState.State[i];
                case 28:
                    return new MaterialCheckBox.SavedState[i];
                default:
                    return new BitmapWrapper[i];
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
