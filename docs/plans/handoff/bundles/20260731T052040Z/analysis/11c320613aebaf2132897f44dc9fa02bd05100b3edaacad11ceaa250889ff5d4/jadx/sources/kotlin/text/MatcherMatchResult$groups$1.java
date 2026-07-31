package kotlin.text;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapKeysIterator;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeKeysIterator;
import androidx.core.view.TreeIterator;
import java.util.Iterator;
import java.util.regex.Matcher;
import kotlin.collections.AbstractCollection;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.sequences.MergingSequence;
import kotlinx.coroutines.rx3.RxAwaitKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MatcherMatchResult$groups$1 extends AbstractCollection {
    public final /* synthetic */ int $r8$classId;
    public final Object this$0;

    public /* synthetic */ MatcherMatchResult$groups$1(Object obj, int i) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                if (obj == null ? true : obj instanceof MatchGroup) {
                    return super.contains((MatchGroup) obj);
                }
                return false;
            default:
                return ((PersistentHashMap) this.this$0).containsValue(obj);
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
            default:
                PersistentHashMap persistentHashMap = (PersistentHashMap) obj;
                persistentHashMap.getClass();
                return persistentHashMap.size;
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
        switch (this.$r8$classId) {
            case 0:
                int i = 2;
                return new TreeIterator(new MergingSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(new IntRange(0, size() - 1, 1), 3), new RxAwaitKt$$ExternalSyntheticLambda0(this, i), i), (byte) 0);
            default:
                TrieNode trieNode = ((PersistentHashMap) this.this$0).node;
                TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
                for (int i2 = 0; i2 < 8; i2++) {
                    trieNodeBaseIteratorArr[i2] = new TrieNodeKeysIterator(2);
                }
                return new PersistentHashMapKeysIterator(trieNode, trieNodeBaseIteratorArr);
        }
    }
}
