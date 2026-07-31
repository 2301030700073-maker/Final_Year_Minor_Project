package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByte$$ExternalSyntheticBackport0;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Composers.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\u0010\u0005\n\u0002\u0010\n\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\fH\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\rH\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;", "Lkotlinx/serialization/json/internal/Composer;", "writer", "Lkotlinx/serialization/json/internal/InternalJsonWriter;", "forceQuoting", "", "<init>", "(Lkotlinx/serialization/json/internal/InternalJsonWriter;Z)V", "print", "", "v", "", "", "", "", "kotlinx-serialization-json"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class ComposerForUnsignedNumbers extends Composer {
    private final boolean forceQuoting;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposerForUnsignedNumbers(InternalJsonWriter writer, boolean z) {
        super(writer);
        Intrinsics.checkNotNullParameter(writer, "writer");
        this.forceQuoting = z;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(int v) {
        String m2168m;
        String m2168m2;
        boolean z = this.forceQuoting;
        int m2198constructorimpl = UInt.m2198constructorimpl(v);
        if (z) {
            m2168m2 = UByte$$ExternalSyntheticBackport0.m2168m(m2198constructorimpl, 10);
            printQuoted(m2168m2);
        } else {
            m2168m = UByte$$ExternalSyntheticBackport0.m2168m(m2198constructorimpl, 10);
            print(m2168m);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(long v) {
        String m$2;
        String m$22;
        boolean z = this.forceQuoting;
        long m2277constructorimpl = ULong.m2277constructorimpl(v);
        if (z) {
            m$22 = UByte$$ExternalSyntheticBackport0.m$2(m2277constructorimpl, 10);
            printQuoted(m$22);
        } else {
            m$2 = UByte$$ExternalSyntheticBackport0.m$2(m2277constructorimpl, 10);
            print(m$2);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(byte v) {
        boolean z = this.forceQuoting;
        String m2160toStringimpl = UByte.m2160toStringimpl(UByte.m2116constructorimpl(v));
        if (z) {
            printQuoted(m2160toStringimpl);
        } else {
            print(m2160toStringimpl);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(short v) {
        boolean z = this.forceQuoting;
        String m2428toStringimpl = UShort.m2428toStringimpl(UShort.m2384constructorimpl(v));
        if (z) {
            printQuoted(m2428toStringimpl);
        } else {
            print(m2428toStringimpl);
        }
    }
}
