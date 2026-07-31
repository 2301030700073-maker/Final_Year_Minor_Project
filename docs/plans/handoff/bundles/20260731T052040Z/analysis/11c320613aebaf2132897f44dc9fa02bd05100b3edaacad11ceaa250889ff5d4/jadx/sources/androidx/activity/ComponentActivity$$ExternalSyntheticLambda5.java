package androidx.activity;

import android.os.Bundle;
import androidx.compose.runtime.saveable.SaveableStateRegistryImpl;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateRegistry;
import coil3.ComponentRegistry;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ComponentActivity$$ExternalSyntheticLambda5 implements SavedStateRegistry.SavedStateProvider {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ComponentActivity$$ExternalSyntheticLambda5(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public final Bundle saveState() {
        Pair[] pairArr;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                Bundle bundle = new Bundle();
                ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1 = ((ComponentActivity) obj).activityResultRegistry;
                componentActivity$activityResultRegistry$1.getClass();
                LinkedHashMap linkedHashMap = componentActivity$activityResultRegistry$1.keyToRc;
                bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(linkedHashMap.values()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(linkedHashMap.keySet()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(componentActivity$activityResultRegistry$1.launchedKeys));
                bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", new Bundle(componentActivity$activityResultRegistry$1.pendingResults));
                return bundle;
            case 1:
                Map performSave = ((SaveableStateRegistryImpl) obj).performSave();
                Bundle bundle2 = new Bundle();
                for (Map.Entry entry : performSave.entrySet()) {
                    String str = (String) entry.getKey();
                    List list = (List) entry.getValue();
                    bundle2.putParcelableArrayList(str, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
                }
                return bundle2;
            default:
                ComponentRegistry.Builder builder = (ComponentRegistry.Builder) obj;
                for (Map.Entry entry2 : MapsKt__MapsKt.toMap((LinkedHashMap) builder.lazyFetcherFactories).entrySet()) {
                    builder.set(((StateFlowImpl) ((MutableStateFlow) entry2.getValue())).getValue(), (String) entry2.getKey());
                }
                for (Map.Entry entry3 : MapsKt__MapsKt.toMap((LinkedHashMap) builder.mappers).entrySet()) {
                    builder.set(((SavedStateRegistry.SavedStateProvider) entry3.getValue()).saveState(), (String) entry3.getKey());
                }
                LinkedHashMap linkedHashMap2 = (LinkedHashMap) builder.interceptors;
                if (linkedHashMap2.isEmpty()) {
                    pairArr = new Pair[0];
                } else {
                    ArrayList arrayList = new ArrayList(linkedHashMap2.size());
                    for (Map.Entry entry4 : linkedHashMap2.entrySet()) {
                        arrayList.add(new Pair((String) entry4.getKey(), entry4.getValue()));
                    }
                    pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
                }
                return BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        }
    }
}
