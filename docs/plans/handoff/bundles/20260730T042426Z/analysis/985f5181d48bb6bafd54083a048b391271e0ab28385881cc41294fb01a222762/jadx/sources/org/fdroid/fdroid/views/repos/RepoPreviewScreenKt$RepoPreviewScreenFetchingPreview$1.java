package org.fdroid.fdroid.views.repos;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.fdroid.database.MinimalApp;
import org.fdroid.database.Repository;
import org.fdroid.repo.FetchResult;
import org.fdroid.repo.Fetching;

/* compiled from: RepoPreviewScreen.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
final class RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1 implements Function2 {
    final /* synthetic */ String $address;
    final /* synthetic */ RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app1$1 $app1;
    final /* synthetic */ RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app2$1 $app2;
    final /* synthetic */ RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1 $app3;
    final /* synthetic */ Repository $repo;

    RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1(String str, Repository repository, RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app1$1 repoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app1$1, RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app2$1 repoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app2$1, RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1 repoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1) {
        this.$address = str;
        this.$repo = repository;
        this.$app1 = repoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app1$1;
        this.$app2 = repoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app2$1;
        this.$app3 = repoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-79717703, i, -1, "org.fdroid.fdroid.views.repos.RepoPreviewScreenFetchingPreview.<anonymous> (RepoPreviewScreen.kt:293)");
            }
            Fetching fetching = new Fetching(this.$address, this.$repo, CollectionsKt.listOf((Object[]) new MinimalApp[]{this.$app1, this.$app2, this.$app3}), FetchResult.IsNewRepository.INSTANCE, false, 16, null);
            composer.startReplaceGroup(-1279981962);
            Object rememberedValue = composer.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function0() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1$$ExternalSyntheticLambda0
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
