package c.b.a.c.d.i;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.images.WebImage;

/* loaded from: classes.dex */
public final class b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        int i = 0;
        int i2 = 0;
        Uri uri = null;
        int i3 = 0;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 == 1) {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i4 == 2) {
                uri = (Uri) c.b.a.c.b.a.P(parcel, readInt, Uri.CREATOR);
            } else if (i4 == 3) {
                i3 = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i4 != 4) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                i2 = c.b.a.c.b.a.K0(parcel, readInt);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new WebImage(i, uri, i3, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new WebImage[i];
    }
}
