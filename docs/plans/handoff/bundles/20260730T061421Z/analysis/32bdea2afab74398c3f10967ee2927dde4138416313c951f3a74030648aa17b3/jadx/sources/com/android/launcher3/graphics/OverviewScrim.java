package com.android.launcher3.graphics;

import android.view.View;

/* loaded from: classes.dex */
public class OverviewScrim extends Scrim {
    public View mCurrentScrimmedView;
    public View mStableScrimmedView;

    public OverviewScrim(View view) {
        super(view);
        View overviewPanel = this.mLauncher.getOverviewPanel();
        this.mCurrentScrimmedView = overviewPanel;
        this.mStableScrimmedView = overviewPanel;
        onExtractedColorsChanged(this.mWallpaperColorInfo);
    }
}
