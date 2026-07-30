package org.fdroid.fdroid.views;

import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.SwitchKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
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
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.fdroid.fdroid.IPreferencesIpfs;
import org.fdroid.fdroid.R;

/* compiled from: IpfsGatewaySettingsActivity.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
final class IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$3 implements Function3 {
    final /* synthetic */ MutableState $ipfsEnabled$delegate;
    final /* synthetic */ IPreferencesIpfs $prefs;

    IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$3(IPreferencesIpfs iPreferencesIpfs, MutableState mutableState) {
        this.$prefs = iPreferencesIpfs;
        this.$ipfsEnabled$delegate = mutableState;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        invoke((PaddingValues) obj, (Composer) obj2, ((Number) obj3).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(PaddingValues paddingValues, Composer composer, int i) {
        int i2;
        boolean IpfsGatewaySettingsScreen$lambda$1;
        final MutableState mutableState;
        boolean IpfsGatewaySettingsScreen$lambda$12;
        boolean IpfsGatewaySettingsScreen$lambda$13;
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        if ((i & 6) == 0) {
            i2 = i | (composer.changed(paddingValues) ? 4 : 2);
        } else {
            i2 = i;
        }
        if ((i2 & 19) == 18 && composer.getSkipping()) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-950568263, i2, -1, "org.fdroid.fdroid.views.IpfsGatewaySettingsScreen.<anonymous> (IpfsGatewaySettingsActivity.kt:104)");
        }
        Modifier.Companion companion = Modifier.Companion;
        Modifier verticalScroll$default = ScrollKt.verticalScroll$default(PaddingKt.padding(companion, paddingValues), ScrollKt.rememberScrollState(0, composer, 0, 1), false, null, false, 14, null);
        final IPreferencesIpfs iPreferencesIpfs = this.$prefs;
        MutableState mutableState2 = this.$ipfsEnabled$delegate;
        Alignment.Companion companion2 = Alignment.Companion;
        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion2.getTopStart(), false);
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier materializeModifier = ComposedModifierKt.materializeModifier(composer, verticalScroll$default);
        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
        Function0 constructor = companion3.getConstructor();
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
        Updater.m1044setimpl(m1043constructorimpl, maybeCachedBoxMeasurePolicy, companion3.getSetMeasurePolicy());
        Updater.m1044setimpl(m1043constructorimpl, currentCompositionLocalMap, companion3.getSetResolvedCompositionLocals());
        Function2 setCompositeKeyHash = companion3.getSetCompositeKeyHash();
        if (m1043constructorimpl.getInserting() || !Intrinsics.areEqual(m1043constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
            m1043constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
            m1043constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
        }
        Updater.m1044setimpl(m1043constructorimpl, materializeModifier, companion3.getSetModifier());
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
        Modifier m265padding3ABfNKs = PaddingKt.m265padding3ABfNKs(companion, Dp.m2424constructorimpl(16));
        Arrangement arrangement = Arrangement.INSTANCE;
        MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement.getTop(), companion2.getStart(), composer, 0);
        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap2 = composer.getCurrentCompositionLocalMap();
        Modifier materializeModifier2 = ComposedModifierKt.materializeModifier(composer, m265padding3ABfNKs);
        Function0 constructor2 = companion3.getConstructor();
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
        Updater.m1044setimpl(m1043constructorimpl2, columnMeasurePolicy, companion3.getSetMeasurePolicy());
        Updater.m1044setimpl(m1043constructorimpl2, currentCompositionLocalMap2, companion3.getSetResolvedCompositionLocals());
        Function2 setCompositeKeyHash2 = companion3.getSetCompositeKeyHash();
        if (m1043constructorimpl2.getInserting() || !Intrinsics.areEqual(m1043constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
            m1043constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
            m1043constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
        }
        Updater.m1044setimpl(m1043constructorimpl2, materializeModifier2, companion3.getSetModifier());
        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
        Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
        MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement.getStart(), companion2.getTop(), composer, 0);
        int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap3 = composer.getCurrentCompositionLocalMap();
        Modifier materializeModifier3 = ComposedModifierKt.materializeModifier(composer, fillMaxWidth$default);
        Function0 constructor3 = companion3.getConstructor();
        if (!(composer.getApplier() instanceof Applier)) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor3);
        } else {
            composer.useNode();
        }
        Composer m1043constructorimpl3 = Updater.m1043constructorimpl(composer);
        Updater.m1044setimpl(m1043constructorimpl3, rowMeasurePolicy, companion3.getSetMeasurePolicy());
        Updater.m1044setimpl(m1043constructorimpl3, currentCompositionLocalMap3, companion3.getSetResolvedCompositionLocals());
        Function2 setCompositeKeyHash3 = companion3.getSetCompositeKeyHash();
        if (m1043constructorimpl3.getInserting() || !Intrinsics.areEqual(m1043constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
            m1043constructorimpl3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
            m1043constructorimpl3.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
        }
        Updater.m1044setimpl(m1043constructorimpl3, materializeModifier3, companion3.getSetModifier());
        TextKt.m780Text4IGK_g(StringResources_androidKt.stringResource(R.string.ipfsgw_explainer, composer, 0), RowScope.CC.weight$default(RowScopeInstance.INSTANCE, companion, 1.0f, false, 2, null), 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, MaterialTheme.INSTANCE.getTypography(composer, MaterialTheme.$stable).getBodyLarge(), composer, 0, 0, 65532);
        IpfsGatewaySettingsScreen$lambda$1 = IpfsGatewaySettingsActivityKt.IpfsGatewaySettingsScreen$lambda$1(mutableState2);
        composer.startReplaceGroup(309350487);
        boolean changedInstance = composer.changedInstance(iPreferencesIpfs);
        Object rememberedValue = composer.rememberedValue();
        if (changedInstance || rememberedValue == Composer.Companion.getEmpty()) {
            mutableState = mutableState2;
            rememberedValue = new Function1() { // from class: org.fdroid.fdroid.views.IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$3$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit invoke$lambda$4$lambda$3$lambda$2$lambda$1$lambda$0;
                    invoke$lambda$4$lambda$3$lambda$2$lambda$1$lambda$0 = IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$3.invoke$lambda$4$lambda$3$lambda$2$lambda$1$lambda$0(IPreferencesIpfs.this, mutableState, ((Boolean) obj).booleanValue());
                    return invoke$lambda$4$lambda$3$lambda$2$lambda$1$lambda$0;
                }
            };
            composer.updateRememberedValue(rememberedValue);
        } else {
            mutableState = mutableState2;
        }
        composer.endReplaceGroup();
        SwitchKt.Switch(IpfsGatewaySettingsScreen$lambda$1, (Function1) rememberedValue, null, null, false, null, null, composer, 0, 124);
        composer.endNode();
        IpfsGatewaySettingsScreen$lambda$12 = IpfsGatewaySettingsActivityKt.IpfsGatewaySettingsScreen$lambda$1(mutableState);
        IpfsGatewaySettingsActivityKt.DefaultGatewaysSettings(iPreferencesIpfs, IpfsGatewaySettingsScreen$lambda$12, composer, 0);
        IpfsGatewaySettingsScreen$lambda$13 = IpfsGatewaySettingsActivityKt.IpfsGatewaySettingsScreen$lambda$1(mutableState);
        IpfsGatewaySettingsActivityKt.UserGatewaysSettings(iPreferencesIpfs, IpfsGatewaySettingsScreen$lambda$13, composer, 0);
        SpacerKt.Spacer(SizeKt.m279height3ABfNKs(companion, Dp.m2424constructorimpl(64)), composer, 6);
        composer.endNode();
        composer.endNode();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$4$lambda$3$lambda$2$lambda$1$lambda$0(IPreferencesIpfs iPreferencesIpfs, MutableState mutableState, boolean z) {
        IpfsGatewaySettingsActivityKt.IpfsGatewaySettingsScreen$lambda$2(mutableState, z);
        iPreferencesIpfs.mo3137setIpfsEnabled(z);
        return Unit.INSTANCE;
    }
}
