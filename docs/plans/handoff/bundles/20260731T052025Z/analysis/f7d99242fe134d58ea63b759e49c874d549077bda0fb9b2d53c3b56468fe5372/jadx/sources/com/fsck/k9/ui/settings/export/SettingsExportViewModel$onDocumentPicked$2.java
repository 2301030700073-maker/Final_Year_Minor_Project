package com.fsck.k9.ui.settings.export;

import android.net.Uri;
import java.util.Set;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsExportViewModel$onDocumentPicked$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Uri $contentUri;
    public final /* synthetic */ boolean $includeGeneralSettings;
    public final /* synthetic */ Set $selectedAccounts;
    public long J$0;
    public int label;
    public final /* synthetic */ SettingsExportViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsExportViewModel$onDocumentPicked$2(SettingsExportViewModel settingsExportViewModel, boolean z, Set set, Uri uri, Continuation continuation) {
        super(2, continuation);
        this.this$0 = settingsExportViewModel;
        this.$includeGeneralSettings = z;
        this.$selectedAccounts = set;
        this.$contentUri = uri;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SettingsExportViewModel$onDocumentPicked$2(this.this$0, this.$includeGeneralSettings, this.$selectedAccounts, this.$contentUri, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SettingsExportViewModel$onDocumentPicked$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x006c, code lost:
    
        if (kotlinx.coroutines.JobKt.delay(1000 - r3, r17) == r14) goto L26;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            r17 = this;
            r0 = r17
            com.fsck.k9.ui.settings.export.SettingsExportViewModel r2 = r0.this$0
            androidx.lifecycle.MutableLiveData r7 = r2.uiModelLiveData
            com.fsck.k9.ui.settings.export.SettingsExportUiModel r8 = r2.uiModel
            int r1 = r0.label
            com.fsck.k9.ui.settings.export.ButtonState r9 = com.fsck.k9.ui.settings.export.ButtonState.GONE
            r10 = 2
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            r13 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r14 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L2e
            if (r1 == r13) goto L27
            if (r1 != r10) goto L20
            kotlin.ResultKt.throwOnFailure(r18)     // Catch: java.lang.Exception -> L1d
            r15 = r11
            goto L71
        L1d:
            r0 = move-exception
            r15 = r11
            goto L85
        L20:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r0)
            r0 = 0
            return r0
        L27:
            long r1 = r0.J$0
            kotlin.ResultKt.throwOnFailure(r18)     // Catch: java.lang.Exception -> L1d
            r15 = r11
            goto L57
        L2e:
            kotlin.ResultKt.throwOnFailure(r18)
            boolean r3 = r0.$includeGeneralSettings     // Catch: java.lang.Exception -> L1d
            java.util.Set r4 = r0.$selectedAccounts     // Catch: java.lang.Exception -> L1d
            android.net.Uri r5 = r0.$contentUri     // Catch: java.lang.Exception -> L1d
            r15 = r11
            long r10 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Exception -> L6f
            kotlinx.coroutines.scheduling.DefaultScheduler r1 = kotlinx.coroutines.Dispatchers.Default     // Catch: java.lang.Exception -> L6f
            kotlinx.coroutines.scheduling.DefaultIoScheduler r1 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE     // Catch: java.lang.Exception -> L6f
            r6 = r1
            com.fsck.k9.ui.settings.export.SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1 r1 = new com.fsck.k9.ui.settings.export.SettingsExportViewModel$onDocumentPicked$2$elapsed$1$1     // Catch: java.lang.Exception -> L6f
            r16 = r6
            r6 = 0
            r12 = r16
            r1.<init>(r2, r3, r4, r5, r6)     // Catch: java.lang.Exception -> L6f
            r0.J$0 = r10     // Catch: java.lang.Exception -> L6f
            r0.label = r13     // Catch: java.lang.Exception -> L6f
            java.lang.Object r1 = kotlinx.coroutines.JobKt.withContext(r12, r1, r0)     // Catch: java.lang.Exception -> L6f
            if (r1 != r14) goto L56
            goto L6e
        L56:
            r1 = r10
        L57:
            long r3 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Exception -> L6f
            long r3 = r3 - r1
            r1 = 1000(0x3e8, double:4.94E-321)
            int r5 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r5 >= 0) goto L71
            long r1 = r1 - r3
            r0.J$0 = r3     // Catch: java.lang.Exception -> L6f
            r3 = 2
            r0.label = r3     // Catch: java.lang.Exception -> L6f
            java.lang.Object r0 = kotlinx.coroutines.JobKt.delay(r1, r0)     // Catch: java.lang.Exception -> L6f
            if (r0 != r14) goto L71
        L6e:
            return r14
        L6f:
            r0 = move-exception
            goto L85
        L71:
            r8.getClass()     // Catch: java.lang.Exception -> L6f
            r8.exportButton = r9     // Catch: java.lang.Exception -> L6f
            r1 = 0
            r8.isProgressVisible = r1     // Catch: java.lang.Exception -> L6f
            r8.isShareButtonVisible = r13     // Catch: java.lang.Exception -> L6f
            r8.isSettingsListEnabled = r13     // Catch: java.lang.Exception -> L6f
            com.fsck.k9.ui.settings.export.StatusText r0 = com.fsck.k9.ui.settings.export.StatusText.EXPORT_SUCCESS     // Catch: java.lang.Exception -> L6f
            r8.statusText = r0     // Catch: java.lang.Exception -> L6f
            r7.setValue(r8)     // Catch: java.lang.Exception -> L6f
            return r15
        L85:
            java.lang.String r1 = "Error writing settings file"
            r2 = 0
            java.lang.Object[] r3 = new java.lang.Object[r2]
            net.thunderbird.core.logging.legacy.Log.e(r0, r1, r3)
            r8.getClass()
            r8.exportButton = r9
            r8.isShareButtonVisible = r2
            r8.isProgressVisible = r2
            r8.isSettingsListEnabled = r13
            com.fsck.k9.ui.settings.export.StatusText r0 = com.fsck.k9.ui.settings.export.StatusText.EXPORT_FAILURE
            r8.statusText = r0
            r7.setValue(r8)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.ui.settings.export.SettingsExportViewModel$onDocumentPicked$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
