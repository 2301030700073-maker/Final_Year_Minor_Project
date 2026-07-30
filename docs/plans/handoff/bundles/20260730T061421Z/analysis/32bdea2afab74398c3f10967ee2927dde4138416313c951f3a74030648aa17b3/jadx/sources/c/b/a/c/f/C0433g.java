package c.b.a.c.f;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzeln;

/* renamed from: c.b.a.c.f.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0433g implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        int i = 0;
        Intent intent = null;
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
                intent = (Intent) c.b.a.c.b.a.P(parcel, readInt, Intent.CREATOR);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new zzeln(i, i2, intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzeln[i];
    }
}
