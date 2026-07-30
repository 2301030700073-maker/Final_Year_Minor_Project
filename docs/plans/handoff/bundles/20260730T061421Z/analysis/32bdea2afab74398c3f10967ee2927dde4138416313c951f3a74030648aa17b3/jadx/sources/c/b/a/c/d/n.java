package c.b.a.c.d;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
public final class n implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        PendingIntent pendingIntent = null;
        int i = 0;
        int i2 = 0;
        String str = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i3 == 2) {
                i2 = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i3 == 3) {
                pendingIntent = (PendingIntent) c.b.a.c.b.a.P(parcel, readInt, PendingIntent.CREATOR);
            } else if (i3 != 4) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                str = c.b.a.c.b.a.Q0(parcel, readInt);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new ConnectionResult(i, i2, pendingIntent, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new ConnectionResult[i];
    }
}
