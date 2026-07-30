package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import defpackage.C4122zt;

/* loaded from: classes.dex */
public final class MediaSessionCompat {

    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public final ResultReceiver f5054do;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper$do, reason: invalid class name */
        public static class Cdo implements Parcelable.Creator<ResultReceiverWrapper> {
            @Override // android.os.Parcelable.Creator
            public final ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final ResultReceiverWrapper[] newArray(int i) {
                return new ResultReceiverWrapper[i];
            }
        }

        public ResultReceiverWrapper(Parcel parcel) {
            this.f5054do = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            this.f5054do.writeToParcel(parcel, i);
        }
    }

    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public Cif f5055do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Object f5056do;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$Token$do, reason: invalid class name */
        public static class Cdo implements Parcelable.Creator<Token> {
            @Override // android.os.Parcelable.Creator
            public final Token createFromParcel(Parcel parcel) {
                return new Token(parcel.readParcelable(null), null);
            }

            @Override // android.os.Parcelable.Creator
            public final Token[] newArray(int i) {
                return new Token[i];
            }
        }

        public Token(Parcelable parcelable, Cif cif) {
            this.f5056do = parcelable;
            this.f5055do = cif;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            Object obj2 = this.f5056do;
            if (obj2 == null) {
                return token.f5056do == null;
            }
            Object obj3 = token.f5056do;
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        public final int hashCode() {
            Object obj = this.f5056do;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable((Parcelable) this.f5056do, i);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m3184do(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public final long f5051do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final MediaDescriptionCompat f5052do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Object f5053do;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$QueueItem$do, reason: invalid class name */
        public static class Cdo implements Parcelable.Creator<QueueItem> {
            @Override // android.os.Parcelable.Creator
            public final QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final QueueItem[] newArray(int i) {
                return new QueueItem[i];
            }
        }

        public QueueItem(Object obj, MediaDescriptionCompat mediaDescriptionCompat, long j) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null.");
            }
            if (j == -1) {
                throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            }
            this.f5052do = mediaDescriptionCompat;
            this.f5051do = j;
            this.f5053do = obj;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("MediaSession.QueueItem {Description=");
            sb.append(this.f5052do);
            sb.append(", Id=");
            return C4122zt.m8818case(sb, this.f5051do, " }");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            this.f5052do.writeToParcel(parcel, i);
            parcel.writeLong(this.f5051do);
        }

        public QueueItem(Parcel parcel) {
            this.f5052do = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f5051do = parcel.readLong();
        }
    }
}
