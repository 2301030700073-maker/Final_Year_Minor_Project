package androidx.work;

import androidx.work.impl.model.WorkSpec;
import java.util.LinkedHashSet;
import java.util.UUID;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OneTimeWorkRequest {
    public final UUID id;
    public final LinkedHashSet tags;
    public final WorkSpec workSpec;

    public OneTimeWorkRequest(UUID uuid, WorkSpec workSpec, LinkedHashSet linkedHashSet) {
        this.id = uuid;
        this.workSpec = workSpec;
        this.tags = linkedHashSet;
    }
}
