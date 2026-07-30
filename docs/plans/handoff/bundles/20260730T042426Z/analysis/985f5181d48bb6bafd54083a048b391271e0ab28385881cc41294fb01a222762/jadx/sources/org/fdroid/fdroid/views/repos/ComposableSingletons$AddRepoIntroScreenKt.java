package org.fdroid.fdroid.views.repos;

import androidx.compose.material.icons.Icons$AutoMirrored$Filled;
import androidx.compose.material.icons.automirrored.filled.ArrowBackKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.fdroid.fdroid.R;

/* compiled from: AddRepoIntroScreen.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ComposableSingletons$AddRepoIntroScreenKt {
    public static final ComposableSingletons$AddRepoIntroScreenKt INSTANCE = new ComposableSingletons$AddRepoIntroScreenKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function2 f52lambda1 = ComposableLambdaKt.composableLambdaInstance(2031892277, false, new Function2() { // from class: org.fdroid.fdroid.views.repos.ComposableSingletons$AddRepoIntroScreenKt$lambda-1$1
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
                ComposerKt.traceEventStart(2031892277, i, -1, "org.fdroid.fdroid.views.repos.ComposableSingletons$AddRepoIntroScreenKt.lambda-1.<anonymous> (AddRepoIntroScreen.kt:96)");
            }
            IconKt.m699Iconww6aTOc(ArrowBackKt.getArrowBack(Icons$AutoMirrored$Filled.INSTANCE), StringResources_androidKt.stringResource(R.string.back, composer, 0), (Modifier) null, 0L, composer, 0, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-2, reason: not valid java name */
    public static Function2 f53lambda2 = ComposableLambdaKt.composableLambdaInstance(518708409, false, ComposableSingletons$AddRepoIntroScreenKt$lambda2$1.INSTANCE);

    /* renamed from: lambda-3, reason: not valid java name */
    public static Function2 f54lambda3 = ComposableLambdaKt.composableLambdaInstance(817502263, false, ComposableSingletons$AddRepoIntroScreenKt$lambda3$1.INSTANCE);

    /* renamed from: getLambda-1$app_fullRelease, reason: not valid java name */
    public final Function2 m3202getLambda1$app_fullRelease() {
        return f52lambda1;
    }

    /* renamed from: getLambda-2$app_fullRelease, reason: not valid java name */
    public final Function2 m3203getLambda2$app_fullRelease() {
        return f53lambda2;
    }

    /* renamed from: getLambda-3$app_fullRelease, reason: not valid java name */
    public final Function2 m3204getLambda3$app_fullRelease() {
        return f54lambda3;
    }
}
