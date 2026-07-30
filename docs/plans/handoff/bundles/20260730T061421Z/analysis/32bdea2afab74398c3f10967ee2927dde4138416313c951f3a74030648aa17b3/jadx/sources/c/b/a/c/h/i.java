package c.b.a.c.h;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.phenotype.FlagOverride;
import com.google.android.gms.phenotype.FlagOverrides;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class i implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        ArrayList arrayList = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                arrayList = c.b.a.c.b.a.G0(parcel, readInt, FlagOverride.CREATOR);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new FlagOverrides(arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new FlagOverrides[i];
    }
}
