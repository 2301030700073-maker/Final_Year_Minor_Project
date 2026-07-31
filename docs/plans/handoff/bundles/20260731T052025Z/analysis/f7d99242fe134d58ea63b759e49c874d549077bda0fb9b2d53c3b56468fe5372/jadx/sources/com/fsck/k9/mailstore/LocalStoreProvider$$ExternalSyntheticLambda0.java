package com.fsck.k9.mailstore;

import android.content.Context;
import kotlin.jvm.functions.Function0;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalMessageUidPrefixProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LocalStoreProvider$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LegacyAccountDto f$0;
    public final /* synthetic */ Context f$1;
    public final /* synthetic */ GeneralSettingsManager f$2;
    public final /* synthetic */ DefaultLocalMessageUidPrefixProvider f$3;

    public /* synthetic */ LocalStoreProvider$$ExternalSyntheticLambda0(LegacyAccountDto legacyAccountDto, Context context, GeneralSettingsManager generalSettingsManager, DefaultLocalMessageUidPrefixProvider defaultLocalMessageUidPrefixProvider, int i) {
        this.$r8$classId = i;
        this.f$0 = legacyAccountDto;
        this.f$1 = context;
        this.f$2 = generalSettingsManager;
        this.f$3 = defaultLocalMessageUidPrefixProvider;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        DefaultLocalMessageUidPrefixProvider defaultLocalMessageUidPrefixProvider = this.f$3;
        GeneralSettingsManager generalSettingsManager = this.f$2;
        Context context = this.f$1;
        LegacyAccountDto legacyAccountDto = this.f$0;
        switch (i) {
        }
        return new LocalStore(legacyAccountDto, context, generalSettingsManager, defaultLocalMessageUidPrefixProvider);
    }
}
