package androidx.interpolator.view.animation;

import com.android.contacts.ContactPhotoManager;

/* loaded from: classes.dex */
final class LookupTableInterpolator {
    static float interpolate(float[] fArr, float f, float f2) {
        if (f2 >= 1.0f) {
            return 1.0f;
        }
        if (f2 <= ContactPhotoManager.OFFSET_DEFAULT) {
            return ContactPhotoManager.OFFSET_DEFAULT;
        }
        int min = Math.min((int) ((fArr.length - 1) * f2), fArr.length - 2);
        return fArr[min] + (((f2 - (min * f)) / f) * (fArr[min + 1] - fArr[min]));
    }
}
