package androidx.paging;

import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.flow.Flow;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagingData {
    public final Function0 cachedPageEvent;
    public final Flow flow;
    public final HintHandler hintReceiver;
    public final UiReceiver uiReceiver;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.paging.PagingData$1, reason: invalid class name */
    public final class AnonymousClass1 implements Function0 {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return null;
        }
    }

    public PagingData(Flow flow, UiReceiver uiReceiver, HintHandler hintHandler, Function0 function0) {
        uiReceiver.getClass();
        hintHandler.getClass();
        this.flow = flow;
        this.uiReceiver = uiReceiver;
        this.hintReceiver = hintHandler;
        this.cachedPageEvent = function0;
    }
}
