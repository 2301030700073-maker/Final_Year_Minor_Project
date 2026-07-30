package c.b.a.c.f;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzax;
import com.google.android.gms.internal.zzelx;

/* renamed from: c.b.a.c.f.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0436j implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        ConnectionResult connectionResult = null;
        int i = 0;
        zzax zzaxVar = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i2 == 2) {
                connectionResult = (ConnectionResult) c.b.a.c.b.a.P(parcel, readInt, ConnectionResult.CREATOR);
            } else if (i2 != 3) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                zzaxVar = (zzax) c.b.a.c.b.a.P(parcel, readInt, zzax.CREATOR);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new zzelx(i, connectionResult, zzaxVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzelx[i];
    }
}
