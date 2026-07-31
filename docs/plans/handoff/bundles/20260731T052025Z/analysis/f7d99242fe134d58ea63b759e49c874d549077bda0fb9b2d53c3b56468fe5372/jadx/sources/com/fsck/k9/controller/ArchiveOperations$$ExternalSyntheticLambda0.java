package com.fsck.k9.controller;

import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.job.SyncDebugWorker$$ExternalSyntheticLambda0;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ArchiveOperations$$ExternalSyntheticLambda0 implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Base64Util f$0;

    public /* synthetic */ ArchiveOperations$$ExternalSyntheticLambda0(Base64Util base64Util, int i) {
        this.$r8$classId = i;
        this.f$0 = base64Util;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Base64Util base64Util = this.f$0;
        switch (i) {
            case 0:
                LegacyAccountDto legacyAccountDto = (LegacyAccountDto) obj;
                long longValue = ((Long) obj2).longValue();
                List list = (List) obj3;
                long longValue2 = ((Long) obj4).longValue();
                legacyAccountDto.getClass();
                list.getClass();
                ((MessagingController) base64Util.alphabet).moveOrCopyMessageSynchronous(legacyAccountDto, longValue, list, longValue2, (MessagingController.MoveOrCopyFlavor) ((InMemoryFeatureFlagProvider) base64Util.inverseAlphabet).m1030providedj3aFNw("archive_marks_as_read").whenEnabledOrNot(new SyncDebugWorker$$ExternalSyntheticLambda0(12), new SyncDebugWorker$$ExternalSyntheticLambda0(13)));
                break;
            default:
                LegacyAccountDto legacyAccountDto2 = (LegacyAccountDto) obj;
                long longValue3 = ((Long) obj2).longValue();
                List list2 = (List) obj3;
                long longValue4 = ((Long) obj4).longValue();
                legacyAccountDto2.getClass();
                list2.getClass();
                ((MessagingController) base64Util.alphabet).moveOrCopyMessageSynchronous(legacyAccountDto2, longValue3, ((MessagingController) base64Util.alphabet).collectMessagesInThreads(legacyAccountDto2, list2), longValue4, (MessagingController.MoveOrCopyFlavor) ((InMemoryFeatureFlagProvider) base64Util.inverseAlphabet).m1030providedj3aFNw("archive_marks_as_read").whenEnabledOrNot(new SyncDebugWorker$$ExternalSyntheticLambda0(12), new SyncDebugWorker$$ExternalSyntheticLambda0(13)));
                break;
        }
        return unit;
    }
}
