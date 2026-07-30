package c.b.a.c.d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;

/* loaded from: classes.dex */
public final class o implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                str = c.b.a.c.b.a.Q0(parcel, readInt);
            } else if (i2 != 2) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new Feature(str, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new Feature[i];
    }
}
