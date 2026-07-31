package com.skydoves.landscapist.coil3;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.saveable.ListSaverKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda0;
import coil3.ImageLoader;
import com.skydoves.landscapist.DataSource;
import com.skydoves.landscapist.LocalImageSourceFileKt;
import java.io.File;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ProvideCoilSourceFile_androidKt {
    public static final void ProvideCoilSourceFile(ImageLoader imageLoader, Object obj, DataSource dataSource, Function2 function2, Composer composer, int i) {
        int i2;
        imageLoader.getClass();
        function2.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2033905298);
        int i3 = 2;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(imageLoader) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(obj) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(dataSource == null ? -1 : dataSource.ordinal()) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(function2) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            LocalImageSourceFileKt.ProvideImageSourceFile((File) Coil3ImageSourceFileKt.rememberImageSourceFile((Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext), imageLoader, obj, dataSource, gapComposer, (i2 << 3) & 8176).getValue(), Expect_jvmKt.rememberComposableLambda(-1836597869, new ListSaverKt$$ExternalSyntheticLambda0(i3, function2), gapComposer), gapComposer, 48);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LifecycleEffectKt$$ExternalSyntheticLambda0(imageLoader, obj, dataSource, function2, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ProvideCoilSourceFile$lambda$0(Function2 function2, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        if (gapComposer.shouldExecute(i & 1, (i & 3) != 2)) {
            function2.invoke(gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ProvideCoilSourceFile$lambda$1(ImageLoader imageLoader, Object obj, DataSource dataSource, Function2 function2, int i, Composer composer, int i2) {
        ProvideCoilSourceFile(imageLoader, obj, dataSource, function2, composer, Updater.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }
}
