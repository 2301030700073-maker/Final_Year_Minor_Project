package com.google.android.apps.nexuslauncher;

import android.content.Context;
import c.b.a.b.b.j.f;
import com.android.quickstep.QuickstepProcessInitializer;

/* loaded from: classes.dex */
public class NexusProcessInitializer extends QuickstepProcessInitializer {
    public NexusProcessInitializer(Context context) {
        super(context);
    }

    @Override // com.android.quickstep.QuickstepProcessInitializer, com.android.launcher3.MainProcessInitializer
    public void init(Context context) {
        super.init(context);
        new f(context);
    }
}
