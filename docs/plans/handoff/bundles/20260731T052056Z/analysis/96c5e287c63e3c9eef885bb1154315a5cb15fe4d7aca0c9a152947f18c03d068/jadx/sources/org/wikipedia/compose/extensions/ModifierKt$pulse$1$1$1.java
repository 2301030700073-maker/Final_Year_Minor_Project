package org.wikipedia.compose.extensions;

import androidx.compose.animation.core.Easing;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.State;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ModifierKt$pulse$1$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Easing $easing;
    public final /* synthetic */ Function0 $onCompleted;
    public final /* synthetic */ ParcelableSnapshotMutableFloatState $scale;
    public final /* synthetic */ MutableState $targetScale;
    public float F$0;
    public int I$0;
    public int I$1;
    public int I$2;
    public int I$3;
    public int I$4;
    public State L$0;
    public Easing L$1;
    public ParcelableSnapshotMutableFloatState L$2;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModifierKt$pulse$1$1$1(Function0 function0, MutableState mutableState, Easing easing, ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState, Continuation continuation) {
        super(2, continuation);
        this.$onCompleted = function0;
        this.$targetScale = mutableState;
        this.$easing = easing;
        this.$scale = parcelableSnapshotMutableFloatState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ModifierKt$pulse$1$1$1(this.$onCompleted, this.$targetScale, this.$easing, this.$scale, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ModifierKt$pulse$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x005f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x00c6 -> B:6:0x00c7). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.compose.extensions.ModifierKt$pulse$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
