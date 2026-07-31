package androidx.room;

import androidx.room.ObservedTableStates;
import androidx.room.coroutines.PooledConnectionImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Transactor $connection;
    public final /* synthetic */ ObservedTableStates.ObserveOp[] $tablesToSync;
    public int I$0;
    public int I$1;
    public int I$2;
    public ObservedTableStates.ObserveOp[] L$0;
    public TriggerBasedInvalidationTracker L$1;
    public Transactor L$2;
    public int label;
    public final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ObservedTableStates.ObserveOp.values().length];
            try {
                iArr[ObservedTableStates.ObserveOp.NO_OP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ObservedTableStates.ObserveOp.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ObservedTableStates.ObserveOp.REMOVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1(ObservedTableStates.ObserveOp[] observeOpArr, TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Transactor transactor, Continuation continuation) {
        super(2, continuation);
        this.$tablesToSync = observeOpArr;
        this.this$0 = triggerBasedInvalidationTracker;
        this.$connection = transactor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1(this.$tablesToSync, this.this$0, this.$connection, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1) create((PooledConnectionImpl.TransactionImpl) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0074, code lost:
    
        if (r8.startTrackingTable(r7, r13, r12) == r0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005c, code lost:
    
        r6 = r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0077 -> B:10:0x0078). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r12.label
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L23
            if (r1 == r4) goto Ld
            if (r1 != r3) goto L1d
        Ld:
            int r1 = r12.I$2
            int r5 = r12.I$1
            int r6 = r12.I$0
            androidx.room.Transactor r7 = r12.L$2
            androidx.room.TriggerBasedInvalidationTracker r8 = r12.L$1
            androidx.room.ObservedTableStates$ObserveOp[] r9 = r12.L$0
            kotlin.ResultKt.throwOnFailure(r13)
            goto L5c
        L1d:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r12)
            return r2
        L23:
            kotlin.ResultKt.throwOnFailure(r13)
            androidx.room.ObservedTableStates$ObserveOp[] r13 = r12.$tablesToSync
            int r1 = r13.length
            r5 = 0
            androidx.room.TriggerBasedInvalidationTracker r6 = r12.this$0
            androidx.room.Transactor r7 = r12.$connection
            r9 = r13
            r13 = r5
            r8 = r6
        L31:
            if (r5 >= r1) goto L7a
            r6 = r9[r5]
            int r10 = r13 + 1
            int[] r11 = androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1.WhenMappings.$EnumSwitchMapping$0
            int r6 = r6.ordinal()
            r6 = r11[r6]
            if (r6 == r4) goto L77
            if (r6 == r3) goto L62
            r11 = 3
            if (r6 != r11) goto L5e
            r12.L$0 = r9
            r12.L$1 = r8
            r12.L$2 = r7
            r12.I$0 = r10
            r12.I$1 = r5
            r12.I$2 = r1
            r12.label = r3
            java.lang.Object r13 = r8.stopTrackingTable(r7, r13, r12)
            if (r13 != r0) goto L5b
            goto L76
        L5b:
            r6 = r10
        L5c:
            r13 = r6
            goto L78
        L5e:
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
            return r2
        L62:
            r12.L$0 = r9
            r12.L$1 = r8
            r12.L$2 = r7
            r12.I$0 = r10
            r12.I$1 = r5
            r12.I$2 = r1
            r12.label = r4
            java.lang.Object r13 = r8.startTrackingTable(r7, r13, r12)
            if (r13 != r0) goto L5b
        L76:
            return r0
        L77:
            r13 = r10
        L78:
            int r5 = r5 + r4
            goto L31
        L7a:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
