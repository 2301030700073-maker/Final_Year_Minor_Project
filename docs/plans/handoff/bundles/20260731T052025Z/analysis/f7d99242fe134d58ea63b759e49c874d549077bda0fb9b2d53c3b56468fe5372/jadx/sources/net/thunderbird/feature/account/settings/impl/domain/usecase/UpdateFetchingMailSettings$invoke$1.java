package net.thunderbird.feature.account.settings.impl.domain.usecase;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UpdateFetchingMailSettings$invoke$1 extends ContinuationImpl {
    public AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand L$1;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ UpdateFetchingMailSettings this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateFetchingMailSettings$invoke$1(UpdateFetchingMailSettings updateFetchingMailSettings, Continuation continuation) {
        super(continuation);
        this.this$0 = updateFetchingMailSettings;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.invoke(null, null, this);
    }
}
