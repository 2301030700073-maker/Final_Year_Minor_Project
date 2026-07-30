package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentManager;
import java.util.ArrayList;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new Cdo();

    /* renamed from: break, reason: not valid java name */
    public String f6902break;

    /* renamed from: do, reason: not valid java name */
    public ArrayList<FragmentState> f6903do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public BackStackState[] f6904do;

    /* renamed from: for, reason: not valid java name */
    public int f6905for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final ArrayList<String> f6906for;

    /* renamed from: if, reason: not valid java name */
    public ArrayList<String> f6907if;

    /* renamed from: new, reason: not valid java name */
    public final ArrayList<Bundle> f6908new;

    /* renamed from: try, reason: not valid java name */
    public ArrayList<FragmentManager.LaunchedFragmentInfo> f6909try;

    /* renamed from: androidx.fragment.app.FragmentManagerState$do, reason: invalid class name */
    public class Cdo implements Parcelable.Creator<FragmentManagerState> {
        @Override // android.os.Parcelable.Creator
        public final FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final FragmentManagerState[] newArray(int i) {
            return new FragmentManagerState[i];
        }
    }

    public FragmentManagerState() {
        this.f6902break = null;
        this.f6906for = new ArrayList<>();
        this.f6908new = new ArrayList<>();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f6903do);
        parcel.writeStringList(this.f6907if);
        parcel.writeTypedArray(this.f6904do, i);
        parcel.writeInt(this.f6905for);
        parcel.writeString(this.f6902break);
        parcel.writeStringList(this.f6906for);
        parcel.writeTypedList(this.f6908new);
        parcel.writeTypedList(this.f6909try);
    }

    public FragmentManagerState(Parcel parcel) {
        this.f6902break = null;
        this.f6906for = new ArrayList<>();
        this.f6908new = new ArrayList<>();
        this.f6903do = parcel.createTypedArrayList(FragmentState.CREATOR);
        this.f6907if = parcel.createStringArrayList();
        this.f6904do = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.f6905for = parcel.readInt();
        this.f6902break = parcel.readString();
        this.f6906for = parcel.createStringArrayList();
        this.f6908new = parcel.createTypedArrayList(Bundle.CREATOR);
        this.f6909try = parcel.createTypedArrayList(FragmentManager.LaunchedFragmentInfo.CREATOR);
    }
}
