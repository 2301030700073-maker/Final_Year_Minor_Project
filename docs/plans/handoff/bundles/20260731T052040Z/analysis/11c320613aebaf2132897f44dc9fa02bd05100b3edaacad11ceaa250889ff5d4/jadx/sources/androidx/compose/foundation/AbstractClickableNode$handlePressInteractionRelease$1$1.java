package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AbstractClickableNode$handlePressInteractionRelease$1$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ Job $job;
    final /* synthetic */ long $offset;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractClickableNode$handlePressInteractionRelease$1$1(Job job, long j, MutableInteractionSource mutableInteractionSource, Continuation continuation) {
        super(2, continuation);
        this.$job = job;
        this.$offset = j;
        this.$interactionSource = mutableInteractionSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AbstractClickableNode$handlePressInteractionRelease$1$1(this.$job, this.$offset, this.$interactionSource, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AbstractClickableNode$handlePressInteractionRelease$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x005b, code lost:
    
        if (((androidx.compose.foundation.interaction.MutableInteractionSourceImpl) r9).emit(r0, r8) == r5) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x005d, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004c, code lost:
    
        if (((androidx.compose.foundation.interaction.MutableInteractionSourceImpl) r4).emit(r9, r8) == r5) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0031, code lost:
    
        if (r9.join(r8) == r5) goto L20;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            int r0 = r8.label
            r1 = 0
            r2 = 3
            r3 = 2
            r4 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 == 0) goto L26
            if (r0 == r4) goto L22
            if (r0 == r3) goto L1a
            if (r0 != r2) goto L14
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5e
        L14:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r8)
            return r1
        L1a:
            java.lang.Object r0 = r8.L$0
            androidx.compose.foundation.interaction.PressInteraction$Release r0 = (androidx.compose.foundation.interaction.PressInteraction.Release) r0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L4f
        L22:
            kotlin.ResultKt.throwOnFailure(r9)
            goto L34
        L26:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.Job r9 = r8.$job
            r8.label = r4
            java.lang.Object r9 = r9.join(r8)
            if (r9 != r5) goto L34
            goto L5d
        L34:
            androidx.compose.foundation.interaction.PressInteraction$Press r9 = new androidx.compose.foundation.interaction.PressInteraction$Press
            long r6 = r8.$offset
            r9.<init>(r6)
            androidx.compose.foundation.interaction.PressInteraction$Release r0 = new androidx.compose.foundation.interaction.PressInteraction$Release
            r0.<init>(r9)
            androidx.compose.foundation.interaction.MutableInteractionSource r4 = r8.$interactionSource
            r8.L$0 = r0
            r8.label = r3
            androidx.compose.foundation.interaction.MutableInteractionSourceImpl r4 = (androidx.compose.foundation.interaction.MutableInteractionSourceImpl) r4
            java.lang.Object r9 = r4.emit(r9, r8)
            if (r9 != r5) goto L4f
            goto L5d
        L4f:
            androidx.compose.foundation.interaction.MutableInteractionSource r9 = r8.$interactionSource
            r8.L$0 = r1
            r8.label = r2
            androidx.compose.foundation.interaction.MutableInteractionSourceImpl r9 = (androidx.compose.foundation.interaction.MutableInteractionSourceImpl) r9
            java.lang.Object r8 = r9.emit(r0, r8)
            if (r8 != r5) goto L5e
        L5d:
            return r5
        L5e:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AbstractClickableNode$handlePressInteractionRelease$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
