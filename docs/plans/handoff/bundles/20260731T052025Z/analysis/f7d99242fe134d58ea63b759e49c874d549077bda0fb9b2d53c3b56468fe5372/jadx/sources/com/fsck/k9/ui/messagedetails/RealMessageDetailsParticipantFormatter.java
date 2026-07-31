package com.fsck.k9.ui.messagedetails;

import com.fsck.k9.helper.RealContactNameProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealMessageDetailsParticipantFormatter {
    public final Integer contactNameColor;
    public final RealContactNameProvider contactNameProvider;
    public final String meText;
    public final boolean showContactNames;

    public RealMessageDetailsParticipantFormatter(RealContactNameProvider realContactNameProvider, boolean z, Integer num, String str) {
        this.contactNameProvider = realContactNameProvider;
        this.showContactNames = z;
        this.contactNameColor = num;
        this.meText = str;
    }
}
