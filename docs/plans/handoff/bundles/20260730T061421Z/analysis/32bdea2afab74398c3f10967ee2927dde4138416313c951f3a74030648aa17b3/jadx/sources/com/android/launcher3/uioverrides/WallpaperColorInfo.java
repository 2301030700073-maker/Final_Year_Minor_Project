package com.android.launcher3.uioverrides;

import android.annotation.TargetApi;
import android.app.WallpaperColors;
import android.app.WallpaperManager;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.android.launcher3.uioverrides.WallpaperColorInfo;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.systemui.shared.system.TonalCompat;
import java.util.ArrayList;

@TargetApi(28)
/* loaded from: classes.dex */
public class WallpaperColorInfo implements WallpaperManager.OnColorsChangedListener {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.a.Z0.g
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new WallpaperColorInfo(context);
        }
    });
    public TonalCompat.ExtractionInfo mExtractionInfo;
    public final ArrayList mListeners = new ArrayList();
    public OnChangeListener[] mTempListeners = new OnChangeListener[0];
    public final TonalCompat mTonalCompat;
    public final WallpaperManager mWallpaperManager;

    public interface OnChangeListener {
        void onExtractedColorsChanged(WallpaperColorInfo wallpaperColorInfo);
    }

    public WallpaperColorInfo(Context context) {
        this.mWallpaperManager = (WallpaperManager) context.getSystemService(WallpaperManager.class);
        this.mTonalCompat = new TonalCompat(context);
        this.mWallpaperManager.addOnColorsChangedListener(this, new Handler(Looper.getMainLooper()));
        this.mExtractionInfo = this.mTonalCompat.extractDarkColors(this.mWallpaperManager.getWallpaperColors(1));
    }

    @Override // android.app.WallpaperManager.OnColorsChangedListener
    public void onColorsChanged(WallpaperColors wallpaperColors, int i) {
        if ((i & 1) != 0) {
            this.mExtractionInfo = this.mTonalCompat.extractDarkColors(wallpaperColors);
            OnChangeListener[] onChangeListenerArr = (OnChangeListener[]) this.mListeners.toArray(this.mTempListeners);
            this.mTempListeners = onChangeListenerArr;
            for (OnChangeListener onChangeListener : onChangeListenerArr) {
                if (onChangeListener != null) {
                    onChangeListener.onExtractedColorsChanged(this);
                }
            }
        }
    }
}
