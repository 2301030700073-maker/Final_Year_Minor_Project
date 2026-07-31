package androidx.core.view;

import android.view.View;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewKt$allViews$1 extends RestrictedSuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $this_allViews;
    public /* synthetic */ Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ViewKt$allViews$1(int i, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$this_allViews = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$this_allViews;
        switch (i) {
            case 0:
                ViewKt$allViews$1 viewKt$allViews$1 = new ViewKt$allViews$1(0, (View) obj2, continuation);
                viewKt$allViews$1.L$0 = obj;
                return viewKt$allViews$1;
            case 1:
                ViewKt$allViews$1 viewKt$allViews$12 = new ViewKt$allViews$1(1, (AndroidEdgeEffectOverscrollEffect) obj2, continuation);
                viewKt$allViews$12.L$0 = obj;
                return viewKt$allViews$12;
            case 2:
                ViewKt$allViews$1 viewKt$allViews$13 = new ViewKt$allViews$1(2, (PointerEventPass) obj2, continuation);
                viewKt$allViews$13.L$0 = obj;
                return viewKt$allViews$13;
            default:
                ViewKt$allViews$1 viewKt$allViews$14 = new ViewKt$allViews$1(3, (Ref$BooleanRef) obj2, continuation);
                viewKt$allViews$14.L$0 = obj;
                return viewKt$allViews$14;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
        }
        return ((ViewKt$allViews$1) create((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x0163, code lost:
    
        if (r1.yield(r6, r14) == r0) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00d0, code lost:
    
        if (r15 != r8) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:?, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x00bb, code lost:
    
        if (r15 == r8) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0029 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0037 -> B:7:0x003b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x00d0 -> B:42:0x00d4). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.ViewKt$allViews$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
