package org.fdroid.fdroid.views;

import android.content.Context;
import android.content.Intent;
import androidx.compose.material3.FloatingActionButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: IpfsGatewaySettingsActivity.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
final class IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$2 implements Function2 {
    final /* synthetic */ Context $context;
    final /* synthetic */ MutableState $ipfsEnabled$delegate;

    IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$2(Context context, MutableState mutableState) {
        this.$context = context;
        this.$ipfsEnabled$delegate = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        boolean IpfsGatewaySettingsScreen$lambda$1;
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-593665551, i, -1, "org.fdroid.fdroid.views.IpfsGatewaySettingsScreen.<anonymous> (IpfsGatewaySettingsActivity.kt:93)");
            }
            IpfsGatewaySettingsScreen$lambda$1 = IpfsGatewaySettingsActivityKt.IpfsGatewaySettingsScreen$lambda$1(this.$ipfsEnabled$delegate);
            if (IpfsGatewaySettingsScreen$lambda$1) {
                composer.startReplaceGroup(2022596750);
                boolean changedInstance = composer.changedInstance(this.$context);
                final Context context = this.$context;
                Object rememberedValue = composer.rememberedValue();
                if (changedInstance || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new Function0() { // from class: org.fdroid.fdroid.views.IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$2$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit invoke$lambda$1$lambda$0;
                            invoke$lambda$1$lambda$0 = IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$2.invoke$lambda$1$lambda$0(context);
                            return invoke$lambda$1$lambda$0;
                        }
                    };
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceGroup();
                FloatingActionButtonKt.m691FloatingActionButtonXz6DiA((Function0) rememberedValue, null, null, 0L, 0L, null, null, ComposableSingletons$IpfsGatewaySettingsActivityKt.INSTANCE.m3129getLambda3$app_fullRelease(), composer, 12582912, 126);
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
                return;
            }
            return;
        }
        composer.skipToGroupEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1$lambda$0(Context context) {
        context.startActivity(new Intent(context, (Class<?>) IpfsGatewayAddActivity.class));
        return Unit.INSTANCE;
    }
}
