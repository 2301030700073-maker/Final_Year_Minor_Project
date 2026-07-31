package kotlin.text;

import androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.io.FileTreeWalk;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntRange;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DelimitedRangesSequence$iterator$1 implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId;
    public int currentStartIndex;
    public Object nextItem;
    public int nextSearchIndex;
    public int nextState;
    public final Object this$0;

    public DelimitedRangesSequence$iterator$1(FileTreeWalk fileTreeWalk) {
        this.$r8$classId = 0;
        this.this$0 = fileTreeWalk;
        this.nextState = -1;
        int coerceIn = RegexKt.coerceIn(0, 0, ((CharSequence) fileTreeWalk.start).length());
        this.currentStartIndex = coerceIn;
        this.nextSearchIndex = coerceIn;
    }

    public void calcNext$3() {
        FileTreeWalk fileTreeWalk = (FileTreeWalk) this.this$0;
        CharSequence charSequence = (CharSequence) fileTreeWalk.start;
        int i = this.nextSearchIndex;
        if (i < 0) {
            this.nextState = 0;
            this.nextItem = null;
            return;
        }
        if (i > charSequence.length()) {
            int i2 = this.currentStartIndex;
            charSequence.getClass();
            this.nextItem = new IntRange(i2, charSequence.length() - 1, 1);
            this.nextSearchIndex = -1;
        } else {
            Pair pair = (Pair) ((Function2) fileTreeWalk.direction).invoke(charSequence, Integer.valueOf(this.nextSearchIndex));
            if (pair == null) {
                int i3 = this.currentStartIndex;
                charSequence.getClass();
                this.nextItem = new IntRange(i3, charSequence.length() - 1, 1);
                this.nextSearchIndex = -1;
            } else {
                int intValue = ((Number) pair.first).intValue();
                int intValue2 = ((Number) pair.second).intValue();
                this.nextItem = RegexKt.until(this.currentStartIndex, intValue);
                int i4 = intValue + intValue2;
                this.currentStartIndex = i4;
                this.nextSearchIndex = i4 + (intValue2 == 0 ? 1 : 0);
            }
        }
        this.nextState = 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.$r8$classId) {
            case 0:
                if (this.nextState == -1) {
                    calcNext$3();
                }
                return this.nextState == 1;
            default:
                throw null;
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.$r8$classId) {
            case 0:
                if (this.nextState == -1) {
                    calcNext$3();
                }
                if (this.nextState == 0) {
                    Utils$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                IntRange intRange = (IntRange) this.nextItem;
                intRange.getClass();
                this.nextItem = null;
                this.nextState = -1;
                return intRange;
            default:
                throw null;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public DelimitedRangesSequence$iterator$1(SlotTable slotTable, int i, GapGroupSourceInformation gapGroupSourceInformation, ResultKt resultKt) {
        this.$r8$classId = 1;
        this.nextItem = slotTable;
        this.nextState = i;
        this.this$0 = resultKt;
        this.currentStartIndex = slotTable.version;
    }
}
