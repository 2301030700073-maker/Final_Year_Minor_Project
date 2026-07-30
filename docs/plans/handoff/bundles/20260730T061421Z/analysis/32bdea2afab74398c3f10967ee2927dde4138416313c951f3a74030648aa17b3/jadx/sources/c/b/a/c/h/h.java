package c.b.a.c.h;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.phenotype.Flag;
import com.google.android.gms.phenotype.FlagOverride;

/* loaded from: classes.dex */
public final class h implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        String str = null;
        Flag flag = null;
        boolean z = false;
        String str2 = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 2) {
                str = c.b.a.c.b.a.Q0(parcel, readInt);
            } else if (i == 3) {
                str2 = c.b.a.c.b.a.Q0(parcel, readInt);
            } else if (i == 4) {
                flag = (Flag) c.b.a.c.b.a.P(parcel, readInt, Flag.CREATOR);
            } else if (i != 5) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                z = c.b.a.c.b.a.J0(parcel, readInt);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new FlagOverride(str, str2, flag, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new FlagOverride[i];
    }
}
