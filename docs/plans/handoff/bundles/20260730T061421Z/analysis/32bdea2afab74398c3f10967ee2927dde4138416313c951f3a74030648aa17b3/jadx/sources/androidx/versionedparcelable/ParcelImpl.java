package androidx.versionedparcelable;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import b.p.a;
import b.p.c;
import b.p.d;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final d f207a;

    public ParcelImpl(Parcel parcel) {
        this.f207a = new c(parcel).k();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        new c(parcel).o(this.f207a);
    }
}
