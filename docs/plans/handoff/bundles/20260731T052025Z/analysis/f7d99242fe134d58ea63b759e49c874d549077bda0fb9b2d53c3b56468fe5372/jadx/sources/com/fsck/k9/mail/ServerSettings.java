package com.fsck.k9.mail;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ServerSettings {
    public static final Regex LINE_BREAK = new Regex("[\\r\\n]");
    public final AuthType authenticationType;
    public final String clientCertificateAlias;
    public final ConnectionSecurity connectionSecurity;
    public final Map extra;
    public final String host;
    public final boolean isMissingCredentials;
    public final String password;
    public final int port;
    public final String type;
    public final String username;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003c, code lost:
    
        if (kotlin.text.StringsKt.isBlank(r7) != false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0045, code lost:
    
        if (r8 == null) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ServerSettings(java.lang.String r1, java.lang.String r2, int r3, com.fsck.k9.mail.ConnectionSecurity r4, com.fsck.k9.mail.AuthType r5, java.lang.String r6, java.lang.String r7, java.lang.String r8, java.util.Map r9) {
        /*
            r0 = this;
            r2.getClass()
            r4.getClass()
            r5.getClass()
            r6.getClass()
            r0.<init>()
            r0.type = r1
            r0.host = r2
            r0.port = r3
            r0.connectionSecurity = r4
            r0.authenticationType = r5
            r0.username = r6
            r0.password = r7
            r0.clientCertificateAlias = r8
            r0.extra = r9
            int r2 = r5.ordinal()
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == r3) goto L45
            r3 = 3
            if (r2 == r3) goto L40
            r3 = 4
            if (r2 == r3) goto L48
            boolean r2 = kotlin.text.StringsKt.isBlank(r6)
            if (r2 != 0) goto L3e
            if (r7 == 0) goto L3e
            boolean r2 = kotlin.text.StringsKt.isBlank(r7)
            if (r2 == 0) goto L48
        L3e:
            r5 = r4
            goto L48
        L40:
            boolean r5 = kotlin.text.StringsKt.isBlank(r6)
            goto L48
        L45:
            if (r8 != 0) goto L48
            goto L3e
        L48:
            r0.isMissingCredentials = r5
            java.util.Locale r0 = java.util.Locale.ROOT
            java.lang.String r0 = r1.toLowerCase(r0)
            r0.getClass()
            boolean r0 = r1.equals(r0)
            r1 = 0
            if (r0 == 0) goto L79
            kotlin.text.Regex r0 = com.fsck.k9.mail.ServerSettings.LINE_BREAK
            boolean r2 = r0.containsMatchIn(r6)
            if (r2 != 0) goto L72
            if (r7 == 0) goto L71
            boolean r0 = r0.containsMatchIn(r7)
            if (r0 == r4) goto L6b
            goto L71
        L6b:
            java.lang.String r0 = "password must not contain line break"
            coil3.UriKt$$ExternalSyntheticBUOutline0.m(r0)
            throw r1
        L71:
            return
        L72:
            java.lang.String r0 = "username must not contain line break"
            coil3.UriKt$$ExternalSyntheticBUOutline0.m(r0)
            throw r1
        L79:
            java.lang.String r0 = "type must be all lower case"
            coil3.UriKt$$ExternalSyntheticBUOutline0.m(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mail.ServerSettings.<init>(java.lang.String, java.lang.String, int, com.fsck.k9.mail.ConnectionSecurity, com.fsck.k9.mail.AuthType, java.lang.String, java.lang.String, java.lang.String, java.util.Map):void");
    }

    public static ServerSettings copy$default(ServerSettings serverSettings, String str, String str2, Map map, int i) {
        String str3 = serverSettings.type;
        String str4 = serverSettings.host;
        int i2 = serverSettings.port;
        ConnectionSecurity connectionSecurity = serverSettings.connectionSecurity;
        AuthType authType = (i & 16) != 0 ? serverSettings.authenticationType : AuthType.XOAUTH2;
        if ((i & 32) != 0) {
            str = serverSettings.username;
        }
        String str5 = str;
        if ((i & 64) != 0) {
            str2 = serverSettings.password;
        }
        String str6 = str2;
        String str7 = serverSettings.clientCertificateAlias;
        if ((i & 256) != 0) {
            map = serverSettings.extra;
        }
        Map map2 = map;
        serverSettings.getClass();
        str3.getClass();
        str4.getClass();
        connectionSecurity.getClass();
        authType.getClass();
        str5.getClass();
        map2.getClass();
        return new ServerSettings(str3, str4, i2, connectionSecurity, authType, str5, str6, str7, map2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServerSettings)) {
            return false;
        }
        ServerSettings serverSettings = (ServerSettings) obj;
        return Intrinsics.areEqual(this.type, serverSettings.type) && Intrinsics.areEqual(this.host, serverSettings.host) && this.port == serverSettings.port && this.connectionSecurity == serverSettings.connectionSecurity && this.authenticationType == serverSettings.authenticationType && Intrinsics.areEqual(this.username, serverSettings.username) && Intrinsics.areEqual(this.password, serverSettings.password) && Intrinsics.areEqual(this.clientCertificateAlias, serverSettings.clientCertificateAlias) && Intrinsics.areEqual(this.extra, serverSettings.extra);
    }

    public final int hashCode() {
        int m = Modifier.CC.m((this.authenticationType.hashCode() + ((this.connectionSecurity.hashCode() + ((Modifier.CC.m(this.type.hashCode() * 31, this.host, 31) + this.port) * 31)) * 31)) * 31, this.username, 31);
        String str = this.password;
        int hashCode = (m + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.clientCertificateAlias;
        return this.extra.hashCode() + ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("ServerSettings(type=", this.type, ", host=", this.host, ", port=");
        m.append(this.port);
        m.append(", connectionSecurity=");
        m.append(this.connectionSecurity);
        m.append(", authenticationType=");
        m.append(this.authenticationType);
        m.append(", username=");
        m.append(this.username);
        m.append(", password=");
        Modifier.CC.m(m, this.password, ", clientCertificateAlias=", this.clientCertificateAlias, ", extra=");
        m.append(this.extra);
        m.append(")");
        return m.toString();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ServerSettings(String str, String str2, int i, ConnectionSecurity connectionSecurity, AuthType authType, String str3, String str4, String str5) {
        this(str, str2, i, connectionSecurity, authType, str3, str4, str5, EmptyMap.INSTANCE);
        str2.getClass();
        authType.getClass();
        str3.getClass();
    }
}
