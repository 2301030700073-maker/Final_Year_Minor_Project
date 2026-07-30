package c.b.a.c.d.l;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.stats.WakeLockEvent;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        String str = null;
        ArrayList<String> arrayList = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        float f = 0.0f;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = c.b.a.c.b.a.K0(parcel, readInt);
                    break;
                case 2:
                    j = c.b.a.c.b.a.L0(parcel, readInt);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    c.b.a.c.b.a.A0(parcel, readInt);
                    break;
                case 4:
                    str = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                case 5:
                    i3 = c.b.a.c.b.a.K0(parcel, readInt);
                    break;
                case 6:
                    int L = c.b.a.c.b.a.L(parcel, readInt);
                    int dataPosition = parcel.dataPosition();
                    if (L != 0) {
                        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
                        parcel.setDataPosition(dataPosition + L);
                        arrayList = createStringArrayList;
                        break;
                    } else {
                        arrayList = null;
                        break;
                    }
                case 8:
                    j2 = c.b.a.c.b.a.L0(parcel, readInt);
                    break;
                case 10:
                    str3 = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                case 11:
                    i2 = c.b.a.c.b.a.K0(parcel, readInt);
                    break;
                case 12:
                    str2 = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                case 13:
                    str4 = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                case 14:
                    i4 = c.b.a.c.b.a.K0(parcel, readInt);
                    break;
                case 15:
                    f = c.b.a.c.b.a.N0(parcel, readInt);
                    break;
                case 16:
                    j3 = c.b.a.c.b.a.L0(parcel, readInt);
                    break;
                case 17:
                    str5 = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new WakeLockEvent(i, j, i2, str, i3, arrayList, str2, j2, i4, str3, str4, f, j3, str5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new WakeLockEvent[i];
    }
}
