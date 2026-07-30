package org.fdroid.fdroid.views.repos;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.i18n.TextBundle;
import org.fdroid.fdroid.ui.theme.ThemeKt;

/* compiled from: RepoProgressScreen.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001a\r\u0010\u0007\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"RepoProgressScreen", "", "paddingValues", "Landroidx/compose/foundation/layout/PaddingValues;", TextBundle.TEXT_ENTRY, "", "(Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V", "FetchingRepoScreenPreview", "(Landroidx/compose/runtime/Composer;I)V", "app_fullRelease"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class RepoProgressScreenKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FetchingRepoScreenPreview$lambda$2(int i, Composer composer, int i2) {
        FetchingRepoScreenPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit RepoProgressScreen$lambda$1(PaddingValues paddingValues, String str, int i, Composer composer, int i2) {
        RepoProgressScreen(paddingValues, str, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void RepoProgressScreen(final PaddingValues paddingValues, final String text, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        Intrinsics.checkNotNullParameter(text, "text");
        Composer startRestartGroup = composer.startRestartGroup(691060111);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changed(paddingValues) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= startRestartGroup.changed(text) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(691060111, i2, -1, "org.fdroid.fdroid.views.repos.RepoProgressScreen (RepoProgressScreen.kt:22)");
            }
            Arrangement arrangement = Arrangement.INSTANCE;
            float f = 16;
            float m2424constructorimpl = Dp.m2424constructorimpl(f);
            Alignment.Companion companion = Alignment.Companion;
            Arrangement.Vertical m249spacedByD5KLDUw = arrangement.m249spacedByD5KLDUw(m2424constructorimpl, companion.getCenterVertically());
            Alignment.Horizontal centerHorizontally = companion.getCenterHorizontally();
            Modifier.Companion companion2 = Modifier.Companion;
            Modifier fillMaxSize$default = SizeKt.fillMaxSize$default(PaddingKt.padding(PaddingKt.m265padding3ABfNKs(companion2, Dp.m2424constructorimpl(f)), paddingValues), 0.0f, 1, null);
            MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(m249spacedByD5KLDUw, centerHorizontally, startRestartGroup, 54);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = startRestartGroup.getCurrentCompositionLocalMap();
            Modifier materializeModifier = ComposedModifierKt.materializeModifier(startRestartGroup, fillMaxSize$default);
            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
            Function0 constructor = companion3.getConstructor();
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
            Updater.m1044setimpl(m1043constructorimpl, columnMeasurePolicy, companion3.getSetMeasurePolicy());
            Updater.m1044setimpl(m1043constructorimpl, currentCompositionLocalMap, companion3.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = companion3.getSetCompositeKeyHash();
            if (m1043constructorimpl.getInserting() || !Intrinsics.areEqual(m1043constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                m1043constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                m1043constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.m1044setimpl(m1043constructorimpl, materializeModifier, companion3.getSetModifier());
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            composer2 = startRestartGroup;
            TextKt.m780Text4IGK_g(text, null, 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, MaterialTheme.INSTANCE.getTypography(startRestartGroup, MaterialTheme.$stable).getHeadlineSmall(), composer2, (i2 >> 3) & 14, 0, 65534);
            ProgressIndicatorKt.m724CircularProgressIndicatorLxG7B9w(SizeKt.m285size3ABfNKs(companion2, Dp.m2424constructorimpl(64)), 0L, 0.0f, 0L, 0, composer2, 6, 30);
            composer2.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
            composer2 = startRestartGroup;
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.RepoProgressScreenKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit RepoProgressScreen$lambda$1;
                    RepoProgressScreen$lambda$1 = RepoProgressScreenKt.RepoProgressScreen$lambda$1(PaddingValues.this, text, i, (Composer) obj, ((Integer) obj2).intValue());
                    return RepoProgressScreen$lambda$1;
                }
            });
        }
    }

    public static final void FetchingRepoScreenPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(1123846634);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1123846634, i, -1, "org.fdroid.fdroid.views.repos.FetchingRepoScreenPreview (RepoProgressScreen.kt:41)");
            }
            ThemeKt.FDroidContent(false, true, ComposableSingletons$RepoProgressScreenKt.INSTANCE.m3223getLambda1$app_fullRelease(), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.RepoProgressScreenKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit FetchingRepoScreenPreview$lambda$2;
                    FetchingRepoScreenPreview$lambda$2 = RepoProgressScreenKt.FetchingRepoScreenPreview$lambda$2(i, (Composer) obj, ((Integer) obj2).intValue());
                    return FetchingRepoScreenPreview$lambda$2;
                }
            });
        }
    }
}
