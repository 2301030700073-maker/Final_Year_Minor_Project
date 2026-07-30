package androidx.compose.runtime.saveable;

import androidx.compose.runtime.saveable.SaveableStateRegistry;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: SaveableStateRegistry.kt */
/* loaded from: classes.dex */
final class SaveableStateRegistryImpl implements SaveableStateRegistry {
    private final Function1 canBeSaved;
    private final Map restored;
    private final Map valueProviders;

    public SaveableStateRegistryImpl(Map map, Function1 function1) {
        Map mutableMap;
        this.canBeSaved = function1;
        this.restored = (map == null || (mutableMap = MapsKt.toMutableMap(map)) == null) ? new LinkedHashMap() : mutableMap;
        this.valueProviders = new LinkedHashMap();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public boolean canBeSaved(Object obj) {
        return ((Boolean) this.canBeSaved.invoke(obj)).booleanValue();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public Object consumeRestored(String str) {
        List list = (List) this.restored.remove(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        if (list.size() > 1) {
            this.restored.put(str, list.subList(1, list.size()));
        }
        return list.get(0);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public SaveableStateRegistry.Entry registerProvider(final String str, final Function0 function0) {
        boolean fastIsBlank;
        fastIsBlank = SaveableStateRegistryKt.fastIsBlank(str);
        if (fastIsBlank) {
            throw new IllegalArgumentException("Registered key is empty or blank");
        }
        Map map = this.valueProviders;
        Object obj = map.get(str);
        if (obj == null) {
            obj = new ArrayList();
            map.put(str, obj);
        }
        ((List) obj).add(function0);
        return new SaveableStateRegistry.Entry() { // from class: androidx.compose.runtime.saveable.SaveableStateRegistryImpl$registerProvider$3
            @Override // androidx.compose.runtime.saveable.SaveableStateRegistry.Entry
            public void unregister() {
                Map map2;
                Map map3;
                map2 = SaveableStateRegistryImpl.this.valueProviders;
                List list = (List) map2.remove(str);
                if (list != null) {
                    list.remove(function0);
                }
                if (list == null || list.isEmpty()) {
                    return;
                }
                map3 = SaveableStateRegistryImpl.this.valueProviders;
                map3.put(str, list);
            }
        };
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public Map performSave() {
        Map mutableMap = MapsKt.toMutableMap(this.restored);
        for (Map.Entry entry : this.valueProviders.entrySet()) {
            String str = (String) entry.getKey();
            List list = (List) entry.getValue();
            if (list.size() == 1) {
                Object invoke = ((Function0) list.get(0)).invoke();
                if (invoke == null) {
                    continue;
                } else {
                    if (!canBeSaved(invoke)) {
                        throw new IllegalStateException(RememberSaveableKt.generateCannotBeSavedErrorMessage(invoke).toString());
                    }
                    mutableMap.put(str, CollectionsKt.arrayListOf(invoke));
                }
            } else {
                int size = list.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i = 0; i < size; i++) {
                    Object invoke2 = ((Function0) list.get(i)).invoke();
                    if (invoke2 != null && !canBeSaved(invoke2)) {
                        throw new IllegalStateException(RememberSaveableKt.generateCannotBeSavedErrorMessage(invoke2).toString());
                    }
                    arrayList.add(invoke2);
                }
                mutableMap.put(str, arrayList);
            }
        }
        return mutableMap;
    }
}
