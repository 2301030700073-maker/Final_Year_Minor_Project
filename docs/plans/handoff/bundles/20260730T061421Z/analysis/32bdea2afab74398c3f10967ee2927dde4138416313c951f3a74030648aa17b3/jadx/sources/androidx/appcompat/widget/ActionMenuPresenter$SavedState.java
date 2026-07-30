package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import b.b.g.C0068q;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class ActionMenuPresenter$SavedState implements Parcelable {
    public static final Parcelable.Creator CREATOR = new C0068q();

    /* renamed from: a, reason: collision with root package name */
    public int f47a;

    public ActionMenuPresenter$SavedState() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f47a);
    }

    public ActionMenuPresenter$SavedState(Parcel parcel) {
        this.f47a = parcel.readInt();
    }
}
