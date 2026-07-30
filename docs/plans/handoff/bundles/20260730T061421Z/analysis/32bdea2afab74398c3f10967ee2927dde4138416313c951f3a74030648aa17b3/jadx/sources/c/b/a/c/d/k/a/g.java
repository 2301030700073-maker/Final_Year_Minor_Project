package c.b.a.c.d.k.a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.response.FieldMappingDictionary;
import com.google.android.gms.common.server.response.zzl;

/* loaded from: classes.dex */
public final class g implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        Parcel parcel2 = null;
        int i = 0;
        FieldMappingDictionary fieldMappingDictionary = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i2 == 2) {
                parcel2 = c.b.a.c.b.a.v0(parcel, readInt);
            } else if (i2 != 3) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                fieldMappingDictionary = (FieldMappingDictionary) c.b.a.c.b.a.P(parcel, readInt, FieldMappingDictionary.CREATOR);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new zzl(i, parcel2, fieldMappingDictionary);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzl[i];
    }
}
