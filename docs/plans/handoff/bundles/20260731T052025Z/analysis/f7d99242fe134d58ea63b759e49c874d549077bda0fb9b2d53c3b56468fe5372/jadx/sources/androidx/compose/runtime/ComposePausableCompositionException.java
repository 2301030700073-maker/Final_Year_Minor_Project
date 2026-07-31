package androidx.compose.runtime;

import androidx.collection.MutableIntList;
import androidx.collection.MutableObjectList;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.sequences.SequenceBuilderIterator;
import kotlin.text.StringsKt__IndentKt;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComposePausableCompositionException extends RuntimeException {
    public final MutableObjectList instances;
    public final int lastOperation;
    public final MutableIntList operations;
    public final MutableObjectList reused;

    public ComposePausableCompositionException(MutableObjectList mutableObjectList, MutableObjectList mutableObjectList2, MutableIntList mutableIntList, int i, Exception exc) {
        super(exc);
        this.instances = mutableObjectList;
        this.reused = mutableObjectList2;
        this.operations = mutableIntList;
        this.lastOperation = i;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        List list;
        Collection collection;
        StringBuilder sb = new StringBuilder("\n            |Failed to execute op number ");
        sb.append(this.lastOperation);
        sb.append(":\n            |");
        SequenceBuilderIterator it = Base64.iterator(new ComposePausableCompositionException$operationsSequence$1(this, null));
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(next);
                while (it.hasNext()) {
                    arrayList.add(it.next());
                }
                list = arrayList;
            } else {
                list = IntOffsetKt.listOf(next);
            }
        } else {
            list = EmptyList.INSTANCE;
        }
        int size = list.size();
        if (50 >= size) {
            collection = CollectionsKt.toList(list);
        } else {
            ArrayList arrayList2 = new ArrayList(50);
            if (list instanceof RandomAccess) {
                for (int i = size - 50; i < size; i++) {
                    arrayList2.add(list.get(i));
                }
            } else {
                ListIterator listIterator = list.listIterator(size - 50);
                while (listIterator.hasNext()) {
                    arrayList2.add(listIterator.next());
                }
            }
            collection = arrayList2;
        }
        sb.append(CollectionsKt.joinToString$default(collection, "\n", null, null, null, 62));
        sb.append("\n            ");
        return StringsKt__IndentKt.trimMargin$default(sb.toString());
    }
}
