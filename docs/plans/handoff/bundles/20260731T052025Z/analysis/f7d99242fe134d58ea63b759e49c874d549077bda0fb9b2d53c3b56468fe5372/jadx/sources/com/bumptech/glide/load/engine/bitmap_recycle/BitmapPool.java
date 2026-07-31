package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface BitmapPool {
    void clearMemory();

    Bitmap get(int i, int i2, Bitmap.Config config);

    Bitmap getDirty(int i, int i2, Bitmap.Config config);

    void put(Bitmap bitmap);

    void trimMemory(int i);
}
