package c.b.a.c.h;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.phenotype.Configuration;
import com.google.android.gms.phenotype.Flag;

/* loaded from: classes.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        Flag[] flagArr = null;
        int i = 0;
        String[] strArr = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 2) {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i2 == 3) {
                flagArr = (Flag[]) c.b.a.c.b.a.F0(parcel, readInt, Flag.CREATOR);
            } else if (i2 != 4) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                strArr = c.b.a.c.b.a.u0(parcel, readInt);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new Configuration(i, flagArr, strArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new Configuration[i];
    }
}
