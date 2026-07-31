package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.interaction.PressInteraction;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AbstractClickableNode$handlePressInteractionStart$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ MutableInteractionSourceImpl $interactionSource;
    public final /* synthetic */ PressInteraction.Press $press;
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ AbstractClickableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AbstractClickableNode$handlePressInteractionStart$1$1(MutableInteractionSourceImpl mutableInteractionSourceImpl, PressInteraction.Press press, AbstractClickableNode abstractClickableNode, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$interactionSource = mutableInteractionSourceImpl;
        this.$press = press;
        this.this$0 = abstractClickableNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new AbstractClickableNode$handlePressInteractionStart$1$1(this.$interactionSource, this.$press, this.this$0, continuation, 0);
            default:
                return new AbstractClickableNode$handlePressInteractionStart$1$1(this.$interactionSource, this.$press, this.this$0, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((AbstractClickableNode$handlePressInteractionStart$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003d, code lost:
    
        if (r3.emit(r9, r10) == r6) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0034, code lost:
    
        if (kotlinx.coroutines.JobKt.delay(r4, r10) == r6) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006d, code lost:
    
        if (r3.emit(r9, r10) == r6) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0064, code lost:
    
        if (kotlinx.coroutines.JobKt.delay(r4, r10) == r6) goto L31;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            int r0 = r10.$r8$classId
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            androidx.compose.foundation.AbstractClickableNode r2 = r10.this$0
            androidx.compose.foundation.interaction.MutableInteractionSourceImpl r3 = r10.$interactionSource
            r4 = 0
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            r7 = 1
            r8 = 2
            androidx.compose.foundation.interaction.PressInteraction$Press r9 = r10.$press
            switch(r0) {
                case 0: goto L44;
                default: goto L14;
            }
        L14:
            int r0 = r10.label
            if (r0 == 0) goto L29
            if (r0 == r7) goto L25
            if (r0 != r8) goto L20
            kotlin.ResultKt.throwOnFailure(r11)
            goto L41
        L20:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r1 = r4
            goto L43
        L25:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L37
        L29:
            kotlin.ResultKt.throwOnFailure(r11)
            long r4 = androidx.compose.foundation.Clickable_androidKt.TapIndicationDelay
            r10.label = r7
            java.lang.Object r11 = kotlinx.coroutines.JobKt.delay(r4, r10)
            if (r11 != r6) goto L37
            goto L3f
        L37:
            r10.label = r8
            java.lang.Object r10 = r3.emit(r9, r10)
            if (r10 != r6) goto L41
        L3f:
            r1 = r6
            goto L43
        L41:
            r2.pressInteraction = r9
        L43:
            return r1
        L44:
            int r0 = r10.label
            if (r0 == 0) goto L59
            if (r0 == r7) goto L55
            if (r0 != r8) goto L50
            kotlin.ResultKt.throwOnFailure(r11)
            goto L71
        L50:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r1 = r4
            goto L73
        L55:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L67
        L59:
            kotlin.ResultKt.throwOnFailure(r11)
            long r4 = androidx.compose.foundation.Clickable_androidKt.TapIndicationDelay
            r10.label = r7
            java.lang.Object r11 = kotlinx.coroutines.JobKt.delay(r4, r10)
            if (r11 != r6) goto L67
            goto L6f
        L67:
            r10.label = r8
            java.lang.Object r10 = r3.emit(r9, r10)
            if (r10 != r6) goto L71
        L6f:
            r1 = r6
            goto L73
        L71:
            r2.indirectPointerPressInteraction = r9
        L73:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AbstractClickableNode$handlePressInteractionStart$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
