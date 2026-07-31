package kotlin.text;

import java.util.Iterator;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StringsKt__StringsKt$lineSequence$$inlined$Sequence$1 implements Sequence {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $this_lineSequence$inlined;

    public /* synthetic */ StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(int i, Object obj) {
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
                return Intrinsics.iterator((Object[]) obj);
            case 2:
                return ((Iterable) obj).iterator();
            case 3:
                return Base64.iterator((Function2) obj);
            default:
                return (Iterator) obj;
        }
    }
}
