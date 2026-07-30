package androidx.compose.runtime;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: MonotonicFrameClock.kt */
/* loaded from: classes.dex */
public interface MonotonicFrameClock extends CoroutineContext.Element {
    public static final Key Key = Key.$$INSTANCE;

    Object withFrameNanos(Function1 function1, Continuation continuation);

    /* compiled from: MonotonicFrameClock.kt */
    public static final class DefaultImpls {
        public static Object fold(MonotonicFrameClock monotonicFrameClock, Object obj, Function2 function2) {
            return CoroutineContext.Element.DefaultImpls.fold(monotonicFrameClock, obj, function2);
        }

        public static CoroutineContext.Element get(MonotonicFrameClock monotonicFrameClock, CoroutineContext.Key key) {
            return CoroutineContext.Element.DefaultImpls.get(monotonicFrameClock, key);
        }

        public static CoroutineContext minusKey(MonotonicFrameClock monotonicFrameClock, CoroutineContext.Key key) {
            return CoroutineContext.Element.DefaultImpls.minusKey(monotonicFrameClock, key);
        }

        public static CoroutineContext plus(MonotonicFrameClock monotonicFrameClock, CoroutineContext coroutineContext) {
            return CoroutineContext.Element.DefaultImpls.plus(monotonicFrameClock, coroutineContext);
        }
    }

    /* compiled from: MonotonicFrameClock.kt */
    /* renamed from: androidx.compose.runtime.MonotonicFrameClock$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
    }

    /* compiled from: MonotonicFrameClock.kt */
    public static final class Key implements CoroutineContext.Key {
        static final /* synthetic */ Key $$INSTANCE = new Key();

        private Key() {
        }
    }
}
