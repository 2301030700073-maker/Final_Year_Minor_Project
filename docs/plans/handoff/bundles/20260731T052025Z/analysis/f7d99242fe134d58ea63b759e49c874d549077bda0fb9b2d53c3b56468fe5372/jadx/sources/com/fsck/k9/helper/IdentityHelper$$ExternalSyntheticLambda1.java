package com.fsck.k9.helper;

import com.fsck.k9.mail.Address;
import kotlin.jvm.functions.Function1;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class IdentityHelper$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LegacyAccountDto f$0;

    public /* synthetic */ IdentityHelper$$ExternalSyntheticLambda1(LegacyAccountDto legacyAccountDto, int i) {
        this.$r8$classId = i;
        this.f$0 = legacyAccountDto;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        LegacyAccountDto legacyAccountDto = this.f$0;
        Address address = (Address) obj;
        switch (i) {
            case 0:
                address.getClass();
                return legacyAccountDto.findIdentity(address);
            default:
                address.getClass();
                return Boolean.valueOf(legacyAccountDto.isAnIdentity(address));
        }
    }
}
