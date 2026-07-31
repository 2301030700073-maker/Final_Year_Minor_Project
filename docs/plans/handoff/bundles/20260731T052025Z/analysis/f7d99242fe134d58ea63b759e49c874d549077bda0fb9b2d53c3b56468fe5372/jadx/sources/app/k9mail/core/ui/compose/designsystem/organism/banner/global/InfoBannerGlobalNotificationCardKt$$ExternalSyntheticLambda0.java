package app.k9mail.core.ui.compose.designsystem.organism.banner.global;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ Function2 f$2;

    public /* synthetic */ InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0(String str, Function2 function2, Modifier modifier, int i) {
        this.$r8$classId = 1;
        this.f$0 = str;
        this.f$2 = function2;
        this.f$1 = modifier;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function2 function2 = this.f$2;
        Modifier modifier = this.f$1;
        String str = this.f$0;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                BannerGlobalNotificationCardKt.InfoBannerGlobalNotificationCard(Updater.updateChangedFlags(1), composer, modifier, str, function2);
                break;
            case 1:
                BannerGlobalNotificationCardKt.ErrorBannerGlobalNotificationCard(Updater.updateChangedFlags(1), composer, modifier, str, function2);
                break;
            default:
                BannerGlobalNotificationCardKt.WarningBannerGlobalNotificationCard(Updater.updateChangedFlags(1), composer, modifier, str, function2);
                break;
        }
        return unit;
    }

    public /* synthetic */ InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0(String str, Modifier modifier, Function2 function2, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = str;
        this.f$1 = modifier;
        this.f$2 = function2;
    }
}
