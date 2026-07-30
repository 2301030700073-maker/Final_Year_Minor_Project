package org.fdroid.fdroid.views;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: IpfsGatewaySettingsActivity.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
final class IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreenPreview$1 implements Function2 {
    final /* synthetic */ IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreenPreview$prefs$1 $prefs;

    IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreenPreview$1(IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreenPreview$prefs$1 ipfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreenPreview$prefs$1) {
        this.$prefs = ipfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreenPreview$prefs$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2143016975, i, -1, "org.fdroid.fdroid.views.IpfsGatewaySettingsScreenPreview.<anonymous> (IpfsGatewaySettingsActivity.kt:251)");
            }
            composer.startReplaceGroup(-454902252);
            Object rememberedValue = composer.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function0() { // from class: org.fdroid.fdroid.views.IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreenPreview$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit unit;
                        unit = Unit.INSTANCE;
                        return unit;
                    }
                };
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceGroup();
            IpfsGatewaySettingsActivityKt.IpfsGatewaySettingsScreen((Function0) rememberedValue, this.$prefs, composer, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
                return;
            }
            return;
        }
        composer.skipToGroupEnd();
    }
}
