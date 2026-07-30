package com.android.launcher3.icons;

import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.RectF;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public interface BitmapRenderer {
    static Bitmap createBitmap(Bitmap bitmap, int i, int i2, int i3, int i4) {
        if (bitmap.getConfig() != Bitmap.Config.HARDWARE) {
            GraphicsUtils.noteNewBitmapCreated();
            return Bitmap.createBitmap(bitmap, i, i2, i3, i4);
        }
        GraphicsUtils.noteNewBitmapCreated();
        Picture picture = new Picture();
        picture.beginRecording(i3, i4).drawBitmap(bitmap, new Rect(i, i2, i + i3, i2 + i4), new RectF(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, i3, i4), (Paint) null);
        picture.endRecording();
        return Bitmap.createBitmap(picture);
    }
}
