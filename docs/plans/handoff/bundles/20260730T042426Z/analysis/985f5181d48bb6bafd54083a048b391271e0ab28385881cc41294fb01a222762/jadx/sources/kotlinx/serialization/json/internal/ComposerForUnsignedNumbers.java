package kotlinx.serialization.json.internal;

import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Composers.kt */
/* loaded from: classes2.dex */
public final class ComposerForUnsignedNumbers extends Composer {
    private final boolean forceQuoting;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposerForUnsignedNumbers(JsonWriter writer, boolean z) {
        super(writer);
        Intrinsics.checkNotNullParameter(writer, "writer");
        this.forceQuoting = z;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(int i) {
        boolean z = this.forceQuoting;
        int m2679constructorimpl = UInt.m2679constructorimpl(i);
        if (z) {
            printQuoted(ComposerForUnsignedNumbers$$ExternalSyntheticBackport2.m(m2679constructorimpl));
        } else {
            print(ComposerForUnsignedNumbers$$ExternalSyntheticBackport3.m(m2679constructorimpl));
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(long j) {
        String m;
        String m2;
        boolean z = this.forceQuoting;
        long m2701constructorimpl = ULong.m2701constructorimpl(j);
        if (z) {
            m2 = ComposerForUnsignedNumbers$$ExternalSyntheticBackport5.m(m2701constructorimpl, 10);
            printQuoted(m2);
        } else {
            m = ComposerForUnsignedNumbers$$ExternalSyntheticBackport6.m(m2701constructorimpl, 10);
            print(m);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(byte b) {
        boolean z = this.forceQuoting;
        String m2660toStringimpl = UByte.m2660toStringimpl(UByte.m2657constructorimpl(b));
        if (z) {
            printQuoted(m2660toStringimpl);
        } else {
            print(m2660toStringimpl);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(short s) {
        boolean z = this.forceQuoting;
        String m2727toStringimpl = UShort.m2727toStringimpl(UShort.m2724constructorimpl(s));
        if (z) {
            printQuoted(m2727toStringimpl);
        } else {
            print(m2727toStringimpl);
        }
    }
}
