package org.fdroid.fdroid.views.repos;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.fdroid.database.Repository;
import org.fdroid.repo.FetchResult;
import org.fdroid.repo.Fetching;

/* compiled from: RepoPreviewScreen.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
final class RepoPreviewScreenKt$RepoPreviewScreenExistingMirrorPreview$1 implements Function2 {
    final /* synthetic */ Repository $repo;

    RepoPreviewScreenKt$RepoPreviewScreenExistingMirrorPreview$1(Repository repository) {
        this.$repo = repository;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(441389623, i, -1, "org.fdroid.fdroid.views.repos.RepoPreviewScreenExistingMirrorPreview.<anonymous> (RepoPreviewScreen.kt:338)");
            }
            Fetching fetching = new Fetching("https://mirror.example.org", this.$repo, CollectionsKt.emptyList(), new FetchResult.IsExistingMirror(0L), false, 16, null);
            composer.startReplaceGroup(-488505420);
            Object rememberedValue = composer.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function0() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$RepoPreviewScreenExistingMirrorPreview$1$$ExternalSyntheticLambda0
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
            RepoPreviewScreenKt.RepoPreviewScreen(fetching, null, (Function0) rememberedValue, composer, 384, 2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
                return;
            }
            return;
        }
        composer.skipToGroupEnd();
    }
}
