package c.b.a.c.d.k.a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.response.FastJsonResponse$Field;
import com.google.android.gms.internal.zzbly;

/* loaded from: classes.dex */
public class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        String str = null;
        String str2 = null;
        zzbly zzblyVar = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        int i4 = 0;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = c.b.a.c.b.a.K0(parcel, readInt);
                    break;
                case 2:
                    i2 = c.b.a.c.b.a.K0(parcel, readInt);
                    break;
                case 3:
                    z = c.b.a.c.b.a.J0(parcel, readInt);
                    break;
                case 4:
                    i3 = c.b.a.c.b.a.K0(parcel, readInt);
                    break;
                case 5:
                    z2 = c.b.a.c.b.a.J0(parcel, readInt);
                    break;
                case 6:
                    str = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                case 7:
                    i4 = c.b.a.c.b.a.K0(parcel, readInt);
                    break;
                case 8:
                    str2 = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                case 9:
                    zzblyVar = (zzbly) c.b.a.c.b.a.P(parcel, readInt, zzbly.CREATOR);
                    break;
                default:
                    c.b.a.c.b.a.A0(parcel, readInt);
                    break;
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new FastJsonResponse$Field(i, i2, z, i3, z2, str, i4, str2, zzblyVar);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new FastJsonResponse$Field[i];
    }
}
