package com.fsck.k9.mailstore;

import androidx.room.InvalidationTracker$implementation$1;
import net.thunderbird.feature.mail.message.reader.api.domain.mapper.AttachmentViewInfoMapper;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultAttachmentViewInfoMapper implements AttachmentViewInfoMapper {
    public final InvalidationTracker$implementation$1 sizeFormatter;

    public DefaultAttachmentViewInfoMapper(InvalidationTracker$implementation$1 invalidationTracker$implementation$1) {
        this.sizeFormatter = invalidationTracker$implementation$1;
    }
}
