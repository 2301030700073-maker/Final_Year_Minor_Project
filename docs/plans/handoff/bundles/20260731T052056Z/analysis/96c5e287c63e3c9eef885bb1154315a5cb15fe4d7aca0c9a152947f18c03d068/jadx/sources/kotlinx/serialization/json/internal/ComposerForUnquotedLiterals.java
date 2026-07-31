package kotlinx.serialization.json.internal;

import okio.PriorityQueue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ComposerForUnquotedLiterals extends Composer {
    public final boolean forceQuoting;

    public ComposerForUnquotedLiterals(PriorityQueue priorityQueue, boolean z) {
        super(priorityQueue);
        this.forceQuoting = z;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void printQuoted(String str) {
        str.getClass();
        if (this.forceQuoting) {
            super.printQuoted(str);
        } else {
            ((PriorityQueue) this.writer).write(str);
        }
    }
}
