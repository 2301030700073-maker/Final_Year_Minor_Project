package app.k9mail.autodiscovery.autoconfig;

import app.k9mail.autodiscovery.api.ConnectionSecurity;
import app.k9mail.autodiscovery.api.ImapServerSettings;
import app.k9mail.autodiscovery.api.SmtpServerSettings;
import java.util.List;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.FunctionReferenceImpl;
import net.thunderbird.core.common.net.Hostname;
import net.thunderbird.core.common.net.Port;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ClientConfigParser$parseEmailProvider$1$1 extends FunctionReferenceImpl implements Function5 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ClientConfigParser$parseEmailProvider$1$1(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, i2, cls, obj, str, str2);
        this.$r8$classId = i3;
    }

    @Override // kotlin.jvm.functions.Function5
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        switch (this.$r8$classId) {
            case 0:
                String str = ((Hostname) obj).value;
                ConnectionSecurity connectionSecurity = (ConnectionSecurity) obj3;
                List list = (List) obj4;
                str.getClass();
                connectionSecurity.getClass();
                list.getClass();
                ((ClientConfigParser) this.receiver).getClass();
                return new ImapServerSettings(str, ((Port) obj2).value, connectionSecurity, list, (String) obj5);
            default:
                String str2 = ((Hostname) obj).value;
                ConnectionSecurity connectionSecurity2 = (ConnectionSecurity) obj3;
                List list2 = (List) obj4;
                str2.getClass();
                connectionSecurity2.getClass();
                list2.getClass();
                ((ClientConfigParser) this.receiver).getClass();
                return new SmtpServerSettings(str2, ((Port) obj2).value, connectionSecurity2, list2, (String) obj5);
        }
    }
}
