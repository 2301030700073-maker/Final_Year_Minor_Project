package app.k9mail.feature.account.oauth.domain.usecase;

import app.k9mail.feature.account.oauth.data.AuthorizationRepository;
import net.thunderbird.core.common.oauth.InMemoryOAuthConfigurationProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GetOAuthRequestIntent {
    public final InMemoryOAuthConfigurationProvider configurationProvider;
    public final AuthorizationRepository repository;

    public GetOAuthRequestIntent(AuthorizationRepository authorizationRepository, InMemoryOAuthConfigurationProvider inMemoryOAuthConfigurationProvider) {
        this.repository = authorizationRepository;
        this.configurationProvider = inMemoryOAuthConfigurationProvider;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final app.k9mail.feature.account.oauth.domain.entity.AuthorizationIntentResult execute(java.lang.String r30, java.lang.String r31) {
        /*
            Method dump skipped, instructions count: 790
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.account.oauth.domain.usecase.GetOAuthRequestIntent.execute(java.lang.String, java.lang.String):app.k9mail.feature.account.oauth.domain.entity.AuthorizationIntentResult");
    }
}
