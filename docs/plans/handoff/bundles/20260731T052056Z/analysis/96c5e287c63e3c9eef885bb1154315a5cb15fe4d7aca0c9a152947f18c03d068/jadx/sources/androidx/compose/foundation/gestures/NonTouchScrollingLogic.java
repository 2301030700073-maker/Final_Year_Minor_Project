package androidx.compose.foundation.gestures;

import androidx.cardview.widget.CardView;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class NonTouchScrollingLogic {
    public Density density;
    public boolean isScrolling;
    public final Function2 onScrollStopped;
    public final ScrollingLogic scrollingLogic;
    public final CardView.AnonymousClass1 velocityTracker = new CardView.AnonymousClass1(3);

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

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object userScroll$foundation(kotlin.jvm.functions.Function2 r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof androidx.compose.foundation.gestures.NonTouchScrollingLogic$userScroll$1
            if (r0 == 0) goto L13
            r0 = r7
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
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2e
            if (r2 != r4) goto L28
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4c
        L28:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L2e:
            kotlin.ResultKt.throwOnFailure(r7)
            r5.isScrolling = r4
            androidx.datastore.core.SimpleActor$offer$2 r7 = new androidx.datastore.core.SimpleActor$offer$2
            r2 = 5
            r7.<init>(r5, r6, r3, r2)
            r0.label = r4
            kotlinx.coroutines.SupervisorCoroutine r6 = new kotlinx.coroutines.SupervisorCoroutine
            kotlin.coroutines.CoroutineContext r2 = r0._context
            r2.getClass()
            r6.<init>(r0, r2)
            java.lang.Object r6 = kotlin.ExceptionsKt.startUndspatched(r6, r4, r6, r7)
            if (r6 != r1) goto L4c
            return r1
        L4c:
            r6 = 0
            r5.isScrolling = r6
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.NonTouchScrollingLogic.userScroll$foundation(kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
