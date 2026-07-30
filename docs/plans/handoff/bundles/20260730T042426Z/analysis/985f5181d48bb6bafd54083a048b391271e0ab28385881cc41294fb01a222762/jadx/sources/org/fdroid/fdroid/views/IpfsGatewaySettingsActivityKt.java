package org.fdroid.fdroid.views;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SwitchKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.ItemTouchHelper;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.fdroid.fdroid.IPreferencesIpfs;
import org.fdroid.fdroid.Preferences;
import org.fdroid.fdroid.R;
import org.fdroid.fdroid.compose.ComposeUtils;
import org.fdroid.fdroid.ui.theme.ThemeKt;

/* compiled from: IpfsGatewaySettingsActivity.kt */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\u001a#\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001a\u001d\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\u0010\n\u001a\u001d\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\u0010\n\u001a\r\u0010\f\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\r¨\u0006\u000e²\u0006\n\u0010\b\u001a\u00020\tX\u008a\u008e\u0002²\u0006.\u0010\u000f\u001a&\u0012\f\u0012\n \u0012*\u0004\u0018\u00010\u00110\u0011 \u0012*\u0012\u0012\f\u0012\n \u0012*\u0004\u0018\u00010\u00110\u0011\u0018\u00010\u00130\u0010X\u008a\u008e\u0002²\u0006.\u0010\u0014\u001a&\u0012\f\u0012\n \u0012*\u0004\u0018\u00010\u00110\u0011 \u0012*\u0012\u0012\f\u0012\n \u0012*\u0004\u0018\u00010\u00110\u0011\u0018\u00010\u00130\u0010X\u008a\u008e\u0002"}, d2 = {"IpfsGatewaySettingsScreen", "", "onBackClicked", "Lkotlin/Function0;", "prefs", "Lorg/fdroid/fdroid/IPreferencesIpfs;", "(Lkotlin/jvm/functions/Function0;Lorg/fdroid/fdroid/IPreferencesIpfs;Landroidx/compose/runtime/Composer;I)V", "DefaultGatewaysSettings", "ipfsEnabled", "", "(Lorg/fdroid/fdroid/IPreferencesIpfs;ZLandroidx/compose/runtime/Composer;I)V", "UserGatewaysSettings", "IpfsGatewaySettingsScreenPreview", "(Landroidx/compose/runtime/Composer;I)V", "app_fullRelease", "disabledDefaultGateways", "", "", "kotlin.jvm.PlatformType", "", "userGateways"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class IpfsGatewaySettingsActivityKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit DefaultGatewaysSettings$lambda$11(IPreferencesIpfs iPreferencesIpfs, boolean z, int i, Composer composer, int i2) {
        DefaultGatewaysSettings(iPreferencesIpfs, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit IpfsGatewaySettingsScreen$lambda$3(Function0 function0, IPreferencesIpfs iPreferencesIpfs, int i, Composer composer, int i2) {
        IpfsGatewaySettingsScreen(function0, iPreferencesIpfs, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit IpfsGatewaySettingsScreenPreview$lambda$22(int i, Composer composer, int i2) {
        IpfsGatewaySettingsScreenPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit UserGatewaysSettings$lambda$21(IPreferencesIpfs iPreferencesIpfs, boolean z, int i, Composer composer, int i2) {
        UserGatewaysSettings(iPreferencesIpfs, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void IpfsGatewaySettingsScreen(final Function0 onBackClicked, final IPreferencesIpfs prefs, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Intrinsics.checkNotNullParameter(onBackClicked, "onBackClicked");
        Intrinsics.checkNotNullParameter(prefs, "prefs");
        Composer startRestartGroup = composer.startRestartGroup(1016342442);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changedInstance(onBackClicked) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= startRestartGroup.changedInstance(prefs) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1016342442, i2, -1, "org.fdroid.fdroid.views.IpfsGatewaySettingsScreen (IpfsGatewaySettingsActivity.kt:72)");
            }
            Context context = (Context) startRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalContext());
            startRestartGroup.startReplaceGroup(-282265467);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(prefs.isIpfsEnabled()), null, 2, null);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            startRestartGroup.endReplaceGroup();
            composer2 = startRestartGroup;
            ScaffoldKt.m737ScaffoldTvnljyQ(null, ComposableLambdaKt.rememberComposableLambda(-359694738, true, new Function2() { // from class: org.fdroid.fdroid.views.IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i3) {
                    if ((i3 & 3) != 2 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-359694738, i3, -1, "org.fdroid.fdroid.views.IpfsGatewaySettingsScreen.<anonymous> (IpfsGatewaySettingsActivity.kt:78)");
                        }
                        Function2 m3127getLambda1$app_fullRelease = ComposableSingletons$IpfsGatewaySettingsActivityKt.INSTANCE.m3127getLambda1$app_fullRelease();
                        final Function0 function0 = Function0.this;
                        AppBarKt.m607TopAppBarGHTll3U(m3127getLambda1$app_fullRelease, null, ComposableLambdaKt.rememberComposableLambda(621031400, true, new Function2() { // from class: org.fdroid.fdroid.views.IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$1.1
                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((Composer) obj, ((Number) obj2).intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer composer4, int i4) {
                                if ((i4 & 3) != 2 || !composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(621031400, i4, -1, "org.fdroid.fdroid.views.IpfsGatewaySettingsScreen.<anonymous>.<anonymous> (IpfsGatewaySettingsActivity.kt:80)");
                                    }
                                    IconButtonKt.IconButton(Function0.this, null, false, null, null, ComposableSingletons$IpfsGatewaySettingsActivityKt.INSTANCE.m3128getLambda2$app_fullRelease(), composer4, 196608, 30);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                composer4.skipToGroupEnd();
                            }
                        }, composer3, 54), null, 0.0f, null, null, null, composer3, 390, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer3.skipToGroupEnd();
                }
            }, startRestartGroup, 54), null, null, ComposableLambdaKt.rememberComposableLambda(-593665551, true, new IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$2(context, mutableState), startRestartGroup, 54), 0, 0L, 0L, null, ComposableLambdaKt.rememberComposableLambda(-950568263, true, new IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreen$3(prefs, mutableState), startRestartGroup, 54), composer2, 805330992, 493);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
            composer2 = startRestartGroup;
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.IpfsGatewaySettingsActivityKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit IpfsGatewaySettingsScreen$lambda$3;
                    IpfsGatewaySettingsScreen$lambda$3 = IpfsGatewaySettingsActivityKt.IpfsGatewaySettingsScreen$lambda$3(Function0.this, prefs, i, (Composer) obj, ((Integer) obj2).intValue());
                    return IpfsGatewaySettingsScreen$lambda$3;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void IpfsGatewaySettingsScreen$lambda$2(MutableState mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    private static final List<String> DefaultGatewaysSettings$lambda$5(MutableState mutableState) {
        return (List) mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean IpfsGatewaySettingsScreen$lambda$1(MutableState mutableState) {
        return ((Boolean) mutableState.getValue()).booleanValue();
    }

    private static final List<String> UserGatewaysSettings$lambda$13(MutableState mutableState) {
        return (List) mutableState.getValue();
    }

    @SuppressLint({"MutableCollectionMutableState"})
    public static final void DefaultGatewaysSettings(final IPreferencesIpfs prefs, final boolean z, Composer composer, final int i) {
        Composer composer2;
        int i2 = 48;
        Intrinsics.checkNotNullParameter(prefs, "prefs");
        Composer startRestartGroup = composer.startRestartGroup(-170757290);
        int i3 = (i & 6) == 0 ? (startRestartGroup.changedInstance(prefs) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            i3 |= startRestartGroup.changed(z) ? 32 : 16;
        }
        int i4 = i3;
        if ((i4 & 19) != 18 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-170757290, i4, -1, "org.fdroid.fdroid.views.DefaultGatewaysSettings (IpfsGatewaySettingsActivity.kt:139)");
            }
            startRestartGroup.startReplaceGroup(-1775870750);
            Object rememberedValue = startRestartGroup.rememberedValue();
            Object obj = null;
            if (rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(prefs.getIpfsGwDisabledDefaults(), null, 2, null);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            final MutableState mutableState = (MutableState) rememberedValue;
            startRestartGroup.endReplaceGroup();
            Modifier.Companion companion = Modifier.Companion;
            int i5 = 0;
            MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), startRestartGroup, 0);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = startRestartGroup.getCurrentCompositionLocalMap();
            Modifier materializeModifier = ComposedModifierKt.materializeModifier(startRestartGroup, companion);
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            Function0 constructor = companion2.getConstructor();
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
            Updater.m1044setimpl(m1043constructorimpl, columnMeasurePolicy, companion2.getSetMeasurePolicy());
            Updater.m1044setimpl(m1043constructorimpl, currentCompositionLocalMap, companion2.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = companion2.getSetCompositeKeyHash();
            if (m1043constructorimpl.getInserting() || !Intrinsics.areEqual(m1043constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                m1043constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                m1043constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.m1044setimpl(m1043constructorimpl, materializeModifier, companion2.getSetModifier());
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            ComposeUtils.INSTANCE.CaptionText(StringResources_androidKt.stringResource(R.string.ipfsgw_caption_official_gateways, startRestartGroup, 0), startRestartGroup, 48);
            startRestartGroup.startReplaceGroup(-1618876811);
            for (final String str : Preferences.DEFAULT_IPFS_GATEWAYS) {
                Modifier.Companion companion3 = Modifier.Companion;
                float f = 4;
                Modifier m268paddingqDBjuR0 = PaddingKt.m268paddingqDBjuR0(SizeKt.fillMaxWidth$default(companion3, 0.0f, 1, obj), Dp.m2424constructorimpl(i2), Dp.m2424constructorimpl(f), Dp.m2424constructorimpl(i5), Dp.m2424constructorimpl(f));
                Arrangement.Horizontal start = Arrangement.INSTANCE.getStart();
                Alignment.Companion companion4 = Alignment.Companion;
                MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(start, companion4.getTop(), startRestartGroup, i5);
                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, i5);
                CompositionLocalMap currentCompositionLocalMap2 = startRestartGroup.getCurrentCompositionLocalMap();
                Modifier materializeModifier2 = ComposedModifierKt.materializeModifier(startRestartGroup, m268paddingqDBjuR0);
                ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                Function0 constructor2 = companion5.getConstructor();
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
                Updater.m1044setimpl(m1043constructorimpl2, rowMeasurePolicy, companion5.getSetMeasurePolicy());
                Updater.m1044setimpl(m1043constructorimpl2, currentCompositionLocalMap2, companion5.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash2 = companion5.getSetCompositeKeyHash();
                if (m1043constructorimpl2.getInserting() || !Intrinsics.areEqual(m1043constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                    m1043constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                    m1043constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                }
                Updater.m1044setimpl(m1043constructorimpl2, materializeModifier2, companion5.getSetModifier());
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                Intrinsics.checkNotNull(str);
                TextKt.m780Text4IGK_g(str, AlphaKt.alpha(rowScopeInstance.align(RowScope.CC.weight$default(rowScopeInstance, companion3, 1.0f, false, 2, null), companion4.getCenterVertically()), z ? 1.0f : 0.5f), 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, MaterialTheme.INSTANCE.getTypography(startRestartGroup, MaterialTheme.$stable).getBodyLarge(), startRestartGroup, 0, 0, 65532);
                boolean contains = true ^ DefaultGatewaysSettings$lambda$5(mutableState).contains(str);
                Modifier align = rowScopeInstance.align(companion3, companion4.getCenterVertically());
                startRestartGroup.startReplaceGroup(303816670);
                boolean changed = startRestartGroup.changed(str) | startRestartGroup.changedInstance(prefs);
                Object rememberedValue2 = startRestartGroup.rememberedValue();
                if (changed || rememberedValue2 == Composer.Companion.getEmpty()) {
                    rememberedValue2 = new Function1() { // from class: org.fdroid.fdroid.views.IpfsGatewaySettingsActivityKt$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            Unit DefaultGatewaysSettings$lambda$10$lambda$9$lambda$8$lambda$7;
                            DefaultGatewaysSettings$lambda$10$lambda$9$lambda$8$lambda$7 = IpfsGatewaySettingsActivityKt.DefaultGatewaysSettings$lambda$10$lambda$9$lambda$8$lambda$7(str, prefs, mutableState, ((Boolean) obj2).booleanValue());
                            return DefaultGatewaysSettings$lambda$10$lambda$9$lambda$8$lambda$7;
                        }
                    };
                    startRestartGroup.updateRememberedValue(rememberedValue2);
                }
                startRestartGroup.endReplaceGroup();
                Composer composer3 = startRestartGroup;
                SwitchKt.Switch(contains, (Function1) rememberedValue2, align, null, z, null, null, startRestartGroup, (i4 << 9) & 57344, 104);
                composer3.endNode();
                i4 = i4;
                i5 = 0;
                mutableState = mutableState;
                obj = null;
                startRestartGroup = composer3;
                i2 = 48;
            }
            composer2 = startRestartGroup;
            composer2.endReplaceGroup();
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
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.IpfsGatewaySettingsActivityKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    Unit DefaultGatewaysSettings$lambda$11;
                    DefaultGatewaysSettings$lambda$11 = IpfsGatewaySettingsActivityKt.DefaultGatewaysSettings$lambda$11(IPreferencesIpfs.this, z, i, (Composer) obj2, ((Integer) obj3).intValue());
                    return DefaultGatewaysSettings$lambda$11;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit DefaultGatewaysSettings$lambda$10$lambda$9$lambda$8$lambda$7(String str, IPreferencesIpfs iPreferencesIpfs, MutableState mutableState, boolean z) {
        List<String> DefaultGatewaysSettings$lambda$5 = DefaultGatewaysSettings$lambda$5(mutableState);
        Intrinsics.checkNotNullExpressionValue(DefaultGatewaysSettings$lambda$5, "DefaultGatewaysSettings$lambda$5(...)");
        List<String> mutableList = CollectionsKt.toMutableList((Collection) DefaultGatewaysSettings$lambda$5);
        if (!z) {
            mutableList.add(str);
        } else {
            mutableList.remove(str);
        }
        mutableState.setValue(mutableList);
        iPreferencesIpfs.mo3138setIpfsGwDisabledDefaults(mutableList);
        return Unit.INSTANCE;
    }

    @SuppressLint({"MutableCollectionMutableState"})
    public static final void UserGatewaysSettings(final IPreferencesIpfs prefs, final boolean z, Composer composer, final int i) {
        Composer composer2;
        int i2 = 48;
        Intrinsics.checkNotNullParameter(prefs, "prefs");
        Composer startRestartGroup = composer.startRestartGroup(-1847366532);
        int i3 = (i & 6) == 0 ? (startRestartGroup.changedInstance(prefs) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            i3 |= startRestartGroup.changed(z) ? 32 : 16;
        }
        int i4 = i3;
        if ((i4 & 19) != 18 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1847366532, i4, -1, "org.fdroid.fdroid.views.UserGatewaysSettings (IpfsGatewaySettingsActivity.kt:185)");
            }
            startRestartGroup.startReplaceGroup(126795800);
            Object rememberedValue = startRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (rememberedValue == companion.getEmpty()) {
                rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(prefs.getIpfsGwUserList(), null, 2, null);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            final MutableState mutableState = (MutableState) rememberedValue;
            startRestartGroup.endReplaceGroup();
            ComposeUtils composeUtils = ComposeUtils.INSTANCE;
            startRestartGroup.startReplaceGroup(126800934);
            boolean changedInstance = startRestartGroup.changedInstance(prefs);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changedInstance || rememberedValue2 == companion.getEmpty()) {
                rememberedValue2 = new Function2() { // from class: org.fdroid.fdroid.views.IpfsGatewaySettingsActivityKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Unit UserGatewaysSettings$lambda$16$lambda$15;
                        UserGatewaysSettings$lambda$16$lambda$15 = IpfsGatewaySettingsActivityKt.UserGatewaysSettings$lambda$16$lambda$15(IPreferencesIpfs.this, mutableState, (LifecycleOwner) obj, (Lifecycle.Event) obj2);
                        return UserGatewaysSettings$lambda$16$lambda$15;
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceGroup();
            composeUtils.LifecycleEventListener((Function2) rememberedValue2, startRestartGroup, 48);
            Modifier.Companion companion2 = Modifier.Companion;
            int i5 = 0;
            MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), startRestartGroup, 0);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = startRestartGroup.getCurrentCompositionLocalMap();
            Modifier materializeModifier = ComposedModifierKt.materializeModifier(startRestartGroup, companion2);
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
            startRestartGroup.startReplaceGroup(1585485421);
            List<String> UserGatewaysSettings$lambda$13 = UserGatewaysSettings$lambda$13(mutableState);
            Intrinsics.checkNotNullExpressionValue(UserGatewaysSettings$lambda$13, "UserGatewaysSettings$lambda$13(...)");
            if (!UserGatewaysSettings$lambda$13.isEmpty()) {
                composeUtils.CaptionText(StringResources_androidKt.stringResource(R.string.ipfsgw_caption_custom_gateways, startRestartGroup, 0), startRestartGroup, 48);
            }
            startRestartGroup.endReplaceGroup();
            startRestartGroup.startReplaceGroup(1585491099);
            for (final String str : UserGatewaysSettings$lambda$13(mutableState)) {
                Modifier.Companion companion4 = Modifier.Companion;
                float f = 4;
                Modifier m268paddingqDBjuR0 = PaddingKt.m268paddingqDBjuR0(SizeKt.fillMaxWidth$default(companion4, 0.0f, 1, null), Dp.m2424constructorimpl(i2), Dp.m2424constructorimpl(f), Dp.m2424constructorimpl(i5), Dp.m2424constructorimpl(f));
                Arrangement.Horizontal start = Arrangement.INSTANCE.getStart();
                Alignment.Companion companion5 = Alignment.Companion;
                MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(start, companion5.getTop(), startRestartGroup, i5);
                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, i5);
                CompositionLocalMap currentCompositionLocalMap2 = startRestartGroup.getCurrentCompositionLocalMap();
                Modifier materializeModifier2 = ComposedModifierKt.materializeModifier(startRestartGroup, m268paddingqDBjuR0);
                ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                Function0 constructor2 = companion6.getConstructor();
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
                Updater.m1044setimpl(m1043constructorimpl2, rowMeasurePolicy, companion6.getSetMeasurePolicy());
                Updater.m1044setimpl(m1043constructorimpl2, currentCompositionLocalMap2, companion6.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash2 = companion6.getSetCompositeKeyHash();
                if (m1043constructorimpl2.getInserting() || !Intrinsics.areEqual(m1043constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                    m1043constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                    m1043constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                }
                Updater.m1044setimpl(m1043constructorimpl2, materializeModifier2, companion6.getSetModifier());
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                Intrinsics.checkNotNull(str);
                int i6 = i5;
                TextKt.m780Text4IGK_g(str, AlphaKt.alpha(rowScopeInstance.align(RowScope.CC.weight$default(rowScopeInstance, companion4, 1.0f, false, 2, null), companion5.getCenterVertically()), z ? 1.0f : 0.5f), 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, MaterialTheme.INSTANCE.getTypography(startRestartGroup, MaterialTheme.$stable).getBodyLarge(), startRestartGroup, 0, 0, 65532);
                Modifier align = rowScopeInstance.align(companion4, companion5.getCenterVertically());
                startRestartGroup.startReplaceGroup(-1201382391);
                boolean changed = startRestartGroup.changed(str) | startRestartGroup.changedInstance(prefs);
                Object rememberedValue3 = startRestartGroup.rememberedValue();
                if (changed || rememberedValue3 == Composer.Companion.getEmpty()) {
                    rememberedValue3 = new Function0() { // from class: org.fdroid.fdroid.views.IpfsGatewaySettingsActivityKt$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit UserGatewaysSettings$lambda$20$lambda$19$lambda$18$lambda$17;
                            UserGatewaysSettings$lambda$20$lambda$19$lambda$18$lambda$17 = IpfsGatewaySettingsActivityKt.UserGatewaysSettings$lambda$20$lambda$19$lambda$18$lambda$17(str, prefs, mutableState);
                            return UserGatewaysSettings$lambda$20$lambda$19$lambda$18$lambda$17;
                        }
                    };
                    startRestartGroup.updateRememberedValue(rememberedValue3);
                }
                startRestartGroup.endReplaceGroup();
                Composer composer3 = startRestartGroup;
                IconButtonKt.IconButton((Function0) rememberedValue3, align, z, null, null, ComposableSingletons$IpfsGatewaySettingsActivityKt.INSTANCE.m3130getLambda4$app_fullRelease(), startRestartGroup, ((i4 << 3) & 896) | 196608, 24);
                composer3.endNode();
                i5 = i6;
                mutableState = mutableState;
                i4 = i4;
                startRestartGroup = composer3;
                i2 = 48;
            }
            composer2 = startRestartGroup;
            composer2.endReplaceGroup();
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
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.IpfsGatewaySettingsActivityKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit UserGatewaysSettings$lambda$21;
                    UserGatewaysSettings$lambda$21 = IpfsGatewaySettingsActivityKt.UserGatewaysSettings$lambda$21(IPreferencesIpfs.this, z, i, (Composer) obj, ((Integer) obj2).intValue());
                    return UserGatewaysSettings$lambda$21;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit UserGatewaysSettings$lambda$16$lambda$15(IPreferencesIpfs iPreferencesIpfs, MutableState mutableState, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<unused var>");
        Intrinsics.checkNotNullParameter(event, "event");
        if (Lifecycle.Event.ON_RESUME == event) {
            mutableState.setValue(iPreferencesIpfs.getIpfsGwUserList());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit UserGatewaysSettings$lambda$20$lambda$19$lambda$18$lambda$17(String str, IPreferencesIpfs iPreferencesIpfs, MutableState mutableState) {
        List<String> UserGatewaysSettings$lambda$13 = UserGatewaysSettings$lambda$13(mutableState);
        Intrinsics.checkNotNullExpressionValue(UserGatewaysSettings$lambda$13, "UserGatewaysSettings$lambda$13(...)");
        List<String> mutableList = CollectionsKt.toMutableList((Collection) UserGatewaysSettings$lambda$13);
        mutableList.remove(str);
        mutableState.setValue(mutableList);
        iPreferencesIpfs.mo3139setIpfsGwUserList(mutableList);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.fdroid.fdroid.views.IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreenPreview$prefs$1] */
    public static final void IpfsGatewaySettingsScreenPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(-1596343769);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1596343769, i, -1, "org.fdroid.fdroid.views.IpfsGatewaySettingsScreenPreview (IpfsGatewaySettingsActivity.kt:237)");
            }
            ThemeKt.FDroidContent(false, true, ComposableLambdaKt.rememberComposableLambda(-2143016975, true, new IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreenPreview$1(new IPreferencesIpfs() { // from class: org.fdroid.fdroid.views.IpfsGatewaySettingsActivityKt$IpfsGatewaySettingsScreenPreview$prefs$1
                @Override // org.fdroid.fdroid.IPreferencesIpfs
                public boolean isIpfsEnabled() {
                    return true;
                }

                @Override // org.fdroid.fdroid.IPreferencesIpfs
                /* renamed from: setIpfsGwDisabledDefaults, reason: collision with other method in class */
                public /* bridge */ /* synthetic */ void mo3138setIpfsGwDisabledDefaults(List list) {
                    setIpfsGwDisabledDefaults((List<String>) list);
                }

                @Override // org.fdroid.fdroid.IPreferencesIpfs
                /* renamed from: setIpfsGwUserList, reason: collision with other method in class */
                public /* bridge */ /* synthetic */ void mo3139setIpfsGwUserList(List list) {
                    setIpfsGwUserList((List<String>) list);
                }

                @Override // org.fdroid.fdroid.IPreferencesIpfs
                /* renamed from: setIpfsEnabled, reason: merged with bridge method [inline-methods] */
                public Void mo3137setIpfsEnabled(boolean enabled) {
                    throw new NotImplementedError(null, 1, null);
                }

                @Override // org.fdroid.fdroid.IPreferencesIpfs
                public List<String> getIpfsGwUserList() {
                    return CollectionsKt.listOf("https://my.imaginary.gateway/ifps/");
                }

                public Void setIpfsGwUserList(List<String> selectedSet) {
                    throw new NotImplementedError(null, 1, null);
                }

                @Override // org.fdroid.fdroid.IPreferencesIpfs
                public List<String> getIpfsGwDisabledDefaults() {
                    return CollectionsKt.listOf("https://4everland.io/ipfs/");
                }

                public Void setIpfsGwDisabledDefaults(List<String> selectedSet) {
                    throw new NotImplementedError(null, 1, null);
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
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.IpfsGatewaySettingsActivityKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit IpfsGatewaySettingsScreenPreview$lambda$22;
                    IpfsGatewaySettingsScreenPreview$lambda$22 = IpfsGatewaySettingsActivityKt.IpfsGatewaySettingsScreenPreview$lambda$22(i, (Composer) obj, ((Integer) obj2).intValue());
                    return IpfsGatewaySettingsScreenPreview$lambda$22;
                }
            });
        }
    }
}
