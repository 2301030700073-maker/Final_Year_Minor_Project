package org.maplibre.android.text;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class LocalGlyphRasterizer {
    private final Bitmap bitmap;
    private final Canvas canvas;
    private final Paint paint;

    public LocalGlyphRasterizer() {
        Bitmap createBitmap = Bitmap.createBitmap(35, 35, Bitmap.Config.ARGB_8888);
        this.bitmap = createBitmap;
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        paint.setTextSize(24.0f);
        Canvas canvas = new Canvas();
        this.canvas = canvas;
        canvas.setBitmap(createBitmap);
    }

    public Bitmap drawGlyphBitmap(String str, boolean z, char c) {
        this.paint.setTypeface(Typeface.create(str, z ? 1 : 0));
        this.canvas.drawColor(-1);
        this.canvas.drawText(String.valueOf(c), 5.0f, 25.0f, this.paint);
        return this.bitmap;
    }
}
