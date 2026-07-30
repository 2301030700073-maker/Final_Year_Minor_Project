package androidx.work.impl.utils;

import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import java.util.UUID;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: CancelWorkRunnable.kt */
/* loaded from: classes.dex */
final class CancelWorkRunnable$forId$1 extends Lambda implements Function0 {
    final /* synthetic */ UUID $id;
    final /* synthetic */ WorkManagerImpl $workManagerImpl;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CancelWorkRunnable$forId$1(WorkManagerImpl workManagerImpl, UUID uuid) {
        super(0);
        this.$workManagerImpl = workManagerImpl;
        this.$id = uuid;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Object invoke() {
        m2574invoke();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: collision with other method in class */
    public final void m2574invoke() {
        WorkDatabase workDatabase = this.$workManagerImpl.getWorkDatabase();
        Intrinsics.checkNotNullExpressionValue(workDatabase, "workManagerImpl.workDatabase");
        final WorkManagerImpl workManagerImpl = this.$workManagerImpl;
        final UUID uuid = this.$id;
        workDatabase.runInTransaction(new Runnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable$forId$1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CancelWorkRunnable$forId$1.invoke$lambda$0(WorkManagerImpl.this, uuid);
            }
        });
        CancelWorkRunnable.reschedulePendingWorkers(this.$workManagerImpl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(WorkManagerImpl workManagerImpl, UUID uuid) {
        String uuid2 = uuid.toString();
        Intrinsics.checkNotNullExpressionValue(uuid2, "id.toString()");
        CancelWorkRunnable.cancel(workManagerImpl, uuid2);
    }
}
