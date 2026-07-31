package com.fsck.k9.mailstore;

import com.eygraber.uri.Uri;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultSpecialFolderUpdater$updateSpecialFolders$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Uri.Builder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DefaultSpecialFolderUpdater$updateSpecialFolders$1(Uri.Builder builder, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = builder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Uri.Builder builder = this.this$0;
        switch (i) {
            case 0:
                return new DefaultSpecialFolderUpdater$updateSpecialFolders$1(builder, continuation, 0);
            default:
                return new DefaultSpecialFolderUpdater$updateSpecialFolders$1(builder, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                ((DefaultSpecialFolderUpdater$updateSpecialFolders$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            default:
                ((DefaultSpecialFolderUpdater$updateSpecialFolders$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Uri.Builder builder = this.this$0;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                Uri.Builder.access$updateSpecialFoldersSynchronous(builder);
                break;
            default:
                ResultKt.throwOnFailure(obj);
                Uri.Builder.access$updateSpecialFoldersSynchronous(builder);
                break;
        }
        return unit;
    }
}
