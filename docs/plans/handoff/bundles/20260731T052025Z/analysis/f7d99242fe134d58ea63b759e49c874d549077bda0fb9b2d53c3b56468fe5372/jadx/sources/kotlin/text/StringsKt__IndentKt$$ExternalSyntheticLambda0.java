package kotlin.text;

import coil3.size.ViewSizeResolver;
import kotlin.jvm.functions.Function1;
import net.thunderbird.feature.notification.NotificationSettings;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class StringsKt__IndentKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;

    public /* synthetic */ StringsKt__IndentKt$$ExternalSyntheticLambda0(String str, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        String str = this.f$0;
        switch (i) {
            case 0:
                String str2 = (String) obj;
                str2.getClass();
                return StringsKt.isBlank(str2) ? str2.length() < str.length() ? str : str2 : ViewSizeResolver.CC.m(str, str2);
            default:
                NotificationSettings notificationSettings = (NotificationSettings) obj;
                notificationSettings.getClass();
                return NotificationSettings.copy$default(notificationSettings, str, null, null, 12);
        }
    }
}
