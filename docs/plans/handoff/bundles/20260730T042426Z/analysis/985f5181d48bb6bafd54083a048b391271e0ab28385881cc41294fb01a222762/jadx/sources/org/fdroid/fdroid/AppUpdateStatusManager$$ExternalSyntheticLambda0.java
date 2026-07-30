package org.fdroid.fdroid;

import androidx.core.util.Supplier;
import java.util.List;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes2.dex */
public final /* synthetic */ class AppUpdateStatusManager$$ExternalSyntheticLambda0 implements Supplier {
    public final /* synthetic */ AppUpdateStatusManager f$0;

    public /* synthetic */ AppUpdateStatusManager$$ExternalSyntheticLambda0(AppUpdateStatusManager appUpdateStatusManager) {
        this.f$0 = appUpdateStatusManager;
    }

    @Override // androidx.core.util.Supplier
    public final Object get() {
        List updatableApps;
        updatableApps = this.f$0.getUpdatableApps();
        return updatableApps;
    }
}
