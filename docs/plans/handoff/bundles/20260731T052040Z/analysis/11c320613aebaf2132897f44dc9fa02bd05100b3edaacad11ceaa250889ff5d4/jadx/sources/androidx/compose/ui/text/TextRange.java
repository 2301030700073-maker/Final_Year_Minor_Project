package androidx.compose.ui.text;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TextRange {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final long Zero = ParagraphKt.TextRange(0, 0);
    public final long packedValue;

    public /* synthetic */ TextRange(long j) {
        this.packedValue = j;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TextRange) {
            return this.packedValue == ((TextRange) obj).packedValue;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.packedValue;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TextRange(");
        long j = this.packedValue;
        sb.append((int) (j >> 32));
        sb.append(", ");
        return Modifier.CC.m(sb, (int) (j & 4294967295L), ')');
    }
}
