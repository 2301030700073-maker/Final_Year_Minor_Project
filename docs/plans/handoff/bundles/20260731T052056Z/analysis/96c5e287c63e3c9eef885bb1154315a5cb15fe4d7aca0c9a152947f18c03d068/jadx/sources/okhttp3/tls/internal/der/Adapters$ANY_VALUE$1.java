package okhttp3.tls.internal.der;

import androidx.compose.runtime.Latch;
import coil3.size.ViewSizeResolver$CC;
import java.net.ProtocolException;
import java.util.ArrayList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Adapters$ANY_VALUE$1 implements DerAdapter {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Adapters$ANY_VALUE$1(int i) {
        this.$r8$classId = i;
    }

    @Override // okhttp3.tls.internal.der.DerAdapter
    public final /* synthetic */ BasicDerAdapter asSequenceOf(String str, long j) {
        int i = this.$r8$classId;
        return ViewSizeResolver$CC.$default$asSequenceOf(this, str, j);
    }

    @Override // okhttp3.tls.internal.der.DerAdapter
    public final Object fromDer(DerReader derReader) {
        long longValue;
        switch (this.$r8$classId) {
            case 0:
                derReader.getClass();
                ArrayList arrayList = derReader.path;
                if (derReader.peekHeader() == null) {
                    throw new ProtocolException("expected a value");
                }
                DerHeader derHeader = derReader.peekedHeader;
                derHeader.getClass();
                long j = derHeader.length;
                derReader.peekedHeader = null;
                long j2 = derReader.limit;
                boolean z = derReader.constructed;
                long byteCount = j != -1 ? derReader.getByteCount() + j : -1L;
                if (j2 != -1 && byteCount > j2) {
                    throw new ProtocolException("enclosed object too large");
                }
                derReader.limit = byteCount;
                derReader.constructed = derHeader.constructed;
                arrayList.add("ANY");
                try {
                    return new AnyValue(derHeader.tagClass, derHeader.tag, derHeader.constructed, derHeader.length, derReader.source.readByteString(derReader.getBytesLeft()));
                } finally {
                    derReader.peekedHeader = null;
                    derReader.limit = j2;
                    derReader.constructed = z;
                    arrayList.remove(arrayList.size() - 1);
                }
            default:
                derReader.getClass();
                DerHeader peekHeader = derReader.peekHeader();
                if (peekHeader == null) {
                    throw new ProtocolException("expected time but was exhausted at " + derReader);
                }
                long j3 = peekHeader.tag;
                int i = peekHeader.tagClass;
                BasicDerAdapter basicDerAdapter = Adapters.UTC_TIME;
                if (i == basicDerAdapter.tagClass && j3 == basicDerAdapter.tag) {
                    longValue = ((Number) basicDerAdapter.fromDer(derReader)).longValue();
                } else {
                    BasicDerAdapter basicDerAdapter2 = Adapters.GENERALIZED_TIME;
                    if (i != basicDerAdapter2.tagClass || j3 != basicDerAdapter2.tag) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(peekHeader, derReader, "expected time but was ");
                        return null;
                    }
                    longValue = ((Number) basicDerAdapter2.fromDer(derReader)).longValue();
                }
                return Long.valueOf(longValue);
        }
    }

    @Override // okhttp3.tls.internal.der.DerAdapter
    public final boolean matches(DerHeader derHeader) {
        switch (this.$r8$classId) {
            case 0:
                break;
            default:
                if (Adapters.UTC_TIME.matches(derHeader) || Adapters.GENERALIZED_TIME.matches(derHeader)) {
                }
                break;
        }
        return true;
    }

    @Override // okhttp3.tls.internal.der.DerAdapter
    public final void toDer(Latch latch, Object obj) {
        switch (this.$r8$classId) {
            case 0:
                AnyValue anyValue = (AnyValue) obj;
                latch.getClass();
                anyValue.getClass();
                latch.write("ANY", anyValue.tagClass, anyValue.tag, new GamesHubScreenKt$$ExternalSyntheticLambda8(9, latch, anyValue));
                break;
            default:
                long longValue = ((Number) obj).longValue();
                latch.getClass();
                if (-631152000000L <= longValue && longValue < 2524608000000L) {
                    Adapters.UTC_TIME.toDer(latch, Long.valueOf(longValue));
                    break;
                } else {
                    Adapters.GENERALIZED_TIME.toDer(latch, Long.valueOf(longValue));
                    break;
                }
                break;
        }
    }
}
