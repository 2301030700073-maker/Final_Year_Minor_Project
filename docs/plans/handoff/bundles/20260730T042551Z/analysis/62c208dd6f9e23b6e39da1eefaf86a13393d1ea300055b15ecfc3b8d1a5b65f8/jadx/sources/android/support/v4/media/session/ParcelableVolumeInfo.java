package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new Cdo();

    /* renamed from: case, reason: not valid java name */
    public final int f5057case;

    /* renamed from: else, reason: not valid java name */
    public final int f5058else;

    /* renamed from: for, reason: not valid java name */
    public final int f5059for;

    /* renamed from: new, reason: not valid java name */
    public final int f5060new;

    /* renamed from: try, reason: not valid java name */
    public final int f5061try;

    /* renamed from: android.support.v4.media.session.ParcelableVolumeInfo$do, reason: invalid class name */
    public static class Cdo implements Parcelable.Creator<ParcelableVolumeInfo> {
        @Override // android.os.Parcelable.Creator
        public final ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ParcelableVolumeInfo[] newArray(int i) {
            return new ParcelableVolumeInfo[i];
        }
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f5059for = parcel.readInt();
        this.f5061try = parcel.readInt();
        this.f5057case = parcel.readInt();
        this.f5058else = parcel.readInt();
        this.f5060new = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f5059for);
        parcel.writeInt(this.f5061try);
        parcel.writeInt(this.f5057case);
        parcel.writeInt(this.f5058else);
        parcel.writeInt(this.f5060new);
    }
}
