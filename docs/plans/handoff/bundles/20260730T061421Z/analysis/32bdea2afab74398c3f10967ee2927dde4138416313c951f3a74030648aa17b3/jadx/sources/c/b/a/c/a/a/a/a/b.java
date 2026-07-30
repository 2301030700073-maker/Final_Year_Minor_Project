package c.b.a.c.a.a.a.a;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.zzo;

/* loaded from: classes.dex */
public final class b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        int i = 0;
        Bundle bundle = null;
        int i2 = 0;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i3 == 2) {
                i2 = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i3 != 3) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                bundle = c.b.a.c.b.a.S0(parcel, readInt);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new zzo(i, i2, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzo[i];
    }
}
