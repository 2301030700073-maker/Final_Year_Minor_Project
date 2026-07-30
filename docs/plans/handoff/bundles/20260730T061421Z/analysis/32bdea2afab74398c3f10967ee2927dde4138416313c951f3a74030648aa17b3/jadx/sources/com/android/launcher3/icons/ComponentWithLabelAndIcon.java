package com.android.launcher3.icons;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.icons.ComponentWithLabel;

/* loaded from: classes.dex */
public interface ComponentWithLabelAndIcon extends ComponentWithLabel {
    Drawable getFullResIcon(IconCache iconCache);

    public class ComponentWithIconCachingLogic extends ComponentWithLabel.ComponentCachingLogic {
        public ComponentWithIconCachingLogic(Context context, boolean z) {
            super(context, z);
        }

        @Override // com.android.launcher3.icons.ComponentWithLabel.ComponentCachingLogic, com.android.launcher3.icons.cache.CachingLogic
        public BitmapInfo loadIcon(Context context, ComponentWithLabelAndIcon componentWithLabelAndIcon) {
            Drawable fullResIcon = componentWithLabelAndIcon.getFullResIcon(LauncherAppState.getInstance(context).mIconCache);
            if (fullResIcon == null) {
                return BitmapInfo.LOW_RES_INFO;
            }
            LauncherIcons obtain = LauncherIcons.obtain(context);
            try {
                BitmapInfo createBadgedIconBitmap = obtain.createBadgedIconBitmap(fullResIcon, componentWithLabelAndIcon.getUser(), 0, false);
                obtain.recycle();
                return createBadgedIconBitmap;
            } catch (Throwable th) {
                try {
                    obtain.recycle();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }
}
