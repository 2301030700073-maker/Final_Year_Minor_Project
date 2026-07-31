package expo.modules.updates.db;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* compiled from: DatabaseHolder.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J8\u0010\u000b\u001a\u0002H\f\"\u0004\b\u0000\u0010\f2\"\u0010\r\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\f0\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000eH\u0086@¢\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0012"}, d2 = {"Lexpo/modules/updates/db/DatabaseHolder;", "", "mDatabase", "Lexpo/modules/updates/db/UpdatesDatabase;", "<init>", "(Lexpo/modules/updates/db/UpdatesDatabase;)V", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "database", "getDatabase", "()Lexpo/modules/updates/db/UpdatesDatabase;", "withDatabase", "T", "block", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class DatabaseHolder {
    private static final String TAG = "DatabaseHolder";
    private final UpdatesDatabase database;
    private final UpdatesDatabase mDatabase;
    private final Mutex mutex;

    public DatabaseHolder(UpdatesDatabase mDatabase) {
        Object runBlocking$default;
        Intrinsics.checkNotNullParameter(mDatabase, "mDatabase");
        this.mDatabase = mDatabase;
        this.mutex = MutexKt.Mutex$default(false, 1, null);
        runBlocking$default = BuildersKt__BuildersKt.runBlocking$default(null, new DatabaseHolder$database$1(this, null), 1, null);
        this.database = (UpdatesDatabase) runBlocking$default;
    }

    public final UpdatesDatabase getDatabase() {
        return this.database;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0073 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> java.lang.Object withDatabase(kotlin.jvm.functions.Function2<? super expo.modules.updates.db.UpdatesDatabase, ? super kotlin.coroutines.Continuation<? super T>, ? extends java.lang.Object> r8, kotlin.coroutines.Continuation<? super T> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof expo.modules.updates.db.DatabaseHolder$withDatabase$1
            if (r0 == 0) goto L14
            r0 = r9
            expo.modules.updates.db.DatabaseHolder$withDatabase$1 r0 = (expo.modules.updates.db.DatabaseHolder$withDatabase$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            expo.modules.updates.db.DatabaseHolder$withDatabase$1 r0 = new expo.modules.updates.db.DatabaseHolder$withDatabase$1
            r0.<init>(r7, r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L4e
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r8 = r0.L$0
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L32
            goto L77
        L32:
            r9 = move-exception
            goto L7f
        L34:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3c:
            java.lang.Object r8 = r0.L$2
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            java.lang.Object r2 = r0.L$1
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2
            java.lang.Object r4 = r0.L$0
            expo.modules.updates.db.DatabaseHolder r4 = (expo.modules.updates.db.DatabaseHolder) r4
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r8
            r8 = r2
            goto L63
        L4e:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r7.mutex
            r0.L$0 = r7
            r0.L$1 = r8
            r0.L$2 = r9
            r0.label = r4
            java.lang.Object r2 = r9.lock(r5, r0)
            if (r2 != r1) goto L62
            return r1
        L62:
            r4 = r7
        L63:
            expo.modules.updates.db.UpdatesDatabase r2 = r4.mDatabase     // Catch: java.lang.Throwable -> L7b
            r0.L$0 = r9     // Catch: java.lang.Throwable -> L7b
            r0.L$1 = r5     // Catch: java.lang.Throwable -> L7b
            r0.L$2 = r5     // Catch: java.lang.Throwable -> L7b
            r0.label = r3     // Catch: java.lang.Throwable -> L7b
            java.lang.Object r8 = r8.invoke(r2, r0)     // Catch: java.lang.Throwable -> L7b
            if (r8 != r1) goto L74
            return r1
        L74:
            r6 = r9
            r9 = r8
            r8 = r6
        L77:
            r8.unlock(r5)
            return r9
        L7b:
            r8 = move-exception
            r6 = r9
            r9 = r8
            r8 = r6
        L7f:
            r8.unlock(r5)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: expo.modules.updates.db.DatabaseHolder.withDatabase(kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
