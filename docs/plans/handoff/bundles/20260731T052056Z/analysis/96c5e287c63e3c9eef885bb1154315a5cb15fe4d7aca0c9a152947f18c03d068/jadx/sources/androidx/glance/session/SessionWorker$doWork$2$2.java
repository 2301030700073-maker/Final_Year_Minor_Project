package androidx.glance.session;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.material3.TooltipStateImpl$show$cancellableShow$1;
import androidx.room.Transactor;
import androidx.room.coroutines.PassthroughConnection;
import java.io.Serializable;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.offline.db.OfflineObjectDao_Impl;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.db.ReadingListPageDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SessionWorker$doWork$2$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ Object $$this$withTimerOrNull;
    public final /* synthetic */ int $r8$classId;
    public Object L$0;
    public int label;
    public final /* synthetic */ Object this$0;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.glance.session.SessionWorker$doWork$2$2$1, reason: invalid class name */
    public final class AnonymousClass1 extends Lambda implements Function0 {
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return AwaitKt.Job$default();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SessionWorker$doWork$2$2(Object obj, Serializable serializable, Object obj2, Continuation continuation, int i) {
        super(1, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.this$0 = serializable;
        this.$$this$withTimerOrNull = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.$$this$withTimerOrNull;
        Object obj3 = this.this$0;
        switch (i) {
            case 0:
                return new SessionWorker$doWork$2$2((SessionWorker) obj3, (TimerScopeKt$withTimer$2$1$blockScope$1) obj2, (Continuation) obj).invokeSuspend(unit);
            case 1:
                return new SessionWorker$doWork$2$2((TooltipStateImpl) this.L$0, (TooltipStateImpl$show$cancellableShow$1) obj3, (MutatePriority) obj2, (Continuation) obj, 1).invokeSuspend(unit);
            case 2:
                return new SessionWorker$doWork$2$2((PassthroughConnection) this.L$0, (Transactor.SQLiteTransactionType) obj3, (Function2) obj2, (Continuation) obj, 2).invokeSuspend(unit);
            case 3:
                return new SessionWorker$doWork$2$2((OfflineObjectDao_Impl) this.L$0, (String) obj3, (String) obj2, (Continuation) obj, 3).invokeSuspend(unit);
            default:
                return new SessionWorker$doWork$2$2((ReadingListPageDao_Impl) this.L$0, (ReadingList) obj3, (List) obj2, (Continuation) obj, 4).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x011c, code lost:
    
        if (r0 == r9) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0178, code lost:
    
        if (kotlinx.coroutines.AwaitKt.withContext(r0, r2, r14) != r9) goto L89;
     */
    /* JADX WARN: Removed duplicated region for block: B:88:? A[RETURN, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.session.SessionWorker$doWork$2$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SessionWorker$doWork$2$2(SessionWorker sessionWorker, TimerScopeKt$withTimer$2$1$blockScope$1 timerScopeKt$withTimer$2$1$blockScope$1, Continuation continuation) {
        super(1, continuation);
        this.$r8$classId = 0;
        this.this$0 = sessionWorker;
        this.$$this$withTimerOrNull = timerScopeKt$withTimer$2$1$blockScope$1;
    }
}
