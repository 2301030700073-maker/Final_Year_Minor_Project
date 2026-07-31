package androidx.customview.view;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.widget.Toolbar;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.SmallPersistentVector;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.ParcelableSparseArray;
import com.google.android.material.navigation.NavigationView;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.android.material.stateful.ExtendableSavedState;
import com.google.android.material.textfield.TextInputLayout;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AbsSavedState implements Parcelable {
    public final Parcelable mSuperState;
    public static final AnonymousClass1 EMPTY_STATE = new AnonymousClass1();
    public static final Parcelable.Creator<AbsSavedState> CREATOR = new AnonymousClass2(0);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.customview.view.AbsSavedState$1, reason: invalid class name */
    public final class AnonymousClass1 extends AbsSavedState {
    }

    public AbsSavedState(Parcelable parcelable) {
        if (parcelable != null) {
            this.mSuperState = parcelable == EMPTY_STATE ? null : parcelable;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("superState must not be null");
            throw null;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.mSuperState, i);
    }

    public AbsSavedState() {
        this.mSuperState = null;
    }

    public AbsSavedState(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.mSuperState = readParcelable == null ? EMPTY_STATE : readParcelable;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.customview.view.AbsSavedState$2, reason: invalid class name */
    public final class AnonymousClass2 implements Parcelable.ClassLoaderCreator {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass2(int i) {
            this.$r8$classId = i;
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
            switch (this.$r8$classId) {
                case 0:
                    if (parcel.readParcelable(classLoader) == null) {
                        return AbsSavedState.EMPTY_STATE;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("superState must be null");
                    return null;
                case 1:
                    return createFromParcel(parcel, classLoader);
                case 2:
                    return new Toolbar.SavedState(parcel, classLoader);
                case 3:
                    return new CoordinatorLayout.SavedState(parcel, classLoader);
                case 4:
                    return new DrawerLayout.SavedState(parcel, classLoader);
                case 5:
                    return new Fragment.SavedState(parcel, classLoader);
                case 6:
                    return new RecyclerView.SavedState(parcel, classLoader);
                case 7:
                    return new ViewPager.SavedState(parcel, classLoader);
                case 8:
                    return new BottomSheetBehavior.SavedState(parcel, classLoader);
                case 9:
                    return new MaterialButton.SavedState(parcel, classLoader);
                case 10:
                    return new CheckableImageButton.SavedState(parcel, classLoader);
                case 11:
                    return new ParcelableSparseArray(parcel, classLoader);
                case 12:
                    return new NavigationView.SavedState(parcel, classLoader);
                case 13:
                    return new SideSheetBehavior.SavedState(parcel, classLoader);
                case 14:
                    return new ExtendableSavedState(parcel, classLoader);
                default:
                    return new TextInputLayout.SavedState(parcel, classLoader);
            }
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            switch (this.$r8$classId) {
                case 0:
                    return new AbsSavedState[i];
                case 1:
                    return new SnapshotStateList[i];
                case 2:
                    return new Toolbar.SavedState[i];
                case 3:
                    return new CoordinatorLayout.SavedState[i];
                case 4:
                    return new DrawerLayout.SavedState[i];
                case 5:
                    return new Fragment.SavedState[i];
                case 6:
                    return new RecyclerView.SavedState[i];
                case 7:
                    return new ViewPager.SavedState[i];
                case 8:
                    return new BottomSheetBehavior.SavedState[i];
                case 9:
                    return new MaterialButton.SavedState[i];
                case 10:
                    return new CheckableImageButton.SavedState[i];
                case 11:
                    return new ParcelableSparseArray[i];
                case 12:
                    return new NavigationView.SavedState[i];
                case 13:
                    return new SideSheetBehavior.SavedState[i];
                case 14:
                    return new ExtendableSavedState[i];
                default:
                    return new TextInputLayout.SavedState[i];
            }
        }

        public static SnapshotStateList createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (classLoader == null) {
                classLoader = AnonymousClass2.class.getClassLoader();
            }
            int readInt = parcel.readInt();
            if (readInt == 0) {
                return new SnapshotStateList();
            }
            PersistentVectorBuilder builder = SmallPersistentVector.EMPTY.builder();
            for (int i = 0; i < readInt; i++) {
                builder.add(parcel.readValue(classLoader));
            }
            return new SnapshotStateList(builder.build());
        }

        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            switch (this.$r8$classId) {
                case 0:
                    if (parcel.readParcelable(null) == null) {
                        return AbsSavedState.EMPTY_STATE;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("superState must be null");
                    return null;
                case 1:
                    return createFromParcel(parcel, (ClassLoader) null);
                case 2:
                    return new Toolbar.SavedState(parcel, null);
                case 3:
                    return new CoordinatorLayout.SavedState(parcel, null);
                case 4:
                    return new DrawerLayout.SavedState(parcel, null);
                case 5:
                    return new Fragment.SavedState(parcel, null);
                case 6:
                    return new RecyclerView.SavedState(parcel, null);
                case 7:
                    return new ViewPager.SavedState(parcel, null);
                case 8:
                    return new BottomSheetBehavior.SavedState(parcel, null);
                case 9:
                    return new MaterialButton.SavedState(parcel, null);
                case 10:
                    return new CheckableImageButton.SavedState(parcel, null);
                case 11:
                    return new ParcelableSparseArray(parcel, null);
                case 12:
                    return new NavigationView.SavedState(parcel, null);
                case 13:
                    return new SideSheetBehavior.SavedState(parcel, null);
                case 14:
                    return new ExtendableSavedState(parcel, null);
                default:
                    return new TextInputLayout.SavedState(parcel, null);
            }
        }
    }
}
