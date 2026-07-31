package androidx.compose.foundation.contextmenu;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda17;
import org.wikipedia.feed.wikigames.OnThisDayGameKt$$ExternalSyntheticLambda13;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ContextMenuScope {
    public final SnapshotStateList composables = new SnapshotStateList();

    public static void item$default(ContextMenuScope contextMenuScope, Function2 function2, ComposableLambdaImpl composableLambdaImpl, Function0 function0, int i) {
        if ((i & 8) != 0) {
            composableLambdaImpl = null;
        }
        contextMenuScope.composables.add(new ComposableLambdaImpl(new OnThisDayGameKt$$ExternalSyntheticLambda13(function2, contextMenuScope, composableLambdaImpl, function0), true, -1789283891));
    }

    public final void Content$foundation(ContextMenuColors contextMenuColors, GapComposer gapComposer, int i) {
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
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda17(this, contextMenuColors, i, i3);
        }
    }
}
