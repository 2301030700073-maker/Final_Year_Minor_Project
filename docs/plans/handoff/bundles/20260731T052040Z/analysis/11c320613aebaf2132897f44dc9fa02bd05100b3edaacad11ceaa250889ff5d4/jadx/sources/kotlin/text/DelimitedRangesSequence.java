package kotlin.text;

import java.util.Iterator;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.Sequence;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DelimitedRangesSequence implements Sequence {
    public final Function2 getNextMatch;
    public final CharSequence input;
    public final int limit;

    public DelimitedRangesSequence(CharSequence charSequence, int i, Function2 function2) {
        charSequence.getClass();
        this.input = charSequence;
        this.limit = i;
        this.getNextMatch = function2;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new DelimitedRangesSequence$iterator$1(this);
    }
}
