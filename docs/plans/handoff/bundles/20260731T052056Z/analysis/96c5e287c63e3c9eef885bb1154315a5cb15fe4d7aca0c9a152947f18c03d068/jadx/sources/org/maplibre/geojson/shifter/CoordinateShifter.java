package org.maplibre.geojson.shifter;

import java.util.List;
import org.maplibre.geojson.Point;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface CoordinateShifter {
    List<Double> shiftLonLat(double d, double d2);

    List<Double> shiftLonLatAlt(double d, double d2, double d3);

    List<Double> unshiftPoint(List<Double> list);

    List<Double> unshiftPoint(Point point);
}
