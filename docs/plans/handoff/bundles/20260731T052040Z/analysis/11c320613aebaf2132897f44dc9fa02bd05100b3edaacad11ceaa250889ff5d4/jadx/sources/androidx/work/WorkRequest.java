package androidx.work;

import androidx.work.impl.model.WorkSpec;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.UUID;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class WorkRequest {
    public final UUID id;
    public final Set tags;
    public final WorkSpec workSpec;

    public WorkRequest(UUID uuid, WorkSpec workSpec, LinkedHashSet linkedHashSet) {
        uuid.getClass();
        workSpec.getClass();
        linkedHashSet.getClass();
        this.id = uuid;
        this.workSpec = workSpec;
        this.tags = linkedHashSet;
    }
}
