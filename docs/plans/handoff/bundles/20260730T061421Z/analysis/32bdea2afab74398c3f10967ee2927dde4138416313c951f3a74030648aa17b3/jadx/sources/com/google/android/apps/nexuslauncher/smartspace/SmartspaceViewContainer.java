package com.google.android.apps.nexuslauncher.smartspace;

import android.animation.LayoutTransition;
import android.content.Context;
import android.util.AttributeSet;
import android.view.SurfaceView;
import android.widget.FrameLayout;
import c.b.a.b.b.p.n;
import com.android.launcher3.config.FeatureFlags;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class SmartspaceViewContainer extends FrameLayout {
    public SmartspaceViewContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (!FeatureFlags.ENABLE_UNIVERSAL_SMARTSPACE.get()) {
            addView(FrameLayout.inflate(context, R.layout.smartspace_container, null));
            return;
        }
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.disableTransitionType(0);
        layoutTransition.disableTransitionType(1);
        setLayoutTransition(layoutTransition);
        SurfaceView surfaceView = new SurfaceView(getContext());
        surfaceView.setZOrderOnTop(true);
        surfaceView.getHolder().addCallback(new n(this, surfaceView));
        addView(surfaceView);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(0, 0, 0, 0);
    }
}
