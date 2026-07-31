package org.maplibre.android.maps;

import android.graphics.Bitmap;
import androidx.compose.animation.core.Animation;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.maplibre.android.style.layers.Layer;
import org.maplibre.android.style.sources.Source;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Style {
    public final Builder builder;
    public boolean fullyLoaded;
    public final NativeMap nativeMap;
    public final HashMap sources = new HashMap();
    public final HashMap layers = new HashMap();
    public final HashMap images = new HashMap();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnStyleLoaded {
        void onStyleLoaded(Style style);
    }

    public Style(Builder builder, NativeMap nativeMap) {
        this.builder = builder;
        this.nativeMap = nativeMap;
    }

    public final void addImage(String str, Bitmap bitmap) {
        validateState("addImage");
        Bitmap.Config config = bitmap.getConfig();
        Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
        if (config != config2) {
            bitmap = bitmap.copy(config2, false);
        }
        ByteBuffer allocate = ByteBuffer.allocate(bitmap.getByteCount());
        bitmap.copyPixelsToBuffer(allocate);
        ((NativeMapView) this.nativeMap).addImages(new Image[]{new Image(allocate.array(), bitmap.getDensity() / 160.0f, str, bitmap.getWidth(), bitmap.getHeight(), false)});
    }

    public final void addLayer(Layer layer) {
        validateState("addLayer");
        ((NativeMapView) this.nativeMap).addLayer(layer);
        this.layers.put(layer.getId(), layer);
    }

    public final void addLayerAbove(Layer layer, String str) {
        validateState("addLayerAbove");
        ((NativeMapView) this.nativeMap).addLayerAbove(layer, str);
        this.layers.put(layer.getId(), layer);
    }

    public final void addLayerBelow(Layer layer, String str) {
        validateState("addLayerBelow");
        ((NativeMapView) this.nativeMap).addLayerBelow(layer, str);
        this.layers.put(layer.getId(), layer);
    }

    public final void addSource(Source source) {
        validateState("addSource");
        ((NativeMapView) this.nativeMap).addSource(source);
        this.sources.put(source.getId(), source);
    }

    public final void clear() {
        this.fullyLoaded = false;
        HashMap hashMap = this.layers;
        for (Layer layer : hashMap.values()) {
            if (layer != null) {
                layer.detached = true;
            }
        }
        HashMap hashMap2 = this.sources;
        for (Source source : hashMap2.values()) {
            if (source != null) {
                source.setDetached();
            }
        }
        HashMap hashMap3 = this.images;
        for (Map.Entry entry : hashMap3.entrySet()) {
            ((NativeMapView) this.nativeMap).removeImage((String) entry.getKey());
            ((Bitmap) entry.getValue()).recycle();
        }
        hashMap2.clear();
        hashMap.clear();
        hashMap3.clear();
    }

    public final Layer getLayer(String str) {
        validateState("getLayer");
        Layer layer = (Layer) this.layers.get(str);
        return layer == null ? ((NativeMapView) this.nativeMap).getLayer(str) : layer;
    }

    public final Source getSourceAs() {
        validateState("getSourceAs");
        HashMap hashMap = this.sources;
        return hashMap.containsKey("mapbox-location-source") ? (Source) hashMap.get("mapbox-location-source") : ((NativeMapView) this.nativeMap).getSource();
    }

    public final void removeImage(String str) {
        validateState("removeImage");
        ((NativeMapView) this.nativeMap).removeImage(str);
    }

    public final void removeLayer(String str) {
        Layer layer;
        validateState("removeLayer");
        this.layers.remove(str);
        NativeMapView nativeMapView = (NativeMapView) this.nativeMap;
        if (nativeMapView.checkState("removeLayer") || (layer = nativeMapView.getLayer(str)) == null) {
            return;
        }
        nativeMapView.removeLayer(layer);
    }

    public final void validateState(String str) {
        if (this.fullyLoaded) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Animation.CC.m("Calling ", str, " when a newer style is loading/has loaded."));
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder {
        public final Object images;
        public final Object layers;
        public final Object sources;
        public Object styleUri;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public abstract class ImageWrapper {
        }

        public Builder() {
            this.sources = new ArrayList();
            this.layers = new ArrayList();
            this.images = new ArrayList();
        }

        public Builder(Transform transform, UiSettings uiSettings, MapGestureDetector mapGestureDetector) {
            this.sources = transform;
            this.layers = uiSettings;
            this.images = mapGestureDetector;
        }
    }
}
