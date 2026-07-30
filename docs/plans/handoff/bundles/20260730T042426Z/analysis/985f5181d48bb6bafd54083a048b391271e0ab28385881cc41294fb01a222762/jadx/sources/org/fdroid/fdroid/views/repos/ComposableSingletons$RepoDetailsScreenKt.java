package org.fdroid.fdroid.views.repos;

import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.Icons$AutoMirrored$Filled;
import androidx.compose.material.icons.automirrored.filled.ArrowBackKt;
import androidx.compose.material.icons.filled.DeleteKt;
import androidx.compose.material.icons.filled.InfoKt;
import androidx.compose.material.icons.filled.QrCodeKt;
import androidx.compose.material.icons.filled.ShareKt;
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
import org.fdroid.database.Repository;
import org.fdroid.database.RepositoryKt;
import org.fdroid.fdroid.R;

/* compiled from: RepoDetailsScreen.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ComposableSingletons$RepoDetailsScreenKt {
    public static final ComposableSingletons$RepoDetailsScreenKt INSTANCE = new ComposableSingletons$RepoDetailsScreenKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function2 f55lambda1 = ComposableLambdaKt.composableLambdaInstance(790925101, false, new Function2() { // from class: org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt$lambda-1$1
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
                ComposerKt.traceEventStart(790925101, i, -1, "org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt.lambda-1.<anonymous> (RepoDetailsScreen.kt:101)");
            }
            TextKt.m780Text4IGK_g(StringResources_androidKt.stringResource(R.string.repo_details, composer, 0), null, 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-2, reason: not valid java name */
    public static Function2 f57lambda2 = ComposableLambdaKt.composableLambdaInstance(-319596498, false, new Function2() { // from class: org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt$lambda-2$1
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
                ComposerKt.traceEventStart(-319596498, i, -1, "org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt.lambda-2.<anonymous> (RepoDetailsScreen.kt:97)");
            }
            IconKt.m699Iconww6aTOc(ArrowBackKt.getArrowBack(Icons$AutoMirrored$Filled.INSTANCE), StringResources_androidKt.stringResource(R.string.back, composer, 0), (Modifier) null, 0L, composer, 0, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-3, reason: not valid java name */
    public static Function2 f58lambda3 = ComposableLambdaKt.composableLambdaInstance(-228413121, false, new Function2() { // from class: org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt$lambda-3$1
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
                ComposerKt.traceEventStart(-228413121, i, -1, "org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt.lambda-3.<anonymous> (RepoDetailsScreen.kt:105)");
            }
            IconKt.m699Iconww6aTOc(ShareKt.getShare(Icons.INSTANCE.getDefault()), StringResources_androidKt.stringResource(R.string.share_repository, composer, 0), (Modifier) null, 0L, composer, 0, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-4, reason: not valid java name */
    public static Function2 f59lambda4 = ComposableLambdaKt.composableLambdaInstance(1598693110, false, new Function2() { // from class: org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt$lambda-4$1
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
                ComposerKt.traceEventStart(1598693110, i, -1, "org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt.lambda-4.<anonymous> (RepoDetailsScreen.kt:108)");
            }
            IconKt.m699Iconww6aTOc(QrCodeKt.getQrCode(Icons.INSTANCE.getDefault()), StringResources_androidKt.stringResource(R.string.show_repository_qr, composer, 0), (Modifier) null, 0L, composer, 0, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-5, reason: not valid java name */
    public static Function2 f60lambda5 = ComposableLambdaKt.composableLambdaInstance(-2048046729, false, new Function2() { // from class: org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt$lambda-5$1
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
                ComposerKt.traceEventStart(-2048046729, i, -1, "org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt.lambda-5.<anonymous> (RepoDetailsScreen.kt:111)");
            }
            IconKt.m699Iconww6aTOc(DeleteKt.getDelete(Icons.INSTANCE.getDefault()), StringResources_androidKt.stringResource(R.string.delete, composer, 0), (Modifier) null, 0L, composer, 0, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-6, reason: not valid java name */
    public static Function2 f61lambda6 = ComposableLambdaKt.composableLambdaInstance(-1399819272, false, new Function2() { // from class: org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt$lambda-6$1
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
                ComposerKt.traceEventStart(-1399819272, i, -1, "org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt.lambda-6.<anonymous> (RepoDetailsScreen.kt:114)");
            }
            IconKt.m699Iconww6aTOc(InfoKt.getInfo(Icons.INSTANCE.getDefault()), StringResources_androidKt.stringResource(R.string.repo_details, composer, 0), (Modifier) null, 0L, composer, 0, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-7, reason: not valid java name */
    public static Function2 f62lambda7 = ComposableLambdaKt.composableLambdaInstance(1363354573, false, new Function2() { // from class: org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt$lambda-7$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            RepoDetailsScreenKt$emptyCallbacks$1 repoDetailsScreenKt$emptyCallbacks$1;
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1363354573, i, -1, "org.fdroid.fdroid.views.repos.ComposableSingletons$RepoDetailsScreenKt.lambda-7.<anonymous> (RepoDetailsScreen.kt:435)");
                }
                Repository dummy_test_repo = RepositoryKt.getDUMMY_TEST_REPO();
                ArchiveState archiveState = ArchiveState.ENABLED;
                repoDetailsScreenKt$emptyCallbacks$1 = RepoDetailsScreenKt.emptyCallbacks;
                RepoDetailsScreenKt.RepoDetailsScreen(dummy_test_repo, archiveState, 42, repoDetailsScreenKt$emptyCallbacks$1, composer, 3504);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* renamed from: lambda-8, reason: not valid java name */
    public static Function2 f63lambda8 = ComposableLambdaKt.composableLambdaInstance(742178531, false, ComposableSingletons$RepoDetailsScreenKt$lambda8$1.INSTANCE);

    /* renamed from: lambda-9, reason: not valid java name */
    public static Function2 f64lambda9 = ComposableLambdaKt.composableLambdaInstance(-1983056832, false, ComposableSingletons$RepoDetailsScreenKt$lambda9$1.INSTANCE);

    /* renamed from: lambda-10, reason: not valid java name */
    public static Function2 f56lambda10 = ComposableLambdaKt.composableLambdaInstance(1874673952, false, ComposableSingletons$RepoDetailsScreenKt$lambda10$1.INSTANCE);

    /* renamed from: getLambda-1$app_fullRelease, reason: not valid java name */
    public final Function2 m3209getLambda1$app_fullRelease() {
        return f55lambda1;
    }

    /* renamed from: getLambda-10$app_fullRelease, reason: not valid java name */
    public final Function2 m3210getLambda10$app_fullRelease() {
        return f56lambda10;
    }

    /* renamed from: getLambda-2$app_fullRelease, reason: not valid java name */
    public final Function2 m3211getLambda2$app_fullRelease() {
        return f57lambda2;
    }

    /* renamed from: getLambda-3$app_fullRelease, reason: not valid java name */
    public final Function2 m3212getLambda3$app_fullRelease() {
        return f58lambda3;
    }

    /* renamed from: getLambda-4$app_fullRelease, reason: not valid java name */
    public final Function2 m3213getLambda4$app_fullRelease() {
        return f59lambda4;
    }

    /* renamed from: getLambda-5$app_fullRelease, reason: not valid java name */
    public final Function2 m3214getLambda5$app_fullRelease() {
        return f60lambda5;
    }

    /* renamed from: getLambda-6$app_fullRelease, reason: not valid java name */
    public final Function2 m3215getLambda6$app_fullRelease() {
        return f61lambda6;
    }

    /* renamed from: getLambda-7$app_fullRelease, reason: not valid java name */
    public final Function2 m3216getLambda7$app_fullRelease() {
        return f62lambda7;
    }

    /* renamed from: getLambda-8$app_fullRelease, reason: not valid java name */
    public final Function2 m3217getLambda8$app_fullRelease() {
        return f63lambda8;
    }

    /* renamed from: getLambda-9$app_fullRelease, reason: not valid java name */
    public final Function2 m3218getLambda9$app_fullRelease() {
        return f64lambda9;
    }
}
