package net.thunderbird.feature.mail.message.list.ui.state.sideeffect;

import androidx.compose.animation.core.MutatorMutex$mutate$2;
import kotlin.jvm.functions.Function2;
import net.thunderbird.core.logging.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class MessageListStateSideEffectHandler {
    public final Function2 dispatch;
    public final Function2 dispatchUiEffect;
    public final Logger logger;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MessageListStateSideEffectHandler(net.thunderbird.core.logging.Logger r5, kotlin.jvm.functions.Function2 r6) {
        /*
            r4 = this;
            com.fsck.k9.Core$restoreNotifications$1 r0 = new com.fsck.k9.Core$restoreNotifications$1
            r1 = 2
            r2 = 6
            r3 = 0
            r0.<init>(r1, r3, r2)
            r5.getClass()
            r6.getClass()
            r4.<init>(r5, r6, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandler.<init>(net.thunderbird.core.logging.Logger, kotlin.jvm.functions.Function2):void");
    }

    public abstract boolean accept(Object obj, Object obj2, Object obj3);

    public abstract Object consume(Object obj, Object obj2, Object obj3, MutatorMutex$mutate$2 mutatorMutex$mutate$2);

    public MessageListStateSideEffectHandler(Logger logger, Function2 function2, Function2 function22) {
        logger.getClass();
        function2.getClass();
        this.logger = logger;
        this.dispatch = function2;
        this.dispatchUiEffect = function22;
    }
}
