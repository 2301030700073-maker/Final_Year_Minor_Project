package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import b.a.l.a;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class ActivityResult implements Parcelable {
    public static final Parcelable.Creator CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final int f14a;

    /* renamed from: b, reason: collision with root package name */
    public final Intent f15b;

    public ActivityResult(int i, Intent intent) {
        this.f14a = i;
        this.f15b = intent;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder f = c.a.c.a.a.f("ActivityResult{resultCode=");
        int i = this.f14a;
        f.append(i != -1 ? i != 0 ? String.valueOf(i) : "RESULT_CANCELED" : "RESULT_OK");
        f.append(", data=");
        f.append(this.f15b);
        f.append('}');
        return f.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f14a);
        parcel.writeInt(this.f15b == null ? 0 : 1);
        Intent intent = this.f15b;
        if (intent != null) {
            intent.writeToParcel(parcel, i);
        }
    }

    public ActivityResult(Parcel parcel) {
        this.f14a = parcel.readInt();
        this.f15b = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }
}
