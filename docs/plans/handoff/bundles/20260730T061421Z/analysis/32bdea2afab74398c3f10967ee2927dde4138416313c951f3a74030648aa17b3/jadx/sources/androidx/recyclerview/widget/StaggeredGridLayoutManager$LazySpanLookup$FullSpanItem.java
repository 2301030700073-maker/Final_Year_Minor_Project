package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import b.m.b.C0;
import c.a.c.a.a;
import java.util.Arrays;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem implements Parcelable {
    public static final Parcelable.Creator CREATOR = new C0();

    /* renamed from: a, reason: collision with root package name */
    public int f197a;

    /* renamed from: b, reason: collision with root package name */
    public int f198b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f199c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f200d;

    public StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem(Parcel parcel) {
        this.f197a = parcel.readInt();
        this.f198b = parcel.readInt();
        this.f200d = parcel.readInt() == 1;
        int readInt = parcel.readInt();
        if (readInt > 0) {
            int[] iArr = new int[readInt];
            this.f199c = iArr;
            parcel.readIntArray(iArr);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder f = a.f("FullSpanItem{mPosition=");
        f.append(this.f197a);
        f.append(", mGapDir=");
        f.append(this.f198b);
        f.append(", mHasUnwantedGapAfter=");
        f.append(this.f200d);
        f.append(", mGapPerSpan=");
        f.append(Arrays.toString(this.f199c));
        f.append('}');
        return f.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f197a);
        parcel.writeInt(this.f198b);
        parcel.writeInt(this.f200d ? 1 : 0);
        int[] iArr = this.f199c;
        if (iArr == null || iArr.length <= 0) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(iArr.length);
            parcel.writeIntArray(this.f199c);
        }
    }

    public StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem() {
    }
}
