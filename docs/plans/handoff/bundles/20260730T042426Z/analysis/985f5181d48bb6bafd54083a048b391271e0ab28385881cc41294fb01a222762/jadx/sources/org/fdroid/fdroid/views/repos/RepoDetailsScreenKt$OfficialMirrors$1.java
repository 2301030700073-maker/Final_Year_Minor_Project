package org.fdroid.fdroid.views.repos;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
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
import org.fdroid.fdroid.UtilsKt;
import org.fdroid.fdroid.compose.FDroidSwitchRowKt;

/* compiled from: RepoDetailsScreen.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
final class RepoDetailsScreenKt$OfficialMirrors$1 implements Function2 {
    final /* synthetic */ HashSet<String> $disabledMirrors;
    final /* synthetic */ List<Mirror> $mirrors;
    final /* synthetic */ Function2 $setMirrorEnabled;

    RepoDetailsScreenKt$OfficialMirrors$1(List<Mirror> list, HashSet<String> hashSet, Function2 function2) {
        this.$mirrors = list;
        this.$disabledMirrors = hashSet;
        this.$setMirrorEnabled = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        final String str;
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(706119890, i, -1, "org.fdroid.fdroid.views.repos.OfficialMirrors.<anonymous> (RepoDetailsScreen.kt:310)");
            }
            List<Mirror> list = this.$mirrors;
            HashSet<String> hashSet = this.$disabledMirrors;
            final Function2 function2 = this.$setMirrorEnabled;
            Modifier.Companion companion = Modifier.Companion;
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
            composer.startReplaceGroup(-1879210742);
            int i2 = 0;
            for (Object obj : list) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                final Mirror mirror = (Mirror) obj;
                if (mirror.isOnion()) {
                    str = "🧅";
                } else {
                    String countryCode = mirror.getCountryCode();
                    if (countryCode == null || (str = UtilsKt.getFlagEmoji(countryCode)) == null) {
                        str = "";
                    }
                }
                String baseUrl = mirror.getBaseUrl();
                ComposableLambda rememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1239738048, true, new Function2() { // from class: org.fdroid.fdroid.views.repos.RepoDetailsScreenKt$OfficialMirrors$1$1$1$1
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                        invoke((Composer) obj2, ((Number) obj3).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer2, int i4) {
                        if ((i4 & 3) != 2 || !composer2.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1239738048, i4, -1, "org.fdroid.fdroid.views.repos.OfficialMirrors.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RepoDetailsScreen.kt:320)");
                            }
                            TextKt.m780Text4IGK_g(str, SizeKt.m289width3ABfNKs(Modifier.Companion, Dp.m2424constructorimpl(20)), 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 48, 0, 131068);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        composer2.skipToGroupEnd();
                    }
                }, composer, 54);
                boolean z = !hashSet.contains(mirror.getBaseUrl());
                composer.startReplaceGroup(-1891232230);
                boolean changed = composer.changed(function2) | composer.changedInstance(mirror);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new Function1() { // from class: org.fdroid.fdroid.views.repos.RepoDetailsScreenKt$OfficialMirrors$1$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            Unit invoke$lambda$3$lambda$2$lambda$1$lambda$0;
                            invoke$lambda$3$lambda$2$lambda$1$lambda$0 = RepoDetailsScreenKt$OfficialMirrors$1.invoke$lambda$3$lambda$2$lambda$1$lambda$0(Function2.this, mirror, ((Boolean) obj2).booleanValue());
                            return invoke$lambda$3$lambda$2$lambda$1$lambda$0;
                        }
                    };
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceGroup();
                int i4 = i2;
                FDroidSwitchRowKt.m2980FDroidSwitchRowHYR8e34(baseUrl, rememberComposableLambda, z, (Function1) rememberedValue, false, 0.0f, composer, 48, 48);
                composer.startReplaceGroup(-1879190017);
                if (i4 < list.size() - 1) {
                    DividerKt.m681HorizontalDivider9IZ8Weo(null, 0.0f, 0L, composer, 0, 7);
                }
                composer.endReplaceGroup();
                i2 = i3;
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
    public static final Unit invoke$lambda$3$lambda$2$lambda$1$lambda$0(Function2 function2, Mirror mirror, boolean z) {
        function2.invoke(mirror, Boolean.valueOf(z));
        return Unit.INSTANCE;
    }
}
