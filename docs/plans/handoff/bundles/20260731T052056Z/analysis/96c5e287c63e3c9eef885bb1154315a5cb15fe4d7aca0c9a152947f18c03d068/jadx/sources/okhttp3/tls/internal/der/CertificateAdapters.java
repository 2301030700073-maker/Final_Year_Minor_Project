package okhttp3.tls.internal.der;

import androidx.compose.runtime.Latch;
import coil3.size.ViewSizeResolver$CC;
import java.net.ProtocolException;
import java.util.ArrayList;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class CertificateAdapters {
    public static final BasicDerAdapter basicConstraints;
    public static final BasicDerAdapter certificate;
    public static final BasicDerAdapter generalNameDnsName;
    public static final BasicDerAdapter generalNameIpAddress;
    public static final BasicDerAdapter rdnSequence;
    public static final BasicDerAdapter subjectAlternativeName;
    public static final BasicDerAdapter subjectPublicKeyInfo;
    public static final BasicDerAdapter tbsCertificate;

    static {
        BasicDerAdapter asSequenceOf;
        BasicDerAdapter asSequenceOf2;
        BasicDerAdapter asSequenceOf3;
        final int i = 1;
        Adapters$ANY_VALUE$1 adapters$ANY_VALUE$1 = new Adapters$ANY_VALUE$1(i);
        final int i2 = 2;
        final int i3 = 0;
        BasicDerAdapter sequence = Adapters.sequence("Validity", new DerAdapter[]{adapters$ANY_VALUE$1, adapters$ANY_VALUE$1}, new ZipFilesKt$$ExternalSyntheticLambda3(7), new ZipFilesKt$$ExternalSyntheticLambda3(9));
        final ZipFilesKt$$ExternalSyntheticLambda3 zipFilesKt$$ExternalSyntheticLambda3 = new ZipFilesKt$$ExternalSyntheticLambda3(10);
        DerAdapter derAdapter = new DerAdapter() { // from class: okhttp3.tls.internal.der.Adapters$any$1
            @Override // okhttp3.tls.internal.der.DerAdapter
            public final /* synthetic */ BasicDerAdapter asSequenceOf(String str, long j) {
                int i4 = i2;
                return ViewSizeResolver$CC.$default$asSequenceOf(this, str, j);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public final Object fromDer(DerReader derReader) {
                DerAdapter derAdapter2;
                int i4 = i2;
                int i5 = 0;
                Object obj = zipFilesKt$$ExternalSyntheticLambda3;
                switch (i4) {
                    case 0:
                        derReader.getClass();
                        DerHeader peekHeader = derReader.peekHeader();
                        if (peekHeader == null) {
                            throw new ProtocolException("expected a value at " + derReader);
                        }
                        Pair[] pairArr = (Pair[]) obj;
                        int length = pairArr.length;
                        while (i5 < length) {
                            DerAdapter derAdapter3 = (DerAdapter) pairArr[i5].second;
                            if (derAdapter3.matches(peekHeader)) {
                                return derAdapter3.fromDer(derReader);
                            }
                            i5++;
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(peekHeader, derReader, "expected any but was ");
                        return null;
                    case 1:
                        derReader.getClass();
                        DerHeader peekHeader2 = derReader.peekHeader();
                        if (peekHeader2 == null) {
                            throw new ProtocolException("expected a value at " + derReader);
                        }
                        DerAdapter[] derAdapterArr = (DerAdapter[]) obj;
                        int length2 = derAdapterArr.length;
                        while (true) {
                            if (i5 < length2) {
                                derAdapter2 = derAdapterArr[i5];
                                if (!derAdapter2.matches(peekHeader2)) {
                                    i5++;
                                }
                            } else {
                                derAdapter2 = null;
                            }
                        }
                        if (derAdapter2 != null) {
                            return new Pair(derAdapter2, derAdapter2.fromDer(derReader));
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(peekHeader2, derReader, "expected a matching choice but was ");
                        return null;
                    default:
                        derReader.getClass();
                        DerAdapter derAdapter4 = (DerAdapter) ((Function1) obj).invoke(CollectionsKt.lastOrNull(derReader.typeHintStack));
                        return derAdapter4 != null ? derAdapter4.fromDer(derReader) : derReader.source.readByteString(derReader.getBytesLeft());
                }
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public final boolean matches(DerHeader derHeader) {
                switch (i2) {
                }
                return true;
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public final void toDer(Latch latch, Object obj) {
                int i4 = i2;
                Object obj2 = zipFilesKt$$ExternalSyntheticLambda3;
                switch (i4) {
                    case 0:
                        latch.getClass();
                        for (Pair pair : (Pair[]) obj2) {
                            KClass kClass = (KClass) pair.first;
                            DerAdapter derAdapter2 = (DerAdapter) pair.second;
                            if (kClass.isInstance(obj) || (obj == null && kClass.equals(Reflection.factory.getOrCreateKotlinClass(Unit.class)))) {
                                derAdapter2.getClass();
                                derAdapter2.toDer(latch, obj);
                                break;
                            }
                        }
                        break;
                    case 1:
                        Pair pair2 = (Pair) obj;
                        latch.getClass();
                        pair2.getClass();
                        DerAdapter derAdapter3 = (DerAdapter) pair2.first;
                        Object obj3 = pair2.second;
                        derAdapter3.getClass();
                        derAdapter3.toDer(latch, obj3);
                        break;
                    default:
                        latch.getClass();
                        DerAdapter derAdapter4 = (DerAdapter) ((Function1) obj2).invoke(CollectionsKt.lastOrNull((ArrayList) latch.spareList));
                        if (derAdapter4 != null) {
                            derAdapter4.toDer(latch, obj);
                            break;
                        } else {
                            obj.getClass();
                            latch.sink().write((ByteString) obj);
                            break;
                        }
                }
            }

            public String toString() {
                switch (i2) {
                    case 1:
                        return ArraysKt___ArraysKt.joinToString$default((DerAdapter[]) zipFilesKt$$ExternalSyntheticLambda3, " OR ", null, null, null, 62);
                    default:
                        return super.toString();
                }
            }
        };
        BasicDerAdapter basicDerAdapter = Adapters.OBJECT_IDENTIFIER;
        basicDerAdapter.getClass();
        BasicDerAdapter sequence2 = Adapters.sequence("AlgorithmIdentifier", new DerAdapter[]{BasicDerAdapter.copy$default(basicDerAdapter, 0L, null, 63), derAdapter}, new ZipFilesKt$$ExternalSyntheticLambda3(11), new ZipFilesKt$$ExternalSyntheticLambda3(12));
        BasicDerAdapter basicDerAdapter2 = Adapters.BOOLEAN;
        Boolean bool = Boolean.FALSE;
        BasicDerAdapter optional = basicDerAdapter2.optional(bool);
        BasicDerAdapter basicDerAdapter3 = Adapters.INTEGER_AS_LONG;
        basicConstraints = Adapters.sequence("BasicConstraints", new DerAdapter[]{optional, basicDerAdapter3.optional(null)}, new ZipFilesKt$$ExternalSyntheticLambda3(13), new ZipFilesKt$$ExternalSyntheticLambda3(14));
        BasicDerAdapter withTag$default = BasicDerAdapter.withTag$default(Adapters.IA5_STRING, 2L);
        generalNameDnsName = withTag$default;
        BasicDerAdapter basicDerAdapter4 = Adapters.OCTET_STRING;
        BasicDerAdapter withTag$default2 = BasicDerAdapter.withTag$default(basicDerAdapter4, 7L);
        generalNameIpAddress = withTag$default2;
        Adapters$ANY_VALUE$1 adapters$ANY_VALUE$12 = Adapters.ANY_VALUE;
        final DerAdapter[] derAdapterArr = {withTag$default, withTag$default2, adapters$ANY_VALUE$12};
        asSequenceOf = new DerAdapter() { // from class: okhttp3.tls.internal.der.Adapters$any$1
            @Override // okhttp3.tls.internal.der.DerAdapter
            public final /* synthetic */ BasicDerAdapter asSequenceOf(String str, long j) {
                int i4 = i;
                return ViewSizeResolver$CC.$default$asSequenceOf(this, str, j);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public final Object fromDer(DerReader derReader) {
                DerAdapter derAdapter2;
                int i4 = i;
                int i5 = 0;
                Object obj = derAdapterArr;
                switch (i4) {
                    case 0:
                        derReader.getClass();
                        DerHeader peekHeader = derReader.peekHeader();
                        if (peekHeader == null) {
                            throw new ProtocolException("expected a value at " + derReader);
                        }
                        Pair[] pairArr = (Pair[]) obj;
                        int length = pairArr.length;
                        while (i5 < length) {
                            DerAdapter derAdapter3 = (DerAdapter) pairArr[i5].second;
                            if (derAdapter3.matches(peekHeader)) {
                                return derAdapter3.fromDer(derReader);
                            }
                            i5++;
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(peekHeader, derReader, "expected any but was ");
                        return null;
                    case 1:
                        derReader.getClass();
                        DerHeader peekHeader2 = derReader.peekHeader();
                        if (peekHeader2 == null) {
                            throw new ProtocolException("expected a value at " + derReader);
                        }
                        DerAdapter[] derAdapterArr2 = (DerAdapter[]) obj;
                        int length2 = derAdapterArr2.length;
                        while (true) {
                            if (i5 < length2) {
                                derAdapter2 = derAdapterArr2[i5];
                                if (!derAdapter2.matches(peekHeader2)) {
                                    i5++;
                                }
                            } else {
                                derAdapter2 = null;
                            }
                        }
                        if (derAdapter2 != null) {
                            return new Pair(derAdapter2, derAdapter2.fromDer(derReader));
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(peekHeader2, derReader, "expected a matching choice but was ");
                        return null;
                    default:
                        derReader.getClass();
                        DerAdapter derAdapter4 = (DerAdapter) ((Function1) obj).invoke(CollectionsKt.lastOrNull(derReader.typeHintStack));
                        return derAdapter4 != null ? derAdapter4.fromDer(derReader) : derReader.source.readByteString(derReader.getBytesLeft());
                }
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public final boolean matches(DerHeader derHeader) {
                switch (i) {
                }
                return true;
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public final void toDer(Latch latch, Object obj) {
                int i4 = i;
                Object obj2 = derAdapterArr;
                switch (i4) {
                    case 0:
                        latch.getClass();
                        for (Pair pair : (Pair[]) obj2) {
                            KClass kClass = (KClass) pair.first;
                            DerAdapter derAdapter2 = (DerAdapter) pair.second;
                            if (kClass.isInstance(obj) || (obj == null && kClass.equals(Reflection.factory.getOrCreateKotlinClass(Unit.class)))) {
                                derAdapter2.getClass();
                                derAdapter2.toDer(latch, obj);
                                break;
                            }
                        }
                        break;
                    case 1:
                        Pair pair2 = (Pair) obj;
                        latch.getClass();
                        pair2.getClass();
                        DerAdapter derAdapter3 = (DerAdapter) pair2.first;
                        Object obj3 = pair2.second;
                        derAdapter3.getClass();
                        derAdapter3.toDer(latch, obj3);
                        break;
                    default:
                        latch.getClass();
                        DerAdapter derAdapter4 = (DerAdapter) ((Function1) obj2).invoke(CollectionsKt.lastOrNull((ArrayList) latch.spareList));
                        if (derAdapter4 != null) {
                            derAdapter4.toDer(latch, obj);
                            break;
                        } else {
                            obj.getClass();
                            latch.sink().write((ByteString) obj);
                            break;
                        }
                }
            }

            public String toString() {
                switch (i) {
                    case 1:
                        return ArraysKt___ArraysKt.joinToString$default((DerAdapter[]) derAdapterArr, " OR ", null, null, null, 62);
                    default:
                        return super.toString();
                }
            }
        }.asSequenceOf("SEQUENCE OF", 16L);
        subjectAlternativeName = asSequenceOf;
        final ZipFilesKt$$ExternalSyntheticLambda3 zipFilesKt$$ExternalSyntheticLambda32 = new ZipFilesKt$$ExternalSyntheticLambda3(15);
        BasicDerAdapter sequence3 = Adapters.sequence("Extension", new DerAdapter[]{BasicDerAdapter.copy$default(basicDerAdapter, 0L, null, 63), basicDerAdapter2.optional(bool), ViewSizeResolver$CC.$default$withExplicitBox(new DerAdapter() { // from class: okhttp3.tls.internal.der.Adapters$any$1
            @Override // okhttp3.tls.internal.der.DerAdapter
            public final /* synthetic */ BasicDerAdapter asSequenceOf(String str, long j) {
                int i4 = i2;
                return ViewSizeResolver$CC.$default$asSequenceOf(this, str, j);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public final Object fromDer(DerReader derReader) {
                DerAdapter derAdapter2;
                int i4 = i2;
                int i5 = 0;
                Object obj = zipFilesKt$$ExternalSyntheticLambda32;
                switch (i4) {
                    case 0:
                        derReader.getClass();
                        DerHeader peekHeader = derReader.peekHeader();
                        if (peekHeader == null) {
                            throw new ProtocolException("expected a value at " + derReader);
                        }
                        Pair[] pairArr = (Pair[]) obj;
                        int length = pairArr.length;
                        while (i5 < length) {
                            DerAdapter derAdapter3 = (DerAdapter) pairArr[i5].second;
                            if (derAdapter3.matches(peekHeader)) {
                                return derAdapter3.fromDer(derReader);
                            }
                            i5++;
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(peekHeader, derReader, "expected any but was ");
                        return null;
                    case 1:
                        derReader.getClass();
                        DerHeader peekHeader2 = derReader.peekHeader();
                        if (peekHeader2 == null) {
                            throw new ProtocolException("expected a value at " + derReader);
                        }
                        DerAdapter[] derAdapterArr2 = (DerAdapter[]) obj;
                        int length2 = derAdapterArr2.length;
                        while (true) {
                            if (i5 < length2) {
                                derAdapter2 = derAdapterArr2[i5];
                                if (!derAdapter2.matches(peekHeader2)) {
                                    i5++;
                                }
                            } else {
                                derAdapter2 = null;
                            }
                        }
                        if (derAdapter2 != null) {
                            return new Pair(derAdapter2, derAdapter2.fromDer(derReader));
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(peekHeader2, derReader, "expected a matching choice but was ");
                        return null;
                    default:
                        derReader.getClass();
                        DerAdapter derAdapter4 = (DerAdapter) ((Function1) obj).invoke(CollectionsKt.lastOrNull(derReader.typeHintStack));
                        return derAdapter4 != null ? derAdapter4.fromDer(derReader) : derReader.source.readByteString(derReader.getBytesLeft());
                }
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public final boolean matches(DerHeader derHeader) {
                switch (i2) {
                }
                return true;
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public final void toDer(Latch latch, Object obj) {
                int i4 = i2;
                Object obj2 = zipFilesKt$$ExternalSyntheticLambda32;
                switch (i4) {
                    case 0:
                        latch.getClass();
                        for (Pair pair : (Pair[]) obj2) {
                            KClass kClass = (KClass) pair.first;
                            DerAdapter derAdapter2 = (DerAdapter) pair.second;
                            if (kClass.isInstance(obj) || (obj == null && kClass.equals(Reflection.factory.getOrCreateKotlinClass(Unit.class)))) {
                                derAdapter2.getClass();
                                derAdapter2.toDer(latch, obj);
                                break;
                            }
                        }
                        break;
                    case 1:
                        Pair pair2 = (Pair) obj;
                        latch.getClass();
                        pair2.getClass();
                        DerAdapter derAdapter3 = (DerAdapter) pair2.first;
                        Object obj3 = pair2.second;
                        derAdapter3.getClass();
                        derAdapter3.toDer(latch, obj3);
                        break;
                    default:
                        latch.getClass();
                        DerAdapter derAdapter4 = (DerAdapter) ((Function1) obj2).invoke(CollectionsKt.lastOrNull((ArrayList) latch.spareList));
                        if (derAdapter4 != null) {
                            derAdapter4.toDer(latch, obj);
                            break;
                        } else {
                            obj.getClass();
                            latch.sink().write((ByteString) obj);
                            break;
                        }
                }
            }

            public String toString() {
                switch (i2) {
                    case 1:
                        return ArraysKt___ArraysKt.joinToString$default((DerAdapter[]) zipFilesKt$$ExternalSyntheticLambda32, " OR ", null, null, null, 62);
                    default:
                        return super.toString();
                }
            }
        }, basicDerAdapter4.tagClass, basicDerAdapter4.tag, bool)}, new ZipFilesKt$$ExternalSyntheticLambda3(16), new ZipFilesKt$$ExternalSyntheticLambda3(17));
        ReflectionFactory reflectionFactory = Reflection.factory;
        final Pair[] pairArr = {new Pair(reflectionFactory.getOrCreateKotlinClass(String.class), Adapters.UTF8_STRING), new Pair(reflectionFactory.getOrCreateKotlinClass(Void.class), Adapters.PRINTABLE_STRING), new Pair(reflectionFactory.getOrCreateKotlinClass(AnyValue.class), adapters$ANY_VALUE$12)};
        asSequenceOf2 = ViewSizeResolver$CC.$default$asSequenceOf(Adapters.sequence("AttributeTypeAndValue", new DerAdapter[]{basicDerAdapter, new DerAdapter() { // from class: okhttp3.tls.internal.der.Adapters$any$1
            @Override // okhttp3.tls.internal.der.DerAdapter
            public final /* synthetic */ BasicDerAdapter asSequenceOf(String str, long j) {
                int i4 = i3;
                return ViewSizeResolver$CC.$default$asSequenceOf(this, str, j);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public final Object fromDer(DerReader derReader) {
                DerAdapter derAdapter2;
                int i4 = i3;
                int i5 = 0;
                Object obj = pairArr;
                switch (i4) {
                    case 0:
                        derReader.getClass();
                        DerHeader peekHeader = derReader.peekHeader();
                        if (peekHeader == null) {
                            throw new ProtocolException("expected a value at " + derReader);
                        }
                        Pair[] pairArr2 = (Pair[]) obj;
                        int length = pairArr2.length;
                        while (i5 < length) {
                            DerAdapter derAdapter3 = (DerAdapter) pairArr2[i5].second;
                            if (derAdapter3.matches(peekHeader)) {
                                return derAdapter3.fromDer(derReader);
                            }
                            i5++;
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(peekHeader, derReader, "expected any but was ");
                        return null;
                    case 1:
                        derReader.getClass();
                        DerHeader peekHeader2 = derReader.peekHeader();
                        if (peekHeader2 == null) {
                            throw new ProtocolException("expected a value at " + derReader);
                        }
                        DerAdapter[] derAdapterArr2 = (DerAdapter[]) obj;
                        int length2 = derAdapterArr2.length;
                        while (true) {
                            if (i5 < length2) {
                                derAdapter2 = derAdapterArr2[i5];
                                if (!derAdapter2.matches(peekHeader2)) {
                                    i5++;
                                }
                            } else {
                                derAdapter2 = null;
                            }
                        }
                        if (derAdapter2 != null) {
                            return new Pair(derAdapter2, derAdapter2.fromDer(derReader));
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(peekHeader2, derReader, "expected a matching choice but was ");
                        return null;
                    default:
                        derReader.getClass();
                        DerAdapter derAdapter4 = (DerAdapter) ((Function1) obj).invoke(CollectionsKt.lastOrNull(derReader.typeHintStack));
                        return derAdapter4 != null ? derAdapter4.fromDer(derReader) : derReader.source.readByteString(derReader.getBytesLeft());
                }
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public final boolean matches(DerHeader derHeader) {
                switch (i3) {
                }
                return true;
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public final void toDer(Latch latch, Object obj) {
                int i4 = i3;
                Object obj2 = pairArr;
                switch (i4) {
                    case 0:
                        latch.getClass();
                        for (Pair pair : (Pair[]) obj2) {
                            KClass kClass = (KClass) pair.first;
                            DerAdapter derAdapter2 = (DerAdapter) pair.second;
                            if (kClass.isInstance(obj) || (obj == null && kClass.equals(Reflection.factory.getOrCreateKotlinClass(Unit.class)))) {
                                derAdapter2.getClass();
                                derAdapter2.toDer(latch, obj);
                                break;
                            }
                        }
                        break;
                    case 1:
                        Pair pair2 = (Pair) obj;
                        latch.getClass();
                        pair2.getClass();
                        DerAdapter derAdapter3 = (DerAdapter) pair2.first;
                        Object obj3 = pair2.second;
                        derAdapter3.getClass();
                        derAdapter3.toDer(latch, obj3);
                        break;
                    default:
                        latch.getClass();
                        DerAdapter derAdapter4 = (DerAdapter) ((Function1) obj2).invoke(CollectionsKt.lastOrNull((ArrayList) latch.spareList));
                        if (derAdapter4 != null) {
                            derAdapter4.toDer(latch, obj);
                            break;
                        } else {
                            obj.getClass();
                            latch.sink().write((ByteString) obj);
                            break;
                        }
                }
            }

            public String toString() {
                switch (i3) {
                    case 1:
                        return ArraysKt___ArraysKt.joinToString$default((DerAdapter[]) pairArr, " OR ", null, null, null, 62);
                    default:
                        return super.toString();
                }
            }
        }}, new ZipFilesKt$$ExternalSyntheticLambda3(18), new ZipFilesKt$$ExternalSyntheticLambda3(19)), "SET OF", 17L).asSequenceOf("SEQUENCE OF", 16L);
        rdnSequence = asSequenceOf2;
        final DerAdapter[] derAdapterArr2 = {asSequenceOf2};
        DerAdapter derAdapter2 = new DerAdapter() { // from class: okhttp3.tls.internal.der.Adapters$any$1
            @Override // okhttp3.tls.internal.der.DerAdapter
            public final /* synthetic */ BasicDerAdapter asSequenceOf(String str, long j) {
                int i4 = i;
                return ViewSizeResolver$CC.$default$asSequenceOf(this, str, j);
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public final Object fromDer(DerReader derReader) {
                DerAdapter derAdapter22;
                int i4 = i;
                int i5 = 0;
                Object obj = derAdapterArr2;
                switch (i4) {
                    case 0:
                        derReader.getClass();
                        DerHeader peekHeader = derReader.peekHeader();
                        if (peekHeader == null) {
                            throw new ProtocolException("expected a value at " + derReader);
                        }
                        Pair[] pairArr2 = (Pair[]) obj;
                        int length = pairArr2.length;
                        while (i5 < length) {
                            DerAdapter derAdapter3 = (DerAdapter) pairArr2[i5].second;
                            if (derAdapter3.matches(peekHeader)) {
                                return derAdapter3.fromDer(derReader);
                            }
                            i5++;
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(peekHeader, derReader, "expected any but was ");
                        return null;
                    case 1:
                        derReader.getClass();
                        DerHeader peekHeader2 = derReader.peekHeader();
                        if (peekHeader2 == null) {
                            throw new ProtocolException("expected a value at " + derReader);
                        }
                        DerAdapter[] derAdapterArr22 = (DerAdapter[]) obj;
                        int length2 = derAdapterArr22.length;
                        while (true) {
                            if (i5 < length2) {
                                derAdapter22 = derAdapterArr22[i5];
                                if (!derAdapter22.matches(peekHeader2)) {
                                    i5++;
                                }
                            } else {
                                derAdapter22 = null;
                            }
                        }
                        if (derAdapter22 != null) {
                            return new Pair(derAdapter22, derAdapter22.fromDer(derReader));
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(peekHeader2, derReader, "expected a matching choice but was ");
                        return null;
                    default:
                        derReader.getClass();
                        DerAdapter derAdapter4 = (DerAdapter) ((Function1) obj).invoke(CollectionsKt.lastOrNull(derReader.typeHintStack));
                        return derAdapter4 != null ? derAdapter4.fromDer(derReader) : derReader.source.readByteString(derReader.getBytesLeft());
                }
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public final boolean matches(DerHeader derHeader) {
                switch (i) {
                }
                return true;
            }

            @Override // okhttp3.tls.internal.der.DerAdapter
            public final void toDer(Latch latch, Object obj) {
                int i4 = i;
                Object obj2 = derAdapterArr2;
                switch (i4) {
                    case 0:
                        latch.getClass();
                        for (Pair pair : (Pair[]) obj2) {
                            KClass kClass = (KClass) pair.first;
                            DerAdapter derAdapter22 = (DerAdapter) pair.second;
                            if (kClass.isInstance(obj) || (obj == null && kClass.equals(Reflection.factory.getOrCreateKotlinClass(Unit.class)))) {
                                derAdapter22.getClass();
                                derAdapter22.toDer(latch, obj);
                                break;
                            }
                        }
                        break;
                    case 1:
                        Pair pair2 = (Pair) obj;
                        latch.getClass();
                        pair2.getClass();
                        DerAdapter derAdapter3 = (DerAdapter) pair2.first;
                        Object obj3 = pair2.second;
                        derAdapter3.getClass();
                        derAdapter3.toDer(latch, obj3);
                        break;
                    default:
                        latch.getClass();
                        DerAdapter derAdapter4 = (DerAdapter) ((Function1) obj2).invoke(CollectionsKt.lastOrNull((ArrayList) latch.spareList));
                        if (derAdapter4 != null) {
                            derAdapter4.toDer(latch, obj);
                            break;
                        } else {
                            obj.getClass();
                            latch.sink().write((ByteString) obj);
                            break;
                        }
                }
            }

            public String toString() {
                switch (i) {
                    case 1:
                        return ArraysKt___ArraysKt.joinToString$default((DerAdapter[]) derAdapterArr2, " OR ", null, null, null, 62);
                    default:
                        return super.toString();
                }
            }
        };
        BasicDerAdapter basicDerAdapter5 = Adapters.BIT_STRING;
        BasicDerAdapter sequence4 = Adapters.sequence("SubjectPublicKeyInfo", new DerAdapter[]{sequence2, basicDerAdapter5}, new ZipFilesKt$$ExternalSyntheticLambda3(20), new ZipFilesKt$$ExternalSyntheticLambda3(21));
        subjectPublicKeyInfo = sequence4;
        BasicDerAdapter optional2 = basicDerAdapter3.withExplicitBox(0L).optional(0L);
        BasicDerAdapter optional3 = BasicDerAdapter.withTag$default(basicDerAdapter5, 1L).optional(null);
        BasicDerAdapter optional4 = BasicDerAdapter.copy$default(basicDerAdapter5, 2L, null, 121).optional(null);
        asSequenceOf3 = sequence3.asSequenceOf("SEQUENCE OF", 16L);
        BasicDerAdapter sequence5 = Adapters.sequence("TBSCertificate", new DerAdapter[]{optional2, Adapters.INTEGER_AS_BIG_INTEGER, sequence2, derAdapter2, sequence, derAdapter2, sequence4, optional3, optional4, asSequenceOf3.withExplicitBox(3L).optional(EmptyList.INSTANCE)}, new ZipFilesKt$$ExternalSyntheticLambda3(22), new ZipFilesKt$$ExternalSyntheticLambda3(23));
        tbsCertificate = sequence5;
        certificate = Adapters.sequence("Certificate", new DerAdapter[]{sequence5, sequence2, basicDerAdapter5}, new ZipFilesKt$$ExternalSyntheticLambda3(24), new ZipFilesKt$$ExternalSyntheticLambda3(25));
        Adapters.sequence("PrivateKeyInfo", new DerAdapter[]{basicDerAdapter3, sequence2, basicDerAdapter4}, new ZipFilesKt$$ExternalSyntheticLambda3(26), new ZipFilesKt$$ExternalSyntheticLambda3(8));
    }
}
