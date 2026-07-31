package androidx.fragment.app;

import android.os.Bundle;
import androidx.compose.runtime.saveable.SaveableStateRegistryImpl;
import androidx.navigation.NavHostController;
import androidx.navigation.fragment.NavHostFragment;
import androidx.savedstate.SavedStateRegistry$SavedStateProvider;
import com.fsck.k9.mailstore.LocalStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class FragmentManager$$ExternalSyntheticLambda6 implements SavedStateRegistry$SavedStateProvider {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ FragmentManager$$ExternalSyntheticLambda6(int i, Object obj) {
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
                return ((FragmentManager) obj).saveAllStateInternal();
            case 1:
                Map performSave = ((SaveableStateRegistryImpl) obj).performSave();
                Bundle bundle = new Bundle();
                for (Map.Entry entry : performSave.entrySet()) {
                    String str = (String) entry.getKey();
                    List list = (List) entry.getValue();
                    bundle.putParcelableArrayList(str, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
                }
                return bundle;
            case 2:
                LocalStore.AnonymousClass7 anonymousClass7 = (LocalStore.AnonymousClass7) obj;
                for (Map.Entry entry2 : MapsKt__MapsKt.toMap((LinkedHashMap) anonymousClass7.val$messages).entrySet()) {
                    anonymousClass7.set(((StateFlowImpl) ((MutableStateFlow) entry2.getValue())).getValue(), (String) entry2.getKey());
                }
                for (Map.Entry entry3 : MapsKt__MapsKt.toMap((LinkedHashMap) anonymousClass7.val$placeHolders).entrySet()) {
                    anonymousClass7.set(((SavedStateRegistry$SavedStateProvider) entry3.getValue()).saveState(), (String) entry3.getKey());
                }
                LinkedHashMap linkedHashMap = (LinkedHashMap) anonymousClass7.val$queryString;
                if (linkedHashMap.isEmpty()) {
                    pairArr = new Pair[0];
                } else {
                    ArrayList arrayList = new ArrayList(linkedHashMap.size());
                    for (Map.Entry entry4 : linkedHashMap.entrySet()) {
                        arrayList.add(new Pair((String) entry4.getKey(), entry4.getValue()));
                    }
                    pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
                }
                return Util.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
            case 3:
                Bundle saveState = ((NavHostController) obj).saveState();
                if (saveState != null) {
                    return saveState;
                }
                Bundle bundle2 = Bundle.EMPTY;
                bundle2.getClass();
                return bundle2;
            default:
                int i2 = ((NavHostFragment) obj).graphId;
                if (i2 != 0) {
                    return Util.bundleOf(new Pair("android-support-nav:fragment:graphId", Integer.valueOf(i2)));
                }
                Bundle bundle3 = Bundle.EMPTY;
                bundle3.getClass();
                return bundle3;
        }
    }
}
