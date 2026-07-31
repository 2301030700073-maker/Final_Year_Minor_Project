package kotlin;

import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Method;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.internal.PlatformImplementations$ReflectThrowable;
import kotlin.internal.jdk7.JDK7PlatformImplementations$ReflectSdkVersion;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        int ordinal = lazyThreadSafetyMode.ordinal();
        if (ordinal == 0) {
            return new SynchronizedLazyImpl(function0);
        }
        if (ordinal == 1) {
            return new SafePublicationLazyImpl(function0);
        }
        if (ordinal == 2) {
            return new UnsafeLazyImpl(function0);
        }
        DecodeUtils$$ExternalSyntheticBUOutline0.m();
        return null;
    }

    public static String stackTraceToString(Throwable th) {
        th.getClass();
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.flush();
        String stringWriter2 = stringWriter.toString();
        stringWriter2.getClass();
        return stringWriter2;
    }

    public static final void throwOnFailure(Object obj) {
        if (obj instanceof Result.Failure) {
            throw ((Result.Failure) obj).exception;
        }
    }

    public static final double ulongToDouble(long j) {
        return ((j >>> 11) * 2048.0d) + (j & 2047);
    }

    public static SynchronizedLazyImpl lazy(Function0 function0) {
        function0.getClass();
        return new SynchronizedLazyImpl(function0);
    }
}
