package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import b.a.l.i;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class IntentSenderRequest implements Parcelable {
    public static final Parcelable.Creator CREATOR = new i();

    /* renamed from: a, reason: collision with root package name */
    public final IntentSender f21a;

    /* renamed from: b, reason: collision with root package name */
    public final Intent f22b;

    /* renamed from: c, reason: collision with root package name */
    public final int f23c;

    /* renamed from: d, reason: collision with root package name */
    public final int f24d;

    public IntentSenderRequest(IntentSender intentSender, Intent intent, int i, int i2) {
        this.f21a = intentSender;
        this.f22b = intent;
        this.f23c = i;
        this.f24d = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f21a, i);
        parcel.writeParcelable(this.f22b, i);
        parcel.writeInt(this.f23c);
        parcel.writeInt(this.f24d);
    }

    public IntentSenderRequest(Parcel parcel) {
        this.f21a = (IntentSender) parcel.readParcelable(IntentSender.class.getClassLoader());
        this.f22b = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.f23c = parcel.readInt();
        this.f24d = parcel.readInt();
    }
}
