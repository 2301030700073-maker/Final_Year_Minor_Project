package io.ktor.events;

import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import io.ktor.util.collections.CopyOnWriteHashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Events.kt */
/* loaded from: classes.dex */
public final class Events {
    private final CopyOnWriteHashMap handlers = new CopyOnWriteHashMap();

    public final void raise(EventDefinition definition, Object obj) {
        Intrinsics.checkNotNullParameter(definition, "definition");
        ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(this.handlers.get(definition));
    }
}
