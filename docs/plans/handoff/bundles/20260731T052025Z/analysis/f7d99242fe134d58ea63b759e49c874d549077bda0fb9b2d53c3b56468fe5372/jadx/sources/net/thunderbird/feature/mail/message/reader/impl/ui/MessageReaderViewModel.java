package net.thunderbird.feature.mail.message.reader.impl.ui;

import java.util.Collection;
import kotlin.collections.CollectionsKt;
import kotlinx.collections.immutable.implementations.immutableList.SmallPersistentVector;
import net.thunderbird.core.ui.setting.dialog.ui.components.list.SettingListKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.mail.message.reader.api.domain.mapper.AttachmentViewInfoMapper;
import net.thunderbird.feature.mail.message.reader.api.ui.MessageReaderViewContract$Event$UpdateAttachments;
import net.thunderbird.feature.mail.message.reader.api.ui.MessageReaderViewContract$State;
import net.thunderbird.feature.mail.message.reader.api.ui.MessageReaderViewContract$ViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageReaderViewModel extends MessageReaderViewContract$ViewModel {
    public final AttachmentViewInfoMapper attachmentViewInfoMapper;

    public MessageReaderViewModel(AttachmentViewInfoMapper attachmentViewInfoMapper) {
        super(new MessageReaderViewContract$State(SmallPersistentVector.EMPTY));
        this.attachmentViewInfoMapper = attachmentViewInfoMapper;
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        MessageReaderViewContract$Event$UpdateAttachments messageReaderViewContract$Event$UpdateAttachments = (MessageReaderViewContract$Event$UpdateAttachments) obj;
        messageReaderViewContract$Event$UpdateAttachments.getClass();
        updateState(new SettingListKt$$ExternalSyntheticLambda0(this, CollectionsKt.plus((Collection) messageReaderViewContract$Event$UpdateAttachments.nonInlineAttachments, (Iterable) messageReaderViewContract$Event$UpdateAttachments.extraNonInlineAttachments), messageReaderViewContract$Event$UpdateAttachments, 7));
    }
}
