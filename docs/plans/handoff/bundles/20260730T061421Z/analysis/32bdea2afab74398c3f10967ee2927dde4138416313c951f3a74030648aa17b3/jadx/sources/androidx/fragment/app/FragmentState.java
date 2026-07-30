package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import b.i.b.C0103d0;
import b.i.b.r;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator CREATOR = new C0103d0();

    /* renamed from: a, reason: collision with root package name */
    public final String f113a;

    /* renamed from: b, reason: collision with root package name */
    public final String f114b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f115c;

    /* renamed from: d, reason: collision with root package name */
    public final int f116d;
    public final int e;
    public final String f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final Bundle j;
    public final boolean k;
    public final int l;
    public Bundle m;

    public FragmentState(r rVar) {
        this.f113a = rVar.getClass().getName();
        this.f114b = rVar.mWho;
        this.f115c = rVar.mFromLayout;
        this.f116d = rVar.mFragmentId;
        this.e = rVar.mContainerId;
        this.f = rVar.mTag;
        this.g = rVar.mRetainInstance;
        this.h = rVar.mRemoving;
        this.i = rVar.mDetached;
        this.j = rVar.mArguments;
        this.k = rVar.mHidden;
        this.l = rVar.mMaxState.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f113a);
        sb.append(" (");
        sb.append(this.f114b);
        sb.append(")}:");
        if (this.f115c) {
            sb.append(" fromLayout");
        }
        if (this.e != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.e));
        }
        String str = this.f;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f);
        }
        if (this.g) {
            sb.append(" retainInstance");
        }
        if (this.h) {
            sb.append(" removing");
        }
        if (this.i) {
            sb.append(" detached");
        }
        if (this.k) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f113a);
        parcel.writeString(this.f114b);
        parcel.writeInt(this.f115c ? 1 : 0);
        parcel.writeInt(this.f116d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g ? 1 : 0);
        parcel.writeInt(this.h ? 1 : 0);
        parcel.writeInt(this.i ? 1 : 0);
        parcel.writeBundle(this.j);
        parcel.writeInt(this.k ? 1 : 0);
        parcel.writeBundle(this.m);
        parcel.writeInt(this.l);
    }

    public FragmentState(Parcel parcel) {
        this.f113a = parcel.readString();
        this.f114b = parcel.readString();
        this.f115c = parcel.readInt() != 0;
        this.f116d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.g = parcel.readInt() != 0;
        this.h = parcel.readInt() != 0;
        this.i = parcel.readInt() != 0;
        this.j = parcel.readBundle();
        this.k = parcel.readInt() != 0;
        this.m = parcel.readBundle();
        this.l = parcel.readInt();
    }
}
