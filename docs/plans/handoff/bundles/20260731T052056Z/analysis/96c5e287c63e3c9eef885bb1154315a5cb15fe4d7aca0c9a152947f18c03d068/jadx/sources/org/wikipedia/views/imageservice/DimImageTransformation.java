package org.wikipedia.views.imageservice;

import android.graphics.Bitmap;
import android.graphics.PointF;
import android.media.FaceDetector;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Reflection;
import kotlin.text.RegexKt;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DimImageTransformation {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ DimImageTransformation(int i) {
        this.$r8$classId = i;
    }

    public static PointF detectFace(Bitmap bitmap) {
        PointF pointF;
        long currentTimeMillis = System.currentTimeMillis();
        FaceDetector.Face[] faceArr = new FaceDetector.Face[1];
        if (new FaceDetector(bitmap.getWidth(), bitmap.getHeight(), 1).findFaces(bitmap, faceArr) > 0) {
            pointF = new PointF();
            FaceDetector.Face face = faceArr[0];
            face.getClass();
            face.getMidPoint(pointF);
            float f = pointF.y;
            FaceDetector.Face face2 = faceArr[0];
            face2.getClass();
            pointF.y = (face2.eyesDistance() / 2.0f) + f;
            pointF.set(RegexKt.coerceIn(pointF.x / bitmap.getWidth(), RecyclerView.DECELERATION_RATE, 1.0f), RegexKt.coerceIn(pointF.y / bitmap.getHeight(), RecyclerView.DECELERATION_RATE, 1.0f));
            L.d("Found face at " + pointF.x + ", " + pointF.y);
        } else {
            pointF = null;
        }
        L.d("Face detection took " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
        return pointF;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DimImageTransformation) && getCacheKey().equals(((DimImageTransformation) obj).getCacheKey());
    }

    public final String getCacheKey() {
        switch (this.$r8$classId) {
            case 0:
                return "DimImageTransformation";
            case 1:
                return "FaceDetectTransformation";
            default:
                return "WhiteBackgroundTransformation";
        }
    }

    public final int hashCode() {
        return getCacheKey().hashCode();
    }

    public final String toString() {
        return Reflection.factory.getOrCreateKotlinClass(getClass()).getSimpleName() + "(cacheKey=" + getCacheKey() + ")";
    }
}
