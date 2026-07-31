package androidx.compose.material3;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class PrecisionPointer_androidKt {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        new StaticProvidableCompositionLocal(new ImmLeaksCleaner$$ExternalSyntheticLambda0(17));
    }

    public static final void EnsurePrecisionPointerListenersRegistered(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(442516910);
        if (gapComposer.shouldExecute(i & 1, (i & 3) != 2)) {
            gapComposer.startReplaceGroup(1766838549);
            gapComposer.end(false);
            gapComposer.startReplaceGroup(1767392772);
            composableLambdaImpl.invoke((Object) gapComposer, (Object) 6);
            gapComposer.end(false);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ScaffoldKt$$ExternalSyntheticLambda0(composableLambdaImpl, i, 3);
        }
    }
}
