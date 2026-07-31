package com.fsck.k9.helper;

import androidx.compose.ui.unit.IntOffsetKt;
import com.fsck.k9.mail.Message$RecipientType;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class IdentityHelper {
    public static final List RECIPIENT_TYPES = IntOffsetKt.listOf((Object[]) new Message$RecipientType[]{Message$RecipientType.TO, Message$RecipientType.CC, Message$RecipientType.X_ORIGINAL_TO, Message$RecipientType.DELIVERED_TO, Message$RecipientType.X_ENVELOPE_TO});
}
