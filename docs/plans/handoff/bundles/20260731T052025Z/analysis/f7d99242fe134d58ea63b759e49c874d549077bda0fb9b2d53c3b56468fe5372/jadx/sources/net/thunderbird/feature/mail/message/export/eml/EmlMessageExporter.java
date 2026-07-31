package net.thunderbird.feature.mail.message.export.eml;

import net.thunderbird.core.file.DefaultFileManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmlMessageExporter {
    public final DefaultFileManager fileManager;

    public EmlMessageExporter(DefaultFileManager defaultFileManager) {
        this.fileManager = defaultFileManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object export(com.eygraber.uri.uris.StringUri r5, com.eygraber.uri.uris.StringUri r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof net.thunderbird.feature.mail.message.export.eml.EmlMessageExporter$export$1
            if (r0 == 0) goto L13
            r0 = r7
            net.thunderbird.feature.mail.message.export.eml.EmlMessageExporter$export$1 r0 = (net.thunderbird.feature.mail.message.export.eml.EmlMessageExporter$export$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.feature.mail.message.export.eml.EmlMessageExporter$export$1 r0 = new net.thunderbird.feature.mail.message.export.eml.EmlMessageExporter$export$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2c
            if (r1 != r3) goto L26
            kotlin.ResultKt.throwOnFailure(r7)
            goto L3c
        L26:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r2
        L2c:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.label = r3
            net.thunderbird.core.file.DefaultFileManager r4 = r4.fileManager
            net.thunderbird.core.outcome.Outcome r7 = r4.copy(r5, r6)
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r4) goto L3c
            return r4
        L3c:
            net.thunderbird.core.outcome.Outcome r7 = (net.thunderbird.core.outcome.Outcome) r7
            boolean r4 = r7 instanceof net.thunderbird.core.outcome.Outcome.Success
            if (r4 == 0) goto L4a
            net.thunderbird.core.outcome.Outcome$Success r4 = new net.thunderbird.core.outcome.Outcome$Success
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            r4.<init>(r5)
            return r4
        L4a:
            boolean r4 = r7 instanceof net.thunderbird.core.outcome.Outcome.Failure
            if (r4 == 0) goto L99
            net.thunderbird.core.outcome.Outcome$Failure r4 = new net.thunderbird.core.outcome.Outcome$Failure
            net.thunderbird.core.outcome.Outcome$Failure r7 = (net.thunderbird.core.outcome.Outcome.Failure) r7
            java.lang.Object r5 = r7.error
            net.thunderbird.core.file.FileOperationError r5 = (net.thunderbird.core.file.FileOperationError) r5
            boolean r6 = r5 instanceof net.thunderbird.core.file.FileOperationError.Unavailable
            if (r6 == 0) goto L66
            net.thunderbird.feature.mail.message.export.MessageExportError$Unavailable r6 = new net.thunderbird.feature.mail.message.export.MessageExportError$Unavailable
            net.thunderbird.core.file.FileOperationError$Unavailable r5 = (net.thunderbird.core.file.FileOperationError.Unavailable) r5
            com.eygraber.uri.Uri r0 = r5.uri
            java.lang.String r5 = r5.message
            r6.<init>(r0, r5)
            goto L8f
        L66:
            boolean r6 = r5 instanceof net.thunderbird.core.file.FileOperationError.ReadFailed
            if (r6 == 0) goto L74
            net.thunderbird.feature.mail.message.export.MessageExportError$Io r6 = new net.thunderbird.feature.mail.message.export.MessageExportError$Io
            net.thunderbird.core.file.FileOperationError$ReadFailed r5 = (net.thunderbird.core.file.FileOperationError.ReadFailed) r5
            java.lang.String r5 = r5.message
            r6.<init>(r5)
            goto L8f
        L74:
            boolean r6 = r5 instanceof net.thunderbird.core.file.FileOperationError.WriteFailed
            if (r6 == 0) goto L82
            net.thunderbird.feature.mail.message.export.MessageExportError$Io r6 = new net.thunderbird.feature.mail.message.export.MessageExportError$Io
            net.thunderbird.core.file.FileOperationError$WriteFailed r5 = (net.thunderbird.core.file.FileOperationError.WriteFailed) r5
            java.lang.String r5 = r5.message
            r6.<init>(r5)
            goto L8f
        L82:
            boolean r6 = r5 instanceof net.thunderbird.core.file.FileOperationError.Unknown
            if (r6 == 0) goto L95
            net.thunderbird.feature.mail.message.export.MessageExportError$Unknown r6 = new net.thunderbird.feature.mail.message.export.MessageExportError$Unknown
            net.thunderbird.core.file.FileOperationError$Unknown r5 = (net.thunderbird.core.file.FileOperationError.Unknown) r5
            java.lang.String r5 = r5.message
            r6.<init>(r5)
        L8f:
            java.lang.Object r5 = r7.cause
            r4.<init>(r6, r5)
            return r4
        L95:
            coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
            return r2
        L99:
            coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.mail.message.export.eml.EmlMessageExporter.export(com.eygraber.uri.uris.StringUri, com.eygraber.uri.uris.StringUri, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
