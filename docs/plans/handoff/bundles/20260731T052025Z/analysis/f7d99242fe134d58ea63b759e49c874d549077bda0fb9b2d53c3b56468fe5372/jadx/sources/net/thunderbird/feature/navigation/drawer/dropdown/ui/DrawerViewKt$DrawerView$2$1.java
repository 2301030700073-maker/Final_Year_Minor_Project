package net.thunderbird.feature.navigation.drawer.dropdown.ui;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.thunderbird.feature.navigation.drawer.dropdown.FolderDrawerState;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContract$Event;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DrawerViewKt$DrawerView$2$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Function1 $dispatch;
    public final /* synthetic */ FolderDrawerState $drawerState;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DrawerViewKt$DrawerView$2$1(Function1 function1, FolderDrawerState folderDrawerState, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$dispatch = function1;
        this.$drawerState = folderDrawerState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        FolderDrawerState folderDrawerState = this.$drawerState;
        Function1 function1 = this.$dispatch;
        switch (i) {
            case 0:
                return new DrawerViewKt$DrawerView$2$1(function1, folderDrawerState, continuation, 0);
            default:
                return new DrawerViewKt$DrawerView$2$1(function1, folderDrawerState, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                ((DrawerViewKt$DrawerView$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            default:
                ((DrawerViewKt$DrawerView$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        FolderDrawerState folderDrawerState = this.$drawerState;
        Function1 function1 = this.$dispatch;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                function1.invoke(new DrawerContract$Event.SelectAccount(folderDrawerState.selectedAccountUuid));
                break;
            default:
                ResultKt.throwOnFailure(obj);
                function1.invoke(new DrawerContract$Event.SelectFolder(folderDrawerState.selectedFolderId));
                break;
        }
        return unit;
    }
}
