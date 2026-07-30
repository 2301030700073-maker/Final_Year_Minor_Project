package org.fdroid.fdroid.views;

import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.CloseKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.ColorResources_androidKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.fdroid.fdroid.R;

/* compiled from: CallToActionBanner.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ComposableSingletons$CallToActionBannerKt {
    public static final ComposableSingletons$CallToActionBannerKt INSTANCE = new ComposableSingletons$CallToActionBannerKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function2 f38lambda1 = ComposableLambdaKt.composableLambdaInstance(-107605391, false, new Function2() { // from class: org.fdroid.fdroid.views.ComposableSingletons$CallToActionBannerKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-107605391, i, -1, "org.fdroid.fdroid.views.ComposableSingletons$CallToActionBannerKt.lambda-1.<anonymous> (CallToActionBanner.kt:117)");
                }
                IconKt.m699Iconww6aTOc(CloseKt.getClose(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, ColorResources_androidKt.colorResource(R.color.call_to_action_banner__text, composer, 0), composer, 48, 4);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* renamed from: lambda-2, reason: not valid java name */
    public static Function2 f39lambda2 = ComposableLambdaKt.composableLambdaInstance(-2088545620, false, ComposableSingletons$CallToActionBannerKt$lambda2$1.INSTANCE);

    /* renamed from: getLambda-1$app_fullRelease, reason: not valid java name */
    public final Function2 m3120getLambda1$app_fullRelease() {
        return f38lambda1;
    }

    /* renamed from: getLambda-2$app_fullRelease, reason: not valid java name */
    public final Function2 m3121getLambda2$app_fullRelease() {
        return f39lambda2;
    }
}
