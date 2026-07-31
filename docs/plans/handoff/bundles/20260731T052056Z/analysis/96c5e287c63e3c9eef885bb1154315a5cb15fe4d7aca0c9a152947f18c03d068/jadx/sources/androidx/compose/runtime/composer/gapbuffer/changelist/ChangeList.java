package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.work.Operation$State;
import org.wikipedia.databinding.ActivityLoginBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ChangeList extends Operation$State {
    public final Operations operations;

    public ChangeList() {
        super(5);
        this.operations = new Operations();
    }

    public final void executeAndFlushAllPendingChanges(Applier applier, SlotWriter slotWriter, ActivityLoginBinding activityLoginBinding, OperationErrorContext operationErrorContext) {
        this.operations.executeAndFlushAllPendingOperations(applier, slotWriter, activityLoginBinding, operationErrorContext);
    }
}
