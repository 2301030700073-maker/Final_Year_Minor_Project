package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import kotlin.ranges.RangesKt;
import org.schabi.newpipe.databinding.ActivityErrorBinding;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ChangeList extends RangesKt {
    public final Operations operations = new Operations();

    public final void executeAndFlushAllPendingChanges(Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
        this.operations.executeAndFlushAllPendingOperations(applier, slotWriter, activityErrorBinding, operationErrorContext);
    }
}
