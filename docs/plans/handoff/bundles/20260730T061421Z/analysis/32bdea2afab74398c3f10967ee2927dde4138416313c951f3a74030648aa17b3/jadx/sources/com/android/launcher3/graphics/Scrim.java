package com.android.launcher3.graphics;

import android.util.FloatProperty;
import android.view.View;
import com.android.launcher3.Launcher;
import com.android.launcher3.uioverrides.WallpaperColorInfo;

/* loaded from: classes.dex */
public class Scrim implements View.OnAttachStateChangeListener, WallpaperColorInfo.OnChangeListener {
    public static final FloatProperty SCRIM_PROGRESS = new FloatProperty("scrimProgress") { // from class: com.android.launcher3.graphics.Scrim.1
        @Override // android.util.Property
        public Float get(Object obj) {
            return Float.valueOf(((Scrim) obj).mScrimProgress);
        }

        @Override // android.util.FloatProperty
        public void setValue(Object obj, float f) {
            Scrim scrim = (Scrim) obj;
            if (scrim.mScrimProgress != f) {
                scrim.mScrimProgress = f;
                scrim.mScrimAlpha = Math.round(f * 255.0f);
                scrim.mRoot.invalidate();
            }
        }
    };
    public final Launcher mLauncher;
    public final View mRoot;
    public int mScrimAlpha = 0;
    public int mScrimColor;
    public float mScrimProgress;
    public final WallpaperColorInfo mWallpaperColorInfo;

    public Scrim(View view) {
        this.mRoot = view;
        Launcher launcher = Launcher.getLauncher(view.getContext());
        this.mLauncher = launcher;
        this.mWallpaperColorInfo = (WallpaperColorInfo) WallpaperColorInfo.INSTANCE.b(launcher);
        view.addOnAttachStateChangeListener(this);
    }

    @Override // com.android.launcher3.uioverrides.WallpaperColorInfo.OnChangeListener
    public void onExtractedColorsChanged(WallpaperColorInfo wallpaperColorInfo) {
        this.mScrimColor = wallpaperColorInfo.mExtractionInfo.mainColor;
        if (this.mScrimAlpha > 0) {
            this.mRoot.invalidate();
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.mWallpaperColorInfo.mListeners.add(this);
        onExtractedColorsChanged(this.mWallpaperColorInfo);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.mWallpaperColorInfo.mListeners.remove(this);
    }
}
