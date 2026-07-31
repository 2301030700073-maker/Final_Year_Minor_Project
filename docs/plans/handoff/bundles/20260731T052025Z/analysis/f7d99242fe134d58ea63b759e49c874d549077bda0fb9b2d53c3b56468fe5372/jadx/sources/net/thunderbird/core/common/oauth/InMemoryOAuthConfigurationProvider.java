package net.thunderbird.core.common.oauth;

import androidx.compose.ui.unit.IntOffsetKt;
import app.k9mail.auth.K9OAuthConfigurationFactory;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.builders.MapBuilder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InMemoryOAuthConfigurationProvider {
    public final MapBuilder hostnameMapping;

    public InMemoryOAuthConfigurationProvider(K9OAuthConfigurationFactory k9OAuthConfigurationFactory) {
        MapBuilder mapBuilder = new MapBuilder();
        for (Map.Entry entry : MapsKt__MapsKt.mapOf(new Pair(IntOffsetKt.listOf((Object[]) new String[]{"imap.aol.com", "smtp.aol.com"}), new OAuthConfiguration("dj0yJmk9dUNqYXZhYWxOYkdRJmQ9WVdrOU1YQnZVRFZoY1ZrbWNHbzlNQT09JnM9Y29uc3VtZXJzZWNyZXQmc3Y9MCZ4PWIw", IntOffsetKt.listOf("mail-w"), "https://api.login.aol.com/oauth2/request_auth", "https://api.login.aol.com/oauth2/get_token", "com.fsck.k9://oauth2redirect")), new Pair(IntOffsetKt.listOf((Object[]) new String[]{"imap.fastmail.com", "smtp.fastmail.com"}), new OAuthConfiguration("353641ae", IntOffsetKt.listOf((Object[]) new String[]{"https://www.fastmail.com/dev/protocol-imap", "https://www.fastmail.com/dev/protocol-smtp"}), "https://api.fastmail.com/oauth/authorize", "https://api.fastmail.com/oauth/refresh", "com.fsck.k9://oauth2redirect")), new Pair(IntOffsetKt.listOf((Object[]) new String[]{"imap.gmail.com", "imap.googlemail.com", "smtp.gmail.com", "smtp.googlemail.com"}), new OAuthConfiguration("262622259280-hhmh92rhklkg2k1tjil69epo0o9a12jm.apps.googleusercontent.com", IntOffsetKt.listOf("https://mail.google.com/"), "https://accounts.google.com/o/oauth2/v2/auth", "https://oauth2.googleapis.com/token", "com.fsck.k9:/oauth2redirect")), new Pair(IntOffsetKt.listOf((Object[]) new String[]{"outlook.office365.com", "smtp.office365.com", "smtp-mail.outlook.com"}), new OAuthConfiguration("e647013a-ada4-4114-b419-e43d250f99c5", IntOffsetKt.listOf((Object[]) new String[]{"profile", "openid", "email", "https://outlook.office.com/IMAP.AccessAsUser.All", "https://outlook.office.com/SMTP.Send", "offline_access"}), "https://login.microsoftonline.com/common/oauth2/v2.0/authorize", "https://login.microsoftonline.com/common/oauth2/v2.0/token", "msauth://com.fsck.k9/Dx8yUsuhyU3dYYba1aA16Wxu5eM%3D")), new Pair(IntOffsetKt.listOf((Object[]) new String[]{"imap.mail.yahoo.com", "smtp.mail.yahoo.com"}), new OAuthConfiguration("dj0yJmk9aHNUb3d2MW5TQnpRJmQ9WVdrOWVYbHpaRWM0YkdnbWNHbzlNQT09JnM9Y29uc3VtZXJzZWNyZXQmc3Y9MCZ4PWIz", IntOffsetKt.listOf("mail-w"), "https://api.login.yahoo.com/oauth2/request_auth", "https://api.login.yahoo.com/oauth2/get_token", "com.fsck.k9://oauth2redirect")), new Pair(IntOffsetKt.listOf((Object[]) new String[]{"mail.tb.pro", "mail.thundermail.com"}), new OAuthConfiguration("mobile-android-k9mail", IntOffsetKt.listOf((Object[]) new String[]{"openid", "profile", "email", "offline_access"}), "https://auth.tb.pro/realms/tbpro/protocol/openid-connect/auth", "https://auth.tb.pro/realms/tbpro/protocol/openid-connect/token", "com.fsck.k9://oauth2redirect")), new Pair(IntOffsetKt.listOf("mail.stage-thundermail.com"), new OAuthConfiguration("mobile-android-k9mail", IntOffsetKt.listOf((Object[]) new String[]{"openid", "profile", "email", "offline_access"}), "https://auth-stage.tb.pro/realms/tbpro/protocol/openid-connect/auth", "https://auth-stage.tb.pro/realms/tbpro/protocol/openid-connect/token", "com.fsck.k9://oauth2redirect"))).entrySet()) {
            List list = (List) entry.getKey();
            OAuthConfiguration oAuthConfiguration = (OAuthConfiguration) entry.getValue();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String lowerCase = ((String) it.next()).toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                mapBuilder.put(lowerCase, oAuthConfiguration);
            }
        }
        this.hostnameMapping = mapBuilder.build();
    }
}
