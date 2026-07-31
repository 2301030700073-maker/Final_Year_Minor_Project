package com.fsck.k9.preferences;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsFile$Server {
    public final String authenticationType;
    public final String clientCertificateAlias;
    public final String connectionSecurity;
    public final Map extras;
    public final String host;
    public final String password;
    public final String port;
    public final String type;
    public final String username;

    public SettingsFile$Server(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Map map) {
        this.type = str;
        this.host = str2;
        this.port = str3;
        this.connectionSecurity = str4;
        this.authenticationType = str5;
        this.username = str6;
        this.password = str7;
        this.clientCertificateAlias = str8;
        this.extras = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SettingsFile$Server)) {
            return false;
        }
        SettingsFile$Server settingsFile$Server = (SettingsFile$Server) obj;
        return Intrinsics.areEqual(this.type, settingsFile$Server.type) && Intrinsics.areEqual(this.host, settingsFile$Server.host) && Intrinsics.areEqual(this.port, settingsFile$Server.port) && Intrinsics.areEqual(this.connectionSecurity, settingsFile$Server.connectionSecurity) && Intrinsics.areEqual(this.authenticationType, settingsFile$Server.authenticationType) && Intrinsics.areEqual(this.username, settingsFile$Server.username) && Intrinsics.areEqual(this.password, settingsFile$Server.password) && Intrinsics.areEqual(this.clientCertificateAlias, settingsFile$Server.clientCertificateAlias) && Intrinsics.areEqual(this.extras, settingsFile$Server.extras);
    }

    public final int hashCode() {
        String str = this.type;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.host;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.port;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.connectionSecurity;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.authenticationType;
        int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.username;
        int hashCode6 = (hashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.password;
        int hashCode7 = (hashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.clientCertificateAlias;
        int hashCode8 = (hashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Map map = this.extras;
        return hashCode8 + (map != null ? map.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("Server(type=", this.type, ", host=", this.host, ", port=");
        Modifier.CC.m(m, this.port, ", connectionSecurity=", this.connectionSecurity, ", authenticationType=");
        Modifier.CC.m(m, this.authenticationType, ", username=", this.username, ", password=");
        Modifier.CC.m(m, this.password, ", clientCertificateAlias=", this.clientCertificateAlias, ", extras=");
        m.append(this.extras);
        m.append(")");
        return m.toString();
    }
}
