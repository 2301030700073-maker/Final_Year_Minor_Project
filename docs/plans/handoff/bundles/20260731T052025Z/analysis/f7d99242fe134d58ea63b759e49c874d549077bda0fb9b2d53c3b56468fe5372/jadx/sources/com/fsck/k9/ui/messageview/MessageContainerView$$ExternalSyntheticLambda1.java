package com.fsck.k9.ui.messageview;

import androidx.compose.runtime.Composer;
import com.fsck.k9.mailstore.MessageViewInfo;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.thunderbird.feature.mail.message.reader.api.ui.MessageReaderViewContract$ViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageContainerView$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ MessageContainerView f$0;
    public final /* synthetic */ MessageReaderViewContract$ViewModel f$1;
    public final /* synthetic */ MessageViewInfo f$2;

    public /* synthetic */ MessageContainerView$$ExternalSyntheticLambda1(MessageContainerView messageContainerView, MessageReaderViewContract$ViewModel messageReaderViewContract$ViewModel, MessageViewInfo messageViewInfo) {
        this.f$0 = messageContainerView;
        this.f$1 = messageReaderViewContract$ViewModel;
        this.f$2 = messageViewInfo;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MessageContainerView messageContainerView = this.f$0;
        MessageViewInfo messageViewInfo = this.f$2;
        MessageReaderViewContract$ViewModel messageReaderViewContract$ViewModel = this.f$1;
        Composer composer = (Composer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                MessageContainerView.m946$r8$lambda$nxUTfgxbH73fr8z4zbj7qNQlic(intValue, composer, messageViewInfo, messageContainerView, messageReaderViewContract$ViewModel);
                break;
            default:
                MessageContainerView.$r8$lambda$pdJ3dw3PcgmWZaGeEPct20tLjQQ(intValue, composer, messageViewInfo, messageContainerView, messageReaderViewContract$ViewModel);
                break;
        }
        return unit;
    }

    public /* synthetic */ MessageContainerView$$ExternalSyntheticLambda1(MessageReaderViewContract$ViewModel messageReaderViewContract$ViewModel, MessageViewInfo messageViewInfo, MessageContainerView messageContainerView) {
        this.f$1 = messageReaderViewContract$ViewModel;
        this.f$2 = messageViewInfo;
        this.f$0 = messageContainerView;
    }
}
