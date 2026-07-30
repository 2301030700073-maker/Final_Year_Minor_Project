package c.b.a.c.d.k;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import com.google.android.gms.common.server.FavaDiagnosticsEntity;

/* loaded from: classes.dex */
public final class b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = a.K(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = a.K0(parcel, readInt);
            } else if (i3 == 2) {
                str = a.Q0(parcel, readInt);
            } else if (i3 != 3) {
                a.A0(parcel, readInt);
            } else {
                i2 = a.K0(parcel, readInt);
            }
        }
        a.w0(parcel, K);
        return new FavaDiagnosticsEntity(i, str, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new FavaDiagnosticsEntity[i];
    }
}
