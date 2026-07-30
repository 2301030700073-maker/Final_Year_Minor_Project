package c.b.a.a;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class a {
    static {
        a.class.getClassLoader();
    }

    public static void a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    public static void b(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, 0);
        }
    }
}
