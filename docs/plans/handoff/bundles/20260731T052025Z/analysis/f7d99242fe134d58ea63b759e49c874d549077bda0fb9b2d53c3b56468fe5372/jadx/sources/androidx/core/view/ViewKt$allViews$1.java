package androidx.core.view;

import android.view.View;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ViewKt$allViews$1 extends RestrictedSuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $this_allViews;
    public /* synthetic */ Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ViewKt$allViews$1(Object obj, Continuation continuation, int i) {
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
                ViewKt$allViews$1 viewKt$allViews$1 = new ViewKt$allViews$1((View) obj2, continuation, 0);
                viewKt$allViews$1.L$0 = obj;
                return viewKt$allViews$1;
            case 1:
                ViewKt$allViews$1 viewKt$allViews$12 = new ViewKt$allViews$1((AndroidEdgeEffectOverscrollEffect) obj2, continuation, 1);
                viewKt$allViews$12.L$0 = obj;
                return viewKt$allViews$12;
            case 2:
                ViewKt$allViews$1 viewKt$allViews$13 = new ViewKt$allViews$1((Function1) obj2, continuation, 2);
                viewKt$allViews$13.L$0 = obj;
                return viewKt$allViews$13;
            case 3:
                ViewKt$allViews$1 viewKt$allViews$14 = new ViewKt$allViews$1((CoreTextFieldKt$$ExternalSyntheticLambda1) obj2, continuation, 3);
                viewKt$allViews$14.L$0 = obj;
                return viewKt$allViews$14;
            case 4:
                ViewKt$allViews$1 viewKt$allViews$15 = new ViewKt$allViews$1((ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2) obj2, continuation, 4);
                viewKt$allViews$15.L$0 = obj;
                return viewKt$allViews$15;
            default:
                ViewKt$allViews$1 viewKt$allViews$16 = new ViewKt$allViews$1((PointerEventPass) obj2, continuation, 5);
                viewKt$allViews$16.L$0 = obj;
                return viewKt$allViews$16;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 3:
                ((ViewKt$allViews$1) create((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
        }
        return ((ViewKt$allViews$1) create((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x009b -> B:33:0x009e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x0149 -> B:60:0x014d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.ViewKt$allViews$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
