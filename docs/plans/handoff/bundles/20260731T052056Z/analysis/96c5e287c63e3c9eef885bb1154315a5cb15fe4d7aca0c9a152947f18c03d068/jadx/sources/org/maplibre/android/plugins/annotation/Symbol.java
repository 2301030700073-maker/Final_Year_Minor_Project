package org.maplibre.android.plugins.annotation;

import com.google.gson.JsonObject;
import org.maplibre.android.geometry.LatLng;
import org.maplibre.geojson.Point;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Symbol {
    public final SymbolManager annotationManager;
    public final Point geometry;
    public final JsonObject jsonObject;

    public Symbol(long j, SymbolManager symbolManager, JsonObject jsonObject, Point point) {
        this.jsonObject = jsonObject;
        jsonObject.addProperty("id", Long.valueOf(j));
        this.geometry = point;
        this.annotationManager = symbolManager;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Symbol.class != obj.getClass()) {
            return false;
        }
        Symbol symbol = (Symbol) obj;
        if (this.jsonObject.equals(symbol.jsonObject)) {
            return this.geometry.equals(symbol.geometry);
        }
        return false;
    }

    public final LatLng getLatLng() {
        return new LatLng(this.geometry.latitude(), this.geometry.longitude());
    }

    public final int hashCode() {
        return (this.geometry.hashCode() + (this.jsonObject.hashCode() * 31)) * 31;
    }

    public final String toString() {
        return "Symbol{geometry=" + this.geometry + ", properties=" + this.jsonObject + ", isDraggable=false}";
    }
}
