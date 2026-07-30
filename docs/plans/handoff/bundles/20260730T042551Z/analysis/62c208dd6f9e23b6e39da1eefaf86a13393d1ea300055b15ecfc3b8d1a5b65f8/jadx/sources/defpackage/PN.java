package defpackage;

import android.os.BadParcelableException;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class PN {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f2777do = 0;

    static {
        PN.class.getClassLoader();
    }

    /* renamed from: do, reason: not valid java name */
    public static Parcelable m1769do(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m1770if(Parcel parcel) {
        int dataAvail = parcel.dataAvail();
        if (dataAvail > 0) {
            throw new BadParcelableException(V1.m2494case("Parcel data not fully consumed, unread size: ", dataAvail));
        }
    }
}
