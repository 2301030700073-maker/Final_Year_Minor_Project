package org.fdroid.fdroid.views.repos;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.fdroid.download.Mirror;

/* compiled from: RepoDetailsScreen.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* renamed from: org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt$lambda-10$1, reason: invalid class name */
/* loaded from: classes2.dex */
final class ComposableSingletons$RepoDetailsScreenKt$lambda10$1 implements Function2 {
    public static final ComposableSingletons$RepoDetailsScreenKt$lambda10$1 INSTANCE = new ComposableSingletons$RepoDetailsScreenKt$lambda10$1();

    ComposableSingletons$RepoDetailsScreenKt$lambda10$1() {
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1874673952, i, -1, "org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt.lambda-10.<anonymous> (RepoDetailsScreen.kt:469)");
            }
            List listOf = CollectionsKt.listOf(new Mirror("https://mirror.example.com/fdroid/repo", null, false, 6, null));
            HashSet hashSet = new HashSet();
            composer.startReplaceGroup(-1926191282);
            Object rememberedValue = composer.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (rememberedValue == companion.getEmpty()) {
                rememberedValue = new Function2() { // from class: org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt$lambda-10$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Unit invoke$lambda$1$lambda$0;
                        invoke$lambda$1$lambda$0 = ComposableSingletons$RepoDetailsScreenKt$lambda10$1.invoke$lambda$1$lambda$0((Mirror) obj, ((Boolean) obj2).booleanValue());
                        return invoke$lambda$1$lambda$0;
                    }
                };
                composer.updateRememberedValue(rememberedValue);
            }
            Function2 function2 = (Function2) rememberedValue;
            composer.endReplaceGroup();
            composer.startReplaceGroup(-1926189973);
            Object rememberedValue2 = composer.rememberedValue();
            if (rememberedValue2 == companion.getEmpty()) {
                rememberedValue2 = new Function1() { // from class: org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt$lambda-10$1$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit invoke$lambda$3$lambda$2;
                        invoke$lambda$3$lambda$2 = ComposableSingletons$RepoDetailsScreenKt$lambda10$1.invoke$lambda$3$lambda$2((Mirror) obj);
                        return invoke$lambda$3$lambda$2;
                    }
                };
                composer.updateRememberedValue(rememberedValue2);
            }
            Function1 function1 = (Function1) rememberedValue2;
            composer.endReplaceGroup();
            composer.startReplaceGroup(-1926188725);
            Object rememberedValue3 = composer.rememberedValue();
            if (rememberedValue3 == companion.getEmpty()) {
                rememberedValue3 = new Function1() { // from class: org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt$lambda-10$1$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit invoke$lambda$5$lambda$4;
                        invoke$lambda$5$lambda$4 = ComposableSingletons$RepoDetailsScreenKt$lambda10$1.invoke$lambda$5$lambda$4((Mirror) obj);
                        return invoke$lambda$5$lambda$4;
                    }
                };
                composer.updateRememberedValue(rememberedValue3);
            }
            composer.endReplaceGroup();
            RepoDetailsScreenKt.UserMirrors(listOf, hashSet, function2, function1, (Function1) rememberedValue3, composer, 28032);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
                return;
            }
            return;
        }
        composer.skipToGroupEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1$lambda$0(Mirror mirror, boolean z) {
        Intrinsics.checkNotNullParameter(mirror, "<unused var>");
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$3$lambda$2(Mirror mirror) {
        Intrinsics.checkNotNullParameter(mirror, "<unused var>");
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$5$lambda$4(Mirror mirror) {
        Intrinsics.checkNotNullParameter(mirror, "<unused var>");
        return Unit.INSTANCE;
    }
}
