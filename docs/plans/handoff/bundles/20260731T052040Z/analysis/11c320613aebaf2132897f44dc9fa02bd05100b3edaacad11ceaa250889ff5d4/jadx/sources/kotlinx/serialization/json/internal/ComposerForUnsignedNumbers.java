package kotlinx.serialization.json.internal;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ComposerForUnsignedNumbers extends Composer {
    public final boolean forceQuoting;

    public ComposerForUnsignedNumbers(InternalJsonWriter internalJsonWriter, boolean z) {
        super(internalJsonWriter);
        this.forceQuoting = z;
    }

    @Override // kotlinx.serialization.json.internal.Composer
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
        ((InternalJsonWriter) this.writer).write(str);
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void print(int i) {
        if (this.forceQuoting) {
            printQuoted(Long.toString(4294967295L & i, 10));
            return;
        }
        String l = Long.toString(4294967295L & i, 10);
        l.getClass();
        ((InternalJsonWriter) this.writer).write(l);
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void print(byte b) {
        if (this.forceQuoting) {
            printQuoted(String.valueOf(b & 255));
            return;
        }
        String valueOf = String.valueOf(b & 255);
        valueOf.getClass();
        ((InternalJsonWriter) this.writer).write(valueOf);
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void print(short s) {
        if (this.forceQuoting) {
            printQuoted(String.valueOf(s & 65535));
            return;
        }
        String valueOf = String.valueOf(s & 65535);
        valueOf.getClass();
        ((InternalJsonWriter) this.writer).write(valueOf);
    }
}
