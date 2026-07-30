package c.b.a.c.h;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.phenotype.Flag;

/* loaded from: classes.dex */
public final class g implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        boolean z = false;
        int i = 0;
        int i2 = 0;
        String str = null;
        String str2 = null;
        byte[] bArr = null;
        long j = 0;
        double d2 = 0.0d;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                case 3:
                    j = c.b.a.c.b.a.L0(parcel, readInt);
                    break;
                case 4:
                    z = c.b.a.c.b.a.J0(parcel, readInt);
                    break;
                case 5:
                    d2 = c.b.a.c.b.a.O0(parcel, readInt);
                    break;
                case 6:
                    str2 = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                case 7:
                    bArr = c.b.a.c.b.a.T0(parcel, readInt);
                    break;
                case 8:
                    i = c.b.a.c.b.a.K0(parcel, readInt);
                    break;
                case 9:
                    i2 = c.b.a.c.b.a.K0(parcel, readInt);
                    break;
                default:
                    c.b.a.c.b.a.A0(parcel, readInt);
                    break;
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new Flag(str, j, z, d2, str2, bArr, i, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new Flag[i];
    }
}
