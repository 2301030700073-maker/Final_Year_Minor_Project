package c.b.a.c.d.g;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;

/* loaded from: classes.dex */
public final class v implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i2 != 2) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                str = c.b.a.c.b.a.Q0(parcel, readInt);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new Scope(i, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new Scope[i];
    }
}
