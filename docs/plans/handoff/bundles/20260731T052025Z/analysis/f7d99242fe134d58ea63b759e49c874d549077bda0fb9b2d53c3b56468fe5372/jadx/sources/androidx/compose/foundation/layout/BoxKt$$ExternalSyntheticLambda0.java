package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.util.SchemaInfoUtilKt;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailOAuthRedirectScreenKt;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class BoxKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Modifier f$0;

    public /* synthetic */ BoxKt$$ExternalSyntheticLambda0(Modifier modifier, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = modifier;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Modifier modifier = this.f$0;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                BoxKt.Box(modifier, composer, Updater.updateChangedFlags(1));
                break;
            case 1:
                SchemaInfoUtilKt.DelayedCircularProgressIndicator(modifier, composer, Updater.updateChangedFlags(1));
                break;
            case 2:
                WelcomeScreenKt.WelcomeMessageItem(modifier, composer, Updater.updateChangedFlags(1));
                break;
            case 3:
                WelcomeScreenKt.WelcomeMessage(modifier, composer, Updater.updateChangedFlags(1));
                break;
            case 4:
                WelcomeScreenKt.WelcomeLogo(modifier, composer, Updater.updateChangedFlags(1));
                break;
            case 5:
                Jsoup.Placeholder(modifier, composer, Updater.updateChangedFlags(1));
                break;
            case 6:
                Jsoup.ReleaseItemTimeline(modifier, composer, Updater.updateChangedFlags(1));
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                AtomicFU.NewMessageBadge(modifier, composer, Updater.updateChangedFlags(1));
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                AtomicFU.UnreadMessageBadge(modifier, composer, Updater.updateChangedFlags(1));
                break;
            default:
                ThundermailOAuthRedirectScreenKt.RedirectingUserContent(modifier, composer, Updater.updateChangedFlags(7));
                break;
        }
        return unit;
    }
}
