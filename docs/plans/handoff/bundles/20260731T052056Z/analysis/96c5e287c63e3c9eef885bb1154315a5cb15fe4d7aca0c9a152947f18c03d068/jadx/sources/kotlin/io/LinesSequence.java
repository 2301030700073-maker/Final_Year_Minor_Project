package kotlin.io;

import java.util.Iterator;
import kotlin.UIntArray;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt$sequenceOf$1$1;
import kotlin.text.LinesIterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LinesSequence implements Sequence {
    public final /* synthetic */ int $r8$classId;
    public final Object reader;

    public /* synthetic */ LinesSequence(int i, Object obj) {
        this.$r8$classId = i;
        this.reader = obj;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        int i = this.$r8$classId;
        Object obj = this.reader;
        switch (i) {
            case 0:
                return new LinesSequence$iterator$1(this);
            case 1:
                return new UIntArray.Iterator((Object[]) obj);
            case 2:
                return ((Iterable) obj).iterator();
            case 3:
                return UnsignedKt.iterator((Function2) obj);
            case 4:
                return (Iterator) obj;
            case 5:
                return new SequencesKt__SequencesKt$sequenceOf$1$1(0, obj);
            default:
                return new LinesIterator((CharSequence) obj);
        }
    }
}
