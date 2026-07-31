package androidx.compose.runtime;

import androidx.collection.IntList;
import androidx.collection.MutableObjectList;
import androidx.collection.ObjectList;
import androidx.sqlite.SQLite;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.sequences.SequenceBuilderIterator;
import kotlin.text.StringsKt__IndentKt;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ComposePausableCompositionException extends RuntimeException {
    private final ObjectList instances;
    private final int lastOperation;
    private final IntList operations;
    private final ObjectList reused;

    public ComposePausableCompositionException(ObjectList objectList, MutableObjectList mutableObjectList, IntList intList, int i, Exception exc) {
        super(exc);
        this.instances = objectList;
        this.reused = mutableObjectList;
        this.operations = intList;
        this.lastOperation = i;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        List list;
        StringBuilder sb = new StringBuilder("\n            |Failed to execute op number ");
        sb.append(this.lastOperation);
        sb.append(":\n            |");
        SequenceBuilderIterator it = SQLite.iterator(new ComposePausableCompositionException$operationsSequence$1(this, null));
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
                list = Jsoup.listOf(next);
            }
        } else {
            list = EmptyList.INSTANCE;
        }
        sb.append(CollectionsKt.joinToString$default(CollectionsKt.takeLast(50, list), "\n", null, null, null, 62));
        sb.append("\n            ");
        return StringsKt__IndentKt.trimMargin$default(sb.toString());
    }
}
