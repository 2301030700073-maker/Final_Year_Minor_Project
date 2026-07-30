package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import b.i.b.T;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class FragmentManager$LaunchedFragmentInfo implements Parcelable {
    public static final Parcelable.Creator CREATOR = new T();

    /* renamed from: a, reason: collision with root package name */
    public String f107a;

    /* renamed from: b, reason: collision with root package name */
    public int f108b;

    public FragmentManager$LaunchedFragmentInfo(String str, int i) {
        this.f107a = str;
        this.f108b = i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f107a);
        parcel.writeInt(this.f108b);
    }

    public FragmentManager$LaunchedFragmentInfo(Parcel parcel) {
        this.f107a = parcel.readString();
        this.f108b = parcel.readInt();
    }
}
