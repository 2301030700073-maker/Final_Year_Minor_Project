package net.thunderbird.feature.mail.message.list.internal.ui;

import androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1;
import androidx.lifecycle.ViewModelKt;
import androidx.room.InvalidationTracker$implementation$1;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.mail.message.list.internal.ui.state.machine.MessageListStateMachine$Factory;
import net.thunderbird.feature.mail.message.list.ui.MessageListContract$ViewModel;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListViewModel extends MessageListContract$ViewModel {
    public final ConnectionPool stateMachine;

    public MessageListViewModel(Logger logger, MessageListStateMachine$Factory messageListStateMachine$Factory, List list, StringsResourceManager stringsResourceManager) {
        super(logger, list);
        int i = 0;
        int i2 = 1;
        this.stateMachine = new ConnectionPool(messageListStateMachine$Factory.logger, messageListStateMachine$Factory.clock, ViewModelKt.getViewModelScope(this), new InvalidationTracker$implementation$1(i2, this, MessageListViewModel.class, "event", "event(Ljava/lang/Object;)V", i, 22), new InvalidationTracker$implementation$1(i2, this, MessageListViewModel.class, "emitEffect", "emitEffect(Ljava/lang/Object;)V", i, 23), messageListStateMachine$Factory.debuggingSettingsPreferenceManager);
        Sink$CC.verbose$default(logger, "MessageListViewModel", null, new ThemeSizesKt$$ExternalSyntheticLambda0(28), 2);
        FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(getState(), new CoreTextFieldKt$TextFieldCursorHandle$2$1.AnonymousClass1(logger, this, stringsResourceManager, (Continuation) null, 1), 2), ViewModelKt.getViewModelScope(this));
    }
}
