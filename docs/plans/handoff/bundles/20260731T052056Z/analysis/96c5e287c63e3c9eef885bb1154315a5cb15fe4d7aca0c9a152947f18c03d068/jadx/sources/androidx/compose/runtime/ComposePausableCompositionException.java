package androidx.compose.runtime;

import androidx.collection.MutableIntList;
import androidx.collection.MutableObjectList;
import androidx.room.Room;
import java.util.ArrayList;
import java.util.List;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.sequences.SequenceBuilderIterator;
import kotlin.text.StringsKt__IndentKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        StringBuilder sb = new StringBuilder("\n            |Failed to execute op number ");
        sb.append(this.lastOperation);
        sb.append(":\n            |");
        SequenceBuilderIterator it = UnsignedKt.iterator(new ComposePausableCompositionException$operationsSequence$1(this, null));
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
                list = Room.listOf(next);
            }
        } else {
            list = EmptyList.INSTANCE;
        }
        sb.append(CollectionsKt.joinToString$default(CollectionsKt.takeLast(list, 50), "\n", null, null, null, 62));
        sb.append("\n            ");
        return StringsKt__IndentKt.trimMargin$default(sb.toString());
    }
}
