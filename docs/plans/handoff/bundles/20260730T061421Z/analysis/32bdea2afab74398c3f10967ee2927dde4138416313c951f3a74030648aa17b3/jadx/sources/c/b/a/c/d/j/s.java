package c.b.a.c.d.j;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzax;

/* loaded from: classes.dex */
public final class s implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        IBinder iBinder = null;
        ConnectionResult connectionResult = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i2 == 2) {
                iBinder = c.b.a.c.b.a.R0(parcel, readInt);
            } else if (i2 == 3) {
                connectionResult = (ConnectionResult) c.b.a.c.b.a.P(parcel, readInt, ConnectionResult.CREATOR);
            } else if (i2 == 4) {
                z = c.b.a.c.b.a.J0(parcel, readInt);
            } else if (i2 != 5) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                z2 = c.b.a.c.b.a.J0(parcel, readInt);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new zzax(i, iBinder, connectionResult, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzax[i];
    }
}
