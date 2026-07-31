package coil3.disk;

import java.io.IOException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.BlackholeSink;
import okio.RealBufferedSink;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DiskLruCache$launchCleanup$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ DiskLruCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiskLruCache$launchCleanup$1(DiskLruCache diskLruCache, Continuation continuation) {
        super(2, continuation);
        this.this$0 = diskLruCache;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DiskLruCache$launchCleanup$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DiskLruCache$launchCleanup$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        if (this.label != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        DiskLruCache diskLruCache = this.this$0;
        synchronized (diskLruCache.lock) {
            if (!diskLruCache.initialized || diskLruCache.closed) {
                return Unit.INSTANCE;
            }
            try {
                diskLruCache.trimToSize();
            } catch (IOException unused) {
                diskLruCache.mostRecentTrimFailed = true;
            }
            try {
                if (diskLruCache.operationsSinceRewrite >= 2000) {
                    diskLruCache.writeJournal();
                }
            } catch (IOException unused2) {
                diskLruCache.mostRecentRebuildFailed = true;
                diskLruCache.journalWriter = new RealBufferedSink(new BlackholeSink());
            }
            return Unit.INSTANCE;
        }
    }
}
