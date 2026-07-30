package c.b.a.c.d.k.a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.response.FieldMappingDictionary;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class f implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        String str = null;
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i2 == 2) {
                str = c.b.a.c.b.a.Q0(parcel, readInt);
            } else if (i2 != 3) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                arrayList = c.b.a.c.b.a.G0(parcel, readInt, FieldMappingDictionary.FieldMapPair.CREATOR);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new FieldMappingDictionary.Entry(i, str, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new FieldMappingDictionary.Entry[i];
    }
}
