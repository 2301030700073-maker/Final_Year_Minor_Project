package com.android.launcher3.icons;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.RegionIterator;
import android.util.Log;
import c.a.a.L0.b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class GraphicsUtils {
    public static Runnable sOnNewBitmapRunnable = b.f1442a;

    public static /* synthetic */ void a() {
    }

    public static byte[] flattenBitmap(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bitmap.getHeight() * bitmap.getWidth() * 4);
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            Log.w("GraphicsUtils", "Could not write bitmap");
            return null;
        }
    }

    public static int getArea(Region region) {
        RegionIterator regionIterator = new RegionIterator(region);
        Rect rect = new Rect();
        int i = 0;
        while (regionIterator.next(rect)) {
            i += rect.height() * rect.width();
        }
        return i;
    }

    public static void noteNewBitmapCreated() {
        b.f1442a.run();
    }

    public static int setColorAlphaBound(int i, int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 255) {
            i2 = 255;
        }
        return (i & 16777215) | (i2 << 24);
    }
}
