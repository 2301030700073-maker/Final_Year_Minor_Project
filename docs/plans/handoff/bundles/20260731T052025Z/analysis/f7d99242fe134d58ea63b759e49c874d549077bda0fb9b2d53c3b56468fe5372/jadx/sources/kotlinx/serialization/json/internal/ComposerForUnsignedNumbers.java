package kotlinx.serialization.json.internal;

import com.fsck.k9.mailstore.LocalFolder;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComposerForUnsignedNumbers extends LocalFolder.AnonymousClass8 {
    public final boolean forceQuoting;

    public ComposerForUnsignedNumbers(PriorityQueue priorityQueue, boolean z) {
        super(priorityQueue);
        this.forceQuoting = z;
    }

    @Override // com.fsck.k9.mailstore.LocalFolder.AnonymousClass8
    public final void print(long j) {
        int i = 63;
        String str = "0";
        if (this.forceQuoting) {
            if (j != 0) {
                if (j > 0) {
                    str = Long.toString(j, 10);
                } else {
                    char[] cArr = new char[64];
                    long j2 = (j >>> 1) / 5;
                    cArr[63] = Character.forDigit((int) (j - (j2 * 10)), 10);
                    while (j2 > 0) {
                        i--;
                        cArr[i] = Character.forDigit((int) (j2 % 10), 10);
                        j2 /= 10;
                    }
                    str = new String(cArr, i, 64 - i);
                }
            }
            printQuoted(str);
            return;
        }
        if (j != 0) {
            if (j > 0) {
                str = Long.toString(j, 10);
            } else {
                char[] cArr2 = new char[64];
                long j3 = (j >>> 1) / 5;
                cArr2[63] = Character.forDigit((int) (j - (j3 * 10)), 10);
                while (j3 > 0) {
                    i--;
                    cArr2[i] = Character.forDigit((int) (j3 % 10), 10);
                    j3 /= 10;
                }
                str = new String(cArr2, i, 64 - i);
            }
        }
        str.getClass();
        ((PriorityQueue) this.this$0).write(str);
    }

    @Override // com.fsck.k9.mailstore.LocalFolder.AnonymousClass8
    public final void print(int i) {
        if (this.forceQuoting) {
            printQuoted(Long.toString(4294967295L & i, 10));
            return;
        }
        String l = Long.toString(4294967295L & i, 10);
        l.getClass();
        ((PriorityQueue) this.this$0).write(l);
    }

    @Override // com.fsck.k9.mailstore.LocalFolder.AnonymousClass8
    public final void print(byte b) {
        if (this.forceQuoting) {
            printQuoted(String.valueOf(b & 255));
            return;
        }
        String valueOf = String.valueOf(b & 255);
        valueOf.getClass();
        ((PriorityQueue) this.this$0).write(valueOf);
    }

    @Override // com.fsck.k9.mailstore.LocalFolder.AnonymousClass8
    public final void print(short s) {
        if (this.forceQuoting) {
            printQuoted(String.valueOf(s & 65535));
            return;
        }
        String valueOf = String.valueOf(s & 65535);
        valueOf.getClass();
        ((PriorityQueue) this.this$0).write(valueOf);
    }
}
