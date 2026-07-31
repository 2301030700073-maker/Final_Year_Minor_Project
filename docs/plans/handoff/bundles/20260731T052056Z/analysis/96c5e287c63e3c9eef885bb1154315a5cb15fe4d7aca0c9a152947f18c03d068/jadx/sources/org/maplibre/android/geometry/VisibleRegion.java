package org.maplibre.android.geometry;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.Intrinsics;
import org.maplibre.android.util.DefaultStyle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class VisibleRegion implements Parcelable {
    public static final Parcelable.Creator<VisibleRegion> CREATOR = new DefaultStyle.AnonymousClass1(10);
    public final LatLng farLeft;
    public final LatLng farRight;
    public final LatLngBounds latLngBounds;
    public final LatLng nearLeft;
    public final LatLng nearRight;

    public VisibleRegion(Parcel parcel) {
        if (Build.VERSION.SDK_INT > 33) {
            this.farLeft = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader(), LatLng.class);
            this.farRight = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader(), LatLng.class);
            this.nearLeft = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader(), LatLng.class);
            this.nearRight = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader(), LatLng.class);
            Object readParcelable = parcel.readParcelable(LatLngBounds.class.getClassLoader(), LatLngBounds.class);
            readParcelable.getClass();
            this.latLngBounds = (LatLngBounds) readParcelable;
            return;
        }
        this.farLeft = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
        this.farRight = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
        this.nearLeft = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
        this.nearRight = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
        Parcelable readParcelable2 = parcel.readParcelable(LatLngBounds.class.getClassLoader());
        readParcelable2.getClass();
        this.latLngBounds = (LatLngBounds) readParcelable2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof VisibleRegion)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        VisibleRegion visibleRegion = (VisibleRegion) obj;
        return Intrinsics.areEqual(this.farLeft, visibleRegion.farLeft) && Intrinsics.areEqual(this.farRight, visibleRegion.farRight) && Intrinsics.areEqual(this.nearLeft, visibleRegion.nearLeft) && Intrinsics.areEqual(this.nearRight, visibleRegion.nearRight) && Intrinsics.areEqual(this.latLngBounds, visibleRegion.latLngBounds);
    }

    public final int hashCode() {
        LatLng latLng = this.farLeft;
        int hashCode = (latLng != null ? latLng.hashCode() : 0) + 90;
        LatLng latLng2 = this.farRight;
        int hashCode2 = (((latLng2 != null ? latLng2.hashCode() : 0) + 90) * 1000) + hashCode;
        LatLng latLng3 = this.nearLeft;
        int hashCode3 = (((latLng3 != null ? latLng3.hashCode() : 0) + 180) * 1000000) + hashCode2;
        LatLng latLng4 = this.nearRight;
        return (((latLng4 != null ? latLng4.hashCode() : 0) + 180) * 1000000000) + hashCode3;
    }

    public final String toString() {
        return "[farLeft [" + this.farLeft + "], farRight [" + this.farRight + "], nearLeft [" + this.nearLeft + "], nearRight [" + this.nearRight + "], latLngBounds [" + this.latLngBounds + "]]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeParcelable(this.farLeft, i);
        parcel.writeParcelable(this.farRight, i);
        parcel.writeParcelable(this.nearLeft, i);
        parcel.writeParcelable(this.nearRight, i);
        parcel.writeParcelable(this.latLngBounds, i);
    }

    public VisibleRegion(LatLng latLng, LatLng latLng2, LatLng latLng3, LatLng latLng4, LatLngBounds latLngBounds) {
        latLng.getClass();
        latLng2.getClass();
        latLng3.getClass();
        latLng4.getClass();
        latLngBounds.getClass();
        this.farLeft = latLng;
        this.farRight = latLng2;
        this.nearLeft = latLng3;
        this.nearRight = latLng4;
        this.latLngBounds = latLngBounds;
    }
}
