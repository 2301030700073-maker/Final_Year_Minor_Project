package org.fdroid.fdroid.views;

import androidx.compose.material.icons.Icons$AutoMirrored$Filled;
import androidx.compose.material.icons.automirrored.filled.ArrowBackKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.fdroid.fdroid.R;

/* compiled from: IpfsGatewayAddActivity.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ComposableSingletons$IpfsGatewayAddActivityKt {
    public static final ComposableSingletons$IpfsGatewayAddActivityKt INSTANCE = new ComposableSingletons$IpfsGatewayAddActivityKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function2 f40lambda1 = ComposableLambdaKt.composableLambdaInstance(1126226940, false, new Function2() { // from class: org.fdroid.fdroid.views.ComposableSingletons$IpfsGatewayAddActivityKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1126226940, i, -1, "org.fdroid.fdroid.views.ComposableSingletons$IpfsGatewayAddActivityKt.lambda-1.<anonymous> (IpfsGatewayAddActivity.kt:92)");
                }
                TextKt.m780Text4IGK_g(StringResources_androidKt.stringResource(R.string.ipfsgw_add_title, composer, 0), null, 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer, 0, 0, 131070);
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
    public static Function2 f41lambda2 = ComposableLambdaKt.composableLambdaInstance(1502587611, false, new Function2() { // from class: org.fdroid.fdroid.views.ComposableSingletons$IpfsGatewayAddActivityKt$lambda-2$1
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
                ComposerKt.traceEventStart(1502587611, i, -1, "org.fdroid.fdroid.views.ComposableSingletons$IpfsGatewayAddActivityKt.lambda-2.<anonymous> (IpfsGatewayAddActivity.kt:88)");
            }
            IconKt.m699Iconww6aTOc(ArrowBackKt.getArrowBack(Icons$AutoMirrored$Filled.INSTANCE), StringResources_androidKt.stringResource(R.string.back, composer, 0), (Modifier) null, 0L, composer, 0, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-3, reason: not valid java name */
    public static Function2 f42lambda3 = ComposableLambdaKt.composableLambdaInstance(-879463895, false, ComposableSingletons$IpfsGatewayAddActivityKt$lambda3$1.INSTANCE);

    /* renamed from: getLambda-1$app_fullRelease, reason: not valid java name */
    public final Function2 m3123getLambda1$app_fullRelease() {
        return f40lambda1;
    }

    /* renamed from: getLambda-2$app_fullRelease, reason: not valid java name */
    public final Function2 m3124getLambda2$app_fullRelease() {
        return f41lambda2;
    }

    /* renamed from: getLambda-3$app_fullRelease, reason: not valid java name */
    public final Function2 m3125getLambda3$app_fullRelease() {
        return f42lambda3;
    }
}
