package com.android.launcher3.icons;

import android.content.Context;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.graphics.LauncherPreviewRenderer;
import com.android.launcher3.graphics.LauncherPreviewRenderer.PreviewContext.LauncherIconsForPreview;

/* loaded from: classes.dex */
public class LauncherIcons extends BaseIconFactory implements AutoCloseable {
    public static LauncherIcons sPool;
    public static int sPoolId;
    public static final Object sPoolSync = new Object();
    public final int mPoolId;
    public LauncherIcons next;

    public LauncherIcons(Context context, int i, int i2, int i3, boolean z) {
        super(context, i, i2, z);
        this.mPoolId = i3;
    }

    public static LauncherIcons obtain(Context context) {
        LauncherIcons launcherIcons;
        boolean enableShapeDetection = IconShape.sInstance.enableShapeDetection();
        if (context instanceof LauncherPreviewRenderer.PreviewContext) {
            LauncherPreviewRenderer.PreviewContext previewContext = (LauncherPreviewRenderer.PreviewContext) context;
            LauncherPreviewRenderer.PreviewContext.LauncherIconsForPreview launcherIconsForPreview = (LauncherPreviewRenderer.PreviewContext.LauncherIconsForPreview) previewContext.mIconPool.poll();
            if (launcherIconsForPreview != null) {
                return launcherIconsForPreview;
            }
            InvariantDeviceProfile invariantDeviceProfile = previewContext.mIdp;
            return previewContext.new LauncherIconsForPreview(context, invariantDeviceProfile.fillResIconDpi, invariantDeviceProfile.iconBitmapSize, -1, enableShapeDetection, null);
        }
        synchronized (sPoolSync) {
            if (sPool != null) {
                LauncherIcons launcherIcons2 = sPool;
                sPool = launcherIcons2.next;
                launcherIcons2.next = null;
                launcherIcons = launcherIcons2;
            } else {
                int i = sPoolId;
                InvariantDeviceProfile invariantDeviceProfile2 = (InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.b(context);
                launcherIcons = new LauncherIcons(context, invariantDeviceProfile2.fillResIconDpi, invariantDeviceProfile2.iconBitmapSize, i, enableShapeDetection);
            }
        }
        return launcherIcons;
    }

    @Override // com.android.launcher3.icons.BaseIconFactory, java.lang.AutoCloseable
    public void close() {
        recycle();
    }

    public void recycle() {
        synchronized (sPoolSync) {
            if (sPoolId != this.mPoolId) {
                return;
            }
            clear();
            this.next = sPool;
            sPool = this;
        }
    }
}
