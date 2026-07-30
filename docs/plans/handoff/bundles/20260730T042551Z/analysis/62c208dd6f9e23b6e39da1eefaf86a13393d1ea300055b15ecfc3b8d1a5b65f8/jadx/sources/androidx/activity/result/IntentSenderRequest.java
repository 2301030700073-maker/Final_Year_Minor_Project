package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.C0173Do;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class IntentSenderRequest implements Parcelable {
    public static final Parcelable.Creator<IntentSenderRequest> CREATOR = new Cdo();

    /* renamed from: do, reason: not valid java name */
    public final Intent f5153do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final IntentSender f5154do;

    /* renamed from: for, reason: not valid java name */
    public final int f5155for;

    /* renamed from: new, reason: not valid java name */
    public final int f5156new;

    /* renamed from: androidx.activity.result.IntentSenderRequest$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<IntentSenderRequest> {
        @Override // android.os.Parcelable.Creator
        public final IntentSenderRequest createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "inParcel");
            Parcelable readParcelable = parcel.readParcelable(IntentSender.class.getClassLoader());
            C0173Do.m398if(readParcelable);
            return new IntentSenderRequest((IntentSender) readParcelable, (Intent) parcel.readParcelable(Intent.class.getClassLoader()), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final IntentSenderRequest[] newArray(int i) {
            return new IntentSenderRequest[i];
        }
    }

    public IntentSenderRequest(IntentSender intentSender, Intent intent, int i, int i2) {
        C0173Do.m401try(intentSender, "intentSender");
        this.f5154do = intentSender;
        this.f5153do = intent;
        this.f5155for = i;
        this.f5156new = i2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "dest");
        parcel.writeParcelable(this.f5154do, i);
        parcel.writeParcelable(this.f5153do, i);
        parcel.writeInt(this.f5155for);
        parcel.writeInt(this.f5156new);
    }
}
