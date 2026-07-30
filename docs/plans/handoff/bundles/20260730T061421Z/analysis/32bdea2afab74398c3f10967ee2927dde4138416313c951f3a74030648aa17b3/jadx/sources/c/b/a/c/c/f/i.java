package c.b.a.c.c.f;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.clearcut.internal.PlayLoggerContext;

/* loaded from: classes.dex */
public final class i implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        boolean z2 = true;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                case 3:
                    i = c.b.a.c.b.a.K0(parcel, readInt);
                    break;
                case 4:
                    i2 = c.b.a.c.b.a.K0(parcel, readInt);
                    break;
                case 5:
                    str2 = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                case 6:
                    str3 = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                case 7:
                    z2 = c.b.a.c.b.a.J0(parcel, readInt);
                    break;
                case 8:
                    str4 = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                case 9:
                    z = c.b.a.c.b.a.J0(parcel, readInt);
                    break;
                case 10:
                    i3 = c.b.a.c.b.a.K0(parcel, readInt);
                    break;
                default:
                    c.b.a.c.b.a.A0(parcel, readInt);
                    break;
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new PlayLoggerContext(str, i, i2, str2, str3, z2, str4, z, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new PlayLoggerContext[i];
    }
}
