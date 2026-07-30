package c.b.a.c.f;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzav;
import com.google.android.gms.internal.zzelv;

/* renamed from: c.b.a.c.f.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0435i implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        int i = 0;
        zzav zzavVar = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i2 != 2) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                zzavVar = (zzav) c.b.a.c.b.a.P(parcel, readInt, zzav.CREATOR);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new zzelv(i, zzavVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzelv[i];
    }
}
