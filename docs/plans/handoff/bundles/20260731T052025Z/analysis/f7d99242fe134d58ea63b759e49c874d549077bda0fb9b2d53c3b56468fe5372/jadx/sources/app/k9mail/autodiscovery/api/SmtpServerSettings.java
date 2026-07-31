package app.k9mail.autodiscovery.api;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.common.net.Hostname;
import net.thunderbird.core.common.net.Port;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SmtpServerSettings {
    public final List authenticationTypes;
    public final ConnectionSecurity connectionSecurity;
    public final String hostname;
    public final int port;
    public final String username;

    public SmtpServerSettings(String str, int i, ConnectionSecurity connectionSecurity, List list, String str2) {
        str.getClass();
        connectionSecurity.getClass();
        list.getClass();
        this.hostname = str;
        this.port = i;
        this.connectionSecurity = connectionSecurity;
        this.authenticationTypes = list;
        this.username = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SmtpServerSettings)) {
            return false;
        }
        SmtpServerSettings smtpServerSettings = (SmtpServerSettings) obj;
        return Intrinsics.areEqual(this.hostname, smtpServerSettings.hostname) && this.port == smtpServerSettings.port && this.connectionSecurity == smtpServerSettings.connectionSecurity && Intrinsics.areEqual(this.authenticationTypes, smtpServerSettings.authenticationTypes) && this.username.equals(smtpServerSettings.username);
    }

    public final int hashCode() {
        return this.username.hashCode() + CameraDevices$CC.m(this.authenticationTypes, (this.connectionSecurity.hashCode() + (((this.hostname.hashCode() * 31) + this.port) * 31)) * 31, 31);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("SmtpServerSettings(hostname=", Hostname.m1027toStringimpl(this.hostname), ", port=", Port.m1028toStringimpl(this.port), ", connectionSecurity=");
        m.append(this.connectionSecurity);
        m.append(", authenticationTypes=");
        m.append(this.authenticationTypes);
        m.append(", username=");
        return CameraDevices$CC.m(m, this.username, ")");
    }
}
