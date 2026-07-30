package org.fdroid.fdroid.views.repos;

import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.ArrowDropDownKt;
import androidx.compose.material.icons.filled.ArrowDropUpKt;
import androidx.compose.material.icons.filled.QrCodeKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.ScaffoldKt;
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
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.Dp;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.journeyapps.barcodescanner.ScanContract;
import com.journeyapps.barcodescanner.ScanIntentResult;
import com.journeyapps.barcodescanner.ScanOptions;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fdroid.fdroid.R;
import org.fdroid.fdroid.compose.ComposeUtils;
import org.fdroid.fdroid.ui.theme.ThemeKt;
import org.fdroid.repo.AddRepoError;
import org.fdroid.repo.AddRepoState;
import org.fdroid.repo.Added;
import org.fdroid.repo.Adding;
import org.fdroid.repo.FetchResult;
import org.fdroid.repo.Fetching;
import org.fdroid.repo.None;

/* compiled from: AddRepoIntroScreen.kt */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\u001aE\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00010\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00010\bH\u0007¢\u0006\u0002\u0010\n\u001a)\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\r2\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u0007¢\u0006\u0002\u0010\u000e\u001a\r\u0010\u000f\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0010\u001a\r\u0010\u0011\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0010¨\u0006\u0012²\u0006\n\u0010\u0013\u001a\u00020\u0014X\u008a\u008e\u0002"}, d2 = {"AddRepoIntroScreen", "", "state", "Lorg/fdroid/repo/AddRepoState;", "onFetchRepo", "Lkotlin/Function1;", "", "onAddRepo", "Lkotlin/Function0;", "onBackClicked", "(Lorg/fdroid/repo/AddRepoState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "AddRepoIntroContent", "paddingValues", "Landroidx/compose/foundation/layout/PaddingValues;", "(Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "AddRepoIntroScreenPreview", "(Landroidx/compose/runtime/Composer;I)V", "AddRepoIntroScreenPreviewNight", "app_fullRelease", "manualExpanded", ""}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class AddRepoIntroScreenKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AddRepoIntroContent$lambda$16(PaddingValues paddingValues, Function1 function1, int i, Composer composer, int i2) {
        AddRepoIntroContent(paddingValues, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AddRepoIntroScreen$lambda$0(AddRepoState addRepoState, Function1 function1, Function0 function0, Function0 function02, int i, Composer composer, int i2) {
        AddRepoIntroScreen(addRepoState, function1, function0, function02, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AddRepoIntroScreenPreview$lambda$17(int i, Composer composer, int i2) {
        AddRepoIntroScreenPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AddRepoIntroScreenPreviewNight$lambda$18(int i, Composer composer, int i2) {
        AddRepoIntroScreenPreviewNight(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    private static final boolean AddRepoIntroContent$lambda$15$lambda$8(MutableState mutableState) {
        return ((Boolean) mutableState.getValue()).booleanValue();
    }

    public static final void AddRepoIntroScreen(final AddRepoState state, final Function1 onFetchRepo, final Function0 onAddRepo, final Function0 onBackClicked, Composer composer, final int i) {
        int i2;
        final String stringResource;
        Composer composer2;
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(onFetchRepo, "onFetchRepo");
        Intrinsics.checkNotNullParameter(onAddRepo, "onAddRepo");
        Intrinsics.checkNotNullParameter(onBackClicked, "onBackClicked");
        Composer startRestartGroup = composer.startRestartGroup(850783860);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changedInstance(state) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= startRestartGroup.changedInstance(onFetchRepo) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= startRestartGroup.changedInstance(onAddRepo) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= startRestartGroup.changedInstance(onBackClicked) ? 2048 : 1024;
        }
        if ((i2 & 1171) != 1170 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(850783860, i2, -1, "org.fdroid.fdroid.views.repos.AddRepoIntroScreen (AddRepoIntroScreen.kt:80)");
            }
            if (state instanceof Fetching) {
                startRestartGroup.startReplaceGroup(-2091750287);
                FetchResult fetchResult = ((Fetching) state).getFetchResult();
                if ((fetchResult instanceof FetchResult.IsNewMirror) || (fetchResult instanceof FetchResult.IsExistingMirror)) {
                    startRestartGroup.startReplaceGroup(763811940);
                    stringResource = StringResources_androidKt.stringResource(R.string.repo_add_mirror, startRestartGroup, 0);
                    startRestartGroup.endReplaceGroup();
                } else {
                    startRestartGroup.startReplaceGroup(763813927);
                    stringResource = StringResources_androidKt.stringResource(R.string.repo_add_new_title, startRestartGroup, 0);
                    startRestartGroup.endReplaceGroup();
                }
                startRestartGroup.endReplaceGroup();
            } else {
                startRestartGroup.startReplaceGroup(-2091507061);
                stringResource = StringResources_androidKt.stringResource(R.string.repo_add_new_title, startRestartGroup, 0);
                startRestartGroup.endReplaceGroup();
            }
            composer2 = startRestartGroup;
            ScaffoldKt.m737ScaffoldTvnljyQ(null, ComposableLambdaKt.rememberComposableLambda(278798904, true, new Function2() { // from class: org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt$AddRepoIntroScreen$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i3) {
                    if ((i3 & 3) != 2 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(278798904, i3, -1, "org.fdroid.fdroid.views.repos.AddRepoIntroScreen.<anonymous> (AddRepoIntroScreen.kt:93)");
                        }
                        final String str = stringResource;
                        ComposableLambda rememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(620187892, true, new Function2() { // from class: org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt$AddRepoIntroScreen$1.1
                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((Composer) obj, ((Number) obj2).intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer composer4, int i4) {
                                if ((i4 & 3) != 2 || !composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(620187892, i4, -1, "org.fdroid.fdroid.views.repos.AddRepoIntroScreen.<anonymous>.<anonymous> (AddRepoIntroScreen.kt:100)");
                                    }
                                    TextKt.m780Text4IGK_g(str, null, 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer4, 0, 0, 131070);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                composer4.skipToGroupEnd();
                            }
                        }, composer3, 54);
                        final Function0 function0 = onBackClicked;
                        AppBarKt.m607TopAppBarGHTll3U(rememberComposableLambda, null, ComposableLambdaKt.rememberComposableLambda(146952242, true, new Function2() { // from class: org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt$AddRepoIntroScreen$1.2
                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((Composer) obj, ((Number) obj2).intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer composer4, int i4) {
                                if ((i4 & 3) != 2 || !composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(146952242, i4, -1, "org.fdroid.fdroid.views.repos.AddRepoIntroScreen.<anonymous>.<anonymous> (AddRepoIntroScreen.kt:95)");
                                    }
                                    IconButtonKt.IconButton(Function0.this, null, false, null, null, ComposableSingletons$AddRepoIntroScreenKt.INSTANCE.m3202getLambda1$app_fullRelease(), composer4, 196608, 30);
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
            }, startRestartGroup, 54), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.rememberComposableLambda(502037059, true, new Function3() { // from class: org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt$AddRepoIntroScreen$2
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    invoke((PaddingValues) obj, (Composer) obj2, ((Number) obj3).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(PaddingValues paddingValues, Composer composer3, int i3) {
                    Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
                    if ((i3 & 6) == 0) {
                        i3 |= composer3.changed(paddingValues) ? 4 : 2;
                    }
                    if ((i3 & 19) != 18 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(502037059, i3, -1, "org.fdroid.fdroid.views.repos.AddRepoIntroScreen.<anonymous> (AddRepoIntroScreen.kt:106)");
                        }
                        AddRepoState addRepoState = AddRepoState.this;
                        if (Intrinsics.areEqual(addRepoState, None.INSTANCE)) {
                            composer3.startReplaceGroup(-686190550);
                            AddRepoIntroScreenKt.AddRepoIntroContent(paddingValues, onFetchRepo, composer3, i3 & 14);
                            composer3.endReplaceGroup();
                        } else if (addRepoState instanceof Fetching) {
                            composer3.startReplaceGroup(203016356);
                            if (((Fetching) AddRepoState.this).getReceivedRepo() == null) {
                                composer3.startReplaceGroup(203055664);
                                RepoProgressScreenKt.RepoProgressScreen(paddingValues, StringResources_androidKt.stringResource(R.string.repo_state_fetching, composer3, 0), composer3, i3 & 14);
                                composer3.endReplaceGroup();
                            } else {
                                composer3.startReplaceGroup(203184097);
                                RepoPreviewScreenKt.RepoPreviewScreen((Fetching) AddRepoState.this, PaddingKt.m269paddingqDBjuR0$default(Modifier.Companion, 0.0f, paddingValues.mo259calculateTopPaddingD9Ej5fM(), 0.0f, 0.0f, 13, null), onAddRepo, composer3, 0, 0);
                                composer3.endReplaceGroup();
                            }
                            composer3.endReplaceGroup();
                        } else if (Intrinsics.areEqual(addRepoState, Adding.INSTANCE)) {
                            composer3.startReplaceGroup(-686172920);
                            RepoProgressScreenKt.RepoProgressScreen(paddingValues, StringResources_androidKt.stringResource(R.string.repo_state_adding, composer3, 0), composer3, i3 & 14);
                            composer3.endReplaceGroup();
                        } else if (addRepoState instanceof Added) {
                            composer3.startReplaceGroup(-686169686);
                            BoxKt.Box(PaddingKt.padding(Modifier.Companion, paddingValues), composer3, 0);
                            composer3.endReplaceGroup();
                        } else {
                            if (!(addRepoState instanceof AddRepoError)) {
                                composer3.startReplaceGroup(-686190889);
                                composer3.endReplaceGroup();
                                throw new NoWhenBranchMatchedException();
                            }
                            composer3.startReplaceGroup(-686166781);
                            AddRepoErrorScreenKt.AddRepoErrorScreen(paddingValues, (AddRepoError) AddRepoState.this, composer3, i3 & 14);
                            composer3.endReplaceGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer3.skipToGroupEnd();
                }
            }, startRestartGroup, 54), composer2, 805306416, 509);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
            composer2 = startRestartGroup;
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit AddRepoIntroScreen$lambda$0;
                    AddRepoIntroScreen$lambda$0 = AddRepoIntroScreenKt.AddRepoIntroScreen$lambda$0(AddRepoState.this, onFetchRepo, onAddRepo, onBackClicked, i, (Composer) obj, ((Integer) obj2).intValue());
                    return AddRepoIntroScreen$lambda$0;
                }
            });
        }
    }

    public static final void AddRepoIntroContent(final PaddingValues paddingValues, final Function1 onFetchRepo, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        Intrinsics.checkNotNullParameter(onFetchRepo, "onFetchRepo");
        Composer startRestartGroup = composer.startRestartGroup(1335287590);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changed(paddingValues) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= startRestartGroup.changedInstance(onFetchRepo) ? 32 : 16;
        }
        int i3 = i2;
        if ((i3 & 19) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
            composer2 = startRestartGroup;
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1335287590, i3, -1, "org.fdroid.fdroid.views.repos.AddRepoIntroContent (AddRepoIntroScreen.kt:128)");
            }
            Arrangement arrangement = Arrangement.INSTANCE;
            float f = 16;
            Arrangement.HorizontalOrVertical m248spacedBy0680j_4 = arrangement.m248spacedBy0680j_4(Dp.m2424constructorimpl(f));
            Alignment.Companion companion = Alignment.Companion;
            Alignment.Horizontal centerHorizontally = companion.getCenterHorizontally();
            Modifier.Companion companion2 = Modifier.Companion;
            Modifier padding = PaddingKt.padding(PaddingKt.m265padding3ABfNKs(ScrollKt.verticalScroll$default(SizeKt.fillMaxSize$default(companion2, 0.0f, 1, null), ScrollKt.rememberScrollState(0, startRestartGroup, 0, 1), false, null, false, 14, null), Dp.m2424constructorimpl(f)), paddingValues);
            MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(m248spacedBy0680j_4, centerHorizontally, startRestartGroup, 54);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = startRestartGroup.getCurrentCompositionLocalMap();
            Modifier materializeModifier = ComposedModifierKt.materializeModifier(startRestartGroup, padding);
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
            String stringResource = StringResources_androidKt.stringResource(R.string.repo_intro, startRestartGroup, 0);
            MaterialTheme materialTheme = MaterialTheme.INSTANCE;
            int i4 = MaterialTheme.$stable;
            TextKt.m780Text4IGK_g(stringResource, null, 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, materialTheme.getTypography(startRestartGroup, i4).getBodyLarge(), startRestartGroup, 0, 0, 65534);
            ScanContract scanContract = new ScanContract();
            startRestartGroup.startReplaceGroup(836169027);
            boolean z = (i3 & 112) == 32;
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (z || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function1() { // from class: org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit AddRepoIntroContent$lambda$15$lambda$2$lambda$1;
                        AddRepoIntroContent$lambda$15$lambda$2$lambda$1 = AddRepoIntroScreenKt.AddRepoIntroContent$lambda$15$lambda$2$lambda$1(Function1.this, (ScanIntentResult) obj);
                        return AddRepoIntroContent$lambda$15$lambda$2$lambda$1;
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceGroup();
            final ManagedActivityResultLauncher rememberLauncherForActivityResult = ActivityResultRegistryKt.rememberLauncherForActivityResult(scanContract, (Function1) rememberedValue, startRestartGroup, 0);
            ComposeUtils composeUtils = ComposeUtils.INSTANCE;
            String stringResource2 = StringResources_androidKt.stringResource(R.string.repo_scan_qr_code, startRestartGroup, 0);
            ImageVector qrCode = QrCodeKt.getQrCode(Icons.Filled.INSTANCE);
            startRestartGroup.startReplaceGroup(836177899);
            boolean changedInstance = startRestartGroup.changedInstance(rememberLauncherForActivityResult);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changedInstance || rememberedValue2 == Composer.Companion.getEmpty()) {
                rememberedValue2 = new Function0() { // from class: org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit AddRepoIntroContent$lambda$15$lambda$5$lambda$4;
                        AddRepoIntroContent$lambda$15$lambda$5$lambda$4 = AddRepoIntroScreenKt.AddRepoIntroContent$lambda$15$lambda$5$lambda$4(ManagedActivityResultLauncher.this);
                        return AddRepoIntroContent$lambda$15$lambda$5$lambda$4;
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceGroup();
            composeUtils.FDroidButton(stringResource2, (Function0) rememberedValue2, null, qrCode, startRestartGroup, 24576, 4);
            final boolean booleanValue = ((Boolean) startRestartGroup.consume(InspectionModeKt.getLocalInspectionMode())).booleanValue();
            Object[] objArr = new Object[0];
            startRestartGroup.startReplaceGroup(836191493);
            boolean changed = startRestartGroup.changed(booleanValue);
            Object rememberedValue3 = startRestartGroup.rememberedValue();
            if (changed || rememberedValue3 == Composer.Companion.getEmpty()) {
                rememberedValue3 = new Function0() { // from class: org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        MutableState AddRepoIntroContent$lambda$15$lambda$7$lambda$6;
                        AddRepoIntroContent$lambda$15$lambda$7$lambda$6 = AddRepoIntroScreenKt.AddRepoIntroContent$lambda$15$lambda$7$lambda$6(booleanValue);
                        return AddRepoIntroContent$lambda$15$lambda$7$lambda$6;
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue3);
            }
            startRestartGroup.endReplaceGroup();
            final MutableState mutableState = (MutableState) RememberSaveableKt.rememberSaveable(objArr, null, null, (Function0) rememberedValue3, startRestartGroup, 0, 6);
            Arrangement.HorizontalOrVertical spaceBetween = arrangement.getSpaceBetween();
            Alignment.Vertical centerVertically = companion.getCenterVertically();
            Modifier m281heightInVpY3zN4$default = SizeKt.m281heightInVpY3zN4$default(SizeKt.fillMaxWidth$default(companion2, 0.0f, 1, null), ButtonDefaults.INSTANCE.m618getMinHeightD9Ej5fM(), 0.0f, 2, null);
            startRestartGroup.startReplaceGroup(836200844);
            boolean changed2 = startRestartGroup.changed(mutableState);
            Object rememberedValue4 = startRestartGroup.rememberedValue();
            if (changed2 || rememberedValue4 == Composer.Companion.getEmpty()) {
                rememberedValue4 = new Function0() { // from class: org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit AddRepoIntroContent$lambda$15$lambda$11$lambda$10;
                        AddRepoIntroContent$lambda$15$lambda$11$lambda$10 = AddRepoIntroScreenKt.AddRepoIntroContent$lambda$15$lambda$11$lambda$10(MutableState.this);
                        return AddRepoIntroContent$lambda$15$lambda$11$lambda$10;
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue4);
            }
            startRestartGroup.endReplaceGroup();
            Modifier m119clickableXHw0xAI$default = ClickableKt.m119clickableXHw0xAI$default(m281heightInVpY3zN4$default, false, null, null, (Function0) rememberedValue4, 7, null);
            MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(spaceBetween, centerVertically, startRestartGroup, 54);
            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap2 = startRestartGroup.getCurrentCompositionLocalMap();
            Modifier materializeModifier2 = ComposedModifierKt.materializeModifier(startRestartGroup, m119clickableXHw0xAI$default);
            Function0 constructor2 = companion3.getConstructor();
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
            Updater.m1044setimpl(m1043constructorimpl2, rowMeasurePolicy, companion3.getSetMeasurePolicy());
            Updater.m1044setimpl(m1043constructorimpl2, currentCompositionLocalMap2, companion3.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash2 = companion3.getSetCompositeKeyHash();
            if (m1043constructorimpl2.getInserting() || !Intrinsics.areEqual(m1043constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                m1043constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                m1043constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
            }
            Updater.m1044setimpl(m1043constructorimpl2, materializeModifier2, companion3.getSetModifier());
            TextKt.m780Text4IGK_g(StringResources_androidKt.stringResource(R.string.repo_enter_url, startRestartGroup, 0), RowScope.CC.weight$default(RowScopeInstance.INSTANCE, companion2, 1.0f, false, 2, null), 0L, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, materialTheme.getTypography(startRestartGroup, i4).getBodyMedium(), startRestartGroup, 0, 0, 65532);
            IconKt.m699Iconww6aTOc(AddRepoIntroContent$lambda$15$lambda$8(mutableState) ? ArrowDropUpKt.getArrowDropUp(Icons.INSTANCE.getDefault()) : ArrowDropDownKt.getArrowDropDown(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, 0L, startRestartGroup, 48, 12);
            startRestartGroup.endNode();
            composer2 = startRestartGroup;
            composer2.startReplaceGroup(836220149);
            Object rememberedValue5 = composer2.rememberedValue();
            Composer.Companion companion4 = Composer.Companion;
            if (rememberedValue5 == companion4.getEmpty()) {
                rememberedValue5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new TextFieldValue((String) null, 0L, (TextRange) null, 7, (DefaultConstructorMarker) null), null, 2, null);
                composer2.updateRememberedValue(rememberedValue5);
            }
            MutableState mutableState2 = (MutableState) rememberedValue5;
            composer2.endReplaceGroup();
            composer2.startReplaceGroup(836222533);
            Object rememberedValue6 = composer2.rememberedValue();
            if (rememberedValue6 == companion4.getEmpty()) {
                rememberedValue6 = new FocusRequester();
                composer2.updateRememberedValue(rememberedValue6);
            }
            composer2.endReplaceGroup();
            AnimatedVisibilityKt.AnimatedVisibility(columnScopeInstance, AddRepoIntroContent$lambda$15$lambda$8(mutableState), null, null, null, null, ComposableLambdaKt.rememberComposableLambda(-397246604, true, new AddRepoIntroScreenKt$AddRepoIntroContent$1$4(mutableState2, onFetchRepo, (FocusRequester) rememberedValue6), composer2, 54), composer2, 1572870, 30);
            composer2.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit AddRepoIntroContent$lambda$16;
                    AddRepoIntroContent$lambda$16 = AddRepoIntroScreenKt.AddRepoIntroContent$lambda$16(PaddingValues.this, onFetchRepo, i, (Composer) obj, ((Integer) obj2).intValue());
                    return AddRepoIntroContent$lambda$16;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AddRepoIntroContent$lambda$15$lambda$2$lambda$1(Function1 function1, ScanIntentResult scanIntentResult) {
        if (scanIntentResult.getContents() != null) {
            String contents = scanIntentResult.getContents();
            Intrinsics.checkNotNullExpressionValue(contents, "getContents(...)");
            function1.invoke(contents);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AddRepoIntroContent$lambda$15$lambda$5$lambda$4(ManagedActivityResultLauncher managedActivityResultLauncher) {
        ScanOptions scanOptions = new ScanOptions();
        scanOptions.setPrompt("");
        scanOptions.setBeepEnabled(true);
        scanOptions.setOrientationLocked(false);
        scanOptions.setDesiredBarcodeFormats("QR_CODE");
        scanOptions.addExtra("SCAN_TYPE", 2);
        managedActivityResultLauncher.launch(scanOptions);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableState AddRepoIntroContent$lambda$15$lambda$7$lambda$6(boolean z) {
        return SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z), null, 2, null);
    }

    private static final void AddRepoIntroContent$lambda$15$lambda$9(MutableState mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AddRepoIntroContent$lambda$15$lambda$11$lambda$10(MutableState mutableState) {
        AddRepoIntroContent$lambda$15$lambda$9(mutableState, !AddRepoIntroContent$lambda$15$lambda$8(mutableState));
        return Unit.INSTANCE;
    }

    public static final void AddRepoIntroScreenPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(1014078063);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1014078063, i, -1, "org.fdroid.fdroid.views.repos.AddRepoIntroScreenPreview (AddRepoIntroScreen.kt:237)");
            }
            ThemeKt.FDroidContent(false, true, ComposableSingletons$AddRepoIntroScreenKt.INSTANCE.m3203getLambda2$app_fullRelease(), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit AddRepoIntroScreenPreview$lambda$17;
                    AddRepoIntroScreenPreview$lambda$17 = AddRepoIntroScreenKt.AddRepoIntroScreenPreview$lambda$17(i, (Composer) obj, ((Integer) obj2).intValue());
                    return AddRepoIntroScreenPreview$lambda$17;
                }
            });
        }
    }

    public static final void AddRepoIntroScreenPreviewNight(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(1366522945);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1366522945, i, -1, "org.fdroid.fdroid.views.repos.AddRepoIntroScreenPreviewNight (AddRepoIntroScreen.kt:245)");
            }
            ThemeKt.FDroidContent(false, true, ComposableSingletons$AddRepoIntroScreenKt.INSTANCE.m3204getLambda3$app_fullRelease(), startRestartGroup, 432, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.views.repos.AddRepoIntroScreenKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit AddRepoIntroScreenPreviewNight$lambda$18;
                    AddRepoIntroScreenPreviewNight$lambda$18 = AddRepoIntroScreenKt.AddRepoIntroScreenPreviewNight$lambda$18(i, (Composer) obj, ((Integer) obj2).intValue());
                    return AddRepoIntroScreenPreviewNight$lambda$18;
                }
            });
        }
    }
}
