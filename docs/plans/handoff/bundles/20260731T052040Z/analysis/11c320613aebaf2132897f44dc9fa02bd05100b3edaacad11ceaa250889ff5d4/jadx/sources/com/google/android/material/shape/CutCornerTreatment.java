package com.google.android.material.shape;

import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CutCornerTreatment extends Jsoup {
    @Override // org.jsoup.Jsoup
    public final void getCornerPath(ShapePath shapePath, float f, float f2) {
        shapePath.reset(f2 * f, 180.0f, 90.0f);
        double d = f2;
        double d2 = f;
        shapePath.lineTo((float) (Math.sin(Math.toRadians(90.0d)) * d * d2), (float) (Math.sin(Math.toRadians(0.0d)) * d * d2));
    }
}
