package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import defpackage.C4122zt;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new Cdo();

    /* renamed from: do, reason: not valid java name */
    public final float f5062do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f5063do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Bundle f5064do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CharSequence f5065do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f5066do;

    /* renamed from: for, reason: not valid java name */
    public final int f5067for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final long f5068for;

    /* renamed from: if, reason: not valid java name */
    public final long f5069if;

    /* renamed from: new, reason: not valid java name */
    public final int f5070new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final long f5071new;

    /* renamed from: try, reason: not valid java name */
    public final long f5072try;

    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$do, reason: invalid class name */
    public static class Cdo implements Parcelable.Creator<PlaybackStateCompat> {
        @Override // android.os.Parcelable.Creator
        public final PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final PlaybackStateCompat[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    }

    public PlaybackStateCompat(int i, long j, long j2, float f, long j3, CharSequence charSequence, long j4, ArrayList arrayList, long j5, Bundle bundle) {
        this.f5067for = i;
        this.f5063do = j;
        this.f5069if = j2;
        this.f5062do = f;
        this.f5068for = j3;
        this.f5070new = 0;
        this.f5065do = charSequence;
        this.f5071new = j4;
        this.f5066do = new ArrayList(arrayList);
        this.f5072try = j5;
        this.f5064do = bundle;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PlaybackState {state=");
        sb.append(this.f5067for);
        sb.append(", position=");
        sb.append(this.f5063do);
        sb.append(", buffered position=");
        sb.append(this.f5069if);
        sb.append(", speed=");
        sb.append(this.f5062do);
        sb.append(", updated=");
        sb.append(this.f5071new);
        sb.append(", actions=");
        sb.append(this.f5068for);
        sb.append(", error code=");
        sb.append(this.f5070new);
        sb.append(", error message=");
        sb.append(this.f5065do);
        sb.append(", custom actions=");
        sb.append(this.f5066do);
        sb.append(", active item id=");
        return C4122zt.m8818case(sb, this.f5072try, "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f5067for);
        parcel.writeLong(this.f5063do);
        parcel.writeFloat(this.f5062do);
        parcel.writeLong(this.f5071new);
        parcel.writeLong(this.f5069if);
        parcel.writeLong(this.f5068for);
        TextUtils.writeToParcel(this.f5065do, parcel, i);
        parcel.writeTypedList(this.f5066do);
        parcel.writeLong(this.f5072try);
        parcel.writeBundle(this.f5064do);
        parcel.writeInt(this.f5070new);
    }

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new Cdo();

        /* renamed from: break, reason: not valid java name */
        public final String f5073break;

        /* renamed from: do, reason: not valid java name */
        public final Bundle f5074do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final CharSequence f5075do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Object f5076do;

        /* renamed from: for, reason: not valid java name */
        public final int f5077for;

        /* renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction$do, reason: invalid class name */
        public static class Cdo implements Parcelable.Creator<CustomAction> {
            @Override // android.os.Parcelable.Creator
            public final CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final CustomAction[] newArray(int i) {
                return new CustomAction[i];
            }
        }

        public CustomAction(String str, CharSequence charSequence, int i, Bundle bundle) {
            this.f5073break = str;
            this.f5075do = charSequence;
            this.f5077for = i;
            this.f5074do = bundle;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Action:mName='" + ((Object) this.f5075do) + ", mIcon=" + this.f5077for + ", mExtras=" + this.f5074do;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f5073break);
            TextUtils.writeToParcel(this.f5075do, parcel, i);
            parcel.writeInt(this.f5077for);
            parcel.writeBundle(this.f5074do);
        }

        public CustomAction(Parcel parcel) {
            this.f5073break = parcel.readString();
            this.f5075do = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f5077for = parcel.readInt();
            this.f5074do = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.f5067for = parcel.readInt();
        this.f5063do = parcel.readLong();
        this.f5062do = parcel.readFloat();
        this.f5071new = parcel.readLong();
        this.f5069if = parcel.readLong();
        this.f5068for = parcel.readLong();
        this.f5065do = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f5066do = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f5072try = parcel.readLong();
        this.f5064do = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f5070new = parcel.readInt();
    }
}
