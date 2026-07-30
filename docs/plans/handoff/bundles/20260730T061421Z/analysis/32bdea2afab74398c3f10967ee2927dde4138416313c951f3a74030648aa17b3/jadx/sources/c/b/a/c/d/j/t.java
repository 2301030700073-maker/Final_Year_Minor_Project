package c.b.a.c.d.j;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzaz;

/* loaded from: classes.dex */
public final class t implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        int i = 0;
        int i2 = 0;
        Scope[] scopeArr = null;
        int i3 = 0;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 == 1) {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i4 == 2) {
                i3 = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i4 == 3) {
                i2 = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i4 != 4) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                scopeArr = (Scope[]) c.b.a.c.b.a.F0(parcel, readInt, Scope.CREATOR);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new zzaz(i, i3, i2, scopeArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzaz[i];
    }
}
