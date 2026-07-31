package app.k9mail.feature.settings.p000import.ui;

import android.net.Uri;
import com.fsck.k9.preferences.ImportResults;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsImportViewModel$startImportSettings$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Uri $contentUri;
    public int I$0;
    public long J$0;
    public ImportResults L$1;
    public boolean Z$0;
    public int label;
    public final /* synthetic */ SettingsImportViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsImportViewModel$startImportSettings$1(SettingsImportViewModel settingsImportViewModel, Uri uri, Continuation continuation) {
        super(2, continuation);
        this.this$0 = settingsImportViewModel;
        this.$contentUri = uri;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SettingsImportViewModel$startImportSettings$1(this.this$0, this.$contentUri, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SettingsImportViewModel$startImportSettings$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00ce  */
    /* JADX WARN: Type inference failed for: r1v18, types: [int] */
    /* JADX WARN: Type inference failed for: r1v20, types: [int] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.settings.p000import.ui.SettingsImportViewModel$startImportSettings$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
