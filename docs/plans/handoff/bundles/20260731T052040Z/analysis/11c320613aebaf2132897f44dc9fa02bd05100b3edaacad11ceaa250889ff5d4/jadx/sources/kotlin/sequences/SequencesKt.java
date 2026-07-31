package kotlin.sequences;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import net.newpipe.app.AppKt;
import org.jsoup.Jsoup;

/* loaded from: classes.dex */
public abstract class SequencesKt extends SequencesKt__SequencesJVMKt {
    public static Sequence asSequence(Iterator it) {
        it.getClass();
        return new ConstrainedOnceSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(it, 5));
    }

    public static String joinToString$default(Sequence sequence, String str) {
        sequence.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        int i = 0;
        for (Object obj : sequence) {
            i++;
            if (i > 1) {
                sb.append((CharSequence) str);
            }
            AppKt.appendElement(sb, obj, null);
        }
        sb.append((CharSequence) "");
        return sb.toString();
    }

    public static List toList(Sequence sequence) {
        sequence.getClass();
        Iterator it = sequence.iterator();
        if (!it.hasNext()) {
            return EmptyList.INSTANCE;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return Jsoup.listOf(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }
}
