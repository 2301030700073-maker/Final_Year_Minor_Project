package kotlin.text;

import androidx.sqlite.SQLite;
import java.util.Iterator;
import kotlin.UIntArray;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ArrayIntIterator;
import kotlin.sequences.Sequence;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StringsKt__StringsKt$lineSequence$$inlined$Sequence$1 implements Sequence {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $this_lineSequence$inlined;

    public /* synthetic */ StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(Object obj, int i) {
        this.$r8$classId = i;
        this.$this_lineSequence$inlined = obj;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        int i = this.$r8$classId;
        Object obj = this.$this_lineSequence$inlined;
        switch (i) {
            case 0:
                return new LinesIterator((String) obj);
            case 1:
                return new UIntArray.Iterator((Object[]) obj);
            case 2:
                return new ArrayIntIterator((int[]) obj);
            case 3:
                return ((Iterable) obj).iterator();
            case 4:
                return SQLite.iterator((Function2) obj);
            default:
                return (Iterator) obj;
        }
    }
}
