package kotlin.text;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapKeysIterator;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeKeysIterator;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.view.TreeIterator;
import java.util.Iterator;
import java.util.regex.Matcher;
import kotlin.collections.AbstractCollection;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator;
import kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMap;
import kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMapKeysIterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MatcherMatchResult$groups$1 extends AbstractCollection {
    public final /* synthetic */ int $r8$classId;
    public final Object this$0;

    public /* synthetic */ MatcherMatchResult$groups$1(int i, Object obj) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                if (obj == null ? true : obj instanceof MatchGroup) {
                    return super.contains((MatchGroup) obj);
                }
                return false;
            case 1:
                return ((PersistentHashMap) obj2).containsValue(obj);
            case 2:
                return ((kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap) obj2).containsValue(obj);
            default:
                return ((PersistentOrderedMap) obj2).containsValue(obj);
        }
    }

    public MatchGroup get(int i) {
        Matcher matcher = ((MatcherMatchResult) this.this$0).matcher;
        IntRange until = RangesKt.until(matcher.start(i), matcher.end(i));
        if (until.first < 0) {
            return null;
        }
        String group = matcher.group(i);
        group.getClass();
        return new MatchGroup(group, until);
    }

    @Override // kotlin.collections.AbstractCollection
    public final int getSize() {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                return ((MatcherMatchResult) obj).matcher.groupCount() + 1;
            case 1:
                return ((PersistentHashMap) obj).size;
            case 2:
                return ((kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap) obj).size;
            default:
                return ((PersistentOrderedMap) obj).hashMap.size();
        }
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        switch (this.$r8$classId) {
            case 0:
                return false;
            default:
                return super.isEmpty();
        }
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        int i = this.$r8$classId;
        int i2 = 0;
        Object obj = this.this$0;
        int i3 = 2;
        switch (i) {
            case 0:
                return new TreeIterator(new TakeWhileSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(i3, IntOffsetKt.getIndices(this)), new AbstractMap$$ExternalSyntheticLambda0(26, this), 2));
            case 1:
                TrieNode trieNode = ((PersistentHashMap) obj).node;
                TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
                while (i2 < 8) {
                    trieNodeBaseIteratorArr[i2] = new TrieNodeKeysIterator(2);
                    i2++;
                }
                return new PersistentHashMapKeysIterator(trieNode, trieNodeBaseIteratorArr);
            case 2:
                kotlinx.collections.immutable.implementations.immutableMap.TrieNode trieNode2 = ((kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap) obj).node;
                trieNode2.getClass();
                TrieNodeBaseIterator[] trieNodeBaseIteratorArr2 = new TrieNodeBaseIterator[8];
                while (i2 < 8) {
                    trieNodeBaseIteratorArr2[i2] = new kotlinx.collections.immutable.implementations.immutableMap.TrieNodeKeysIterator(2);
                    i2++;
                }
                return new kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapKeysIterator(trieNode2, trieNodeBaseIteratorArr2);
            default:
                return new PersistentOrderedMapKeysIterator((PersistentOrderedMap) obj, 2);
        }
    }
}
