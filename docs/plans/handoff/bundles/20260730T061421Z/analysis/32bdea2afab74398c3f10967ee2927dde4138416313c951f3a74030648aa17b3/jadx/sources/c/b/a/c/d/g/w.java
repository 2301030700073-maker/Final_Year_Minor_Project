package c.b.a.c.d.g;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class w implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i2 = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i3 == 2) {
                str = c.b.a.c.b.a.Q0(parcel, readInt);
            } else if (i3 == 3) {
                pendingIntent = (PendingIntent) c.b.a.c.b.a.P(parcel, readInt, PendingIntent.CREATOR);
            } else if (i3 != 1000) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new Status(i, i2, str, pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new Status[i];
    }
}
