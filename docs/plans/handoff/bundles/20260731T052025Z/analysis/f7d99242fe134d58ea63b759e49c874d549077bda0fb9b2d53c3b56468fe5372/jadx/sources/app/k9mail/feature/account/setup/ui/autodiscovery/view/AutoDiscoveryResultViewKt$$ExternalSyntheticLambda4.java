package app.k9mail.feature.account.setup.ui.autodiscovery.view;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.Data;
import app.k9mail.autodiscovery.api.AutoDiscoveryResult;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AutoDiscoveryResultViewKt$$ExternalSyntheticLambda4 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AutoDiscoveryResult.Settings f$0;
    public final /* synthetic */ Function0 f$1;
    public final /* synthetic */ Modifier f$2;

    public /* synthetic */ AutoDiscoveryResultViewKt$$ExternalSyntheticLambda4(AutoDiscoveryResult.Settings settings, Function0 function0, Modifier modifier, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = settings;
        this.f$1 = function0;
        this.f$2 = modifier;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Modifier modifier = this.f$2;
        Function0 function0 = this.f$1;
        AutoDiscoveryResult.Settings settings = this.f$0;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                Data.Companion.AutoDiscoveryResultView(settings, function0, modifier, composer, Updater.updateChangedFlags(1));
                break;
            default:
                SchemaInfoUtilKt.AutoDiscoveryResultBodyView(settings, function0, modifier, composer, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }
}
