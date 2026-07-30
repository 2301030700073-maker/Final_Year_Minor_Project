package org.fdroid.fdroid.views.repos;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.DeleteKt;
import androidx.compose.material.icons.filled.ShareKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.fdroid.download.Mirror;
import org.fdroid.fdroid.R;
import org.fdroid.fdroid.compose.ComposeUtils;
import org.fdroid.fdroid.compose.FDroidSwitchRowKt;

/* compiled from: RepoDetailsScreen.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
final class RepoDetailsScreenKt$UserMirrors$1 implements Function2 {
    final /* synthetic */ HashSet<String> $disabledMirrors;
    final /* synthetic */ List<Mirror> $mirrors;
    final /* synthetic */ Function1 $onDeleteMirror;
    final /* synthetic */ Function1 $onShareMirror;
    final /* synthetic */ Function2 $setMirrorEnabled;

    RepoDetailsScreenKt$UserMirrors$1(List<Mirror> list, HashSet<String> hashSet, Function2 function2, Function1 function1, Function1 function12) {
        this.$mirrors = list;
        this.$disabledMirrors = hashSet;
        this.$setMirrorEnabled = function2;
        this.$onShareMirror = function1;
        this.$onDeleteMirror = function12;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-597450280, i, -1, "org.fdroid.fdroid.views.repos.UserMirrors.<anonymous> (RepoDetailsScreen.kt:346)");
            }
            List<Mirror> list = this.$mirrors;
            HashSet<String> hashSet = this.$disabledMirrors;
            final Function2 function2 = this.$setMirrorEnabled;
            final Function1 function1 = this.$onShareMirror;
            Function1 function12 = this.$onDeleteMirror;
            Modifier.Companion companion = Modifier.Companion;
            int i2 = 0;
            MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer, 0);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
            CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
            Modifier materializeModifier = ComposedModifierKt.materializeModifier(composer, companion);
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
            composer.startReplaceGroup(1542143509);
            int i3 = 0;
            for (Object obj : list) {
                int i4 = i3 + 1;
                if (i3 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                final Mirror mirror = (Mirror) obj;
                String baseUrl = mirror.getBaseUrl();
                boolean z = !hashSet.contains(mirror.getBaseUrl());
                composer.startReplaceGroup(-409653798);
                boolean changed = composer.changed(function2) | composer.changedInstance(mirror);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new Function1() { // from class: org.fdroid.fdroid.views.repos.RepoDetailsScreenKt$UserMirrors$1$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            Unit invoke$lambda$8$lambda$7$lambda$1$lambda$0;
                            invoke$lambda$8$lambda$7$lambda$1$lambda$0 = RepoDetailsScreenKt$UserMirrors$1.invoke$lambda$8$lambda$7$lambda$1$lambda$0(Function2.this, mirror, ((Boolean) obj2).booleanValue());
                            return invoke$lambda$8$lambda$7$lambda$1$lambda$0;
                        }
                    };
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceGroup();
                final Function1 function13 = function12;
                int i5 = i3;
                int i6 = i2;
                FDroidSwitchRowKt.m2980FDroidSwitchRowHYR8e34(baseUrl, null, z, (Function1) rememberedValue, false, 0.0f, composer, 0, 50);
                Arrangement.HorizontalOrVertical m248spacedBy0680j_4 = Arrangement.INSTANCE.m248spacedBy0680j_4(Dp.m2424constructorimpl(16));
                Modifier.Companion companion3 = Modifier.Companion;
                MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(m248spacedBy0680j_4, Alignment.Companion.getTop(), composer, 6);
                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer, i6);
                CompositionLocalMap currentCompositionLocalMap2 = composer.getCurrentCompositionLocalMap();
                Modifier materializeModifier2 = ComposedModifierKt.materializeModifier(composer, companion3);
                ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                Function0 constructor2 = companion4.getConstructor();
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor2);
                } else {
                    composer.useNode();
                }
                Composer m1043constructorimpl2 = Updater.m1043constructorimpl(composer);
                Updater.m1044setimpl(m1043constructorimpl2, rowMeasurePolicy, companion4.getSetMeasurePolicy());
                Updater.m1044setimpl(m1043constructorimpl2, currentCompositionLocalMap2, companion4.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash2 = companion4.getSetCompositeKeyHash();
                if (m1043constructorimpl2.getInserting() || !Intrinsics.areEqual(m1043constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                    m1043constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                    m1043constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                }
                Updater.m1044setimpl(m1043constructorimpl2, materializeModifier2, companion4.getSetModifier());
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                ComposeUtils composeUtils = ComposeUtils.INSTANCE;
                String stringResource = StringResources_androidKt.stringResource(R.string.menu_share, composer, i6);
                Icons icons = Icons.INSTANCE;
                ImageVector share = ShareKt.getShare(icons.getDefault());
                composer.startReplaceGroup(-490393822);
                boolean changed2 = composer.changed(function1) | composer.changedInstance(mirror);
                Object rememberedValue2 = composer.rememberedValue();
                if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                    rememberedValue2 = new Function0() { // from class: org.fdroid.fdroid.views.repos.RepoDetailsScreenKt$UserMirrors$1$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit invoke$lambda$8$lambda$7$lambda$6$lambda$3$lambda$2;
                            invoke$lambda$8$lambda$7$lambda$6$lambda$3$lambda$2 = RepoDetailsScreenKt$UserMirrors$1.invoke$lambda$8$lambda$7$lambda$6$lambda$3$lambda$2(Function1.this, mirror);
                            return invoke$lambda$8$lambda$7$lambda$6$lambda$3$lambda$2;
                        }
                    };
                    composer.updateRememberedValue(rememberedValue2);
                }
                composer.endReplaceGroup();
                composeUtils.m2977FDroidOutlineButtonyrwZFoE(stringResource, (Function0) rememberedValue2, null, share, 0L, composer, 196608, 20);
                String stringResource2 = StringResources_androidKt.stringResource(R.string.delete, composer, i6);
                ImageVector delete = DeleteKt.getDelete(icons.getDefault());
                long m1315getRed0d7_KjU = Color.Companion.m1315getRed0d7_KjU();
                composer.startReplaceGroup(-490386045);
                boolean changed3 = composer.changed(function13) | composer.changedInstance(mirror);
                Object rememberedValue3 = composer.rememberedValue();
                if (changed3 || rememberedValue3 == Composer.Companion.getEmpty()) {
                    rememberedValue3 = new Function0() { // from class: org.fdroid.fdroid.views.repos.RepoDetailsScreenKt$UserMirrors$1$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit invoke$lambda$8$lambda$7$lambda$6$lambda$5$lambda$4;
                            invoke$lambda$8$lambda$7$lambda$6$lambda$5$lambda$4 = RepoDetailsScreenKt$UserMirrors$1.invoke$lambda$8$lambda$7$lambda$6$lambda$5$lambda$4(Function1.this, mirror);
                            return invoke$lambda$8$lambda$7$lambda$6$lambda$5$lambda$4;
                        }
                    };
                    composer.updateRememberedValue(rememberedValue3);
                }
                composer.endReplaceGroup();
                composeUtils.m2977FDroidOutlineButtonyrwZFoE(stringResource2, (Function0) rememberedValue3, null, delete, m1315getRed0d7_KjU, composer, 221184, 4);
                composer.endNode();
                composer.startReplaceGroup(1542172511);
                if (i5 < list.size() - 1) {
                    DividerKt.m681HorizontalDivider9IZ8Weo(null, 0.0f, 0L, composer, 0, 7);
                }
                composer.endReplaceGroup();
                i2 = i6;
                i3 = i4;
                function12 = function13;
            }
            composer.endReplaceGroup();
            composer.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
                return;
            }
            return;
        }
        composer.skipToGroupEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$8$lambda$7$lambda$1$lambda$0(Function2 function2, Mirror mirror, boolean z) {
        function2.invoke(mirror, Boolean.valueOf(z));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$8$lambda$7$lambda$6$lambda$3$lambda$2(Function1 function1, Mirror mirror) {
        function1.invoke(mirror);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$8$lambda$7$lambda$6$lambda$5$lambda$4(Function1 function1, Mirror mirror) {
        function1.invoke(mirror);
        return Unit.INSTANCE;
    }
}
