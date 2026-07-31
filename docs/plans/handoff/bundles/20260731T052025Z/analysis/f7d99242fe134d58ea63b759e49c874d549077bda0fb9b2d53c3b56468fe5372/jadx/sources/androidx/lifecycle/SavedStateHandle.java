package androidx.lifecycle;

import com.fsck.k9.mailstore.LocalStore;
import java.util.LinkedHashMap;
import kotlin.collections.EmptyMap;
import kotlin.collections.builders.MapBuilder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SavedStateHandle {
    public final LocalStore.AnonymousClass7 impl;
    public final LinkedHashMap liveDatas;

    public SavedStateHandle() {
        this.liveDatas = new LinkedHashMap();
        this.impl = new LocalStore.AnonymousClass7(EmptyMap.INSTANCE);
    }

    public SavedStateHandle(MapBuilder mapBuilder) {
        this.liveDatas = new LinkedHashMap();
        this.impl = new LocalStore.AnonymousClass7(mapBuilder);
    }
}
