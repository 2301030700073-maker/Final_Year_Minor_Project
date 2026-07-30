package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new Cdo();

    /* renamed from: do, reason: not valid java name */
    public final float f5043do;

    /* renamed from: for, reason: not valid java name */
    public final int f5044for;

    /* renamed from: android.support.v4.media.RatingCompat$do, reason: invalid class name */
    public static class Cdo implements Parcelable.Creator<RatingCompat> {
        @Override // android.os.Parcelable.Creator
        public final RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        @Override // android.os.Parcelable.Creator
        public final RatingCompat[] newArray(int i) {
            return new RatingCompat[i];
        }
    }

    public RatingCompat(int i, float f) {
        this.f5044for = i;
        this.f5043do = f;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return this.f5044for;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Rating:style=");
        sb.append(this.f5044for);
        sb.append(" rating=");
        float f = this.f5043do;
        sb.append(f < 0.0f ? "unrated" : String.valueOf(f));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f5044for);
        parcel.writeFloat(this.f5043do);
    }
}
