package com.bumptech.glide.load.engine.cache;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import androidx.work.Configuration;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MemorySizeCalculator {
    public int arrayPoolSize;
    public int bitmapPoolSize;
    public int memoryCacheSize;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder {
        public static final int BITMAP_POOL_TARGET_SCREENS;
        public final ActivityManager activityManager;
        public final float bitmapPoolScreens;
        public final Context context;
        public final Configuration.Builder screenDimensions;

        static {
            BITMAP_POOL_TARGET_SCREENS = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public Builder(Context context) {
            this.bitmapPoolScreens = BITMAP_POOL_TARGET_SCREENS;
            this.context = context;
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            this.activityManager = activityManager;
            this.screenDimensions = new Configuration.Builder(13, context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !activityManager.isLowRamDevice()) {
                return;
            }
            this.bitmapPoolScreens = 0.0f;
        }
    }
}
