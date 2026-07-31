package kotlin.sequences;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import java.util.Iterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SubSequence implements Sequence, DropTakeSequence {
    public final int endIndex;
    public final Sequence sequence;
    public final int startIndex;

    public SubSequence(Sequence sequence, int i, int i2) {
        sequence.getClass();
        this.sequence = sequence;
        this.startIndex = i;
        this.endIndex = i2;
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i, "startIndex should be non-negative, but is "));
            throw null;
        }
        if (i2 < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i2, "endIndex should be non-negative, but is "));
            throw null;
        }
        if (i2 >= i) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Modifier.CC.m(i2, i, "endIndex should be not less than startIndex, but was ", " < "));
        throw null;
    }

    @Override // kotlin.sequences.DropTakeSequence
    public final Sequence drop(int i) {
        int i2 = this.endIndex;
        int i3 = this.startIndex;
        return i >= i2 - i3 ? EmptySequence.INSTANCE : new SubSequence(this.sequence, i3 + i, i2);
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new SubSequence$iterator$1(this);
    }

    @Override // kotlin.sequences.DropTakeSequence
    public final Sequence take(int i) {
        int i2 = this.endIndex;
        int i3 = this.startIndex;
        return i >= i2 - i3 ? this : new SubSequence(this.sequence, i3, i + i3);
    }
}
