package kotlin;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Method;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.internal.PlatformImplementations$ReflectThrowable;
import kotlin.internal.jdk7.JDK7PlatformImplementations$ReflectSdkVersion;
import kotlin.jvm.functions.Function0;
import kotlin.text.CharsKt__CharKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ResultKt {
    public static final CoroutineSingletons UNDEFINED_RESULT = CoroutineSingletons.COROUTINE_SUSPENDED;

    public static void addSuppressed(Throwable th, Throwable th2) {
        th.getClass();
        th2.getClass();
        if (th != th2) {
            Integer num = JDK7PlatformImplementations$ReflectSdkVersion.sdkVersion;
            if (num == null || num.intValue() >= 19) {
                th.addSuppressed(th2);
                return;
            }
            Method method = PlatformImplementations$ReflectThrowable.addSuppressed;
            if (method != null) {
                method.invoke(th, th2);
            }
        }
    }

    public static final Result.Failure createFailure(Throwable th) {
        th.getClass();
        return new Result.Failure(th);
    }

    public static Lazy lazy(LazyThreadSafetyMode lazyThreadSafetyMode, Function0 function0) {
        UNINITIALIZED_VALUE uninitialized_value = UNINITIALIZED_VALUE.INSTANCE;
        int ordinal = lazyThreadSafetyMode.ordinal();
        if (ordinal == 0) {
            return new SynchronizedLazyImpl(function0);
        }
        if (ordinal == 1) {
            SafePublicationLazyImpl safePublicationLazyImpl = new SafePublicationLazyImpl();
            safePublicationLazyImpl.initializer = function0;
            safePublicationLazyImpl._value = uninitialized_value;
            return safePublicationLazyImpl;
        }
        if (ordinal != 2) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return null;
        }
        UnsafeLazyImpl unsafeLazyImpl = new UnsafeLazyImpl();
        unsafeLazyImpl.initializer = function0;
        unsafeLazyImpl._value = uninitialized_value;
        return unsafeLazyImpl;
    }

    public static final void throwOnFailure(Object obj) {
        if (obj instanceof Result.Failure) {
            throw ((Result.Failure) obj).exception;
        }
    }

    public static final double ulongToDouble(long j) {
        return ((j >>> 11) * 2048.0d) + (j & 2047);
    }

    public static final String ulongToString(int i, long j) {
        if (j >= 0) {
            CharsKt__CharKt.checkRadix(i);
            String l = Long.toString(j, i);
            l.getClass();
            return l;
        }
        long j2 = i;
        long j3 = ((j >>> 1) / j2) << 1;
        long j4 = j - (j3 * j2);
        if (j4 >= j2) {
            j4 -= j2;
            j3++;
        }
        CharsKt__CharKt.checkRadix(i);
        String l2 = Long.toString(j3, i);
        l2.getClass();
        CharsKt__CharKt.checkRadix(i);
        String l3 = Long.toString(j4, i);
        l3.getClass();
        return l2.concat(l3);
    }

    public static SynchronizedLazyImpl lazy(Function0 function0) {
        function0.getClass();
        return new SynchronizedLazyImpl(function0);
    }
}
