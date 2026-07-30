package org.fdroid.fdroid.views.appdetails;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.fdroid.database.Repository;

/* compiled from: RepoChooser.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
final class RepoChooserKt$RepoChooserPreview$1 implements Function2 {
    final /* synthetic */ Repository $repo1;
    final /* synthetic */ Repository $repo2;
    final /* synthetic */ Repository $repo3;

    RepoChooserKt$RepoChooserPreview$1(Repository repository, Repository repository2, Repository repository3) {
        this.$repo1 = repository;
        this.$repo2 = repository2;
        this.$repo3 = repository3;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1$lambda$0(Repository it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$3$lambda$2(long j) {
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) == 2 && composer.getSkipping()) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1708329873, i, -1, "org.fdroid.fdroid.views.appdetails.RepoChooserPreview.<anonymous> (RepoChooser.kt:214)");
        }
        List listOf = CollectionsKt.listOf((Object[]) new Repository[]{this.$repo1, this.$repo2, this.$repo3});
        composer.startReplaceGroup(269895715);
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = new Function1() { // from class: org.fdroid.fdroid.views.appdetails.RepoChooserKt$RepoChooserPreview$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit invoke$lambda$1$lambda$0;
                    invoke$lambda$1$lambda$0 = RepoChooserKt$RepoChooserPreview$1.invoke$lambda$1$lambda$0((Repository) obj);
                    return invoke$lambda$1$lambda$0;
                }
            };
            composer.updateRememberedValue(rememberedValue);
        }
        Function1 function1 = (Function1) rememberedValue;
        composer.endReplaceGroup();
        composer.startReplaceGroup(269895843);
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = new Function1() { // from class: org.fdroid.fdroid.views.appdetails.RepoChooserKt$RepoChooserPreview$1$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit invoke$lambda$3$lambda$2;
                    invoke$lambda$3$lambda$2 = RepoChooserKt$RepoChooserPreview$1.invoke$lambda$3$lambda$2(((Long) obj).longValue());
                    return invoke$lambda$3$lambda$2;
                }
            };
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceGroup();
        RepoChooserKt.RepoChooser(listOf, 1L, 1L, function1, (Function1) rememberedValue2, null, composer, 28080, 32);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }
}
