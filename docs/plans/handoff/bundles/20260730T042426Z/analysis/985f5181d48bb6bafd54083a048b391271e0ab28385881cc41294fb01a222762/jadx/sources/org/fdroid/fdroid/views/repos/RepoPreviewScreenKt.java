package org.fdroid.fdroid.views.repos;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.res.ColorResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.tooling.preview.datasource.LoremIpsum;
import androidx.compose.ui.unit.Dp;
import androidx.core.os.LocaleListCompat;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import org.fdroid.database.MinimalApp;
import org.fdroid.database.Repository;
import org.fdroid.fdroid.FDroidApp;
import org.fdroid.fdroid.R;
import org.fdroid.fdroid.Utils;
import org.fdroid.fdroid.compose.ComposeUtils;
import org.fdroid.fdroid.compose.ComposeUtilsKt;
import org.fdroid.fdroid.ui.theme.ThemeKt;
import org.fdroid.index.v2.FileV2;
import org.fdroid.repo.FetchResult;
import org.fdroid.repo.Fetching;

/* compiled from: RepoPreviewScreen.kt */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u001a-\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u0007H\u0007¢\u0006\u0002\u0010\b\u001a+\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0007¢\u0006\u0002\u0010\f\u001a)\u0010\r\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\u000bH\u0007¢\u0006\u0002\u0010\u0013\u001a\r\u0010\u0014\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0015\u001a\r\u0010\u0016\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0015\u001a\r\u0010\u0017\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0015\u001a\r\u0010\u0018\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0015\u001a\r\u0010\u0019\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0015¨\u0006\u001a"}, d2 = {"RepoPreviewScreen", "", "state", "Lorg/fdroid/repo/Fetching;", "modifier", "Landroidx/compose/ui/Modifier;", "onAddRepo", "Lkotlin/Function0;", "(Lorg/fdroid/repo/Fetching;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "RepoPreviewHeader", "localeList", "Landroidx/core/os/LocaleListCompat;", "(Lorg/fdroid/repo/Fetching;Lkotlin/jvm/functions/Function0;Landroidx/core/os/LocaleListCompat;Landroidx/compose/runtime/Composer;I)V", "RepoPreviewApp", "Landroidx/compose/foundation/lazy/LazyItemScope;", "repo", "Lorg/fdroid/database/Repository;", "app", "Lorg/fdroid/database/MinimalApp;", "(Landroidx/compose/foundation/lazy/LazyItemScope;Lorg/fdroid/database/Repository;Lorg/fdroid/database/MinimalApp;Landroidx/core/os/LocaleListCompat;Landroidx/compose/runtime/Composer;I)V", "RepoPreviewScreenFetchingPreview", "(Landroidx/compose/runtime/Composer;I)V", "RepoPreviewScreenNewMirrorPreview", "RepoPreviewScreenNewRepoAndNewMirrorPreview", "RepoPreviewScreenExistingRepoPreview", "RepoPreviewScreenExistingMirrorPreview", "app_fullRelease"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class RepoPreviewScreenKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoPreviewApp$lambda$14(LazyItemScope lazyItemScope, Repository repository, MinimalApp minimalApp, LocaleListCompat localeListCompat, int i, Composer composer, int i2) {
        RepoPreviewApp(lazyItemScope, repository, minimalApp, localeListCompat, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoPreviewHeader$lambda$13(Fetching fetching, Function0 function0, LocaleListCompat localeListCompat, int i, Composer composer, int i2) {
        RepoPreviewHeader(fetching, function0, localeListCompat, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoPreviewScreen$lambda$4(Fetching fetching, Modifier modifier, Function0 function0, int i, int i2, Composer composer, int i3) {
        RepoPreviewScreen(fetching, modifier, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoPreviewScreenExistingMirrorPreview$lambda$19(int i, Composer composer, int i2) {
        RepoPreviewScreenExistingMirrorPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoPreviewScreenExistingRepoPreview$lambda$18(int i, Composer composer, int i2) {
        RepoPreviewScreenExistingRepoPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoPreviewScreenFetchingPreview$lambda$15(int i, Composer composer, int i2) {
        RepoPreviewScreenFetchingPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoPreviewScreenNewMirrorPreview$lambda$16(int i, Composer composer, int i2) {
        RepoPreviewScreenNewMirrorPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoPreviewScreenNewRepoAndNewMirrorPreview$lambda$17(int i, Composer composer, int i2) {
        RepoPreviewScreenNewRepoAndNewMirrorPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void RepoPreviewScreen(final org.fdroid.repo.Fetching r18, androidx.compose.ui.Modifier r19, final kotlin.jvm.functions.Function0 r20, androidx.compose.runtime.Composer r21, final int r22, final int r23) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt.RepoPreviewScreen(org.fdroid.repo.Fetching, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoPreviewScreen$lambda$3$lambda$2(final Fetching fetching, final Function0 function0, final LocaleListCompat localeListCompat, LazyListScope LazyColumn) {
        Intrinsics.checkNotNullParameter(LazyColumn, "$this$LazyColumn");
        LazyListScope.CC.item$default(LazyColumn, null, null, ComposableLambdaKt.composableLambdaInstance(-1025264508, true, new Function3() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$RepoPreviewScreen$1$1$1
            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                invoke((LazyItemScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(LazyItemScope item, Composer composer, int i) {
                Intrinsics.checkNotNullParameter(item, "$this$item");
                if ((i & 17) == 16 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1025264508, i, -1, "org.fdroid.fdroid.views.repos.RepoPreviewScreen.<anonymous>.<anonymous>.<anonymous> (RepoPreviewScreen.kt:73)");
                }
                RepoPreviewScreenKt.RepoPreviewHeader(Fetching.this, function0, localeListCompat, composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }), 3, null);
        if (fetching.getFetchResult() == null || (fetching.getFetchResult() instanceof FetchResult.IsNewRepository) || (fetching.getFetchResult() instanceof FetchResult.IsNewRepoAndNewMirror)) {
            LazyListScope.CC.item$default(LazyColumn, null, null, ComposableLambdaKt.composableLambdaInstance(-2043144439, true, new Function3() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$RepoPreviewScreen$1$1$2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    invoke((LazyItemScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(LazyItemScope item, Composer composer, int i) {
                    Intrinsics.checkNotNullParameter(item, "$this$item");
                    if ((i & 17) == 16 && composer.getSkipping()) {
                        composer.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-2043144439, i, -1, "org.fdroid.fdroid.views.repos.RepoPreviewScreen.<anonymous>.<anonymous>.<anonymous> (RepoPreviewScreen.kt:80)");
                    }
                    Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                    float f = 8;
                    Arrangement.HorizontalOrVertical m248spacedBy0680j_4 = Arrangement.INSTANCE.m248spacedBy0680j_4(Dp.m2424constructorimpl(f));
                    Modifier.Companion companion = Modifier.Companion;
                    Modifier m269paddingqDBjuR0$default = PaddingKt.m269paddingqDBjuR0$default(companion, 0.0f, Dp.m2424constructorimpl(f), 0.0f, 0.0f, 13, null);
                    Fetching fetching2 = Fetching.this;
                    MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(m248spacedBy0680j_4, centerVertically, composer, 54);
                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                    CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                    Modifier materializeModifier = ComposedModifierKt.materializeModifier(composer, m269paddingqDBjuR0$default);
                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                    Function0 constructor = companion2.getConstructor();
                    if (!(composer.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composer.startReusableNode();
                    if (composer.getInserting()) {
                        composer.createNode(constructor);
                    } else {
                        composer.useNode();
                    }
                    Composer m1043constructorimpl = Updater.m1043constructorimpl(composer);
                    Updater.m1044setimpl(m1043constructorimpl, rowMeasurePolicy, companion2.getSetMeasurePolicy());
                    Updater.m1044setimpl(m1043constructorimpl, currentCompositionLocalMap, companion2.getSetResolvedCompositionLocals());
                    Function2 setCompositeKeyHash = companion2.getSetCompositeKeyHash();
                    if (m1043constructorimpl.getInserting() || !Intrinsics.areEqual(m1043constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        m1043constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                        m1043constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                    }
                    Updater.m1044setimpl(m1043constructorimpl, materializeModifier, companion2.getSetModifier());
                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                    String stringResource = StringResources_androidKt.stringResource(R.string.repo_preview_included_apps, composer, 0);
                    MaterialTheme materialTheme = MaterialTheme.INSTANCE;
                    int i2 = MaterialTheme.$stable;
                    TextKt.m780Text4IGK_g(stringResource, null, 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, materialTheme.getTypography(composer, i2).getBodyLarge(), composer, 0, 0, 65534);
                    TextKt.m780Text4IGK_g(String.valueOf(fetching2.getApps().size()), null, 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, materialTheme.getTypography(composer, i2).getBodyLarge(), composer, 0, 0, 65534);
                    composer.startReplaceGroup(1156925551);
                    if (!fetching2.getDone()) {
                        ProgressIndicatorKt.m725LinearProgressIndicatorrIrjwxo(RowScope.CC.weight$default(rowScopeInstance, companion, 1.0f, false, 2, null), 0L, 0L, 0, 0.0f, composer, 0, 30);
                    }
                    composer.endReplaceGroup();
                    composer.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }), 3, null);
            final List<MinimalApp> apps = fetching.getApps();
            final Function1 function1 = new Function1() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Object RepoPreviewScreen$lambda$3$lambda$2$lambda$0;
                    RepoPreviewScreen$lambda$3$lambda$2$lambda$0 = RepoPreviewScreenKt.RepoPreviewScreen$lambda$3$lambda$2$lambda$0((MinimalApp) obj);
                    return RepoPreviewScreen$lambda$3$lambda$2$lambda$0;
                }
            };
            final RepoPreviewScreenKt$RepoPreviewScreen$lambda$3$lambda$2$$inlined$items$default$1 repoPreviewScreenKt$RepoPreviewScreen$lambda$3$lambda$2$$inlined$items$default$1 = new Function1() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$RepoPreviewScreen$lambda$3$lambda$2$$inlined$items$default$1
                @Override // kotlin.jvm.functions.Function1
                public final Void invoke(MinimalApp minimalApp) {
                    return null;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    return invoke((MinimalApp) obj);
                }
            };
            LazyColumn.items(apps.size(), new Function1() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$RepoPreviewScreen$lambda$3$lambda$2$$inlined$items$default$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    return invoke(((Number) obj).intValue());
                }

                public final Object invoke(int i) {
                    return Function1.this.invoke(apps.get(i));
                }
            }, new Function1() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$RepoPreviewScreen$lambda$3$lambda$2$$inlined$items$default$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    return invoke(((Number) obj).intValue());
                }

                public final Object invoke(int i) {
                    return Function1.this.invoke(apps.get(i));
                }
            }, ComposableLambdaKt.composableLambdaInstance(-632812321, true, new Function4() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$RepoPreviewScreen$lambda$3$lambda$2$$inlined$items$default$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(4);
                }

                @Override // kotlin.jvm.functions.Function4
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                    invoke((LazyItemScope) obj, ((Number) obj2).intValue(), (Composer) obj3, ((Number) obj4).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(LazyItemScope lazyItemScope, int i, Composer composer, int i2) {
                    int i3;
                    if ((i2 & 6) == 0) {
                        i3 = (composer.changed(lazyItemScope) ? 4 : 2) | i2;
                    } else {
                        i3 = i2;
                    }
                    if ((i2 & 48) == 0) {
                        i3 |= composer.changed(i) ? 32 : 16;
                    }
                    if ((i3 & 147) == 146 && composer.getSkipping()) {
                        composer.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-632812321, i3, -1, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:152)");
                    }
                    MinimalApp minimalApp = (MinimalApp) apps.get(i);
                    composer.startReplaceGroup(1443117876);
                    Repository receivedRepo = fetching.getReceivedRepo();
                    if (receivedRepo != null) {
                        RepoPreviewScreenKt.RepoPreviewApp(lazyItemScope, receivedRepo, minimalApp, localeListCompat, composer, i3 & 14);
                        composer.endReplaceGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    throw new IllegalStateException("no repo");
                }
            }));
            LazyListScope.CC.item$default(LazyColumn, null, null, ComposableSingletons$RepoPreviewScreenKt.INSTANCE.m3222getLambda1$app_fullRelease(), 3, null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object RepoPreviewScreen$lambda$3$lambda$2$lambda$0(MinimalApp it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getPackageName();
    }

    public static final void RepoPreviewHeader(final Fetching state, final Function0 onAddRepo, final LocaleListCompat localeList, Composer composer, final int i) {
        int i2;
        String stringResource;
        Function0 function0;
        String stringResource2;
        String str;
        Composer composer2;
        Modifier.Companion companion;
        MaterialTheme materialTheme;
        Function0 function02;
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(onAddRepo, "onAddRepo");
        Intrinsics.checkNotNullParameter(localeList, "localeList");
        Composer startRestartGroup = composer.startRestartGroup(-2115582612);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changedInstance(state) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= startRestartGroup.changedInstance(onAddRepo) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= startRestartGroup.changedInstance(localeList) ? 256 : 128;
        }
        if ((i2 & 147) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
            composer2 = startRestartGroup;
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2115582612, i2, -1, "org.fdroid.fdroid.views.repos.RepoPreviewHeader (RepoPreviewScreen.kt:111)");
            }
            Repository receivedRepo = state.getReceivedRepo();
            if (receivedRepo == null) {
                throw new IllegalStateException("repo was null");
            }
            boolean booleanValue = ((Boolean) startRestartGroup.consume(InspectionModeKt.getLocalInspectionMode())).booleanValue();
            final Context context = (Context) startRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalContext());
            FetchResult fetchResult = state.getFetchResult();
            if (fetchResult instanceof FetchResult.IsNewRepository) {
                startRestartGroup.startReplaceGroup(294258391);
                stringResource = StringResources_androidKt.stringResource(R.string.repo_add_new_title, startRestartGroup, 0);
                startRestartGroup.endReplaceGroup();
            } else if (fetchResult instanceof FetchResult.IsNewRepoAndNewMirror) {
                startRestartGroup.startReplaceGroup(294260957);
                stringResource = StringResources_androidKt.stringResource(R.string.repo_add_repo_and_mirror, startRestartGroup, 0);
                startRestartGroup.endReplaceGroup();
            } else if (fetchResult instanceof FetchResult.IsNewMirror) {
                startRestartGroup.startReplaceGroup(294263380);
                stringResource = StringResources_androidKt.stringResource(R.string.repo_add_mirror, startRestartGroup, 0);
                startRestartGroup.endReplaceGroup();
            } else {
                if (!(fetchResult instanceof FetchResult.IsExistingRepository) && !(fetchResult instanceof FetchResult.IsExistingMirror)) {
                    startRestartGroup.startReplaceGroup(294268289);
                    startRestartGroup.endReplaceGroup();
                    throw new IllegalStateException(("Unexpected fetch state: " + state.getFetchResult()).toString());
                }
                startRestartGroup.startReplaceGroup(294266483);
                stringResource = StringResources_androidKt.stringResource(R.string.repo_view_repo, startRestartGroup, 0);
                startRestartGroup.endReplaceGroup();
            }
            String str2 = stringResource;
            final FetchResult fetchResult2 = state.getFetchResult();
            if ((fetchResult2 instanceof FetchResult.IsNewRepository) || (fetchResult2 instanceof FetchResult.IsNewRepoAndNewMirror) || (fetchResult2 instanceof FetchResult.IsNewMirror)) {
                startRestartGroup.startReplaceGroup(294274773);
                startRestartGroup.endReplaceGroup();
                function0 = onAddRepo;
            } else {
                if (fetchResult2 instanceof FetchResult.IsExistingRepository) {
                    startRestartGroup.startReplaceGroup(532693795);
                    startRestartGroup.startReplaceGroup(294278759);
                    boolean changedInstance = startRestartGroup.changedInstance(fetchResult2) | startRestartGroup.changedInstance(context);
                    Object rememberedValue = startRestartGroup.rememberedValue();
                    if (changedInstance || rememberedValue == Composer.Companion.getEmpty()) {
                        rememberedValue = new Function0() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                Unit RepoPreviewHeader$lambda$6$lambda$5;
                                RepoPreviewHeader$lambda$6$lambda$5 = RepoPreviewScreenKt.RepoPreviewHeader$lambda$6$lambda$5(FetchResult.this, context);
                                return RepoPreviewHeader$lambda$6$lambda$5;
                            }
                        };
                        startRestartGroup.updateRememberedValue(rememberedValue);
                    }
                    function02 = (Function0) rememberedValue;
                    startRestartGroup.endReplaceGroup();
                    startRestartGroup.endReplaceGroup();
                } else {
                    if (!(fetchResult2 instanceof FetchResult.IsExistingMirror)) {
                        startRestartGroup.startReplaceGroup(294289281);
                        startRestartGroup.endReplaceGroup();
                        throw new IllegalStateException(("Unexpected fetch state: " + state.getFetchResult()).toString());
                    }
                    startRestartGroup.startReplaceGroup(532872355);
                    startRestartGroup.startReplaceGroup(294284519);
                    boolean changedInstance2 = startRestartGroup.changedInstance(fetchResult2) | startRestartGroup.changedInstance(context);
                    Object rememberedValue2 = startRestartGroup.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                        rememberedValue2 = new Function0() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                Unit RepoPreviewHeader$lambda$8$lambda$7;
                                RepoPreviewHeader$lambda$8$lambda$7 = RepoPreviewScreenKt.RepoPreviewHeader$lambda$8$lambda$7(FetchResult.this, context);
                                return RepoPreviewHeader$lambda$8$lambda$7;
                            }
                        };
                        startRestartGroup.updateRememberedValue(rememberedValue2);
                    }
                    function02 = (Function0) rememberedValue2;
                    startRestartGroup.endReplaceGroup();
                    startRestartGroup.endReplaceGroup();
                }
                function0 = function02;
            }
            FetchResult fetchResult3 = state.getFetchResult();
            if (fetchResult3 instanceof FetchResult.IsNewRepository) {
                startRestartGroup.startReplaceGroup(533179409);
                startRestartGroup.endReplaceGroup();
                str = null;
            } else {
                if (fetchResult3 instanceof FetchResult.IsNewRepoAndNewMirror) {
                    startRestartGroup.startReplaceGroup(294295412);
                    stringResource2 = StringResources_androidKt.stringResource(R.string.repo_and_mirror_add_both_info, new Object[]{state.getFetchUrl()}, startRestartGroup, 0);
                    startRestartGroup.endReplaceGroup();
                } else if (fetchResult3 instanceof FetchResult.IsNewMirror) {
                    startRestartGroup.startReplaceGroup(294299593);
                    stringResource2 = StringResources_androidKt.stringResource(R.string.repo_mirror_add_info, new Object[]{state.getFetchUrl()}, startRestartGroup, 0);
                    startRestartGroup.endReplaceGroup();
                } else if (fetchResult3 instanceof FetchResult.IsExistingRepository) {
                    startRestartGroup.startReplaceGroup(294302672);
                    stringResource2 = StringResources_androidKt.stringResource(R.string.repo_exists, startRestartGroup, 0);
                    startRestartGroup.endReplaceGroup();
                } else {
                    if (!(fetchResult3 instanceof FetchResult.IsExistingMirror)) {
                        startRestartGroup.startReplaceGroup(294307297);
                        startRestartGroup.endReplaceGroup();
                        throw new IllegalStateException(("Unexpected fetch state: " + state.getFetchResult()).toString());
                    }
                    startRestartGroup.startReplaceGroup(294304871);
                    stringResource2 = StringResources_androidKt.stringResource(R.string.repo_mirror_exists, new Object[]{state.getFetchUrl()}, startRestartGroup, 0);
                    startRestartGroup.endReplaceGroup();
                }
                str = stringResource2;
            }
            Arrangement arrangement = Arrangement.INSTANCE;
            float f = 16;
            Arrangement.HorizontalOrVertical m248spacedBy0680j_4 = arrangement.m248spacedBy0680j_4(Dp.m2424constructorimpl(f));
            Modifier.Companion companion2 = Modifier.Companion;
            Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(companion2, 0.0f, 1, null);
            Alignment.Companion companion3 = Alignment.Companion;
            MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(m248spacedBy0680j_4, companion3.getStart(), startRestartGroup, 6);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = startRestartGroup.getCurrentCompositionLocalMap();
            Modifier materializeModifier = ComposedModifierKt.materializeModifier(startRestartGroup, fillMaxWidth$default);
            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
            Function0 constructor = companion4.getConstructor();
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            Composer m1043constructorimpl = Updater.m1043constructorimpl(startRestartGroup);
            Updater.m1044setimpl(m1043constructorimpl, columnMeasurePolicy, companion4.getSetMeasurePolicy());
            Updater.m1044setimpl(m1043constructorimpl, currentCompositionLocalMap, companion4.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = companion4.getSetCompositeKeyHash();
            if (m1043constructorimpl.getInserting() || !Intrinsics.areEqual(m1043constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                m1043constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                m1043constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.m1044setimpl(m1043constructorimpl, materializeModifier, companion4.getSetModifier());
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement.m248spacedBy0680j_4(Dp.m2424constructorimpl(f)), companion3.getCenterVertically(), startRestartGroup, 54);
            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap2 = startRestartGroup.getCurrentCompositionLocalMap();
            Modifier materializeModifier2 = ComposedModifierKt.materializeModifier(startRestartGroup, companion2);
            Function0 constructor2 = companion4.getConstructor();
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor2);
            } else {
                startRestartGroup.useNode();
            }
            Composer m1043constructorimpl2 = Updater.m1043constructorimpl(startRestartGroup);
            Updater.m1044setimpl(m1043constructorimpl2, rowMeasurePolicy, companion4.getSetMeasurePolicy());
            Updater.m1044setimpl(m1043constructorimpl2, currentCompositionLocalMap2, companion4.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash2 = companion4.getSetCompositeKeyHash();
            if (m1043constructorimpl2.getInserting() || !Intrinsics.areEqual(m1043constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                m1043constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                m1043constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
            }
            Updater.m1044setimpl(m1043constructorimpl2, materializeModifier2, companion4.getSetModifier());
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            RepoIconComposableKt.RepoIcon(receivedRepo, SizeKt.m285size3ABfNKs(companion2, Dp.m2424constructorimpl(48)), startRestartGroup, 48, 0);
            MeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement.getTop(), companion3.getStart(), startRestartGroup, 48);
            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap3 = startRestartGroup.getCurrentCompositionLocalMap();
            Modifier materializeModifier3 = ComposedModifierKt.materializeModifier(startRestartGroup, companion2);
            Function0 constructor3 = companion4.getConstructor();
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor3);
            } else {
                startRestartGroup.useNode();
            }
            Composer m1043constructorimpl3 = Updater.m1043constructorimpl(startRestartGroup);
            Updater.m1044setimpl(m1043constructorimpl3, columnMeasurePolicy2, companion4.getSetMeasurePolicy());
            Updater.m1044setimpl(m1043constructorimpl3, currentCompositionLocalMap3, companion4.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash3 = companion4.getSetCompositeKeyHash();
            if (m1043constructorimpl3.getInserting() || !Intrinsics.areEqual(m1043constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                m1043constructorimpl3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
                m1043constructorimpl3.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
            }
            Updater.m1044setimpl(m1043constructorimpl3, materializeModifier3, companion4.getSetModifier());
            String name = receivedRepo.getName(localeList);
            if (name == null) {
                name = "Unknown Repository";
            }
            FontWeight bold = FontWeight.Companion.getBold();
            MaterialTheme materialTheme2 = MaterialTheme.INSTANCE;
            int i3 = MaterialTheme.$stable;
            TextKt.m780Text4IGK_g(name, null, 0L, 0L, null, bold, null, 0L, null, null, 0L, 0, false, 1, 0, null, materialTheme2.getTypography(startRestartGroup, i3).getBodyLarge(), startRestartGroup, 196608, 3072, 57310);
            composer2 = startRestartGroup;
            TextKt.m780Text4IGK_g(StringsKt.replaceFirst$default(receivedRepo.getAddress(), "https://", "", false, 4, null), null, materialTheme2.getColorScheme(composer2, i3).m641getOnSurfaceVariant0d7_KjU(), 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, materialTheme2.getTypography(composer2, i3).getBodyMedium(), composer2, 0, 0, 65530);
            String formatLastUpdated = Utils.formatLastUpdated(((Context) composer2.consume(AndroidCompositionLocals_androidKt.getLocalContext())).getResources(), receivedRepo.getTimestamp());
            Intrinsics.checkNotNullExpressionValue(formatLastUpdated, "formatLastUpdated(...)");
            TextKt.m780Text4IGK_g(formatLastUpdated, null, 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, materialTheme2.getTypography(composer2, i3).getBodyMedium(), composer2, 0, 0, 65534);
            composer2.endNode();
            composer2.endNode();
            composer2.startReplaceGroup(511535264);
            if (str != null) {
                Modifier m100backgroundbw27NRU$default = BackgroundKt.m100backgroundbw27NRU$default(SizeKt.fillMaxWidth$default(companion2, 0.0f, 1, null), ComposeUtilsKt.colorAttribute(R.attr.warning, composer2, 0), null, 2, null);
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getCenter(), false);
                int currentCompositeKeyHash4 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                CompositionLocalMap currentCompositionLocalMap4 = composer2.getCurrentCompositionLocalMap();
                Modifier materializeModifier4 = ComposedModifierKt.materializeModifier(composer2, m100backgroundbw27NRU$default);
                Function0 constructor4 = companion4.getConstructor();
                if (!(composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer2.startReusableNode();
                if (composer2.getInserting()) {
                    composer2.createNode(constructor4);
                } else {
                    composer2.useNode();
                }
                Composer m1043constructorimpl4 = Updater.m1043constructorimpl(composer2);
                Updater.m1044setimpl(m1043constructorimpl4, maybeCachedBoxMeasurePolicy, companion4.getSetMeasurePolicy());
                Updater.m1044setimpl(m1043constructorimpl4, currentCompositionLocalMap4, companion4.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash4 = companion4.getSetCompositeKeyHash();
                if (m1043constructorimpl4.getInserting() || !Intrinsics.areEqual(m1043constructorimpl4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash4))) {
                    m1043constructorimpl4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash4));
                    m1043constructorimpl4.apply(Integer.valueOf(currentCompositeKeyHash4), setCompositeKeyHash4);
                }
                Updater.m1044setimpl(m1043constructorimpl4, materializeModifier4, companion4.getSetModifier());
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                materialTheme = materialTheme2;
                companion = companion2;
                TextKt.m780Text4IGK_g(str, PaddingKt.m265padding3ABfNKs(companion2, Dp.m2424constructorimpl(8)), ColorResources_androidKt.colorResource(android.R.color.white, composer2, 6), 0L, null, null, null, 0L, null, TextAlign.m2341boximpl(TextAlign.Companion.m2348getCentere0LSkKk()), 0L, 0, false, 0, 0, null, materialTheme2.getTypography(composer2, i3).getBodyLarge(), composer2, 48, 0, 65016);
                composer2.endNode();
            } else {
                companion = companion2;
                materialTheme = materialTheme2;
            }
            composer2.endReplaceGroup();
            ComposeUtils.INSTANCE.FDroidButton(str2, function0, columnScopeInstance.align(companion, companion3.getEnd()), null, composer2, 24576, 8);
            String joinToString$default = booleanValue ? SequencesKt.joinToString$default(new LoremIpsum(42).getValues(), " ", null, null, 0, null, null, 62, null) : receivedRepo.getDescription(localeList);
            composer2.startReplaceGroup(511562331);
            if (joinToString$default != null) {
                TextKt.m780Text4IGK_g(StringsKt.replace$default(joinToString$default, "\n", " ", false, 4, (Object) null), null, 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, materialTheme.getTypography(composer2, i3).getBodyMedium(), composer2, 0, 0, 65534);
            }
            composer2.endReplaceGroup();
            composer2.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit RepoPreviewHeader$lambda$13;
                    RepoPreviewHeader$lambda$13 = RepoPreviewScreenKt.RepoPreviewHeader$lambda$13(Fetching.this, onAddRepo, localeList, i, (Composer) obj, ((Integer) obj2).intValue());
                    return RepoPreviewHeader$lambda$13;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoPreviewHeader$lambda$6$lambda$5(FetchResult fetchResult, Context context) {
        RepoDetailsActivity.INSTANCE.launch(context, ((FetchResult.IsExistingRepository) fetchResult).getExistingRepoId());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoPreviewHeader$lambda$8$lambda$7(FetchResult fetchResult, Context context) {
        RepoDetailsActivity.INSTANCE.launch(context, ((FetchResult.IsExistingMirror) fetchResult).getExistingRepoId());
        return Unit.INSTANCE;
    }

    public static final void RepoPreviewApp(final LazyItemScope lazyItemScope, final Repository repo, final MinimalApp app, final LocaleListCompat localeList, Composer composer, final int i) {
        int i2;
        Intrinsics.checkNotNullParameter(lazyItemScope, "<this>");
        Intrinsics.checkNotNullParameter(repo, "repo");
        Intrinsics.checkNotNullParameter(app, "app");
        Intrinsics.checkNotNullParameter(localeList, "localeList");
        Composer startRestartGroup = composer.startRestartGroup(427688889);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changed(lazyItemScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= startRestartGroup.changedInstance(repo) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= startRestartGroup.changedInstance(app) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= startRestartGroup.changedInstance(localeList) ? 2048 : 1024;
        }
        if ((i2 & 1171) != 1170 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(427688889, i2, -1, "org.fdroid.fdroid.views.repos.RepoPreviewApp (RepoPreviewScreen.kt:225)");
            }
            CardKt.ElevatedCard(SizeKt.fillMaxWidth$default(LazyItemScope.CC.animateItem$default(lazyItemScope, Modifier.Companion, null, null, null, 7, null), 0.0f, 1, null), null, null, null, ComposableLambdaKt.rememberComposableLambda(1293741086, true, new RepoPreviewScreenKt$RepoPreviewApp$1(((Boolean) startRestartGroup.consume(InspectionModeKt.getLocalInspectionMode())).booleanValue(), repo, app, localeList), startRestartGroup, 54), startRestartGroup, 24576, 14);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit RepoPreviewApp$lambda$14;
                    RepoPreviewApp$lambda$14 = RepoPreviewScreenKt.RepoPreviewApp$lambda$14(LazyItemScope.this, repo, app, localeList, i, (Composer) obj, ((Integer) obj2).intValue());
                    return RepoPreviewApp$lambda$14;
                }
            });
        }
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app1$1] */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app2$1] */
    /* JADX WARN: Type inference failed for: r6v0, types: [org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1] */
    public static final void RepoPreviewScreenFetchingPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(-239945745);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-239945745, i, -1, "org.fdroid.fdroid.views.repos.RepoPreviewScreenFetchingPreview (RepoPreviewScreen.kt:265)");
            }
            ThemeKt.FDroidContent(false, true, ComposableLambdaKt.rememberComposableLambda(-79717703, true, new RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$1("https://example.org", FDroidApp.createSwapRepo("https://example.org", "foo bar"), new MinimalApp() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app1$1
                private final long repoId;
                private final String packageName = "org.example";
                private final String name = "App 1 with a long name";
                private final String summary = "Summary of App1 which can also be a bit longer";

                @Override // org.fdroid.database.MinimalApp
                public FileV2 getIcon(LocaleListCompat localeList) {
                    Intrinsics.checkNotNullParameter(localeList, "localeList");
                    return null;
                }

                @Override // org.fdroid.database.MinimalApp
                public long getRepoId() {
                    return this.repoId;
                }

                @Override // org.fdroid.database.MinimalApp
                public String getPackageName() {
                    return this.packageName;
                }

                @Override // org.fdroid.database.MinimalApp
                public String getName() {
                    return this.name;
                }

                @Override // org.fdroid.database.MinimalApp
                public String getSummary() {
                    return this.summary;
                }
            }, new MinimalApp() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app2$1
                private final long repoId;
                private final String packageName = "com.example";
                private final String name = "App 2 with a name that is even longer than the first app";
                private final String summary = "Summary of App2 which can also be a bit longer, even longer than other apps.";

                @Override // org.fdroid.database.MinimalApp
                public FileV2 getIcon(LocaleListCompat localeList) {
                    Intrinsics.checkNotNullParameter(localeList, "localeList");
                    return null;
                }

                @Override // org.fdroid.database.MinimalApp
                public long getRepoId() {
                    return this.repoId;
                }

                @Override // org.fdroid.database.MinimalApp
                public String getPackageName() {
                    return this.packageName;
                }

                @Override // org.fdroid.database.MinimalApp
                public String getName() {
                    return this.name;
                }

                @Override // org.fdroid.database.MinimalApp
                public String getSummary() {
                    return this.summary;
                }
            }, new MinimalApp() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$RepoPreviewScreenFetchingPreview$app3$1
                private final long repoId;
                private final String packageName = "net.example";
                private final String name = "App 3";
                private final String summary = "short summary";

                @Override // org.fdroid.database.MinimalApp
                public FileV2 getIcon(LocaleListCompat localeList) {
                    Intrinsics.checkNotNullParameter(localeList, "localeList");
                    return null;
                }

                @Override // org.fdroid.database.MinimalApp
                public long getRepoId() {
                    return this.repoId;
                }

                @Override // org.fdroid.database.MinimalApp
                public String getPackageName() {
                    return this.packageName;
                }

                @Override // org.fdroid.database.MinimalApp
                public String getName() {
                    return this.name;
                }

                @Override // org.fdroid.database.MinimalApp
                public String getSummary() {
                    return this.summary;
                }
            }), startRestartGroup, 54), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit RepoPreviewScreenFetchingPreview$lambda$15;
                    RepoPreviewScreenFetchingPreview$lambda$15 = RepoPreviewScreenKt.RepoPreviewScreenFetchingPreview$lambda$15(i, (Composer) obj, ((Integer) obj2).intValue());
                    return RepoPreviewScreenFetchingPreview$lambda$15;
                }
            });
        }
    }

    public static final void RepoPreviewScreenNewMirrorPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(-292759008);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-292759008, i, -1, "org.fdroid.fdroid.views.repos.RepoPreviewScreenNewMirrorPreview (RepoPreviewScreen.kt:301)");
            }
            ThemeKt.FDroidContent(false, true, ComposableLambdaKt.rememberComposableLambda(379342998, true, new RepoPreviewScreenKt$RepoPreviewScreenNewMirrorPreview$1(FDroidApp.createSwapRepo("https://example.org", "foo bar")), startRestartGroup, 54), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit RepoPreviewScreenNewMirrorPreview$lambda$16;
                    RepoPreviewScreenNewMirrorPreview$lambda$16 = RepoPreviewScreenKt.RepoPreviewScreenNewMirrorPreview$lambda$16(i, (Composer) obj, ((Integer) obj2).intValue());
                    return RepoPreviewScreenNewMirrorPreview$lambda$16;
                }
            });
        }
    }

    public static final void RepoPreviewScreenNewRepoAndNewMirrorPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(-884684475);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-884684475, i, -1, "org.fdroid.fdroid.views.repos.RepoPreviewScreenNewRepoAndNewMirrorPreview (RepoPreviewScreen.kt:312)");
            }
            ThemeKt.FDroidContent(false, true, ComposableLambdaKt.rememberComposableLambda(2019763259, true, new RepoPreviewScreenKt$RepoPreviewScreenNewRepoAndNewMirrorPreview$1(FDroidApp.createSwapRepo("https://example.org", "foo bar")), startRestartGroup, 54), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit RepoPreviewScreenNewRepoAndNewMirrorPreview$lambda$17;
                    RepoPreviewScreenNewRepoAndNewMirrorPreview$lambda$17 = RepoPreviewScreenKt.RepoPreviewScreenNewRepoAndNewMirrorPreview$lambda$17(i, (Composer) obj, ((Integer) obj2).intValue());
                    return RepoPreviewScreenNewRepoAndNewMirrorPreview$lambda$17;
                }
            });
        }
    }

    public static final void RepoPreviewScreenExistingRepoPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(-859214630);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-859214630, i, -1, "org.fdroid.fdroid.views.repos.RepoPreviewScreenExistingRepoPreview (RepoPreviewScreen.kt:323)");
            }
            ThemeKt.FDroidContent(false, true, ComposableLambdaKt.rememberComposableLambda(-1405887836, true, new RepoPreviewScreenKt$RepoPreviewScreenExistingRepoPreview$1("https://example.org", FDroidApp.createSwapRepo("https://example.org", "foo bar")), startRestartGroup, 54), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit RepoPreviewScreenExistingRepoPreview$lambda$18;
                    RepoPreviewScreenExistingRepoPreview$lambda$18 = RepoPreviewScreenKt.RepoPreviewScreenExistingRepoPreview$lambda$18(i, (Composer) obj, ((Integer) obj2).intValue());
                    return RepoPreviewScreenExistingRepoPreview$lambda$18;
                }
            });
        }
    }

    public static final void RepoPreviewScreenExistingMirrorPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(1808330477);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1808330477, i, -1, "org.fdroid.fdroid.views.repos.RepoPreviewScreenExistingMirrorPreview (RepoPreviewScreen.kt:335)");
            }
            ThemeKt.FDroidContent(false, true, ComposableLambdaKt.rememberComposableLambda(441389623, true, new RepoPreviewScreenKt$RepoPreviewScreenExistingMirrorPreview$1(FDroidApp.createSwapRepo("https://example.org", "foo bar")), startRestartGroup, 54), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.RepoPreviewScreenKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit RepoPreviewScreenExistingMirrorPreview$lambda$19;
                    RepoPreviewScreenExistingMirrorPreview$lambda$19 = RepoPreviewScreenKt.RepoPreviewScreenExistingMirrorPreview$lambda$19(i, (Composer) obj, ((Integer) obj2).intValue());
                    return RepoPreviewScreenExistingMirrorPreview$lambda$19;
                }
            });
        }
    }
}
