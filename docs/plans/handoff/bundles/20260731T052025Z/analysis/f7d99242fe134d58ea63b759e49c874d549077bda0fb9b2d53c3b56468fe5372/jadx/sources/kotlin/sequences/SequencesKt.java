package kotlin.sequences;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import kotlin.time.InstantKt$$ExternalSyntheticLambda0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;
import org.minidns.util.Base64;

/* loaded from: classes.dex */
public abstract class SequencesKt extends Base64 {
    public static Sequence asSequence(Iterator it) {
        it.getClass();
        return new ConstrainedOnceSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(4, it));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Sequence drop(StringsKt__StringsKt$lineSequence$$inlined$Sequence$1 stringsKt__StringsKt$lineSequence$$inlined$Sequence$1, int i) {
        if (i >= 0) {
            return i == 0 ? stringsKt__StringsKt$lineSequence$$inlined$Sequence$1 : stringsKt__StringsKt$lineSequence$$inlined$Sequence$1 instanceof DropTakeSequence ? ((DropTakeSequence) stringsKt__StringsKt$lineSequence$$inlined$Sequence$1).drop(i) : new DropSequence(stringsKt__StringsKt$lineSequence$$inlined$Sequence$1, i, 0);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "Requested element count ", " is less than zero."));
        return null;
    }

    public static FilteringSequence filterNotNull(Sequence sequence) {
        return new FilteringSequence(sequence, false, new InstantKt$$ExternalSyntheticLambda0(16));
    }

    public static Object firstOrNull(FilteringSequence filteringSequence) {
        FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(filteringSequence);
        if (filteringSequence$iterator$1.hasNext()) {
            return filteringSequence$iterator$1.next();
        }
        return null;
    }

    public static Sequence generateSequence(Object obj, Function1 function1) {
        if (obj == null) {
            return EmptySequence.INSTANCE;
        }
        return new DistinctSequence(1, new SequencesKt__SequencesKt$$ExternalSyntheticLambda0(0, obj), function1);
    }

    public static String joinToString$default(Sequence sequence, String str, int i) {
        if ((i & 1) != 0) {
            str = ", ";
        }
        sequence.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        int i2 = 0;
        for (Object obj : sequence) {
            i2++;
            if (i2 > 1) {
                sb.append((CharSequence) str);
            }
            StringsKt__IndentKt.appendElement(sb, obj, null);
        }
        sb.append((CharSequence) "");
        return sb.toString();
    }

    public static Sequence take(Sequence sequence, int i) {
        if (i >= 0) {
            return i == 0 ? EmptySequence.INSTANCE : sequence instanceof DropTakeSequence ? ((DropTakeSequence) sequence).take(i) : new DropSequence(sequence, i, 1);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "Requested element count ", " is less than zero."));
        return null;
    }

    public static List toList(Sequence sequence) {
        sequence.getClass();
        Iterator it = sequence.iterator();
        if (!it.hasNext()) {
            return EmptyList.INSTANCE;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return IntOffsetKt.listOf(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static Set toSet(Sequence sequence) {
        Iterator it = sequence.iterator();
        if (!it.hasNext()) {
            return EmptySet.INSTANCE;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return Validate.setOf(next);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(next);
        while (it.hasNext()) {
            linkedHashSet.add(it.next());
        }
        return linkedHashSet;
    }
}
