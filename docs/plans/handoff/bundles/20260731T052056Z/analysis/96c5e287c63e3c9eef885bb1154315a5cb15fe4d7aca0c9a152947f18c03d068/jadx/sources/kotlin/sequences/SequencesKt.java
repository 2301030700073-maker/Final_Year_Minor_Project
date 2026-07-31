package kotlin.sequences;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda2;
import androidx.room.Room;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda3;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.UnsignedKt;
import kotlin.collections.EmptyList;
import kotlin.io.FileTreeWalk;
import kotlin.io.LinesSequence;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* loaded from: classes.dex */
public abstract class SequencesKt extends UnsignedKt {
    public static Sequence asSequence(Iterator it) {
        it.getClass();
        return new ConstrainedOnceSequence(new LinesSequence(4, it));
    }

    public static int count(Sequence sequence) {
        Iterator it = sequence.iterator();
        int i = 0;
        while (it.hasNext()) {
            it.next();
            i++;
            if (i < 0) {
                Room.throwCountOverflow();
                throw null;
            }
        }
        return i;
    }

    public static Sequence drop(Sequence sequence, int i) {
        if (i >= 0) {
            return i == 0 ? sequence : sequence instanceof DropTakeSequence ? ((DropTakeSequence) sequence).drop(i) : new DropSequence(sequence, i, 0);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i, "Requested element count ", " is less than zero."));
        return null;
    }

    public static Object firstOrNull(Sequence sequence) {
        Iterator it = sequence.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static final FlatteningSequence flatten(Sequence sequence) {
        Data$$ExternalSyntheticLambda0 data$$ExternalSyntheticLambda0 = new Data$$ExternalSyntheticLambda0(20);
        if (!(sequence instanceof TransformingSequence)) {
            return new FlatteningSequence(sequence, new SaversKt$$ExternalSyntheticLambda2(5), data$$ExternalSyntheticLambda0);
        }
        TransformingSequence transformingSequence = (TransformingSequence) sequence;
        return new FlatteningSequence(transformingSequence.sequence, transformingSequence.transformer, data$$ExternalSyntheticLambda0);
    }

    public static Sequence generateSequence(Object obj, Function1 function1) {
        if (obj == null) {
            return EmptySequence.INSTANCE;
        }
        return new FileTreeWalk(1, new Worker$$ExternalSyntheticLambda0(22, obj), function1);
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
            Room.appendElement(sb, obj, null);
        }
        sb.append((CharSequence) "");
        return sb.toString();
    }

    public static Object last(Sequence sequence) {
        Iterator it = sequence.iterator();
        if (!it.hasNext()) {
            Gson$$ExternalSyntheticBUOutline0.m$3("Sequence is empty.");
            return null;
        }
        Object next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    public static FilteringSequence mapNotNull(Sequence sequence, Function1 function1) {
        return new FilteringSequence(new TransformingSequence(sequence, function1), false, new Data$$ExternalSyntheticLambda0(21));
    }

    public static List toList(Sequence sequence) {
        sequence.getClass();
        Iterator it = sequence.iterator();
        if (!it.hasNext()) {
            return EmptyList.INSTANCE;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return Room.listOf(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static Sequence generateSequence(Function0 function0) {
        return new ConstrainedOnceSequence(new FileTreeWalk(1, function0, new RoomDatabase$$ExternalSyntheticLambda3(4, function0)));
    }
}
