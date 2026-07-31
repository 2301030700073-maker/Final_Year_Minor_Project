package com.skydoves.landscapist.coil3;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import coil3.ComponentRegistry;
import coil3.ImageLoader;
import coil3.SingletonImageLoader;
import coil3.Uri;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalCoilProvider {
    public static final int $stable = 0;
    public static final LocalCoilProvider INSTANCE = new LocalCoilProvider();

    private LocalCoilProvider() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImageLoader getCoilImageLoader$lambda$0$1$0(ImageLoader imageLoader, Context context) {
        context.getClass();
        return imageLoader;
    }

    public final ImageLoader getCoilImageLoader(Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        ImageLoader imageLoader = (ImageLoader) gapComposer.consume(LocalCoilProviderKt.getLocalCoilImageLoader());
        if (imageLoader != null) {
            gapComposer.startReplaceGroup(-21406514);
            gapComposer.end(false);
            return imageLoader;
        }
        gapComposer.startReplaceGroup(-663571180);
        if (PlatformsKt.getPlatform() == Platform.NonAndroid) {
            gapComposer.startReplaceGroup(-1016640336);
            ImageLoader.Builder builder = new ImageLoader.Builder(PlatformsKt.getPlatformContext(gapComposer, 0));
            ComponentRegistry.Builder builder2 = new ComponentRegistry.Builder();
            builder2.add(PlatformsKt.getNetworkFetcherFactory(), Reflection.getOrCreateKotlinClass(Uri.class));
            final ImageLoader build = builder.components(builder2.build()).build();
            boolean changedInstance = gapComposer.changedInstance(build);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new SingletonImageLoader.Factory() { // from class: com.skydoves.landscapist.coil3.LocalCoilProvider$$ExternalSyntheticLambda0
                    @Override // coil3.SingletonImageLoader.Factory
                    public final ImageLoader newImageLoader(Context context) {
                        ImageLoader coilImageLoader$lambda$0$1$0;
                        coilImageLoader$lambda$0$1$0 = LocalCoilProvider.getCoilImageLoader$lambda$0$1$0(ImageLoader.this, context);
                        return coilImageLoader$lambda$0$1$0;
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue);
            }
            SingletonImageLoader.setSafe((SingletonImageLoader.Factory) rememberedValue);
            gapComposer.end(false);
        } else {
            gapComposer.startReplaceGroup(-1016416423);
            gapComposer.end(false);
        }
        ImageLoader platformImageLoader = PlatformsKt.getPlatformImageLoader(gapComposer, 0);
        gapComposer.end(false);
        return platformImageLoader;
    }
}
