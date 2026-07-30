package c.b.a.c.d.h;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.data.BitmapTeleporter;

/* loaded from: classes.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        int i = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        int i2 = 0;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i3 == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) c.b.a.c.b.a.P(parcel, readInt, ParcelFileDescriptor.CREATOR);
            } else if (i3 != 3) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                i2 = c.b.a.c.b.a.K0(parcel, readInt);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new BitmapTeleporter(i, parcelFileDescriptor, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new BitmapTeleporter[i];
    }
}
