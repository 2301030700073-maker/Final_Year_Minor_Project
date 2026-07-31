package com.fsck.k9.ui.settings.export;

import android.net.Uri;
import com.fsck.k9.preferences.SettingsExporter;
import com.fsck.k9.preferences.SettingsImportExportException;
import java.io.OutputStream;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Uri $contentUri;
    public final /* synthetic */ boolean $includeGeneralSettings;
    public final /* synthetic */ Set $selectedAccounts;
    public final /* synthetic */ SettingsExportViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1(SettingsExportViewModel settingsExportViewModel, boolean z, Set set, Uri uri, Continuation continuation) {
        super(2, continuation);
        this.this$0 = settingsExportViewModel;
        this.$includeGeneralSettings = z;
        this.$selectedAccounts = set;
        this.$contentUri = uri;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1(this.this$0, this.$includeGeneralSettings, this.$selectedAccounts, this.$contentUri, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1 settingsExportViewModel$onDocumentPicked$2$elapsed$1$1 = (SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1) create((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.INSTANCE;
        settingsExportViewModel$onDocumentPicked$2$elapsed$1$1.invokeSuspend(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ResultKt.throwOnFailure(obj);
        SettingsExporter settingsExporter = this.this$0.settingsExporter;
        boolean z = this.$includeGeneralSettings;
        Set set = this.$selectedAccounts;
        settingsExporter.getClass();
        Uri uri = this.$contentUri;
        uri.getClass();
        try {
            OutputStream openOutputStream = settingsExporter.contentResolver.openOutputStream(uri, "wt");
            openOutputStream.getClass();
            try {
                settingsExporter.exportPreferences(openOutputStream, z, set, false);
                openOutputStream.close();
                return Unit.INSTANCE;
            } finally {
            }
        } catch (Exception e) {
            throw new SettingsImportExportException(e);
        }
    }
}
