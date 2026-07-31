package kotlinx.serialization.json.internal;

import com.fsck.k9.mailstore.LocalFolder;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComposerForUnquotedLiterals extends LocalFolder.AnonymousClass8 {
    public final boolean forceQuoting;

    public ComposerForUnquotedLiterals(PriorityQueue priorityQueue, boolean z) {
        super(priorityQueue);
        this.forceQuoting = z;
    }

    @Override // com.fsck.k9.mailstore.LocalFolder.AnonymousClass8
    public final void printQuoted(String str) {
        str.getClass();
        if (this.forceQuoting) {
            super.printQuoted(str);
        } else {
            ((PriorityQueue) this.this$0).write(str);
        }
    }
}
