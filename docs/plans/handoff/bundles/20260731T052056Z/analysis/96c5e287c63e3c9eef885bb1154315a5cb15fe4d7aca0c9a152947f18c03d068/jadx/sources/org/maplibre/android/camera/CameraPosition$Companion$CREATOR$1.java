package org.maplibre.android.camera;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import org.maplibre.android.geometry.LatLng;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CameraPosition$Companion$CREATOR$1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        double[] dArr;
        parcel.getClass();
        double readDouble = parcel.readDouble();
        LatLng latLng = Build.VERSION.SDK_INT > 33 ? (LatLng) parcel.readParcelable(LatLng.class.getClassLoader(), LatLng.class) : (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
        double readDouble2 = parcel.readDouble();
        double readDouble3 = parcel.readDouble();
        double readDouble4 = parcel.readDouble();
        double readDouble5 = parcel.readDouble();
        double readDouble6 = parcel.readDouble();
        int readInt = parcel.readInt();
        if (readInt > 0) {
            dArr = new double[readInt];
            for (int i = 0; i < readInt; i++) {
                dArr[i] = parcel.readDouble();
            }
        } else {
            dArr = null;
        }
        return new CameraPosition(latLng, readDouble2, readDouble6, readDouble3, readDouble, readDouble4, readDouble5, dArr);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        return new CameraPosition[i];
    }
}
