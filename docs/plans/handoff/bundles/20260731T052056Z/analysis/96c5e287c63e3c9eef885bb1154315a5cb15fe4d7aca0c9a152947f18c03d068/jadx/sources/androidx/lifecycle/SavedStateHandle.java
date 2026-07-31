package androidx.lifecycle;

import java.util.LinkedHashMap;
import kotlin.collections.EmptyMap;
import kotlin.collections.builders.MapBuilder;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SavedStateHandle {
    public final Request.Builder impl;
    public final LinkedHashMap liveDatas;

    public SavedStateHandle() {
        this.liveDatas = new LinkedHashMap();
        this.impl = new Request.Builder(EmptyMap.INSTANCE);
    }

    public final Object get(String str) {
        Object value;
        Request.Builder builder = this.impl;
        LinkedHashMap linkedHashMap = (LinkedHashMap) builder.url;
        LinkedHashMap linkedHashMap2 = (LinkedHashMap) builder.body;
        try {
            StateFlowImpl stateFlowImpl = (StateFlowImpl) linkedHashMap2.get(str);
            if (stateFlowImpl != null && (value = stateFlowImpl.getValue()) != null) {
                return value;
            }
            return linkedHashMap.get(str);
        } catch (ClassCastException unused) {
            linkedHashMap.remove(str);
            ((LinkedHashMap) builder.headers).remove(str);
            linkedHashMap2.remove(str);
            return null;
        }
    }

    public SavedStateHandle(MapBuilder mapBuilder) {
        this.liveDatas = new LinkedHashMap();
        this.impl = new Request.Builder(mapBuilder);
    }
}
