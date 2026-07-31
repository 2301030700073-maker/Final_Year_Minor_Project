package androidx.camera.core.featuregroup.impl;

import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.utils.futures.ImmediateFuture$ImmediateFailedFuture;
import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FeatureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1 extends DeferrableSurface {
    @Override // androidx.camera.core.impl.DeferrableSurface
    public final ListenableFuture provideSurface() {
        return ImmediateFuture$ImmediateFailedFuture.NULL_FUTURE;
    }
}
