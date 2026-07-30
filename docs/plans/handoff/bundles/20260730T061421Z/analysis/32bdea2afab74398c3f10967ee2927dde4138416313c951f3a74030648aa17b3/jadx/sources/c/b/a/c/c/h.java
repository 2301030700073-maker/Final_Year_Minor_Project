package c.b.a.c.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.clearcut.CollectForDebugParcelable;

/* loaded from: classes.dex */
public final class h implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        long j = 0;
        long j2 = 0;
        boolean z = false;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                z = c.b.a.c.b.a.J0(parcel, readInt);
            } else if (i == 2) {
                j2 = c.b.a.c.b.a.L0(parcel, readInt);
            } else if (i != 3) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                j = c.b.a.c.b.a.L0(parcel, readInt);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new CollectForDebugParcelable(z, j, j2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new CollectForDebugParcelable[i];
    }
}
