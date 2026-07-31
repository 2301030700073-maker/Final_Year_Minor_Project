package org.jetbrains.compose.resources;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.test.platform.app.InstrumentationRegistry;
import net.newpipe.app.navigation.NavModuleKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AndroidContextProviderKt {
    public static final void PreviewContextConfigurationEffect(Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1587247798);
        if (!gapComposer.shouldExecute(i & 1, i != 0)) {
            gapComposer.skipToGroupEnd();
        } else if (((Boolean) gapComposer.consume(InspectionModeKt.LocalInspectionMode)).booleanValue()) {
            gapComposer.startReplaceGroup(-1890697985);
            Context context = AndroidContextProvider.ANDROID_CONTEXT;
            AndroidContextProvider.ANDROID_CONTEXT = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            gapComposer.end(false);
        } else {
            gapComposer.startReplaceGroup(-1890623988);
            gapComposer.end(false);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NavModuleKt$$ExternalSyntheticLambda1(i);
        }
    }

    public static final Context getAndroidInstrumentedContext() {
        return InstrumentationRegistry.getInstrumentation().getContext();
    }
}
