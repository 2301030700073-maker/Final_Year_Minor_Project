package org.maplibre.android.location;

import android.animation.FloatEvaluator;
import android.animation.TypeEvaluator;
import androidx.core.graphics.PathParser$PathDataNode;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.maplibre.android.geometry.LatLng;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LatLngEvaluator implements TypeEvaluator {
    public final /* synthetic */ int $r8$classId;
    public Object latLng;

    public LatLngEvaluator(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                break;
            case 2:
                this.latLng = new FloatEvaluator();
                break;
            default:
                this.latLng = new LatLng();
                break;
        }
    }

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f, Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                LatLng latLng = (LatLng) obj;
                LatLng latLng2 = (LatLng) obj2;
                LatLng latLng3 = (LatLng) this.latLng;
                double d = f;
                latLng3.setLatitude(((latLng2.getLatitude() - latLng.getLatitude()) * d) + latLng.getLatitude());
                latLng3.setLongitude(((latLng2.getLongitude() - latLng.getLongitude()) * d) + latLng.getLongitude());
                return latLng3;
            case 1:
                PathParser$PathDataNode[] pathParser$PathDataNodeArr = (PathParser$PathDataNode[]) obj;
                PathParser$PathDataNode[] pathParser$PathDataNodeArr2 = (PathParser$PathDataNode[]) obj2;
                if (!ContextsKt.canMorph(pathParser$PathDataNodeArr, pathParser$PathDataNodeArr2)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Can't interpolate between two incompatible pathData");
                    return null;
                }
                if (!ContextsKt.canMorph((PathParser$PathDataNode[]) this.latLng, pathParser$PathDataNodeArr)) {
                    this.latLng = ContextsKt.deepCopyNodes(pathParser$PathDataNodeArr);
                }
                int i = 0;
                while (true) {
                    int length = pathParser$PathDataNodeArr.length;
                    PathParser$PathDataNode[] pathParser$PathDataNodeArr3 = (PathParser$PathDataNode[]) this.latLng;
                    if (i >= length) {
                        return pathParser$PathDataNodeArr3;
                    }
                    PathParser$PathDataNode pathParser$PathDataNode = pathParser$PathDataNodeArr3[i];
                    PathParser$PathDataNode pathParser$PathDataNode2 = pathParser$PathDataNodeArr[i];
                    PathParser$PathDataNode pathParser$PathDataNode3 = pathParser$PathDataNodeArr2[i];
                    pathParser$PathDataNode.getClass();
                    pathParser$PathDataNode.mType = pathParser$PathDataNode2.mType;
                    int i2 = 0;
                    while (true) {
                        float[] fArr = pathParser$PathDataNode2.mParams;
                        if (i2 < fArr.length) {
                            pathParser$PathDataNode.mParams[i2] = (pathParser$PathDataNode3.mParams[i2] * f) + ((1.0f - f) * fArr[i2]);
                            i2++;
                        }
                    }
                    i++;
                }
                break;
            default:
                float floatValue = ((FloatEvaluator) this.latLng).evaluate(f, (Number) obj, (Number) obj2).floatValue();
                if (floatValue < 0.1f) {
                    floatValue = RecyclerView.DECELERATION_RATE;
                }
                return Float.valueOf(floatValue);
        }
    }
}
