package net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase;

import app.k9mail.legacy.message.controller.SimpleMessagingListener;
import kotlin.Result;
import kotlin.Unit;
import kotlinx.coroutines.channels.ProducerCoroutine;
import kotlinx.coroutines.channels.ProducerScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SyncAccount$invoke$1$listener$1 extends SimpleMessagingListener {
    public final /* synthetic */ ProducerScope $$this$callbackFlow;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SyncAccount$invoke$1$listener$1(ProducerScope producerScope, int i) {
        this.$r8$classId = i;
        this.$$this$callbackFlow = producerScope;
    }

    @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
    public final void checkMailFinished() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ProducerScope producerScope = this.$$this$callbackFlow;
        switch (i) {
            case 0:
                ProducerCoroutine producerCoroutine = (ProducerCoroutine) producerScope;
                producerCoroutine.mo1016trySendJP2dKIU(new Result(unit));
                producerCoroutine.close(null);
                break;
            default:
                ProducerCoroutine producerCoroutine2 = (ProducerCoroutine) producerScope;
                producerCoroutine2.mo1016trySendJP2dKIU(new Result(unit));
                producerCoroutine2.close(null);
                break;
        }
    }
}
