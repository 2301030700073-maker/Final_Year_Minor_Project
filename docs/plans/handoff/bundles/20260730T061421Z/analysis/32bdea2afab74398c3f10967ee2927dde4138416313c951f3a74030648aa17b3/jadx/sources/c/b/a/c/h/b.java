package c.b.a.c.h;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.phenotype.RegistrationInfo;

/* loaded from: classes.dex */
public final class b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        int i = 0;
        boolean z = false;
        String str = null;
        String[] strArr = null;
        byte[] bArr = null;
        int[] iArr = null;
        String str2 = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    str = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                case 2:
                    i = c.b.a.c.b.a.K0(parcel, readInt);
                    break;
                case 3:
                    strArr = c.b.a.c.b.a.u0(parcel, readInt);
                    break;
                case 4:
                    bArr = c.b.a.c.b.a.T0(parcel, readInt);
                    break;
                case 5:
                    z = c.b.a.c.b.a.J0(parcel, readInt);
                    break;
                case 6:
                    iArr = c.b.a.c.b.a.V0(parcel, readInt);
                    break;
                case 7:
                    str2 = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                default:
                    c.b.a.c.b.a.A0(parcel, readInt);
                    break;
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new RegistrationInfo(str, i, strArr, bArr, z, iArr, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new RegistrationInfo[i];
    }
}
