package c.b.a.c.g.a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.places.PlaceReport;

/* loaded from: classes.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        String str = null;
        String str2 = null;
        int i = 0;
        String str3 = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i2 == 2) {
                str = c.b.a.c.b.a.Q0(parcel, readInt);
            } else if (i2 == 3) {
                str3 = c.b.a.c.b.a.Q0(parcel, readInt);
            } else if (i2 != 4) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                str2 = c.b.a.c.b.a.Q0(parcel, readInt);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new PlaceReport(i, str, str3, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new PlaceReport[i];
    }
}
