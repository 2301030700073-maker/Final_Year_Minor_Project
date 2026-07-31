package net.thunderbird.core.featureflag;

import kotlin.collections.EmptyMap;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NoOpFeatureFlagOverrides {
    public final ReadonlyStateFlow overrides = FlowKt.asStateFlow(FlowKt.MutableStateFlow(EmptyMap.INSTANCE));
}
