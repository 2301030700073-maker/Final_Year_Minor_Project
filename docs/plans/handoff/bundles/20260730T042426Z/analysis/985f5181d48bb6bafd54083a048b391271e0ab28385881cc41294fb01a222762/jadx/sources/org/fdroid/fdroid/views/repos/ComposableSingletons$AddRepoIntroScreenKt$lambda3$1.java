package org.fdroid.fdroid.views.repos;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.fdroid.repo.None;

/* compiled from: AddRepoIntroScreen.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* renamed from: org.fdroid.fdroid.views.repos.ComposableSingletons$AddRepoIntroScreenKt$lambda-3$1, reason: invalid class name */
/* loaded from: classes2.dex */
final class ComposableSingletons$AddRepoIntroScreenKt$lambda3$1 implements Function2 {
    public static final ComposableSingletons$AddRepoIntroScreenKt$lambda3$1 INSTANCE = new ComposableSingletons$AddRepoIntroScreenKt$lambda3$1();

    ComposableSingletons$AddRepoIntroScreenKt$lambda3$1() {
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1$lambda$0(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) == 2 && composer.getSkipping()) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(817502263, i, -1, "org.fdroid.fdroid.views.repos.ComposableSingletons$AddRepoIntroScreenKt.lambda-3.<anonymous> (AddRepoIntroScreen.kt:247)");
        }
        None none = None.INSTANCE;
        composer.startReplaceGroup(2068683606);
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = new Function1() { // from class: org.fdroid.fdroid.views.repos.ComposableSingletons$AddRepoIntroScreenKt$lambda-3$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit invoke$lambda$1$lambda$0;
                    invoke$lambda$1$lambda$0 = ComposableSingletons$AddRepoIntroScreenKt$lambda3$1.invoke$lambda$1$lambda$0((String) obj);
                    return invoke$lambda$1$lambda$0;
                }
            };
            composer.updateRememberedValue(rememberedValue);
        }
        Function1 function1 = (Function1) rememberedValue;
        composer.endReplaceGroup();
        composer.startReplaceGroup(2068683734);
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = new Function0() { // from class: org.fdroid.fdroid.views.repos.ComposableSingletons$AddRepoIntroScreenKt$lambda-3$1$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit unit;
                    unit = Unit.INSTANCE;
                    return unit;
                }
            };
            composer.updateRememberedValue(rememberedValue2);
        }
        Function0 function0 = (Function0) rememberedValue2;
        composer.endReplaceGroup();
        composer.startReplaceGroup(2068683862);
        Object rememberedValue3 = composer.rememberedValue();
        if (rememberedValue3 == companion.getEmpty()) {
            rememberedValue3 = new Function0() { // from class: org.fdroid.fdroid.views.repos.ComposableSingletons$AddRepoIntroScreenKt$lambda-3$1$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit unit;
                    unit = Unit.INSTANCE;
                    return unit;
                }
            };
            composer.updateRememberedValue(rememberedValue3);
        }
        composer.endReplaceGroup();
        AddRepoIntroScreenKt.AddRepoIntroScreen(none, function1, function0, (Function0) rememberedValue3, composer, 3504);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }
}
