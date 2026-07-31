package net.thunderbird.core.featureflag;

import app.k9mail.featureflag.K9FeatureFlagFactory;
import app.k9mail.featureflag.K9FeatureFlagFactory$getCatalog$1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager$generalSettings$2;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.Continuation;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.core.featureflag.FeatureFlagResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InMemoryFeatureFlagProvider {
    public final ReadonlyStateFlow combinedFeatureFlags;

    public InMemoryFeatureFlagProvider(K9FeatureFlagFactory k9FeatureFlagFactory, NoOpFeatureFlagOverrides noOpFeatureFlagOverrides) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        HandlerContext handlerContext = MainDispatcherLoader.dispatcher.immediate;
        ContextScope CoroutineScope = JobKt.CoroutineScope(UuidKt.plus(JobKt.SupervisorJob$default(), handlerContext));
        handlerContext.getClass();
        Continuation continuation = null;
        int i = 0;
        this.combinedFeatureFlags = FlowKt.stateIn(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(new SafeFlow(i, new K9FeatureFlagFactory$getCatalog$1(2, continuation, i)), noOpFeatureFlagOverrides.overrides, new DefaultGeneralSettingsManager$generalSettings$2(3, continuation, 10), i), CoroutineScope, SharingStarted.Companion.Eagerly, EmptyMap.INSTANCE);
    }

    /* renamed from: provide-dj3aFNw, reason: not valid java name */
    public final FeatureFlagResult m1030providedj3aFNw(String str) {
        str.getClass();
        FeatureFlag featureFlag = (FeatureFlag) ((Map) this.combinedFeatureFlags.$$delegate_0.getValue()).get(new FeatureFlagKey(str));
        Boolean valueOf = featureFlag != null ? Boolean.valueOf(featureFlag.enabled) : null;
        if (valueOf == null) {
            return FeatureFlagResult.Unavailable.INSTANCE;
        }
        if (valueOf.equals(Boolean.TRUE)) {
            return FeatureFlagResult.Enabled.INSTANCE;
        }
        if (valueOf.equals(Boolean.FALSE)) {
            return FeatureFlagResult.Disabled.INSTANCE;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }
}
