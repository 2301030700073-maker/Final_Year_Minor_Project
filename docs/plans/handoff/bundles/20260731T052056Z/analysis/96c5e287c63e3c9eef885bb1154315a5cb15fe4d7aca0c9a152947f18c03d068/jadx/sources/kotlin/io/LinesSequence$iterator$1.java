package kotlin.io;

import java.io.BufferedReader;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LinesSequence$iterator$1 implements Iterator, KMappedMarker {
    public boolean done;
    public String nextValue;
    public final /* synthetic */ LinesSequence this$0;

    public LinesSequence$iterator$1(LinesSequence linesSequence) {
        this.this$0 = linesSequence;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String str = this.nextValue;
        if (str == null && !this.done) {
            str = ((BufferedReader) this.this$0.reader).readLine();
            this.nextValue = str;
            if (str == null) {
                this.done = true;
            }
        }
        return str != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            Utils$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        String str = this.nextValue;
        this.nextValue = null;
        str.getClass();
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
