package androidx.room.coroutines;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import io.noties.markwon.BlockHandlerDef;
import kotlin.SynchronizedLazyImpl;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.JobKt;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PassthroughConnectionPool implements ConnectionPool {
    public final SynchronizedLazyImpl connection = new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda0(this, 17));
    public final SQLiteDriver driver;
    public final String fileName;
    public final Function2 transactionWrapper;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ConnectionElement implements CoroutineContext.Element {
        public static final BlockHandlerDef Key = new BlockHandlerDef(20);
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
            return AppKt.get(this, key);
        }

        @Override // kotlin.coroutines.CoroutineContext.Element
        public final CoroutineContext.Key getKey() {
            return Key;
        }

        @Override // kotlin.coroutines.CoroutineContext
        public final CoroutineContext minusKey(CoroutineContext.Key key) {
            return AppKt.minusKey(this, key);
        }

        @Override // kotlin.coroutines.CoroutineContext
        public final CoroutineContext plus(CoroutineContext coroutineContext) {
            return AppKt.plus(this, coroutineContext);
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
        if (synchronizedLazyImpl.isInitialized()) {
            ((SQLiteConnection) synchronizedLazyImpl.getValue()).close();
        }
    }

    @Override // androidx.room.coroutines.ConnectionPool
    public final Object useConnection(boolean z, Function2 function2, ContinuationImpl continuationImpl) {
        ConnectionElement connectionElement = (ConnectionElement) continuationImpl.getContext().get(ConnectionElement.Key);
        PassthroughConnection passthroughConnection = connectionElement != null ? connectionElement.connectionWrapper : null;
        if (passthroughConnection != null) {
            return function2.invoke(passthroughConnection, continuationImpl);
        }
        PassthroughConnection passthroughConnection2 = new PassthroughConnection(this.transactionWrapper, (SQLiteConnection) this.connection.getValue());
        return JobKt.withContext(new ConnectionElement(passthroughConnection2), new PassthroughConnectionPool$useConnection$2(function2, passthroughConnection2, null), continuationImpl);
    }
}
