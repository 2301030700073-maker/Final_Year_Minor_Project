package com.android.launcher3.allapps;

import android.graphics.Rect;
import android.view.View;
import android.view.animation.Interpolator;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.anim.PropertySetter;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.plugins.AllAppsRow;

/* loaded from: classes.dex */
public class PluginHeaderRow implements FloatingHeaderRow {
    public final AllAppsRow mPlugin;
    public final View mView;

    public PluginHeaderRow(AllAppsRow allAppsRow, FloatingHeaderView floatingHeaderView) {
        this.mPlugin = allAppsRow;
        this.mView = allAppsRow.setup(floatingHeaderView);
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public int getExpectedHeight() {
        return this.mPlugin.getExpectedHeight();
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public Class getTypeClass() {
        return PluginHeaderRow.class;
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public boolean hasVisibleContent() {
        return true;
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public void setContentVisibility(boolean z, boolean z2, PropertySetter propertySetter, Interpolator interpolator, Interpolator interpolator2) {
        propertySetter.setFloat(this.mView, LauncherAnimUtils.VIEW_ALPHA, z2 ? 1.0f : RecentsState.NO_OFFSET, interpolator);
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public void setInsets(Rect rect, DeviceProfile deviceProfile) {
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public void setVerticalScroll(int i, boolean z) {
        this.mView.setVisibility(z ? 4 : 0);
        if (z) {
            return;
        }
        this.mView.setTranslationY(i);
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public void setup(FloatingHeaderView floatingHeaderView, FloatingHeaderRow[] floatingHeaderRowArr, boolean z) {
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public boolean shouldDraw() {
        return true;
    }
}
