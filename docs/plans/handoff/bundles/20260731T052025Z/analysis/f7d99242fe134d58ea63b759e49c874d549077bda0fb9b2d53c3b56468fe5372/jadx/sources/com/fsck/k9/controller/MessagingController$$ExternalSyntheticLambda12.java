package com.fsck.k9.controller;

import com.fsck.k9.mailstore.LocalFolder;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.mail.Flag;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessagingController$$ExternalSyntheticLambda12 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessagingController f$0;
    public final /* synthetic */ LegacyAccountDto f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Serializable f$3;
    public final /* synthetic */ boolean f$4;

    public /* synthetic */ MessagingController$$ExternalSyntheticLambda12(MessagingController messagingController, LegacyAccountDto legacyAccountDto, Object obj, Serializable serializable, boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = messagingController;
        this.f$1 = legacyAccountDto;
        this.f$2 = obj;
        this.f$3 = serializable;
        this.f$4 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Serializable serializable = this.f$3;
        Object obj = this.f$2;
        switch (i) {
            case 0:
                Flag flag = (Flag) serializable;
                boolean z = this.f$4;
                this.f$0.setFlagSynchronous(this.f$1, (List) obj, flag, z, false);
                break;
            case 1:
                boolean z2 = this.f$4;
                this.f$0.setFlagSynchronous(this.f$1, (List) obj, (Flag) serializable, z2, true);
                break;
            default:
                boolean z3 = this.f$4;
                long j = ((LocalFolder) obj).databaseId;
                this.f$0.deleteMessagesSynchronous(this.f$1, j, (ArrayList) serializable, z3);
                break;
        }
    }
}
