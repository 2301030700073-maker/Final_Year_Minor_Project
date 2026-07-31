package kotlinx.coroutines;

import androidx.work.Data$$ExternalSyntheticLambda0;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.ContinuationInterceptor$Key;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.LimitedDispatcher;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class CoroutineDispatcher extends AbstractCoroutineContextElement implements CoroutineContext.Element {
    public static final Key Key = new Key(ContinuationInterceptor$Key.$$INSTANCE, new Data$$ExternalSyntheticLambda0(28));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Key implements CoroutineContext.Key {
        public final Function1 safeCast;
        public final CoroutineContext.Key topmostKey;

        public Key(CoroutineContext.Key key, Function1 function1) {
            key.getClass();
            this.safeCast = function1;
            this.topmostKey = key instanceof Key ? ((Key) key).topmostKey : key;
        }
    }

    public CoroutineDispatcher() {
        super(ContinuationInterceptor$Key.$$INSTANCE);
    }

    public abstract void dispatch(CoroutineContext coroutineContext, Runnable runnable);

    public void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        InlineList.safeDispatch(this, coroutineContext, runnable);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        CoroutineContext.Element element;
        key.getClass();
        if (!(key instanceof Key)) {
            if (ContinuationInterceptor$Key.$$INSTANCE == key) {
                return this;
            }
            return null;
        }
        Key key2 = (Key) key;
        CoroutineContext.Key key3 = this.key;
        key3.getClass();
        if ((key3 == key2 || key2.topmostKey == key3) && (element = (CoroutineContext.Element) key2.safeCast.invoke(this)) != null) {
            return element;
        }
        return null;
    }

    public boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return !(this instanceof Unconfined);
    }

    public CoroutineDispatcher limitedParallelism(int i) {
        InlineList.checkParallelism(i);
        return new LimitedDispatcher(this, i);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        key.getClass();
        if (key instanceof Key) {
            Key key2 = (Key) key;
            CoroutineContext.Key key3 = this.key;
            key3.getClass();
            if (key3 != key2 && key2.topmostKey != key3) {
                return this;
            }
            if (((CoroutineContext.Element) key2.safeCast.invoke(this)) == null) {
                return this;
            }
        } else if (ContinuationInterceptor$Key.$$INSTANCE != key) {
            return this;
        }
        return EmptyCoroutineContext.INSTANCE;
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + AwaitKt.getHexAddress(this);
    }
}
