package okhttp3.tls.internal.der;

import androidx.room.Room;
import java.math.BigInteger;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import okhttp3.MultipartBody;
import okio.ByteString;
import okio.Path;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Adapters {
    public static final Adapters$ANY_VALUE$1 ANY_VALUE;
    public static final BasicDerAdapter BIT_STRING;
    public static final BasicDerAdapter BOOLEAN;
    public static final BasicDerAdapter GENERALIZED_TIME;
    public static final BasicDerAdapter IA5_STRING;
    public static final BasicDerAdapter INTEGER_AS_BIG_INTEGER;
    public static final BasicDerAdapter INTEGER_AS_LONG;
    public static final BasicDerAdapter NULL;
    public static final BasicDerAdapter OBJECT_IDENTIFIER;
    public static final BasicDerAdapter OCTET_STRING;
    public static final BasicDerAdapter PRINTABLE_STRING;
    public static final BasicDerAdapter UTC_TIME;
    public static final BasicDerAdapter UTF8_STRING;

    static {
        BasicDerAdapter basicDerAdapter = new BasicDerAdapter("BOOLEAN", 0, 1L, new Path.Companion(7), false, null, false);
        BOOLEAN = basicDerAdapter;
        INTEGER_AS_LONG = new BasicDerAdapter("INTEGER", 0, 2L, new LoginClient(8), false, null, false);
        BasicDerAdapter basicDerAdapter2 = new BasicDerAdapter("INTEGER", 0, 2L, new Path.Companion(8), false, null, false);
        INTEGER_AS_BIG_INTEGER = basicDerAdapter2;
        BasicDerAdapter basicDerAdapter3 = new BasicDerAdapter("BIT STRING", 0, 3L, new ByteString.Companion(6), false, null, false);
        BIT_STRING = basicDerAdapter3;
        BasicDerAdapter basicDerAdapter4 = new BasicDerAdapter("OCTET STRING", 0, 4L, new LoginClient(9), false, null, false);
        OCTET_STRING = basicDerAdapter4;
        BasicDerAdapter basicDerAdapter5 = new BasicDerAdapter("NULL", 0, 5L, new ByteString.Companion(8), false, null, false);
        NULL = basicDerAdapter5;
        BasicDerAdapter basicDerAdapter6 = new BasicDerAdapter("OBJECT IDENTIFIER", 0, 6L, new Path.Companion(9), false, null, false);
        OBJECT_IDENTIFIER = basicDerAdapter6;
        BasicDerAdapter basicDerAdapter7 = new BasicDerAdapter("UTF8", 0, 12L, new LoginClient(10), false, null, false);
        UTF8_STRING = basicDerAdapter7;
        BasicDerAdapter basicDerAdapter8 = new BasicDerAdapter("PRINTABLE STRING", 0, 19L, new ByteString.Companion(9), false, null, false);
        PRINTABLE_STRING = basicDerAdapter8;
        BasicDerAdapter basicDerAdapter9 = new BasicDerAdapter("IA5 STRING", 0, 22L, new ByteString.Companion(7), false, null, false);
        IA5_STRING = basicDerAdapter9;
        BasicDerAdapter basicDerAdapter10 = new BasicDerAdapter("UTC TIME", 0, 23L, new Path.Companion(10), false, null, false);
        UTC_TIME = basicDerAdapter10;
        BasicDerAdapter basicDerAdapter11 = new BasicDerAdapter("GENERALIZED TIME", 0, 24L, new LoginClient(7), false, null, false);
        GENERALIZED_TIME = basicDerAdapter11;
        Adapters$ANY_VALUE$1 adapters$ANY_VALUE$1 = new Adapters$ANY_VALUE$1(0);
        ANY_VALUE = adapters$ANY_VALUE$1;
        ReflectionFactory reflectionFactory = Reflection.factory;
        Room.listOf((Object[]) new Pair[]{new Pair(reflectionFactory.getOrCreateKotlinClass(Boolean.TYPE), basicDerAdapter), new Pair(reflectionFactory.getOrCreateKotlinClass(BigInteger.class), basicDerAdapter2), new Pair(reflectionFactory.getOrCreateKotlinClass(BitString.class), basicDerAdapter3), new Pair(reflectionFactory.getOrCreateKotlinClass(ByteString.class), basicDerAdapter4), new Pair(reflectionFactory.getOrCreateKotlinClass(Unit.class), basicDerAdapter5), new Pair(reflectionFactory.getOrCreateKotlinClass(Void.class), basicDerAdapter6), new Pair(reflectionFactory.getOrCreateKotlinClass(Void.class), basicDerAdapter7), new Pair(reflectionFactory.getOrCreateKotlinClass(String.class), basicDerAdapter8), new Pair(reflectionFactory.getOrCreateKotlinClass(Void.class), basicDerAdapter9), new Pair(reflectionFactory.getOrCreateKotlinClass(Void.class), basicDerAdapter10), new Pair(reflectionFactory.getOrCreateKotlinClass(Long.TYPE), basicDerAdapter11), new Pair(reflectionFactory.getOrCreateKotlinClass(AnyValue.class), adapters$ANY_VALUE$1)});
    }

    public static BasicDerAdapter sequence(String str, DerAdapter[] derAdapterArr, Function1 function1, Function1 function12) {
        return new BasicDerAdapter(str, 0, 16L, new MultipartBody.Builder(derAdapterArr, function12, function1), false, null, false);
    }
}
