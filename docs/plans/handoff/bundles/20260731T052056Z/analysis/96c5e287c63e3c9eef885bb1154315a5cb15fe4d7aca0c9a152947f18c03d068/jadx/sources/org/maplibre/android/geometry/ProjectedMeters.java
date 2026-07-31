package org.maplibre.android.geometry;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import org.maplibre.android.util.DefaultStyle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0019\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lorg/maplibre/android/geometry/ProjectedMeters;", "Landroid/os/Parcelable;", "", "northing", "easting", "<init>", "(DD)V", "MapLibreAndroid_vulkanRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ProjectedMeters implements Parcelable {
    public static final Parcelable.Creator<ProjectedMeters> CREATOR = new DefaultStyle.AnonymousClass1(9);
    public double easting;
    public double northing;

    public ProjectedMeters(double d, double d2) {
        this.northing = d;
        this.easting = d2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ProjectedMeters.class.equals(obj.getClass())) {
            ProjectedMeters projectedMeters = (ProjectedMeters) obj;
            if (Double.compare(projectedMeters.easting, this.easting) == 0 && Double.compare(projectedMeters.northing, this.northing) == 0) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.easting);
        int i = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.northing);
        return (i * 31) + ((int) ((doubleToLongBits2 >>> 32) ^ doubleToLongBits2));
    }

    public final String toString() {
        return "ProjectedMeters [northing=" + this.northing + ", easting=" + this.easting + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeDouble(this.northing);
        parcel.writeDouble(this.easting);
    }
}
