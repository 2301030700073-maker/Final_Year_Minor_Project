package org.maplibre.android.gestures;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MultiFingerDistancesObject {
    public final float currFingersDiffX;
    public final float currFingersDiffXY;
    public final float currFingersDiffY;
    public final float prevFingersDiffX;
    public final float prevFingersDiffY;

    public MultiFingerDistancesObject(float f, float f2, float f3, float f4) {
        this.prevFingersDiffX = f;
        this.prevFingersDiffY = f2;
        this.currFingersDiffX = f3;
        this.currFingersDiffY = f4;
        Math.sqrt((f2 * f2) + (f * f));
        this.currFingersDiffXY = (float) Math.sqrt((f4 * f4) + (f3 * f3));
    }
}
