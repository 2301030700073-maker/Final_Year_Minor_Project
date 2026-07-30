package org.fdroid.fdroid.views;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: CallToActionBanner.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* renamed from: org.fdroid.fdroid.views.ComposableSingletons$CallToActionBannerKt$lambda-2$1, reason: invalid class name */
/* loaded from: classes2.dex */
final class ComposableSingletons$CallToActionBannerKt$lambda2$1 implements Function2 {
    public static final ComposableSingletons$CallToActionBannerKt$lambda2$1 INSTANCE = new ComposableSingletons$CallToActionBannerKt$lambda2$1();

    ComposableSingletons$CallToActionBannerKt$lambda2$1() {
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) == 2 && composer.getSkipping()) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2088545620, i, -1, "org.fdroid.fdroid.views.ComposableSingletons$CallToActionBannerKt.lambda-2.<anonymous> (CallToActionBanner.kt:151)");
        }
        composer.startReplaceGroup(578754930);
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new Function0() { // from class: org.fdroid.fdroid.views.ComposableSingletons$CallToActionBannerKt$lambda-2$1$$ExternalSyntheticLambda0
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
        CallToActionBannerKt.CallToActionBanner(false, (Function0) rememberedValue, composer, 54);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }
}
