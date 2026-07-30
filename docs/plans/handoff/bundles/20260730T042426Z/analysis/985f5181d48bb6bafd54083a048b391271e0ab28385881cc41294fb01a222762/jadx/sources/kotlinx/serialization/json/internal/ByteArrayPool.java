package kotlinx.serialization.json.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* compiled from: ByteArrayPool.kt */
/* loaded from: classes2.dex */
public final class ByteArrayPool {
    private static final int MAX_CHARS_IN_POOL;
    private static int charsTotal;
    public static final ByteArrayPool INSTANCE = new ByteArrayPool();
    private static final ArrayDeque arrays = new ArrayDeque();

    private ByteArrayPool() {
    }

    static {
        Object m2647constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            Intrinsics.checkNotNullExpressionValue(property, "getProperty(\"kotlinx.ser…lization.json.pool.size\")");
            m2647constructorimpl = Result.m2647constructorimpl(StringsKt.toIntOrNull(property));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m2647constructorimpl = Result.m2647constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2652isFailureimpl(m2647constructorimpl)) {
            m2647constructorimpl = null;
        }
        Integer num = (Integer) m2647constructorimpl;
        MAX_CHARS_IN_POOL = num != null ? num.intValue() : PKIFailureInfo.badSenderNonce;
    }

    public final byte[] take() {
        byte[] bArr;
        synchronized (this) {
            bArr = (byte[]) arrays.removeLastOrNull();
            if (bArr != null) {
                charsTotal -= bArr.length;
            } else {
                bArr = null;
            }
        }
        return bArr == null ? new byte[512] : bArr;
    }

    public final void release(byte[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        synchronized (this) {
            try {
                int i = charsTotal;
                if (array.length + i < MAX_CHARS_IN_POOL) {
                    charsTotal = i + array.length;
                    arrays.addLast(array);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
