package org.maplibre.android.style.layers;

import com.google.gson.JsonElement;
import okio.Okio__JvmOkioKt;
import org.maplibre.android.LibraryLoader;
import org.maplibre.android.style.expressions.Expression;
import org.maplibre.android.style.types.Formatted;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Layer {
    public boolean detached;
    private boolean invalidated;
    private long nativePtr;

    static {
        LibraryLoader.load();
    }

    public Layer(long j) {
        checkThread();
        this.nativePtr = j;
    }

    public static void checkThread() {
        Okio__JvmOkioKt.checkThread("Mbgl-Layer");
    }

    public native void finalize();

    public final String getId() {
        checkThread();
        return nativeGetId();
    }

    public final long getNativePtr() {
        return this.nativePtr;
    }

    public native JsonElement nativeGetFilter();

    public native String nativeGetId();

    public native float nativeGetMaxZoom();

    public native float nativeGetMinZoom();

    public native String nativeGetSourceId();

    public native String nativeGetSourceLayer();

    public native Object nativeGetVisibility();

    public native void nativeSetFilter(Object[] objArr);

    public native void nativeSetLayoutProperty(String str, Object obj);

    public native void nativeSetMaxZoom(float f);

    public native void nativeSetMinZoom(float f);

    public native void nativeSetPaintProperty(String str, Object obj);

    public native void nativeSetSourceLayer(String str);

    public final void setProperties(PropertyValue... propertyValueArr) {
        if (this.detached) {
            return;
        }
        checkThread();
        if (propertyValueArr.length == 0) {
            return;
        }
        for (PropertyValue propertyValue : propertyValueArr) {
            Object obj = propertyValue.value;
            if (obj instanceof Expression) {
                obj = ((Expression) obj).toArray();
            } else if (obj instanceof Formatted) {
                obj = ((Formatted) obj).toArray();
            }
            boolean z = propertyValue instanceof PaintPropertyValue;
            String str = propertyValue.name;
            if (z) {
                nativeSetPaintProperty(str, obj);
            } else {
                nativeSetLayoutProperty(str, obj);
            }
        }
    }

    public Layer() {
        checkThread();
    }
}
