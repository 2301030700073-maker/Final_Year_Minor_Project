package com.skydoves.landscapist.coil3;

import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import coil3.ImageLoader;
import kotlinx.datetime.UtcOffsetJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalCoilProviderKt {
    private static final ProvidableCompositionLocal LocalCoilImageLoader = new StaticProvidableCompositionLocal(new UtcOffsetJvmKt$$ExternalSyntheticLambda0(3));

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImageLoader LocalCoilImageLoader$lambda$0() {
        return null;
    }

    public static final ProvidableCompositionLocal getLocalCoilImageLoader() {
        return LocalCoilImageLoader;
    }
}
