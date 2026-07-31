package app.k9mail.autodiscovery.autoconfig;

import androidx.compose.ui.unit.IntOffsetKt;
import androidx.work.Configuration;
import app.k9mail.autodiscovery.api.AutoDiscovery;
import app.k9mail.autodiscovery.api.AutoDiscoveryRunnable;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.load.Option;
import com.fsck.k9.Preferences$getAccountFlow$1;
import java.util.List;
import net.thunderbird.core.common.mail.EmailAddress;
import okio.AsyncTimeout;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MxLookupAutoconfigDiscovery implements AutoDiscovery {
    public final Base64Util autoconfigFetcher;
    public final Path.Companion mxResolver;
    public final Configuration.Builder urlProvider;

    public MxLookupAutoconfigDiscovery(Path.Companion companion, Option.AnonymousClass1 anonymousClass1, AsyncTimeout.Companion companion2, Configuration.Builder builder, Base64Util base64Util) {
        this.mxResolver = companion;
        this.urlProvider = builder;
        this.autoconfigFetcher = base64Util;
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0068, code lost:
    
        if (r4 == r9) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0161 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0138 -> B:11:0x013d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00fa -> B:22:0x0117). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$mxLookupAutoconfig(app.k9mail.autodiscovery.autoconfig.MxLookupAutoconfigDiscovery r17, net.thunderbird.core.common.mail.EmailAddress r18, kotlin.coroutines.jvm.internal.ContinuationImpl r19) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.autodiscovery.autoconfig.MxLookupAutoconfigDiscovery.access$mxLookupAutoconfig(app.k9mail.autodiscovery.autoconfig.MxLookupAutoconfigDiscovery, net.thunderbird.core.common.mail.EmailAddress, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // app.k9mail.autodiscovery.api.AutoDiscovery
    public final List initDiscovery(final EmailAddress emailAddress) {
        return IntOffsetKt.listOf(new AutoDiscoveryRunnable() { // from class: app.k9mail.autodiscovery.autoconfig.MxLookupAutoconfigDiscovery$initDiscovery$1
            @Override // app.k9mail.autodiscovery.api.AutoDiscoveryRunnable
            public final Object run(Preferences$getAccountFlow$1 preferences$getAccountFlow$1) {
                return MxLookupAutoconfigDiscovery.access$mxLookupAutoconfig(MxLookupAutoconfigDiscovery.this, emailAddress, preferences$getAccountFlow$1);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0021  */
    /* renamed from: mxLookup-s1GoCZM, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m841mxLookups1GoCZM(java.lang.String r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof app.k9mail.autodiscovery.autoconfig.MxLookupAutoconfigDiscovery$mxLookup$1
            if (r0 == 0) goto L13
            r0 = r7
            app.k9mail.autodiscovery.autoconfig.MxLookupAutoconfigDiscovery$mxLookup$1 r0 = (app.k9mail.autodiscovery.autoconfig.MxLookupAutoconfigDiscovery$mxLookup$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            app.k9mail.autodiscovery.autoconfig.MxLookupAutoconfigDiscovery$mxLookup$1 r0 = new app.k9mail.autodiscovery.autoconfig.MxLookupAutoconfigDiscovery$mxLookup$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L33
            if (r1 != r3) goto L2d
            java.lang.String r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: org.minidns.dnsname.InvalidDnsNameException$LabelTooLongException -> L29 java.io.IOException -> L2b
            goto L53
        L29:
            r5 = move-exception
            goto L63
        L2b:
            r5 = move-exception
            goto L6d
        L2d:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            return r4
        L33:
            kotlin.ResultKt.throwOnFailure(r7)
            okio.Path$Companion r5 = r5.mxResolver     // Catch: org.minidns.dnsname.InvalidDnsNameException$LabelTooLongException -> L29 java.io.IOException -> L2b
            r0.L$0 = r6     // Catch: org.minidns.dnsname.InvalidDnsNameException$LabelTooLongException -> L29 java.io.IOException -> L2b
            r0.label = r3     // Catch: org.minidns.dnsname.InvalidDnsNameException$LabelTooLongException -> L29 java.io.IOException -> L2b
            kotlinx.coroutines.scheduling.DefaultScheduler r7 = kotlinx.coroutines.Dispatchers.Default     // Catch: org.minidns.dnsname.InvalidDnsNameException$LabelTooLongException -> L29 java.io.IOException -> L2b
            kotlinx.coroutines.scheduling.DefaultIoScheduler r7 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE     // Catch: org.minidns.dnsname.InvalidDnsNameException$LabelTooLongException -> L29 java.io.IOException -> L2b
            com.eygraber.uri.parts.PathPart$$ExternalSyntheticLambda0 r1 = new com.eygraber.uri.parts.PathPart$$ExternalSyntheticLambda0     // Catch: org.minidns.dnsname.InvalidDnsNameException$LabelTooLongException -> L29 java.io.IOException -> L2b
            r1.<init>(r5, r6)     // Catch: org.minidns.dnsname.InvalidDnsNameException$LabelTooLongException -> L29 java.io.IOException -> L2b
            kotlinx.coroutines.InterruptibleKt$runInterruptible$2 r5 = new kotlinx.coroutines.InterruptibleKt$runInterruptible$2     // Catch: org.minidns.dnsname.InvalidDnsNameException$LabelTooLongException -> L29 java.io.IOException -> L2b
            r5.<init>(r1, r4, r2)     // Catch: org.minidns.dnsname.InvalidDnsNameException$LabelTooLongException -> L29 java.io.IOException -> L2b
            java.lang.Object r7 = kotlinx.coroutines.JobKt.withContext(r7, r5, r0)     // Catch: org.minidns.dnsname.InvalidDnsNameException$LabelTooLongException -> L29 java.io.IOException -> L2b
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r5) goto L53
            return r5
        L53:
            r5 = r7
            app.k9mail.autodiscovery.autoconfig.MxLookupResult r5 = (app.k9mail.autodiscovery.autoconfig.MxLookupResult) r5     // Catch: org.minidns.dnsname.InvalidDnsNameException$LabelTooLongException -> L29 java.io.IOException -> L2b
            java.util.ArrayList r5 = r5.mxNames     // Catch: org.minidns.dnsname.InvalidDnsNameException$LabelTooLongException -> L29 java.io.IOException -> L2b
            boolean r5 = r5.isEmpty()     // Catch: org.minidns.dnsname.InvalidDnsNameException$LabelTooLongException -> L29 java.io.IOException -> L2b
            if (r5 != 0) goto L5f
            goto L60
        L5f:
            r7 = r4
        L60:
            app.k9mail.autodiscovery.autoconfig.MxLookupResult r7 = (app.k9mail.autodiscovery.autoconfig.MxLookupResult) r7     // Catch: org.minidns.dnsname.InvalidDnsNameException$LabelTooLongException -> L29 java.io.IOException -> L2b
            return r7
        L63:
            java.lang.Object[] r7 = new java.lang.Object[r3]
            r7[r2] = r6
            java.lang.String r6 = "Invalid DNS name for domain: %s"
            net.thunderbird.core.logging.legacy.Log.d(r5, r6, r7)
            goto L76
        L6d:
            java.lang.Object[] r7 = new java.lang.Object[r3]
            r7[r2] = r6
            java.lang.String r6 = "Failed to get MX record for domain: %s"
            net.thunderbird.core.logging.legacy.Log.d(r5, r6, r7)
        L76:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.autodiscovery.autoconfig.MxLookupAutoconfigDiscovery.m841mxLookups1GoCZM(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
