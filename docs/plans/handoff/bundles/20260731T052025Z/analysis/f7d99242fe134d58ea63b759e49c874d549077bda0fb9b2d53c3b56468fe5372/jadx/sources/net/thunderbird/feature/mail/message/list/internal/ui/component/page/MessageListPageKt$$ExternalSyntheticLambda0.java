package net.thunderbird.feature.mail.message.list.internal.ui.component.page;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.datastore.preferences.protobuf.Utf8;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import net.thunderbird.feature.mail.message.list.ui.component.DefaultMessageListScope;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt$$ExternalSyntheticLambda4;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageListPageKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ MessageListState f$0;
    public final /* synthetic */ Function1 f$1;
    public final /* synthetic */ DefaultMessageListScope f$2;

    public /* synthetic */ MessageListPageKt$$ExternalSyntheticLambda0(DefaultMessageListScope defaultMessageListScope, MessageListState messageListState, Function1 function1) {
        this.f$2 = defaultMessageListScope;
        this.f$0 = messageListState;
        this.f$1 = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changed(paddingValues) ? 4 : 2;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Function1 function1 = this.f$1;
                    boolean changed = gapComposer.changed(function1);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = new InAppNotificationHostKt$$ExternalSyntheticLambda4(6, function1);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Utf8.SafeProcessor.PullToRefreshBox(false, (Function0) rememberedValue, OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues), null, Expect_jvmKt.rememberComposableLambda(610928177, new MessageListPageKt$$ExternalSyntheticLambda0(this.f$2, this.f$0, function1), gapComposer), gapComposer, 24576);
                    break;
                }
            default:
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((BoxScope) obj).getClass();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Handshake.Companion.MessageList(this.f$2, this.f$0, this.f$1, SizeKt.FillWholeMaxSize, gapComposer2, 3072);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ MessageListPageKt$$ExternalSyntheticLambda0(MessageListState messageListState, Function1 function1, DefaultMessageListScope defaultMessageListScope) {
        this.f$0 = messageListState;
        this.f$1 = function1;
        this.f$2 = defaultMessageListScope;
    }
}
