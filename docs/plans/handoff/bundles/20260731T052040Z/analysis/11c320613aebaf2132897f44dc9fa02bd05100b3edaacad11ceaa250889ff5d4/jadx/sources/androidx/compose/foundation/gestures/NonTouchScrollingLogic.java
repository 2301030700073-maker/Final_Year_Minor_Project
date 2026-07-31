package androidx.compose.foundation.gestures;

import androidx.cardview.widget.CardView;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class NonTouchScrollingLogic {
    public Density density;
    public boolean isScrolling;
    public final Function2 onScrollStopped;
    public final ScrollingLogic scrollingLogic;
    public final CardView.AnonymousClass1 velocityTracker = new CardView.AnonymousClass1(5);

    public NonTouchScrollingLogic(ScrollingLogic scrollingLogic, Function2 function2, Density density) {
        this.scrollingLogic = scrollingLogic;
        this.onScrollStopped = function2;
        this.density = density;
    }

    public static void consume$foundation(PointerEvent pointerEvent) {
        List list = pointerEvent.changes;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ((PointerInputChange) list.get(i)).consume();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object userScroll$foundation(kotlin.jvm.functions.Function2 r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof androidx.compose.foundation.gestures.NonTouchScrollingLogic$userScroll$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.compose.foundation.gestures.NonTouchScrollingLogic$userScroll$1 r0 = (androidx.compose.foundation.gestures.NonTouchScrollingLogic$userScroll$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.NonTouchScrollingLogic$userScroll$1 r0 = new androidx.compose.foundation.gestures.NonTouchScrollingLogic$userScroll$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2c
            if (r1 != r3) goto L26
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L26:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r4)
            return r2
        L2c:
            kotlin.ResultKt.throwOnFailure(r6)
            r4.isScrolling = r3
            androidx.compose.foundation.gestures.NonTouchScrollingLogic$userScroll$2 r6 = new androidx.compose.foundation.gestures.NonTouchScrollingLogic$userScroll$2
            r6.<init>(r4, r5, r2)
            r0.label = r3
            kotlinx.coroutines.SupervisorCoroutine r5 = new kotlinx.coroutines.SupervisorCoroutine
            kotlin.coroutines.CoroutineContext r1 = r0.getContext()
            r5.<init>(r0, r1)
            java.lang.Object r5 = okio.Options.Companion.startUndispatched(r5, r3, r5, r6)
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r5 != r6) goto L4a
            return r6
        L4a:
            r5 = 0
            r4.isScrolling = r5
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.NonTouchScrollingLogic.userScroll$foundation(kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
