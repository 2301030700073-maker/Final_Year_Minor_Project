package androidx.compose.ui.tooling.preview.datasource;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;

/* compiled from: LoremIpsum.android.kt */
/* loaded from: classes.dex */
public class LoremIpsum {
    private final int words;

    public LoremIpsum(int i) {
        this.words = i;
    }

    public Sequence getValues() {
        return SequencesKt.sequenceOf(generateLoremIpsum(this.words));
    }

    private final String generateLoremIpsum(int i) {
        List list;
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        list = LoremIpsum_androidKt.LOREM_IPSUM_SOURCE;
        final int size = list.size();
        return SequencesKt.joinToString$default(SequencesKt.take(SequencesKt.generateSequence(new Function0() { // from class: androidx.compose.ui.tooling.preview.datasource.LoremIpsum$generateLoremIpsum$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                List list2;
                list2 = LoremIpsum_androidKt.LOREM_IPSUM_SOURCE;
                Ref$IntRef ref$IntRef2 = Ref$IntRef.this;
                int i2 = ref$IntRef2.element;
                ref$IntRef2.element = i2 + 1;
                return (String) list2.get(i2 % size);
            }
        }), i), " ", null, null, 0, null, null, 62, null);
    }
}
