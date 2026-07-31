package androidx.camera.core.impl;

import android.util.ArrayMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class TagBundle {
    public static final TagBundle EMPTY_TAGBUNDLE = new TagBundle(new ArrayMap());
    public final ArrayMap mTagMap;

    public TagBundle(ArrayMap arrayMap) {
        this.mTagMap = arrayMap;
    }

    public final String toString() {
        return "android.hardware.camera2.CaptureRequest.setTag.CX";
    }
}
