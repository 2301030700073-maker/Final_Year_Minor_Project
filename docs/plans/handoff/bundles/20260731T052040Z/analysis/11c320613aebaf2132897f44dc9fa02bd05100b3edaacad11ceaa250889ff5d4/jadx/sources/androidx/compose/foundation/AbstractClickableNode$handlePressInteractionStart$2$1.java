package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AbstractClickableNode$handlePressInteractionStart$2$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ PressInteraction.Press $press;
    int label;
    final /* synthetic */ AbstractClickableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractClickableNode$handlePressInteractionStart$2$1(MutableInteractionSource mutableInteractionSource, PressInteraction.Press press, AbstractClickableNode abstractClickableNode, Continuation continuation) {
        super(2, continuation);
        this.$interactionSource = mutableInteractionSource;
        this.$press = press;
        this.this$0 = abstractClickableNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AbstractClickableNode$handlePressInteractionStart$2$1(this.$interactionSource, this.$press, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AbstractClickableNode$handlePressInteractionStart$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0035, code lost:
    
        if (((androidx.compose.foundation.interaction.MutableInteractionSourceImpl) r7).emit(r0, r6) == r3) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0026, code lost:
    
        if (kotlinx.coroutines.JobKt.delay(r4, r6) == r3) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            int r0 = r6.label
            r1 = 2
            r2 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 == 0) goto L1b
            if (r0 == r2) goto L17
            if (r0 != r1) goto L10
            kotlin.ResultKt.throwOnFailure(r7)
            goto L38
        L10:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r6)
            r6 = 0
            return r6
        L17:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L29
        L1b:
            kotlin.ResultKt.throwOnFailure(r7)
            long r4 = androidx.compose.foundation.Clickable_androidKt.TapIndicationDelay
            r6.label = r2
            java.lang.Object r7 = kotlinx.coroutines.JobKt.delay(r4, r6)
            if (r7 != r3) goto L29
            goto L37
        L29:
            androidx.compose.foundation.interaction.MutableInteractionSource r7 = r6.$interactionSource
            androidx.compose.foundation.interaction.PressInteraction$Press r0 = r6.$press
            r6.label = r1
            androidx.compose.foundation.interaction.MutableInteractionSourceImpl r7 = (androidx.compose.foundation.interaction.MutableInteractionSourceImpl) r7
            java.lang.Object r7 = r7.emit(r0, r6)
            if (r7 != r3) goto L38
        L37:
            return r3
        L38:
            androidx.compose.foundation.AbstractClickableNode r7 = r6.this$0
            androidx.compose.foundation.interaction.PressInteraction$Press r6 = r6.$press
            r7.pressInteraction = r6
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AbstractClickableNode$handlePressInteractionStart$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
