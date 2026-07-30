package c.b.a.c.d;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.zzl;

/* loaded from: classes.dex */
public final class w implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        String str = null;
        boolean z = false;
        IBinder iBinder = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                str = c.b.a.c.b.a.Q0(parcel, readInt);
            } else if (i == 2) {
                iBinder = c.b.a.c.b.a.R0(parcel, readInt);
            } else if (i != 3) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                z = c.b.a.c.b.a.J0(parcel, readInt);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new zzl(str, iBinder, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzl[i];
    }
}
