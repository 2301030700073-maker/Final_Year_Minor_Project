package androidx.compose.ui.focus;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: FocusInvalidationManager.kt */
/* loaded from: classes.dex */
/* synthetic */ class FocusInvalidationManager$scheduleInvalidation$1 extends FunctionReferenceImpl implements Function0 {
    FocusInvalidationManager$scheduleInvalidation$1(Object obj) {
        super(0, obj, FocusInvalidationManager.class, "invalidateNodes", "invalidateNodes()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Object invoke() {
        m1112invoke();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: collision with other method in class */
    public final void m1112invoke() {
        ((FocusInvalidationManager) this.receiver).invalidateNodes();
    }
}
