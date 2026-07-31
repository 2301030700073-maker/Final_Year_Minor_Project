package app.k9mail.feature.account.setup.domain.usecase;

import app.k9mail.autodiscovery.api.AuthenticationType;
import app.k9mail.autodiscovery.service.RealAutoDiscoveryService;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.collections.builders.MapBuilder;
import net.thunderbird.core.common.oauth.InMemoryOAuthConfigurationProvider;
import net.thunderbird.core.common.oauth.OAuthConfiguration;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GetAutoDiscovery {
    public final InMemoryOAuthConfigurationProvider oauthProvider;
    public final RealAutoDiscoveryService service;

    public GetAutoDiscovery(RealAutoDiscoveryService realAutoDiscoveryService, InMemoryOAuthConfigurationProvider inMemoryOAuthConfigurationProvider) {
        this.service = realAutoDiscoveryService;
        this.oauthProvider = inMemoryOAuthConfigurationProvider;
    }

    public final List cleanAuthenticationTypes(String str, List list) {
        AuthenticationType authenticationType = AuthenticationType.OAuth2;
        if (list.contains(authenticationType)) {
            str.getClass();
            MapBuilder mapBuilder = this.oauthProvider.hostnameMapping;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            if (((OAuthConfiguration) mapBuilder.get(lowerCase)) == null) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (((AuthenticationType) obj) != authenticationType) {
                        arrayList.add(obj);
                    }
                }
                return arrayList;
            }
        }
        return list;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object execute(java.lang.String r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof app.k9mail.feature.account.setup.domain.usecase.GetAutoDiscovery$execute$1
            if (r0 == 0) goto L13
            r0 = r12
            app.k9mail.feature.account.setup.domain.usecase.GetAutoDiscovery$execute$1 r0 = (app.k9mail.feature.account.setup.domain.usecase.GetAutoDiscovery$execute$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            app.k9mail.feature.account.setup.domain.usecase.GetAutoDiscovery$execute$1 r0 = new app.k9mail.feature.account.setup.domain.usecase.GetAutoDiscovery$execute$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L2c
            if (r1 != r2) goto L26
            kotlin.ResultKt.throwOnFailure(r12)
            goto L72
        L26:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r10)
            return r3
        L2c:
            kotlin.ResultKt.throwOnFailure(r12)
            r11.getClass()
            net.thunderbird.core.common.mail.EmailAddressParserConfig r12 = net.thunderbird.core.common.mail.EmailAddressParserConfig.LIMITED
            net.thunderbird.core.common.mail.EmailAddress r11 = net.thunderbird.core.common.mail.TokensKt.parse(r11, r12)
            r0.label = r2
            app.k9mail.autodiscovery.service.RealAutoDiscoveryService r12 = r10.service
            app.k9mail.autodiscovery.service.RealAutoDiscoveryRegistry r12 = r12.autoDiscoveryRegistry
            java.util.ArrayList r12 = r12.autoDiscoveries
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r12 = r12.iterator()
        L49:
            boolean r2 = r12.hasNext()
            if (r2 == 0) goto L5d
            java.lang.Object r2 = r12.next()
            app.k9mail.autodiscovery.api.AutoDiscovery r2 = (app.k9mail.autodiscovery.api.AutoDiscovery) r2
            java.util.List r2 = r2.initDiscovery(r11)
            kotlin.collections.CollectionsKt.addAll(r2, r1)
            goto L49
        L5d:
            com.beetstra.jutf7.Base64Util r11 = new com.beetstra.jutf7.Base64Util
            r11.<init>(r1)
            androidx.navigation.compose.NavHostKt$NavHost$25$1 r12 = new androidx.navigation.compose.NavHostKt$NavHost$25$1
            r1 = 11
            r12.<init>(r11, r3, r1)
            java.lang.Object r12 = kotlinx.coroutines.JobKt.coroutineScope(r12, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r11 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r12 != r11) goto L72
            return r11
        L72:
            app.k9mail.autodiscovery.api.AutoDiscoveryResult r12 = (app.k9mail.autodiscovery.api.AutoDiscoveryResult) r12
            boolean r11 = r12 instanceof app.k9mail.autodiscovery.api.AutoDiscoveryResult.Settings
            if (r11 == 0) goto Ld1
            app.k9mail.autodiscovery.api.AutoDiscoveryResult$Settings r12 = (app.k9mail.autodiscovery.api.AutoDiscoveryResult.Settings) r12
            app.k9mail.autodiscovery.api.ImapServerSettings r11 = r12.incomingServerSettings
            app.k9mail.autodiscovery.api.SmtpServerSettings r0 = r12.outgoingServerSettings
            boolean r1 = r11 instanceof app.k9mail.autodiscovery.api.ImapServerSettings
            if (r1 == 0) goto Lce
            boolean r1 = r0 instanceof app.k9mail.autodiscovery.api.SmtpServerSettings
            if (r1 != 0) goto L87
            goto Lce
        L87:
            java.lang.String r3 = r11.hostname
            java.lang.String r1 = r0.hostname
            java.util.List r2 = r11.authenticationTypes
            java.util.List r6 = r10.cleanAuthenticationTypes(r3, r2)
            java.util.List r2 = r0.authenticationTypes
            java.util.List r8 = r10.cleanAuthenticationTypes(r1, r2)
            boolean r10 = r6.isEmpty()
            if (r10 != 0) goto Lce
            boolean r10 = r8.isEmpty()
            if (r10 != 0) goto Lce
            int r4 = r11.port
            app.k9mail.autodiscovery.api.ConnectionSecurity r5 = r11.connectionSecurity
            java.lang.String r7 = r11.username
            r3.getClass()
            r5.getClass()
            app.k9mail.autodiscovery.api.ImapServerSettings r2 = new app.k9mail.autodiscovery.api.ImapServerSettings
            r2.<init>(r3, r4, r5, r6, r7)
            int r6 = r0.port
            app.k9mail.autodiscovery.api.ConnectionSecurity r7 = r0.connectionSecurity
            java.lang.String r9 = r0.username
            r1.getClass()
            r7.getClass()
            app.k9mail.autodiscovery.api.SmtpServerSettings r4 = new app.k9mail.autodiscovery.api.SmtpServerSettings
            r5 = r1
            r4.<init>(r5, r6, r7, r8, r9)
            r10 = 0
            r11 = 12
            app.k9mail.autodiscovery.api.AutoDiscoveryResult$Settings r10 = app.k9mail.autodiscovery.api.AutoDiscoveryResult.Settings.copy$default(r12, r2, r4, r10, r11)
            return r10
        Lce:
            app.k9mail.autodiscovery.api.AutoDiscoveryResult$NoUsableSettingsFound r10 = app.k9mail.autodiscovery.api.AutoDiscoveryResult.NoUsableSettingsFound.INSTANCE
            return r10
        Ld1:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.account.setup.domain.usecase.GetAutoDiscovery.execute(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
