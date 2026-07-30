package org.fdroid.fdroid.views.repos;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.fdroid.fdroid.R;
import org.fdroid.fdroid.compose.ComposeUtils;
import org.fdroid.fdroid.compose.FDroidSwitchRowKt;

/* compiled from: RepoDetailsScreen.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
final class RepoDetailsScreenKt$SettingsRow$1 implements Function2 {
    final /* synthetic */ ArchiveState $archiveState;
    final /* synthetic */ Function1 $onToggleArchiveClicked;

    RepoDetailsScreenKt$SettingsRow$1(ArchiveState archiveState, Function1 function1) {
        this.$archiveState = archiveState;
        this.$onToggleArchiveClicked = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1720677128, i, -1, "org.fdroid.fdroid.views.repos.SettingsRow.<anonymous> (RepoDetailsScreen.kt:383)");
            }
            ArchiveState archiveState = this.$archiveState;
            if (archiveState == ArchiveState.UNKNOWN) {
                composer.startReplaceGroup(-911196354);
                Modifier.Companion companion = Modifier.Companion;
                Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
                final Function1 function1 = this.$onToggleArchiveClicked;
                MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer, 0);
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                Modifier materializeModifier = ComposedModifierKt.materializeModifier(composer, fillMaxWidth$default);
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
                Updater.m1044setimpl(m1043constructorimpl, columnMeasurePolicy, companion2.getSetMeasurePolicy());
                Updater.m1044setimpl(m1043constructorimpl, currentCompositionLocalMap, companion2.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash = companion2.getSetCompositeKeyHash();
                if (m1043constructorimpl.getInserting() || !Intrinsics.areEqual(m1043constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    m1043constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                    m1043constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                }
                Updater.m1044setimpl(m1043constructorimpl, materializeModifier, companion2.getSetModifier());
                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                TextKt.m780Text4IGK_g(StringResources_androidKt.stringResource(R.string.repo_archive_unknown, composer, 0), null, 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer, 0, 0, 131070);
                SpacerKt.Spacer(SizeKt.m279height3ABfNKs(companion, Dp.m2424constructorimpl(8)), composer, 6);
                ComposeUtils composeUtils = ComposeUtils.INSTANCE;
                String stringResource = StringResources_androidKt.stringResource(R.string.repo_archive_check, composer, 0);
                composer.startReplaceGroup(1175732030);
                boolean changed = composer.changed(function1);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new Function0() { // from class: org.fdroid.fdroid.views.repos.RepoDetailsScreenKt$SettingsRow$1$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit invoke$lambda$2$lambda$1$lambda$0;
                            invoke$lambda$2$lambda$1$lambda$0 = RepoDetailsScreenKt$SettingsRow$1.invoke$lambda$2$lambda$1$lambda$0(Function1.this);
                            return invoke$lambda$2$lambda$1$lambda$0;
                        }
                    };
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceGroup();
                composeUtils.m2977FDroidOutlineButtonyrwZFoE(stringResource, (Function0) rememberedValue, SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null), null, 0L, composer, 196992, 24);
                composer.endNode();
                composer.endReplaceGroup();
            } else if (archiveState == ArchiveState.LOADING) {
                composer.startReplaceGroup(-910679119);
                ProgressIndicatorKt.m725LinearProgressIndicatorrIrjwxo(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, null), 0L, 0L, 0, 0.0f, composer, 6, 30);
                composer.endReplaceGroup();
            } else {
                composer.startReplaceGroup(-910554654);
                FDroidSwitchRowKt.m2980FDroidSwitchRowHYR8e34(StringResources_androidKt.stringResource(R.string.repo_archive_toggle_description, composer, 0), null, this.$archiveState == ArchiveState.ENABLED, this.$onToggleArchiveClicked, true, 0.0f, composer, 24576, 34);
                composer.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
                return;
            }
            return;
        }
        composer.skipToGroupEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$2$lambda$1$lambda$0(Function1 function1) {
        function1.invoke(Boolean.TRUE);
        return Unit.INSTANCE;
    }
}
