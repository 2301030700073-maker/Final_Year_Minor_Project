package c.b.a.c.d.k.a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.response.FieldMappingDictionary;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class e implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        ArrayList arrayList = null;
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i2 == 2) {
                arrayList = c.b.a.c.b.a.G0(parcel, readInt, FieldMappingDictionary.Entry.CREATOR);
            } else if (i2 != 3) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                str = c.b.a.c.b.a.Q0(parcel, readInt);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new FieldMappingDictionary(i, arrayList, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new FieldMappingDictionary[i];
    }
}
