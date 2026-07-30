package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import b.i.b.Z;
import java.util.ArrayList;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Z();

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f109a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f110b;

    /* renamed from: c, reason: collision with root package name */
    public BackStackState[] f111c;

    /* renamed from: d, reason: collision with root package name */
    public int f112d;
    public String e;
    public ArrayList f;
    public ArrayList g;
    public ArrayList h;

    public FragmentManagerState() {
        this.e = null;
        this.f = new ArrayList();
        this.g = new ArrayList();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f109a);
        parcel.writeStringList(this.f110b);
        parcel.writeTypedArray(this.f111c, i);
        parcel.writeInt(this.f112d);
        parcel.writeString(this.e);
        parcel.writeStringList(this.f);
        parcel.writeTypedList(this.g);
        parcel.writeTypedList(this.h);
    }

    public FragmentManagerState(Parcel parcel) {
        this.e = null;
        this.f = new ArrayList();
        this.g = new ArrayList();
        this.f109a = parcel.createTypedArrayList(FragmentState.CREATOR);
        this.f110b = parcel.createStringArrayList();
        this.f111c = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.f112d = parcel.readInt();
        this.e = parcel.readString();
        this.f = parcel.createStringArrayList();
        this.g = parcel.createTypedArrayList(Bundle.CREATOR);
        this.h = parcel.createTypedArrayList(FragmentManager$LaunchedFragmentInfo.CREATOR);
    }
}
