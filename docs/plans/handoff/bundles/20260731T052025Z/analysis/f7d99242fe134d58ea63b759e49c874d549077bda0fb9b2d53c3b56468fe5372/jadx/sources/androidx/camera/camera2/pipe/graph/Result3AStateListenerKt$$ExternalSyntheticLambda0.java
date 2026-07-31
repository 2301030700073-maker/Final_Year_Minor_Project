package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CaptureResult;
import androidx.camera.camera2.pipe.compat.AndroidFrameMetadata;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.collections.immutable.PersistentMap;
import kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMap;
import kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMapBuilder;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListMetadata;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Result3AStateListenerKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Map f$0;

    public /* synthetic */ Result3AStateListenerKt$$ExternalSyntheticLambda0(int i, Map map) {
        this.$r8$classId = i;
        this.f$0 = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v9, types: [kotlinx.collections.immutable.PersistentMap] */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean z;
        PersistentMap persistentMap;
        int i = this.$r8$classId;
        Map map = this.f$0;
        switch (i) {
            case 0:
                AndroidFrameMetadata androidFrameMetadata = (AndroidFrameMetadata) obj;
                androidFrameMetadata.getClass();
                Iterator it = map.entrySet().iterator();
                while (true) {
                    if (it.hasNext()) {
                        Map.Entry entry = (Map.Entry) it.next();
                        CaptureResult.Key key = (CaptureResult.Key) entry.getKey();
                        List list = (List) entry.getValue();
                        key.getClass();
                        if (!CollectionsKt.contains(list, androidFrameMetadata.captureResult.get(key))) {
                            z = false;
                        }
                    } else {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            case 1:
                MessageListMetadata messageListMetadata = (MessageListMetadata) obj;
                messageListMetadata.getClass();
                return MessageListMetadata.copy$default(messageListMetadata, null, Okio.toImmutableMap(map), null, null, null, null, false, 2045);
            default:
                MessageListMetadata messageListMetadata2 = (MessageListMetadata) obj;
                messageListMetadata2.getClass();
                PersistentOrderedMap persistentOrderedMap = map instanceof PersistentOrderedMap ? (PersistentOrderedMap) map : null;
                if (persistentOrderedMap == null) {
                    PersistentOrderedMapBuilder persistentOrderedMapBuilder = map instanceof PersistentOrderedMapBuilder ? (PersistentOrderedMapBuilder) map : null;
                    PersistentMap build = persistentOrderedMapBuilder != null ? persistentOrderedMapBuilder.build() : null;
                    if (build != null) {
                        persistentMap = build;
                        return MessageListMetadata.copy$default(messageListMetadata2, null, null, persistentMap, null, null, null, false, 2043);
                    }
                    persistentOrderedMap = PersistentOrderedMap.EMPTY;
                    persistentOrderedMap.getClass();
                    if (!map.isEmpty()) {
                        PersistentOrderedMapBuilder persistentOrderedMapBuilder2 = new PersistentOrderedMapBuilder(persistentOrderedMap);
                        persistentOrderedMapBuilder2.putAll(map);
                        persistentOrderedMap = persistentOrderedMapBuilder2.build();
                    }
                }
                persistentMap = persistentOrderedMap;
                return MessageListMetadata.copy$default(messageListMetadata2, null, null, persistentMap, null, null, null, false, 2043);
        }
    }
}
