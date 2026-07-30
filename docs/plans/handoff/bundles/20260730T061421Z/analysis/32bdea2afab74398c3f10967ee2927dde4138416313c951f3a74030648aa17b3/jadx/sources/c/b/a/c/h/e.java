package c.b.a.c.h;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.phenotype.DogfoodsToken;

/* loaded from: classes.dex */
public final class e implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        byte[] bArr = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                bArr = c.b.a.c.b.a.T0(parcel, readInt);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new DogfoodsToken(bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new DogfoodsToken[i];
    }
}
