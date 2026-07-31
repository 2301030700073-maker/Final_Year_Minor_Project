package com.fsck.k9.job;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.functions.Function0;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MailSyncWorkerManager$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LegacyAccountDto f$0;

    public /* synthetic */ MailSyncWorkerManager$$ExternalSyntheticLambda0(LegacyAccountDto legacyAccountDto, int i) {
        this.$r8$classId = i;
        this.f$0 = legacyAccountDto;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        LegacyAccountDto legacyAccountDto = this.f$0;
        switch (i) {
            case 0:
                return "Scheduling mail sync worker " + legacyAccountDto;
            case 1:
                return "Failed to post notification for account " + legacyAccountDto.id;
            case 2:
                return CameraDevices$CC.m("account ", legacyAccountDto.uuid, " is not an IMAP account, skipping db migration for this account.");
            case 3:
                return CameraDevices$CC.m("started db migration to version 90 to account ", legacyAccountDto.uuid);
            default:
                return CameraDevices$CC.m("completed db migration to version 90 for account ", legacyAccountDto.uuid);
        }
    }
}
