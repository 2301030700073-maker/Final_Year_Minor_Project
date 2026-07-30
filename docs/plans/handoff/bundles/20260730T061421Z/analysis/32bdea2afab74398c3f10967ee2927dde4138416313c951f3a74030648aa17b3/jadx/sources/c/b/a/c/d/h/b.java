package c.b.a.c.d.h;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;

/* loaded from: classes.dex */
public final class b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        int i = 0;
        String[] strArr = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundle = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 == 1) {
                strArr = c.b.a.c.b.a.u0(parcel, readInt);
            } else if (i4 == 2) {
                cursorWindowArr = (CursorWindow[]) c.b.a.c.b.a.F0(parcel, readInt, CursorWindow.CREATOR);
            } else if (i4 == 3) {
                i3 = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i4 == 4) {
                bundle = c.b.a.c.b.a.S0(parcel, readInt);
            } else if (i4 != 1000) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                i2 = c.b.a.c.b.a.K0(parcel, readInt);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        DataHolder dataHolder = new DataHolder(i2, strArr, cursorWindowArr, i3, bundle);
        dataHolder.f3394c = new Bundle();
        int i5 = 0;
        while (true) {
            String[] strArr2 = dataHolder.f3393b;
            if (i5 >= strArr2.length) {
                break;
            }
            dataHolder.f3394c.putInt(strArr2[i5], i5);
            i5++;
        }
        dataHolder.g = new int[dataHolder.f3395d.length];
        int i6 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr2 = dataHolder.f3395d;
            if (i >= cursorWindowArr2.length) {
                return dataHolder;
            }
            dataHolder.g[i] = i6;
            i6 += dataHolder.f3395d[i].getNumRows() - (i6 - cursorWindowArr2[i].getStartPosition());
            i++;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new DataHolder[i];
    }
}
