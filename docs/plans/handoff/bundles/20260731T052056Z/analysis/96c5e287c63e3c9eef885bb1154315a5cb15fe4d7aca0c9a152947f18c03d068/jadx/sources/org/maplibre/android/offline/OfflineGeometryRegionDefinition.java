package org.maplibre.android.offline;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import okio.Okio__OkioKt;
import org.maplibre.android.geometry.LatLngBounds;
import org.maplibre.android.util.DefaultStyle;
import org.maplibre.geojson.Feature;
import org.maplibre.geojson.Geometry;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0014\u0018\u00002\u00020\u0001B5\b\u0017\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fB=\b\u0017\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000b\u0010\u000fR(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0016@RX\u0097\u000e¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R(\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0087\u000e¢\u0006\f\n\u0004\b\u0005\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00068\u0016@RX\u0097\u000e¢\u0006\f\n\u0004\b\u0007\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R$\u0010\b\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00068\u0016@RX\u0097\u000e¢\u0006\f\n\u0004\b\b\u0010\u0017\u001a\u0004\b\u001a\u0010\u0019R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t8\u0016@RX\u0097\u000e¢\u0006\f\n\u0004\b\n\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR$\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r8\u0016@RX\u0097\u000e¢\u0006\f\n\u0004\b\u000e\u0010\u001e\u001a\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;", "Lorg/maplibre/android/offline/OfflineRegionDefinition;", "", "styleURL", "Lorg/maplibre/geojson/Geometry;", "geometry", "", "minZoom", "maxZoom", "", "pixelRatio", "<init>", "(Ljava/lang/String;Lorg/maplibre/geojson/Geometry;DDF)V", "", "includeIdeographs", "(Ljava/lang/String;Lorg/maplibre/geojson/Geometry;DDFZ)V", "value", "Ljava/lang/String;", "getStyleURL", "()Ljava/lang/String;", "Lorg/maplibre/geojson/Geometry;", "getGeometry", "()Lorg/maplibre/geojson/Geometry;", "D", "getMinZoom", "()D", "getMaxZoom", "F", "getPixelRatio", "()F", "Z", "getIncludeIdeographs", "()Z", "MapLibreAndroid_vulkanRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OfflineGeometryRegionDefinition implements OfflineRegionDefinition {
    public static final Parcelable.Creator<?> CREATOR = new DefaultStyle.AnonymousClass1(13);
    private Geometry geometry;
    private boolean includeIdeographs;
    private double maxZoom;
    private double minZoom;
    private float pixelRatio;
    private String styleURL;

    public OfflineGeometryRegionDefinition(Parcel parcel) {
        this.styleURL = parcel.readString();
        String readString = parcel.readString();
        readString.getClass();
        this.geometry = Feature.fromJson(readString).geometry();
        this.minZoom = parcel.readDouble();
        this.maxZoom = parcel.readDouble();
        this.pixelRatio = parcel.readFloat();
        this.includeIdeographs = parcel.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // org.maplibre.android.offline.OfflineRegionDefinition
    public final LatLngBounds getBounds() {
        Geometry geometry = this.geometry;
        if (geometry == null) {
            return null;
        }
        double[] bbox = Okio__OkioKt.bbox(geometry);
        LatLngBounds.Companion companion = LatLngBounds.INSTANCE;
        double d = bbox[3];
        double d2 = bbox[2];
        double d3 = bbox[1];
        double d4 = bbox[0];
        companion.getClass();
        LatLngBounds.Companion.checkParams(d, d2, d3, d4);
        return new LatLngBounds(d, d2, d3, d4);
    }

    @Override // org.maplibre.android.offline.OfflineRegionDefinition
    public final boolean getIncludeIdeographs() {
        return this.includeIdeographs;
    }

    @Override // org.maplibre.android.offline.OfflineRegionDefinition
    public final double getMaxZoom() {
        return this.maxZoom;
    }

    @Override // org.maplibre.android.offline.OfflineRegionDefinition
    public final double getMinZoom() {
        return this.minZoom;
    }

    @Override // org.maplibre.android.offline.OfflineRegionDefinition
    public final float getPixelRatio() {
        return this.pixelRatio;
    }

    @Override // org.maplibre.android.offline.OfflineRegionDefinition
    public final String getStyleURL() {
        return this.styleURL;
    }

    @Override // org.maplibre.android.offline.OfflineRegionDefinition
    public final String getType() {
        return "shaperegion";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.styleURL);
        parcel.writeString(Feature.fromGeometry(this.geometry).toJson());
        parcel.writeDouble(this.minZoom);
        parcel.writeDouble(this.maxZoom);
        parcel.writeFloat(this.pixelRatio);
        parcel.writeByte(this.includeIdeographs ? (byte) 1 : (byte) 0);
    }

    public OfflineGeometryRegionDefinition(String str, Geometry geometry, double d, double d2, float f, boolean z) {
        this.styleURL = str;
        this.geometry = geometry;
        this.minZoom = d;
        this.maxZoom = d2;
        this.pixelRatio = f;
        this.includeIdeographs = z;
    }

    public OfflineGeometryRegionDefinition(String str, Geometry geometry, double d, double d2, float f) {
        this(str, geometry, d, d2, f, false);
    }
}
