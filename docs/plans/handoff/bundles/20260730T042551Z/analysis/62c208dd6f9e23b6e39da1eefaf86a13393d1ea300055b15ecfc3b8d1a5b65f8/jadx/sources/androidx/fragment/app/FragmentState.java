package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new Cdo();

    /* renamed from: break, reason: not valid java name */
    public final String f6910break;

    /* renamed from: catch, reason: not valid java name */
    public final String f6911catch;

    /* renamed from: class, reason: not valid java name */
    public final String f6912class;

    /* renamed from: do, reason: not valid java name */
    public final Bundle f6913do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f6914do;

    /* renamed from: for, reason: not valid java name */
    public final int f6915for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final boolean f6916for;

    /* renamed from: if, reason: not valid java name */
    public Bundle f6917if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f6918if;

    /* renamed from: new, reason: not valid java name */
    public final int f6919new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final boolean f6920new;

    /* renamed from: try, reason: not valid java name */
    public final int f6921try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public final boolean f6922try;

    /* renamed from: androidx.fragment.app.FragmentState$do, reason: invalid class name */
    public class Cdo implements Parcelable.Creator<FragmentState> {
        @Override // android.os.Parcelable.Creator
        public final FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final FragmentState[] newArray(int i) {
            return new FragmentState[i];
        }
    }

    public FragmentState(Fragment fragment) {
        this.f6910break = fragment.getClass().getName();
        this.f6911catch = fragment.mWho;
        this.f6914do = fragment.mFromLayout;
        this.f6915for = fragment.mFragmentId;
        this.f6919new = fragment.mContainerId;
        this.f6912class = fragment.mTag;
        this.f6918if = fragment.mRetainInstance;
        this.f6916for = fragment.mRemoving;
        this.f6920new = fragment.mDetached;
        this.f6913do = fragment.mArguments;
        this.f6922try = fragment.mHidden;
        this.f6921try = fragment.mMaxState.ordinal();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f6910break);
        sb.append(" (");
        sb.append(this.f6911catch);
        sb.append(")}:");
        if (this.f6914do) {
            sb.append(" fromLayout");
        }
        int i = this.f6919new;
        if (i != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(i));
        }
        String str = this.f6912class;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(str);
        }
        if (this.f6918if) {
            sb.append(" retainInstance");
        }
        if (this.f6916for) {
            sb.append(" removing");
        }
        if (this.f6920new) {
            sb.append(" detached");
        }
        if (this.f6922try) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f6910break);
        parcel.writeString(this.f6911catch);
        parcel.writeInt(this.f6914do ? 1 : 0);
        parcel.writeInt(this.f6915for);
        parcel.writeInt(this.f6919new);
        parcel.writeString(this.f6912class);
        parcel.writeInt(this.f6918if ? 1 : 0);
        parcel.writeInt(this.f6916for ? 1 : 0);
        parcel.writeInt(this.f6920new ? 1 : 0);
        parcel.writeBundle(this.f6913do);
        parcel.writeInt(this.f6922try ? 1 : 0);
        parcel.writeBundle(this.f6917if);
        parcel.writeInt(this.f6921try);
    }

    public FragmentState(Parcel parcel) {
        this.f6910break = parcel.readString();
        this.f6911catch = parcel.readString();
        this.f6914do = parcel.readInt() != 0;
        this.f6915for = parcel.readInt();
        this.f6919new = parcel.readInt();
        this.f6912class = parcel.readString();
        this.f6918if = parcel.readInt() != 0;
        this.f6916for = parcel.readInt() != 0;
        this.f6920new = parcel.readInt() != 0;
        this.f6913do = parcel.readBundle();
        this.f6922try = parcel.readInt() != 0;
        this.f6917if = parcel.readBundle();
        this.f6921try = parcel.readInt();
    }
}
