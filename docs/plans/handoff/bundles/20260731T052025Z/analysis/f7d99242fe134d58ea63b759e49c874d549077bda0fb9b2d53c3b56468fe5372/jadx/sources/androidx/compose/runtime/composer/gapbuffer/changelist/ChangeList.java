package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.ui.unit.IntOffsetKt;
import net.openid.appauth.AuthorizationRequest;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ChangeList extends IntOffsetKt {
    public final Operations operations = new Operations();

    public final void executeAndFlushAllPendingChanges(Applier applier, SlotWriter slotWriter, AuthorizationRequest.Builder builder, OperationErrorContext operationErrorContext) {
        this.operations.executeAndFlushAllPendingOperations(applier, slotWriter, builder, operationErrorContext);
    }
}
