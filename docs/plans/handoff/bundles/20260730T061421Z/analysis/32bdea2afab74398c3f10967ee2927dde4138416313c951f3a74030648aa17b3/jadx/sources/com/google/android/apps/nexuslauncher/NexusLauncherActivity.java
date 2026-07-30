package com.google.android.apps.nexuslauncher;

import c.b.a.b.b.d;
import c.b.a.b.b.e;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.systemui.plugins.shared.LauncherOverlayManager;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class NexusLauncherActivity extends QuickstepLauncher {

    /* renamed from: a, reason: collision with root package name */
    public final d f3288a = new d(this);

    public NexusLauncherActivity() {
        getViewCache().setCacheSize(R.layout.suggest_view, 3);
    }

    @Override // com.android.launcher3.Launcher
    public LauncherOverlayManager getDefaultOverlay() {
        return new e(this, this);
    }
}
