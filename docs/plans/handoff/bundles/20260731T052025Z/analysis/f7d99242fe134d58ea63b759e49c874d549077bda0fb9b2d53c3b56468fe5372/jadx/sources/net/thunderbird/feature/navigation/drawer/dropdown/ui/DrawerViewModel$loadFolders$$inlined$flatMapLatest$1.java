package net.thunderbird.feature.navigation.drawer.dropdown.ui;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DrawerViewModel$loadFolders$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ FlowCollector L$0;
    public /* synthetic */ Object L$1;
    public int label;
    public final /* synthetic */ DrawerViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DrawerViewModel$loadFolders$$inlined$flatMapLatest$1(int i, Continuation continuation, DrawerViewModel drawerViewModel) {
        super(3, continuation);
        this.$r8$classId = i;
        this.this$0 = drawerViewModel;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        DrawerViewModel drawerViewModel = this.this$0;
        FlowCollector flowCollector = (FlowCollector) obj;
        Continuation continuation = (Continuation) obj3;
        switch (i) {
            case 0:
                DrawerViewModel$loadFolders$$inlined$flatMapLatest$1 drawerViewModel$loadFolders$$inlined$flatMapLatest$1 = new DrawerViewModel$loadFolders$$inlined$flatMapLatest$1(0, continuation, drawerViewModel);
                drawerViewModel$loadFolders$$inlined$flatMapLatest$1.L$0 = flowCollector;
                drawerViewModel$loadFolders$$inlined$flatMapLatest$1.L$1 = obj2;
                return drawerViewModel$loadFolders$$inlined$flatMapLatest$1.invokeSuspend(unit);
            default:
                DrawerViewModel$loadFolders$$inlined$flatMapLatest$1 drawerViewModel$loadFolders$$inlined$flatMapLatest$12 = new DrawerViewModel$loadFolders$$inlined$flatMapLatest$1(1, continuation, drawerViewModel);
                drawerViewModel$loadFolders$$inlined$flatMapLatest$12.L$0 = flowCollector;
                drawerViewModel$loadFolders$$inlined$flatMapLatest$12.L$1 = obj2;
                return drawerViewModel$loadFolders$$inlined$flatMapLatest$12.invokeSuspend(unit);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewModel$loadFolders$$inlined$flatMapLatest$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
