package com.fsck.k9;

import com.fsck.k9.notification.NotificationController;
import kotlin.Lazy;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import net.thunderbird.feature.mail.message.list.ui.effect.MessageListEffect;
import net.thunderbird.feature.notification.api.ui.host.visual.SnackbarVisual;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Core$restoreNotifications$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Core$restoreNotifications$1(int i, Continuation continuation, int i2) {
        super(i, continuation);
        this.$r8$classId = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new Core$restoreNotifications$1(2, continuation, 0);
            case 1:
                return new Core$restoreNotifications$1(2, continuation, 1);
            case 2:
                return new Core$restoreNotifications$1(2, continuation, 2);
            case 3:
                return new Core$restoreNotifications$1(2, continuation, 3);
            case 4:
                return new Core$restoreNotifications$1(2, continuation, 4);
            case 5:
                return new Core$restoreNotifications$1(2, continuation, 5);
            case 6:
                return new Core$restoreNotifications$1(2, continuation, 6);
            default:
                return new Core$restoreNotifications$1(2, continuation, 7);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((Core$restoreNotifications$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 1:
                ((Core$restoreNotifications$1) create((Flow) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 2:
                break;
            case 3:
                ((Core$restoreNotifications$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 4:
                break;
            case 5:
                ((Core$restoreNotifications$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 6:
                ((Core$restoreNotifications$1) create((MessageListEffect) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            default:
                ((Core$restoreNotifications$1) create((SnackbarVisual) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                Lazy lazy = Core.context$delegate;
                ((NotificationController) Core.notificationController$delegate.getValue()).restoreNewMailNotifications(((Preferences) Core.preferences$delegate.getValue()).getAccounts());
                break;
            case 1:
                ResultKt.throwOnFailure(obj);
                break;
            case 2:
                ResultKt.throwOnFailure(obj);
                break;
            case 3:
                ResultKt.throwOnFailure(obj);
                break;
            case 4:
                ResultKt.throwOnFailure(obj);
                break;
            case 5:
                ResultKt.throwOnFailure(obj);
                K9.saveSettingsAsync();
                break;
            case 6:
                ResultKt.throwOnFailure(obj);
                break;
            default:
                ResultKt.throwOnFailure(obj);
                break;
        }
        return unit;
    }
}
