package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import b.i.b.C0096a;
import b.i.b.C0098b;
import b.i.b.C0113i0;
import b.i.b.r;
import java.util.ArrayList;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class BackStackState implements Parcelable {
    public static final Parcelable.Creator CREATOR = new C0098b();

    /* renamed from: a, reason: collision with root package name */
    public final int[] f97a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f98b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f99c;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f100d;
    public final int e;
    public final String f;
    public final int g;
    public final int h;
    public final CharSequence i;
    public final int j;
    public final CharSequence k;
    public final ArrayList l;
    public final ArrayList m;
    public final boolean n;

    public BackStackState(C0096a c0096a) {
        int size = c0096a.f883a.size();
        this.f97a = new int[size * 5];
        if (!c0096a.g) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f98b = new ArrayList(size);
        this.f99c = new int[size];
        this.f100d = new int[size];
        int i = 0;
        int i2 = 0;
        while (i < size) {
            C0113i0 c0113i0 = (C0113i0) c0096a.f883a.get(i);
            int i3 = i2 + 1;
            this.f97a[i2] = c0113i0.f904a;
            ArrayList arrayList = this.f98b;
            r rVar = c0113i0.f905b;
            arrayList.add(rVar != null ? rVar.mWho : null);
            int[] iArr = this.f97a;
            int i4 = i3 + 1;
            iArr[i3] = c0113i0.f906c;
            int i5 = i4 + 1;
            iArr[i4] = c0113i0.f907d;
            int i6 = i5 + 1;
            iArr[i5] = c0113i0.e;
            iArr[i6] = c0113i0.f;
            this.f99c[i] = c0113i0.g.ordinal();
            this.f100d[i] = c0113i0.h.ordinal();
            i++;
            i2 = i6 + 1;
        }
        this.e = c0096a.f;
        this.f = c0096a.i;
        this.g = c0096a.t;
        this.h = c0096a.j;
        this.i = c0096a.k;
        this.j = c0096a.l;
        this.k = c0096a.m;
        this.l = c0096a.n;
        this.m = c0096a.o;
        this.n = c0096a.p;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f97a);
        parcel.writeStringList(this.f98b);
        parcel.writeIntArray(this.f99c);
        parcel.writeIntArray(this.f100d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h);
        TextUtils.writeToParcel(this.i, parcel, 0);
        parcel.writeInt(this.j);
        TextUtils.writeToParcel(this.k, parcel, 0);
        parcel.writeStringList(this.l);
        parcel.writeStringList(this.m);
        parcel.writeInt(this.n ? 1 : 0);
    }

    public BackStackState(Parcel parcel) {
        this.f97a = parcel.createIntArray();
        this.f98b = parcel.createStringArrayList();
        this.f99c = parcel.createIntArray();
        this.f100d = parcel.createIntArray();
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.g = parcel.readInt();
        this.h = parcel.readInt();
        this.i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.j = parcel.readInt();
        this.k = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.l = parcel.createStringArrayList();
        this.m = parcel.createStringArrayList();
        this.n = parcel.readInt() != 0;
    }
}
