package com.skydoves.landscapist;

import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import java.io.File;
import kotlinx.datetime.UtcOffsetJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class LocalImageSourceFileKt {
    public static final StaticProvidableCompositionLocal LocalImageSourceFile = new StaticProvidableCompositionLocal(new UtcOffsetJvmKt$$ExternalSyntheticLambda0(2));

    public static final void ProvideImageSourceFile(File file, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1052019344);
        int i2 = (gapComposer.changedInstance(file) ? 4 : 2) | i;
        int i3 = 10;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Updater.CompositionLocalProvider(LocalImageSourceFile.defaultProvidedValue$runtime(file), Expect_jvmKt.rememberComposableLambda(783308976, new AlertDialogKt$$ExternalSyntheticLambda4(composableLambdaImpl, i3), gapComposer), gapComposer, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda7(i, 10, file, composableLambdaImpl);
        }
    }
}
