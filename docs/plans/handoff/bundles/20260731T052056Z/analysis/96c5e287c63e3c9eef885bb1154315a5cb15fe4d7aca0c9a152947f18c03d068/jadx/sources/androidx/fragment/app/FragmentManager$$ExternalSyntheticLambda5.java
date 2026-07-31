package androidx.fragment.app;

import android.os.Bundle;
import androidx.compose.runtime.saveable.SaveableStateRegistryImpl;
import androidx.savedstate.SavedStateRegistry$SavedStateProvider;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class FragmentManager$$ExternalSyntheticLambda5 implements SavedStateRegistry$SavedStateProvider {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ FragmentManager$$ExternalSyntheticLambda5(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // androidx.savedstate.SavedStateRegistry$SavedStateProvider
    public final Bundle saveState() {
        Pair[] pairArr;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                return ((FragmentManagerImpl) obj).saveAllStateInternal();
            case 1:
                Map performSave = ((SaveableStateRegistryImpl) obj).performSave();
                Bundle bundle = new Bundle();
                for (Map.Entry entry : performSave.entrySet()) {
                    String str = (String) entry.getKey();
                    List list = (List) entry.getValue();
                    bundle.putParcelableArrayList(str, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
                }
                return bundle;
            default:
                Request.Builder builder = (Request.Builder) obj;
                for (Map.Entry entry2 : MapsKt__MapsKt.toMap((LinkedHashMap) builder.body).entrySet()) {
                    builder.set((String) entry2.getKey(), ((StateFlowImpl) entry2.getValue()).getValue());
                }
                for (Map.Entry entry3 : MapsKt__MapsKt.toMap((LinkedHashMap) builder.method).entrySet()) {
                    builder.set((String) entry3.getKey(), ((SavedStateRegistry$SavedStateProvider) entry3.getValue()).saveState());
                }
                LinkedHashMap linkedHashMap = (LinkedHashMap) builder.url;
                if (linkedHashMap.isEmpty()) {
                    pairArr = new Pair[0];
                } else {
                    ArrayList arrayList = new ArrayList(linkedHashMap.size());
                    for (Map.Entry entry4 : linkedHashMap.entrySet()) {
                        arrayList.add(new Pair((String) entry4.getKey(), entry4.getValue()));
                    }
                    pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
                }
                return UStringsKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        }
    }
}
