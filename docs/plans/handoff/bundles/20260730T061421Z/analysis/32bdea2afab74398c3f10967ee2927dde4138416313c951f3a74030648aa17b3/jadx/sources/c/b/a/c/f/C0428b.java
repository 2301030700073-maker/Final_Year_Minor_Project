package c.b.a.c.f;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzbma;
import com.google.android.gms.internal.zzbmb;
import java.util.ArrayList;

/* renamed from: c.b.a.c.f.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0428b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i2 != 2) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                arrayList = c.b.a.c.b.a.G0(parcel, readInt, zzbmb.CREATOR);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new zzbma(i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbma[i];
    }
}
