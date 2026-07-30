package c.b.a.c.h;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.phenotype.Configuration;
import com.google.android.gms.phenotype.Configurations;

/* loaded from: classes.dex */
public final class d implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        String str = null;
        String str2 = null;
        Configuration[] configurationArr = null;
        byte[] bArr = null;
        boolean z = false;
        long j = 0;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                case 3:
                    str2 = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                case 4:
                    configurationArr = (Configuration[]) c.b.a.c.b.a.F0(parcel, readInt, Configuration.CREATOR);
                    break;
                case 5:
                    z = c.b.a.c.b.a.J0(parcel, readInt);
                    break;
                case 6:
                    bArr = c.b.a.c.b.a.T0(parcel, readInt);
                    break;
                case 7:
                    j = c.b.a.c.b.a.L0(parcel, readInt);
                    break;
                default:
                    c.b.a.c.b.a.A0(parcel, readInt);
                    break;
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new Configurations(str, str2, configurationArr, z, bArr, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new Configurations[i];
    }
}
