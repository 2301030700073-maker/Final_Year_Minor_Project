package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.runtime.MutableState;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ChipElevation$animateElevation$2$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Animatable $animatable;
    public final /* synthetic */ boolean $enabled;
    public final /* synthetic */ Interaction $interaction;
    public final /* synthetic */ Object $lastInteraction$delegate;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ float $target;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ChipElevation$animateElevation$2$1(Animatable animatable, float f, boolean z, Interaction interaction, MutableState mutableState, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$animatable = animatable;
        this.$target = f;
        this.$enabled = z;
        this.$interaction = interaction;
        this.$lastInteraction$delegate = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$lastInteraction$delegate;
        switch (i) {
            case 0:
                return new ChipElevation$animateElevation$2$1(this.$animatable, this.$target, this.$enabled, this.$interaction, (MutableState) obj2, continuation, 0);
            case 1:
                return new ChipElevation$animateElevation$2$1(this.$animatable, this.$target, this.$enabled, this.$interaction, (MutableState) obj2, continuation, 1);
            default:
                Interaction interaction = this.$interaction;
                return new ChipElevation$animateElevation$2$1(this.$animatable, this.$target, this.$enabled, (ButtonElevation) obj2, interaction, continuation);
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
        return ((ChipElevation$animateElevation$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c4, code lost:
    
        if (r5.snapTo(r13, r12) == r0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d3, code lost:
    
        if (androidx.compose.material3.internal.ElevationKt.m314animateElevationrAjV9yQ(r5, r6, r13, r2, r12) == r0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0111, code lost:
    
        if (r5.snapTo(r13, r12) == r0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0120, code lost:
    
        if (androidx.compose.material3.internal.ElevationKt.m314animateElevationrAjV9yQ(r5, r6, r13, r2, r12) == r0) goto L63;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ChipElevation$animateElevation$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChipElevation$animateElevation$2$1(Animatable animatable, float f, boolean z, ButtonElevation buttonElevation, Interaction interaction, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 2;
        this.$animatable = animatable;
        this.$target = f;
        this.$enabled = z;
        this.$lastInteraction$delegate = buttonElevation;
        this.$interaction = interaction;
    }
}
