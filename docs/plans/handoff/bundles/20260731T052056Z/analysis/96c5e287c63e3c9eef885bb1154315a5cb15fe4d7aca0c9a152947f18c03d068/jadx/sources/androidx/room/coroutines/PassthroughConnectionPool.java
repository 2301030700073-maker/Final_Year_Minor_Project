package androidx.room.coroutines;

import androidx.paging.PageFetcher$flow$1;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.transition.Transition;
import androidx.work.OperationKt;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import kotlin.SynchronizedLazyImpl;
import kotlin.UNINITIALIZED_VALUE;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PassthroughConnectionPool implements ConnectionPool {
    public final SynchronizedLazyImpl connection = new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda0(8, this));
    public final SQLiteDriver driver;
    public final String fileName;
    public final Function2 transactionWrapper;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ConnectionElement implements CoroutineContext.Element {
        public static final Transition.AnonymousClass1 Key = new Transition.AnonymousClass1(19, false);
        public final PassthroughConnection connectionWrapper;

        public ConnectionElement(PassthroughConnection passthroughConnection) {
            this.connectionWrapper = passthroughConnection;
        }

        @Override // kotlin.coroutines.CoroutineContext
        public final Object fold(Object obj, Function2 function2) {
            return function2.invoke(obj, this);
        }

        @Override // kotlin.coroutines.CoroutineContext
        public final CoroutineContext.Element get(CoroutineContext.Key key) {
            return OperationKt.get(this, key);
        }

        @Override // kotlin.coroutines.CoroutineContext.Element
        public final CoroutineContext.Key getKey() {
            return Key;
        }

        @Override // kotlin.coroutines.CoroutineContext
        public final CoroutineContext minusKey(CoroutineContext.Key key) {
            return OperationKt.minusKey(this, key);
        }

        @Override // kotlin.coroutines.CoroutineContext
        public final CoroutineContext plus(CoroutineContext coroutineContext) {
            return OperationKt.plus(this, coroutineContext);
        }
    }

    public PassthroughConnectionPool(SQLiteDriver sQLiteDriver, String str, Function2 function2) {
        this.driver = sQLiteDriver;
        this.fileName = str;
        this.transactionWrapper = function2;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        SynchronizedLazyImpl synchronizedLazyImpl = this.connection;
        if (synchronizedLazyImpl._value != UNINITIALIZED_VALUE.INSTANCE) {
            ((SQLiteConnection) synchronizedLazyImpl.getValue()).close();
        }
    }

    @Override // androidx.room.coroutines.ConnectionPool
    public final Object useConnection(boolean z, Function2 function2, ContinuationImpl continuationImpl) {
        ConnectionElement connectionElement = (ConnectionElement) continuationImpl.getContext().get(ConnectionElement.Key);
        Continuation continuation = null;
        PassthroughConnection passthroughConnection = connectionElement != null ? connectionElement.connectionWrapper : null;
        if (passthroughConnection != null) {
            return function2.invoke(passthroughConnection, continuationImpl);
        }
        PassthroughConnection passthroughConnection2 = new PassthroughConnection(this.transactionWrapper, (SQLiteConnection) this.connection.getValue());
        return AwaitKt.withContext(new ConnectionElement(passthroughConnection2), new PageFetcher$flow$1(function2, passthroughConnection2, continuation, 17), continuationImpl);
    }
}
