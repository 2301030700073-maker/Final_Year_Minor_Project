package android.support.v4.os;

import a.a.a.a.b;
import a.a.a.a.c;
import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator CREATOR = new b();

    /* renamed from: a, reason: collision with root package name */
    public final Handler f2a = null;

    /* renamed from: b, reason: collision with root package name */
    public IResultReceiver f3b;

    public ResultReceiver(Parcel parcel) {
        this.f3b = c.asInterface(parcel.readStrongBinder());
    }

    public void a() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.f3b == null) {
                this.f3b = new c(this);
            }
            parcel.writeStrongBinder(this.f3b.asBinder());
        }
    }
}
