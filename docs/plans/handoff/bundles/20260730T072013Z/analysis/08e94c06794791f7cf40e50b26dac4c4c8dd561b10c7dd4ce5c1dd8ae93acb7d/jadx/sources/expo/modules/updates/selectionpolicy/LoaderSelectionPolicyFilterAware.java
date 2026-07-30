package expo.modules.updates.selectionpolicy;

import expo.modules.updates.db.entity.UpdateEntity;
import expo.modules.updates.loader.UpdateDirective;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* compiled from: LoaderSelectionPolicyFilterAware.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J,\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016¨\u0006\u000f"}, d2 = {"Lexpo/modules/updates/selectionpolicy/LoaderSelectionPolicyFilterAware;", "Lexpo/modules/updates/selectionpolicy/LoaderSelectionPolicy;", "<init>", "()V", "shouldLoadNewUpdate", "", "newUpdate", "Lexpo/modules/updates/db/entity/UpdateEntity;", "launchedUpdate", "filters", "Lorg/json/JSONObject;", "shouldLoadRollBackToEmbeddedDirective", "directive", "Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;", "embeddedUpdate", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class LoaderSelectionPolicyFilterAware implements LoaderSelectionPolicy {
    @Override // expo.modules.updates.selectionpolicy.LoaderSelectionPolicy
    public boolean shouldLoadNewUpdate(UpdateEntity newUpdate, UpdateEntity launchedUpdate, JSONObject filters) {
        if (newUpdate == null || !SelectionPolicies.INSTANCE.matchesFilters(newUpdate, filters)) {
            return false;
        }
        if (launchedUpdate != null && SelectionPolicies.INSTANCE.matchesFilters(launchedUpdate, filters)) {
            return newUpdate.getCommitTime().after(launchedUpdate.getCommitTime());
        }
        return true;
    }

    @Override // expo.modules.updates.selectionpolicy.LoaderSelectionPolicy
    public boolean shouldLoadRollBackToEmbeddedDirective(UpdateDirective.RollBackToEmbeddedUpdateDirective directive, UpdateEntity embeddedUpdate, UpdateEntity launchedUpdate, JSONObject filters) {
        Intrinsics.checkNotNullParameter(directive, "directive");
        Intrinsics.checkNotNullParameter(embeddedUpdate, "embeddedUpdate");
        if (!SelectionPolicies.INSTANCE.matchesFilters(embeddedUpdate, filters)) {
            return false;
        }
        if (launchedUpdate != null && SelectionPolicies.INSTANCE.matchesFilters(launchedUpdate, filters)) {
            return directive.getCommitTime().after(launchedUpdate.getCommitTime());
        }
        return true;
    }
}
