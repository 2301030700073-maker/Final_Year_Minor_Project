package com.fsck.k9.preferences;

import com.fsck.k9.preferences.upgrader.CombinedSettingsUpgraderTo98;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CombinedSettingsUpgraders$UPGRADERS$2 extends FunctionReferenceImpl implements Function0 {
    public static final CombinedSettingsUpgraders$UPGRADERS$2 INSTANCE = new CombinedSettingsUpgraders$UPGRADERS$2(0, CombinedSettingsUpgraderTo98.class, "<init>", "<init>()V", 0);

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return new CombinedSettingsUpgraderTo98();
    }
}
