package androidx.work;

import androidx.work.WorkRequest;
import androidx.work.impl.model.WorkSpec;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.Set;
import java.util.UUID;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PeriodicWorkRequest extends WorkRequest {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder extends WorkRequest.Builder {
        @Override // androidx.work.WorkRequest.Builder
        public final WorkRequest buildInternal$work_runtime_release() {
            if (this.backoffCriteriaSet && ((WorkSpec) this.workSpec).constraints.requiresDeviceIdle) {
                UriKt$$ExternalSyntheticBUOutline0.m("Cannot set backoff criteria on an idle mode job");
                return null;
            }
            WorkSpec workSpec = (WorkSpec) this.workSpec;
            if (!workSpec.expedited) {
                return new PeriodicWorkRequest((UUID) this.id, workSpec, (Set) this.tags);
            }
            UriKt$$ExternalSyntheticBUOutline0.m("PeriodicWorkRequests cannot be expedited");
            return null;
        }

        @Override // androidx.work.WorkRequest.Builder
        public final WorkRequest.Builder getThisObject$work_runtime_release() {
            return this;
        }
    }
}
