package com.skydoves.landscapist.coil3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeContentKt$$ExternalSyntheticLambda9;
import com.skydoves.landscapist.components.ImagePluginComponent;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComposableSingletons$CoilImageKt {
    public static final ComposableSingletons$CoilImageKt INSTANCE = new ComposableSingletons$CoilImageKt();
    private static Function3 lambda$1026879375 = new ComposableLambdaImpl(1026879375, new WelcomeContentKt$$ExternalSyntheticLambda9(23), false);
    private static Function3 lambda$988760923 = new ComposableLambdaImpl(988760923, new WelcomeContentKt$$ExternalSyntheticLambda9(24), false);

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit lambda_1026879375$lambda$0(ImagePluginComponent imagePluginComponent, Composer composer, int i) {
        imagePluginComponent.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        if (!gapComposer.shouldExecute(i & 1, (i & 17) != 16)) {
            gapComposer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit lambda_988760923$lambda$0(ImagePluginComponent imagePluginComponent, Composer composer, int i) {
        imagePluginComponent.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        if (!gapComposer.shouldExecute(i & 1, (i & 17) != 16)) {
            gapComposer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    public final Function3 getLambda$1026879375$coil3_release() {
        return lambda$1026879375;
    }

    public final Function3 getLambda$988760923$coil3_release() {
        return lambda$988760923;
    }
}
