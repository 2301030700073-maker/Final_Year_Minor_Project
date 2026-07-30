package org.fdroid.fdroid.views.repos;

import android.content.Context;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.ErrorKt;
import androidx.compose.material3.MaterialTheme;
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
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.fdroid.fdroid.R;
import org.fdroid.fdroid.ui.theme.ThemeKt;
import org.fdroid.repo.AddRepoError;

/* compiled from: AddRepoErrorScreen.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001a\r\u0010\u0007\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\b\u001a\r\u0010\t\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\b\u001a\r\u0010\n\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\b\u001a\r\u0010\u000b\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\b\u001a\r\u0010\f\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\b¨\u0006\r"}, d2 = {"AddRepoErrorScreen", "", "paddingValues", "Landroidx/compose/foundation/layout/PaddingValues;", "state", "Lorg/fdroid/repo/AddRepoError;", "(Landroidx/compose/foundation/layout/PaddingValues;Lorg/fdroid/repo/AddRepoError;Landroidx/compose/runtime/Composer;I)V", "AddRepoErrorInvalidFingerprintPreview", "(Landroidx/compose/runtime/Composer;I)V", "AddRepoErrorIoErrorPreview", "AddRepoErrorInvalidIndexPreview", "AddRepoErrorUnknownSourcesPreview", "AddRepoErrorArchivePreview", "app_fullRelease"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class AddRepoErrorScreenKt {

    /* compiled from: AddRepoErrorScreen.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AddRepoError.ErrorType.values().length];
            try {
                iArr[AddRepoError.ErrorType.INVALID_FINGERPRINT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AddRepoError.ErrorType.UNKNOWN_SOURCES_DISALLOWED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AddRepoError.ErrorType.INVALID_INDEX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AddRepoError.ErrorType.IO_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AddRepoError.ErrorType.IS_ARCHIVE_REPO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AddRepoErrorArchivePreview$lambda$6(int i, Composer composer, int i2) {
        AddRepoErrorArchivePreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AddRepoErrorInvalidFingerprintPreview$lambda$2(int i, Composer composer, int i2) {
        AddRepoErrorInvalidFingerprintPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AddRepoErrorInvalidIndexPreview$lambda$4(int i, Composer composer, int i2) {
        AddRepoErrorInvalidIndexPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AddRepoErrorIoErrorPreview$lambda$3(int i, Composer composer, int i2) {
        AddRepoErrorIoErrorPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AddRepoErrorScreen$lambda$1(PaddingValues paddingValues, AddRepoError addRepoError, int i, Composer composer, int i2) {
        AddRepoErrorScreen(paddingValues, addRepoError, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AddRepoErrorUnknownSourcesPreview$lambda$5(int i, Composer composer, int i2) {
        AddRepoErrorUnknownSourcesPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void AddRepoErrorScreen(final PaddingValues paddingValues, final AddRepoError state, Composer composer, final int i) {
        int i2;
        String stringResource;
        Composer composer2;
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        Intrinsics.checkNotNullParameter(state, "state");
        Composer startRestartGroup = composer.startRestartGroup(734084327);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changed(paddingValues) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= startRestartGroup.changedInstance(state) ? 32 : 16;
        }
        if ((i2 & 19) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
            composer2 = startRestartGroup;
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(734084327, i2, -1, "org.fdroid.fdroid.views.repos.AddRepoErrorScreen (AddRepoErrorScreen.kt:36)");
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
            ImageVector error = ErrorKt.getError(Icons.INSTANCE.getDefault());
            ColorFilter.Companion companion4 = ColorFilter.Companion;
            MaterialTheme materialTheme = MaterialTheme.INSTANCE;
            int i3 = MaterialTheme.$stable;
            ImageKt.Image(error, (String) null, SizeKt.m285size3ABfNKs(companion2, Dp.m2424constructorimpl(48)), (Alignment) null, (ContentScale) null, 0.0f, ColorFilter.Companion.m1319tintxETnrds$default(companion4, materialTheme.getColorScheme(startRestartGroup, i3).m628getError0d7_KjU(), 0, 2, null), startRestartGroup, 432, 56);
            int i4 = WhenMappings.$EnumSwitchMapping$0[state.getErrorType().ordinal()];
            if (i4 == 1) {
                startRestartGroup.startReplaceGroup(-1271658785);
                stringResource = StringResources_androidKt.stringResource(R.string.bad_fingerprint, startRestartGroup, 0);
                startRestartGroup.endReplaceGroup();
            } else if (i4 == 2) {
                startRestartGroup.startReplaceGroup(-766626955);
                if (((Boolean) startRestartGroup.consume(InspectionModeKt.getLocalInspectionMode())).booleanValue()) {
                    startRestartGroup.startReplaceGroup(-766581850);
                    stringResource = StringResources_androidKt.stringResource(R.string.has_disallow_install_unknown_sources, startRestartGroup, 0);
                    startRestartGroup.endReplaceGroup();
                } else {
                    startRestartGroup.startReplaceGroup(-766475551);
                    stringResource = ManageReposActivity.getDisallowInstallUnknownSourcesErrorMessage((Context) startRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalContext()));
                    startRestartGroup.endReplaceGroup();
                }
                startRestartGroup.endReplaceGroup();
            } else if (i4 == 3) {
                startRestartGroup.startReplaceGroup(-1271646244);
                stringResource = StringResources_androidKt.stringResource(R.string.repo_invalid, startRestartGroup, 0);
                startRestartGroup.endReplaceGroup();
            } else if (i4 == 4) {
                startRestartGroup.startReplaceGroup(-1271644259);
                stringResource = StringResources_androidKt.stringResource(R.string.repo_io_error, startRestartGroup, 0);
                startRestartGroup.endReplaceGroup();
            } else {
                if (i4 != 5) {
                    startRestartGroup.startReplaceGroup(-1271660101);
                    startRestartGroup.endReplaceGroup();
                    throw new NoWhenBranchMatchedException();
                }
                startRestartGroup.startReplaceGroup(-1271642007);
                stringResource = StringResources_androidKt.stringResource(R.string.repo_error_adding_archive, startRestartGroup, 0);
                startRestartGroup.endReplaceGroup();
            }
            String str = stringResource;
            Intrinsics.checkNotNull(str);
            TextKt.m780Text4IGK_g(str, null, 0L, 0L, null, null, null, 0L, null, TextAlign.m2341boximpl(TextAlign.Companion.m2348getCentere0LSkKk()), 0L, 0, false, 0, 0, null, materialTheme.getTypography(startRestartGroup, i3).getHeadlineSmall(), startRestartGroup, 0, 0, 65022);
            startRestartGroup.startReplaceGroup(-1271634774);
            if (state.getException() != null) {
                composer2 = startRestartGroup;
                TextKt.m780Text4IGK_g(String.valueOf(state.getException()), null, materialTheme.getColorScheme(startRestartGroup, i3).m641getOnSurfaceVariant0d7_KjU(), 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, materialTheme.getTypography(startRestartGroup, i3).getBodyLarge(), composer2, 0, 0, 65530);
            } else {
                composer2 = startRestartGroup;
            }
            composer2.endReplaceGroup();
            composer2.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.AddRepoErrorScreenKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit AddRepoErrorScreen$lambda$1;
                    AddRepoErrorScreen$lambda$1 = AddRepoErrorScreenKt.AddRepoErrorScreen$lambda$1(PaddingValues.this, state, i, (Composer) obj, ((Integer) obj2).intValue());
                    return AddRepoErrorScreen$lambda$1;
                }
            });
        }
    }

    public static final void AddRepoErrorInvalidFingerprintPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(1752043056);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1752043056, i, -1, "org.fdroid.fdroid.views.repos.AddRepoErrorInvalidFingerprintPreview (AddRepoErrorScreen.kt:80)");
            }
            ThemeKt.FDroidContent(false, true, ComposableSingletons$AddRepoErrorScreenKt.INSTANCE.m3197getLambda1$app_fullRelease(), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.AddRepoErrorScreenKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit AddRepoErrorInvalidFingerprintPreview$lambda$2;
                    AddRepoErrorInvalidFingerprintPreview$lambda$2 = AddRepoErrorScreenKt.AddRepoErrorInvalidFingerprintPreview$lambda$2(i, (Composer) obj, ((Integer) obj2).intValue());
                    return AddRepoErrorInvalidFingerprintPreview$lambda$2;
                }
            });
        }
    }

    public static final void AddRepoErrorIoErrorPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(961254175);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(961254175, i, -1, "org.fdroid.fdroid.views.repos.AddRepoErrorIoErrorPreview (AddRepoErrorScreen.kt:88)");
            }
            ThemeKt.FDroidContent(false, true, ComposableSingletons$AddRepoErrorScreenKt.INSTANCE.m3198getLambda2$app_fullRelease(), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.AddRepoErrorScreenKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit AddRepoErrorIoErrorPreview$lambda$3;
                    AddRepoErrorIoErrorPreview$lambda$3 = AddRepoErrorScreenKt.AddRepoErrorIoErrorPreview$lambda$3(i, (Composer) obj, ((Integer) obj2).intValue());
                    return AddRepoErrorIoErrorPreview$lambda$3;
                }
            });
        }
    }

    public static final void AddRepoErrorInvalidIndexPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(-1840611938);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1840611938, i, -1, "org.fdroid.fdroid.views.repos.AddRepoErrorInvalidIndexPreview (AddRepoErrorScreen.kt:96)");
            }
            ThemeKt.FDroidContent(false, true, ComposableSingletons$AddRepoErrorScreenKt.INSTANCE.m3199getLambda3$app_fullRelease(), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.AddRepoErrorScreenKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit AddRepoErrorInvalidIndexPreview$lambda$4;
                    AddRepoErrorInvalidIndexPreview$lambda$4 = AddRepoErrorScreenKt.AddRepoErrorInvalidIndexPreview$lambda$4(i, (Composer) obj, ((Integer) obj2).intValue());
                    return AddRepoErrorInvalidIndexPreview$lambda$4;
                }
            });
        }
    }

    public static final void AddRepoErrorUnknownSourcesPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(-1686221807);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1686221807, i, -1, "org.fdroid.fdroid.views.repos.AddRepoErrorUnknownSourcesPreview (AddRepoErrorScreen.kt:107)");
            }
            ThemeKt.FDroidContent(false, true, ComposableSingletons$AddRepoErrorScreenKt.INSTANCE.m3200getLambda4$app_fullRelease(), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.AddRepoErrorScreenKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit AddRepoErrorUnknownSourcesPreview$lambda$5;
                    AddRepoErrorUnknownSourcesPreview$lambda$5 = AddRepoErrorScreenKt.AddRepoErrorUnknownSourcesPreview$lambda$5(i, (Composer) obj, ((Integer) obj2).intValue());
                    return AddRepoErrorUnknownSourcesPreview$lambda$5;
                }
            });
        }
    }

    public static final void AddRepoErrorArchivePreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(-744487073);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-744487073, i, -1, "org.fdroid.fdroid.views.repos.AddRepoErrorArchivePreview (AddRepoErrorScreen.kt:115)");
            }
            ThemeKt.FDroidContent(false, true, ComposableSingletons$AddRepoErrorScreenKt.INSTANCE.m3201getLambda5$app_fullRelease(), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.AddRepoErrorScreenKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit AddRepoErrorArchivePreview$lambda$6;
                    AddRepoErrorArchivePreview$lambda$6 = AddRepoErrorScreenKt.AddRepoErrorArchivePreview$lambda$6(i, (Composer) obj, ((Integer) obj2).intValue());
                    return AddRepoErrorArchivePreview$lambda$6;
                }
            });
        }
    }
}
