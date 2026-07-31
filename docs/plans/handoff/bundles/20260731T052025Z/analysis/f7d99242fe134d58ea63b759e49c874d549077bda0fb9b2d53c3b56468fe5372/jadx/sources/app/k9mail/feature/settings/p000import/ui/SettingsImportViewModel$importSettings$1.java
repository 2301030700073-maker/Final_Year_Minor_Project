package app.k9mail.feature.settings.p000import.ui;

import java.io.InputStream;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsImportViewModel$importSettings$1 extends ContinuationImpl {
    public InputStream L$3;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ SettingsImportViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsImportViewModel$importSettings$1(SettingsImportViewModel settingsImportViewModel, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = settingsImportViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return SettingsImportViewModel.access$importSettings(this.this$0, null, false, null, this);
    }
}
