package kotlin.text;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapKeysIterator;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeKeysIterator;
import androidx.core.view.TreeIterator;
import androidx.room.Room;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import java.util.Iterator;
import java.util.regex.Matcher;
import kotlin.collections.AbstractCollection;
import kotlin.io.LinesSequence;
import kotlin.ranges.IntRange;
import kotlin.sequences.TransformingSequence;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        IntRange until = RegexKt.until(matcher.start(i), matcher.end(i));
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
                return ((PersistentHashMap) obj).size;
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
        int i = 2;
        switch (this.$r8$classId) {
            case 0:
                return new TreeIterator(new TransformingSequence(new LinesSequence(i, Room.getIndices(this)), new DiskLruCache$$ExternalSyntheticLambda0(23, this)));
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
