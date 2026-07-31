package androidx.compose.runtime;

import androidx.compose.foundation.layout.Arrangement$$ExternalSyntheticLambda0;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.Links;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NeverEqualPolicy implements CoroutineContext.Key {
    public final /* synthetic */ int $r8$classId;
    public static final Arrangement$$ExternalSyntheticLambda0 Empty = new Arrangement$$ExternalSyntheticLambda0();
    public static final /* synthetic */ NeverEqualPolicy $$INSTANCE = new NeverEqualPolicy(2);
    public static final NeverEqualPolicy INSTANCE = new NeverEqualPolicy(0);
    public static final NeverEqualPolicy INSTANCE$1 = new NeverEqualPolicy(3);
    public static final NeverEqualPolicy INSTANCE$2 = new NeverEqualPolicy(4);
    public static final NeverEqualPolicy INSTANCE$3 = new NeverEqualPolicy(5);

    public /* synthetic */ NeverEqualPolicy(int i) {
        this.$r8$classId = i;
    }

    public static final void access$removeRunning(NeverEqualPolicy neverEqualPolicy) {
        StateFlowImpl stateFlowImpl;
        PersistentOrderedSet persistentOrderedSet;
        PersistentOrderedSet persistentOrderedSet2;
        StateFlowImpl stateFlowImpl2 = Recomposer._runningRecomposers;
        do {
            stateFlowImpl = Recomposer._runningRecomposers;
            persistentOrderedSet = (PersistentOrderedSet) stateFlowImpl.getValue();
            PersistentHashMap persistentHashMap = persistentOrderedSet.hashMap;
            Links links = (Links) persistentHashMap.get(neverEqualPolicy);
            if (links == null) {
                persistentOrderedSet2 = persistentOrderedSet;
            } else {
                Object obj = links.previous;
                Object obj2 = links.next;
                TrieNode trieNode = persistentHashMap.node;
                TrieNode remove = trieNode.remove(neverEqualPolicy != null ? neverEqualPolicy.hashCode() : 0, 0, neverEqualPolicy);
                if (trieNode != remove) {
                    persistentHashMap = remove == null ? PersistentHashMap.EMPTY : new PersistentHashMap(remove, persistentHashMap.size - 1);
                }
                EndOfChain endOfChain = EndOfChain.INSTANCE;
                if (obj != endOfChain) {
                    Object obj3 = persistentHashMap.get(obj);
                    obj3.getClass();
                    persistentHashMap = persistentHashMap.put(obj, new Links(((Links) obj3).previous, obj2));
                }
                if (obj2 != endOfChain) {
                    Object obj4 = persistentHashMap.get(obj2);
                    obj4.getClass();
                    persistentHashMap = persistentHashMap.put(obj2, new Links(obj, ((Links) obj4).next));
                }
                Object obj5 = obj != endOfChain ? persistentOrderedSet.firstElement : obj2;
                if (obj2 != endOfChain) {
                    obj = persistentOrderedSet.lastElement;
                }
                persistentOrderedSet2 = new PersistentOrderedSet(obj5, obj, persistentHashMap);
            }
            if (persistentOrderedSet == persistentOrderedSet2) {
                return;
            }
        } while (!stateFlowImpl.updateState(persistentOrderedSet, persistentOrderedSet2));
    }

    public boolean equivalent(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                return false;
            case 3:
                return obj == obj2;
            default:
                return Intrinsics.areEqual(obj, obj2);
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return "NeverEqualPolicy";
            case 3:
                return "ReferentialEqualityPolicy";
            case 5:
                return "StructuralEqualityPolicy";
            case 7:
                return "Empty";
            default:
                return super.toString();
        }
    }
}
