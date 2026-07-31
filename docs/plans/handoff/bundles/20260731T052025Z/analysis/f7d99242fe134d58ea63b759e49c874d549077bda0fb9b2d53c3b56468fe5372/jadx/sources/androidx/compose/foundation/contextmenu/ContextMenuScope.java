package androidx.compose.foundation.contextmenu;

import androidx.compose.foundation.text.TextFieldCursorKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContextMenuScope {
    public final SnapshotStateList composables = new SnapshotStateList();

    public static void item$default(ContextMenuScope contextMenuScope, Function2 function2, ComposableLambdaImpl composableLambdaImpl, Function0 function0, int i) {
        if ((i & 8) != 0) {
            composableLambdaImpl = null;
        }
        contextMenuScope.composables.add(new ComposableLambdaImpl(-1789283891, new TextFieldCursorKt$$ExternalSyntheticLambda0(function2, contextMenuScope, composableLambdaImpl, function0, 1), true));
    }

    public final void Content$foundation(ContextMenuColors contextMenuColors, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-798501095);
        int i2 = (gapComposer.changed(contextMenuColors) ? 4 : 2) | i | (gapComposer.changed(this) ? 32 : 16);
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            SnapshotStateList snapshotStateList = this.composables;
            int size = snapshotStateList.size();
            for (int i4 = 0; i4 < size; i4++) {
                ((Function3) snapshotStateList.get(i4)).invoke(contextMenuColors, gapComposer, Integer.valueOf(i2 & 14));
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GapComposer$$ExternalSyntheticLambda3(i, i3, this, contextMenuColors);
        }
    }
}
