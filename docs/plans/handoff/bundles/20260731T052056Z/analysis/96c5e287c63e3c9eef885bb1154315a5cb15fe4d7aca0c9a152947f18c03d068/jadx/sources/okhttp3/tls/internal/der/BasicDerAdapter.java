package okhttp3.tls.internal.der;

import androidx.compose.runtime.Latch;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.size.ViewSizeResolver$CC;
import java.net.ProtocolException;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BasicDerAdapter implements DerAdapter {
    public final Codec codec;
    public final Object defaultValue;
    public final boolean isOptional;
    public final String name;
    public final long tag;
    public final int tagClass;
    public final boolean typeHint;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Codec {
        Object decode(DerReader derReader);

        void encode(Latch latch, Object obj);
    }

    public BasicDerAdapter(String str, int i, long j, Codec codec, boolean z, Object obj, boolean z2) {
        this.name = str;
        this.tagClass = i;
        this.tag = j;
        this.codec = codec;
        this.isOptional = z;
        this.defaultValue = obj;
        this.typeHint = z2;
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
            throw null;
        }
        if (j >= 0) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
        throw null;
    }

    public static BasicDerAdapter copy$default(BasicDerAdapter basicDerAdapter, long j, Object obj, int i) {
        String str = basicDerAdapter.name;
        int i2 = (i & 2) != 0 ? basicDerAdapter.tagClass : 128;
        if ((i & 4) != 0) {
            j = basicDerAdapter.tag;
        }
        long j2 = j;
        Codec codec = basicDerAdapter.codec;
        boolean z = (i & 16) != 0 ? basicDerAdapter.isOptional : true;
        if ((i & 32) != 0) {
            obj = basicDerAdapter.defaultValue;
        }
        Object obj2 = obj;
        boolean z2 = (i & 64) != 0 ? basicDerAdapter.typeHint : true;
        basicDerAdapter.getClass();
        str.getClass();
        codec.getClass();
        return new BasicDerAdapter(str, i2, j2, codec, z, obj2, z2);
    }

    public static BasicDerAdapter withTag$default(BasicDerAdapter basicDerAdapter, long j) {
        basicDerAdapter.getClass();
        return copy$default(basicDerAdapter, j, null, 121);
    }

    @Override // okhttp3.tls.internal.der.DerAdapter
    public final /* synthetic */ BasicDerAdapter asSequenceOf(String str, long j) {
        return ViewSizeResolver$CC.$default$asSequenceOf(this, str, j);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BasicDerAdapter)) {
            return false;
        }
        BasicDerAdapter basicDerAdapter = (BasicDerAdapter) obj;
        return Intrinsics.areEqual(this.name, basicDerAdapter.name) && this.tagClass == basicDerAdapter.tagClass && this.tag == basicDerAdapter.tag && Intrinsics.areEqual(this.codec, basicDerAdapter.codec) && this.isOptional == basicDerAdapter.isOptional && Intrinsics.areEqual(this.defaultValue, basicDerAdapter.defaultValue) && this.typeHint == basicDerAdapter.typeHint;
    }

    @Override // okhttp3.tls.internal.der.DerAdapter
    public final Object fromDer(DerReader derReader) {
        derReader.getClass();
        ArrayList arrayList = derReader.path;
        DerHeader peekHeader = derReader.peekHeader();
        if (peekHeader == null || peekHeader.tagClass != this.tagClass || peekHeader.tag != this.tag) {
            if (this.isOptional) {
                return this.defaultValue;
            }
            throw new ProtocolException("expected " + this + " but was " + peekHeader + " at " + derReader);
        }
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
        String str = this.name;
        if (str != null) {
            arrayList.add(str);
        }
        try {
            Object decode = this.codec.decode(derReader);
            if (byteCount != -1 && derReader.getByteCount() > byteCount) {
                throw new ProtocolException("unexpected byte count at " + derReader);
            }
            if (this.typeHint) {
                derReader.typeHintStack.set(r13.size() - 1, decode);
            }
            return decode;
        } finally {
            derReader.peekedHeader = null;
            derReader.limit = j2;
            derReader.constructed = z;
            if (str != null) {
                arrayList.remove(arrayList.size() - 1);
            }
        }
    }

    public final int hashCode() {
        int hashCode = (((this.codec.hashCode() + (((((this.name.hashCode() * 31) + this.tagClass) * 31) + ((int) this.tag)) * 31)) * 31) + (this.isOptional ? 1 : 0)) * 31;
        Object obj = this.defaultValue;
        return ((hashCode + (obj != null ? obj.hashCode() : 0)) * 31) + (this.typeHint ? 1 : 0);
    }

    @Override // okhttp3.tls.internal.der.DerAdapter
    public final boolean matches(DerHeader derHeader) {
        return derHeader.tagClass == this.tagClass && derHeader.tag == this.tag;
    }

    public final BasicDerAdapter optional(Object obj) {
        return copy$default(this, 0L, obj, 79);
    }

    @Override // okhttp3.tls.internal.der.DerAdapter
    public final void toDer(Latch latch, Object obj) {
        latch.getClass();
        if (this.typeHint) {
            ((ArrayList) latch.spareList).set(r0.size() - 1, obj);
        }
        if (this.isOptional && Intrinsics.areEqual(obj, this.defaultValue)) {
            return;
        }
        latch.write(this.name, this.tagClass, this.tag, new UtilsKt$$ExternalSyntheticLambda1(this, latch, obj, 17));
    }

    public final String toString() {
        return this.name + " [" + this.tagClass + '/' + this.tag + ']';
    }

    public final /* synthetic */ BasicDerAdapter withExplicitBox(long j) {
        return ViewSizeResolver$CC.$default$withExplicitBox(this, 128, j, null);
    }
}
