package org.minidns.util;

import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.BoxWithConstraintsScopeImpl;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.grid.GridCells$Adaptive;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.grid.LazyGridStateKt;
import androidx.compose.foundation.selection.SelectableElement;
import androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.TooltipKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Dp;
import androidx.core.util.DebugUtils;
import androidx.room.util.DBUtil;
import androidx.work.Data;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.organism.TopAppBarKt;
import app.k9mail.feature.account.common.ui.item.LoadingItemKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountScreenKt$$ExternalSyntheticLambda3;
import app.k9mail.provider.K9AppNameProvider;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.AbstractCollection;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.SequenceBuilderIterator;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.DispatchException;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.io.InputStreamSource;
import kotlinx.io.OutputStreamSink;
import kotlinx.io.Sink$CC;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.MapEntrySerializer$$ExternalSyntheticLambda0;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;
import net.thunderbird.core.common.provider.AppNameProvider;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.core.ui.setting.SettingViewProvider$ComposeDefaultImpls;
import net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider;
import net.thunderbird.core.ui.setting.dialog.ui.components.list.value.TextItemKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsBuilder$$ExternalSyntheticLambda0;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsContract$State;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingContentKt$$ExternalSyntheticLambda3;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda12;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda7;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt$$ExternalSyntheticLambda4;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.UnreadableResponseBody;
import okio.Okio;
import org.jetbrains.compose.resources.DefaultAndroidResourceReader;
import org.jetbrains.compose.resources.DrawableResource;
import org.jetbrains.compose.resources.ResourceEnvironment;
import org.jetbrains.compose.resources.ResourceEnvironmentKt;
import org.jetbrains.compose.resources.ResourceEnvironmentKt$DefaultComposeEnvironment$1;
import org.jetbrains.compose.resources.ResourceState_blockingKt$rememberResourceState$1$1;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Base64 implements Decoder, CompositeDecoder {
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d5, code lost:
    
        if (r9 == r8) goto L49;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void AccountAvatar(net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount r17, androidx.compose.ui.Modifier r18, kotlin.jvm.functions.Function1 r19, androidx.compose.runtime.Composer r20, int r21) {
        /*
            Method dump skipped, instructions count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.minidns.util.Base64.AccountAvatar(net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int):void");
    }

    /* renamed from: AutoHeightLazyVerticalGrid-Q2ewo60, reason: not valid java name */
    public static final void m1086AutoHeightLazyVerticalGridQ2ewo60(final ImmutableList immutableList, Modifier modifier, float f, float f2, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        final Modifier modifier2;
        final float f3;
        final float f4;
        final float f5;
        final float f6;
        Modifier modifier3;
        immutableList.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1442458245);
        int i2 = i | (gapComposer.changed(immutableList) ? 4 : 2) | (gapComposer.changed(48.0f) ? 32 : 16) | 9600;
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                f5 = 8.0f;
                f6 = 8.0f;
                modifier3 = Modifier.Companion.$$INSTANCE;
            } else {
                gapComposer.skipToGroupEnd();
                modifier3 = modifier;
                f5 = f;
                f6 = f2;
            }
            gapComposer.endDefaults();
            final LazyGridState rememberLazyGridState = LazyGridStateKt.rememberLazyGridState(gapComposer);
            OffsetKt.BoxWithConstraints(modifier3, null, false, Expect_jvmKt.rememberComposableLambda(-834581009, new Function3() { // from class: net.thunderbird.core.ui.setting.dialog.ui.components.common.AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    BoxWithConstraintsScope boxWithConstraintsScope = (BoxWithConstraintsScope) obj;
                    Composer composer2 = (Composer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    boxWithConstraintsScope.getClass();
                    if ((intValue & 6) == 0) {
                        intValue |= ((GapComposer) composer2).changed(boxWithConstraintsScope) ? 4 : 2;
                    }
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                        float m201getMaxWidthD9Ej5fM = ((BoxWithConstraintsScopeImpl) boxWithConstraintsScope).m201getMaxWidthD9Ej5fM();
                        float f7 = f5;
                        int i3 = (int) ((m201getMaxWidthD9Ej5fM + f7) / (48.0f + f7));
                        if (i3 < 1) {
                            i3 = 1;
                        }
                        Object obj4 = immutableList;
                        float f8 = f6;
                        float f9 = (r1 - 1) * f8;
                        float ceil = ((int) Math.ceil(((AbstractCollection) obj4).getSize() / i3)) * 48.0f;
                        Dp dp = new Dp(f9);
                        Dp dp2 = new Dp(0.0f);
                        if (dp.compareTo(dp2) < 0) {
                            dp = dp2;
                        }
                        float f10 = ceil + dp.value;
                        GridCells$Adaptive gridCells$Adaptive = new GridCells$Adaptive(48.0f);
                        Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(f8, true, new StreamSharing$$ExternalSyntheticLambda0(7));
                        Arrangement$SpacedAligned arrangement$SpacedAligned2 = new Arrangement$SpacedAligned(f7, true, new StreamSharing$$ExternalSyntheticLambda0(7));
                        Modifier m226height3ABfNKs = SizeKt.m226height3ABfNKs(Modifier.Companion.$$INSTANCE, f10);
                        boolean changedInstance = gapComposer2.changedInstance(obj4);
                        ComposableLambdaImpl composableLambdaImpl2 = composableLambdaImpl;
                        boolean changed = changedInstance | gapComposer2.changed(composableLambdaImpl2);
                        Object rememberedValue = gapComposer2.rememberedValue();
                        if (changed || rememberedValue == Composer.Companion.Empty) {
                            rememberedValue = new MapEntrySerializer$$ExternalSyntheticLambda0(3, obj4, composableLambdaImpl2);
                            gapComposer2.updateRememberedValue(rememberedValue);
                        }
                        Data.Companion.LazyVerticalGrid(gridCells$Adaptive, m226height3ABfNKs, rememberLazyGridState, null, arrangement$SpacedAligned, arrangement$SpacedAligned2, null, false, null, (Function1) rememberedValue, gapComposer2, 100663296, 664);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, 3078, 6);
            f4 = f6;
            f3 = f5;
            modifier2 = modifier3;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            f3 = f;
            f4 = f2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(modifier2, f3, f4, composableLambdaImpl, i) { // from class: net.thunderbird.core.ui.setting.dialog.ui.components.common.AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda1
                public final /* synthetic */ Modifier f$2;
                public final /* synthetic */ float f$3;
                public final /* synthetic */ float f$4;
                public final /* synthetic */ ComposableLambdaImpl f$5;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(196609);
                    Base64.m1086AutoHeightLazyVerticalGridQ2ewo60(ImmutableList.this, this.f$2, this.f$3, this.f$4, this.f$5, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void ChooseArchiveFolderDialogContent(SetupArchiveFolderDialogContract$State.ChooseArchiveFolder chooseArchiveFolder, Function1 function1, Modifier modifier, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        chooseArchiveFolder.getClass();
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1132052254);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(chooseArchiveFolder) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        int i3 = i2 | 384;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            CrossfadeKt.Crossfade(Boolean.valueOf(chooseArchiveFolder.isLoadingFolders), SizeKt.FillWholeMaxWidth, null, null, Expect_jvmKt.rememberComposableLambda(1325868479, new BufferedChannel$$ExternalSyntheticLambda1(24, (Object) chooseArchiveFolder, function1), gapComposer), gapComposer, 24576, 12);
            modifier2 = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextItemKt$$ExternalSyntheticLambda1(chooseArchiveFolder, function1, modifier2, i, 6);
        }
    }

    public static final void ReadingMailSettingsContent(ReadingMailSettingsContract$State readingMailSettingsContract$State, Function1 function1, Function0 function0, DialogSettingViewProvider dialogSettingViewProvider, ReadingMailSettingsBuilder readingMailSettingsBuilder, AppNameProvider appNameProvider, Modifier modifier, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        int i3;
        MutableState mutableState;
        readingMailSettingsContract$State.getClass();
        function1.getClass();
        function0.getClass();
        dialogSettingViewProvider.getClass();
        readingMailSettingsBuilder.getClass();
        appNameProvider.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1804810385);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(readingMailSettingsContract$State) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= (i & 4096) == 0 ? gapComposer.changed(dialogSettingViewProvider) : gapComposer.changedInstance(dialogSettingViewProvider) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= (i & 32768) == 0 ? gapComposer.changed(readingMailSettingsBuilder) : gapComposer.changedInstance(readingMailSettingsBuilder) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= (262144 & i) == 0 ? gapComposer.changed(appNameProvider) : gapComposer.changedInstance(appNameProvider) ? 131072 : 65536;
        }
        int i4 = i2 | 1572864;
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 599187) != 599186)) {
            int i5 = i4 & 112;
            boolean z = ((i4 & 14) == 4) | ((i4 & 57344) == 16384 || ((i4 & 32768) != 0 && gapComposer.changed(readingMailSettingsBuilder))) | (i5 == 32);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z || rememberedValue == neverEqualPolicy) {
                ArrayList arrayList = new ArrayList();
                int i6 = 24;
                i3 = i4;
                arrayList.add(new SettingValue.Select("show_pictures", new ReadingMailSettingsBuilder$$ExternalSyntheticLambda0(readingMailSettingsBuilder, 0), new ThemeSizesKt$$ExternalSyntheticLambda0(i6), new ThemeSizesKt$$ExternalSyntheticLambda0(i6), true, readingMailSettingsContract$State.showPictures, readingMailSettingsBuilder.selectOptions));
                arrayList.add(new SettingValue.Switch("marked_as_read_on_view", new ReadingMailSettingsBuilder$$ExternalSyntheticLambda0(readingMailSettingsBuilder, 1), new ReadingMailSettingsBuilder$$ExternalSyntheticLambda0(readingMailSettingsBuilder, 2), readingMailSettingsContract$State.isMarkMessageAsReadOnView));
                rememberedValue = Okio.toImmutableList(arrayList);
                gapComposer.updateRememberedValue(rememberedValue);
            } else {
                i3 = i4;
            }
            ImmutableList immutableList = (ImmutableList) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState2 = (MutableState) rememberedValue2;
            String stringResource = Operation$State.stringResource(gapComposer, R.string.account_settings_reading_mail);
            String str = readingMailSettingsContract$State.subtitle;
            boolean z2 = i5 == 32;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (z2 || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new ChangelogScreenKt$$ExternalSyntheticLambda7(7, function1);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Function1 function12 = (Function1) rememberedValue3;
            boolean z3 = i5 == 32;
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (z3 || rememberedValue4 == neverEqualPolicy) {
                rememberedValue4 = new InAppNotificationHostKt$$ExternalSyntheticLambda4(3, function1);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            int i7 = i3;
            SettingViewProvider$ComposeDefaultImpls.SettingView$default(stringResource, immutableList, function12, (Function0) rememberedValue4, str, Expect_jvmKt.rememberComposableLambda(-2070515213, new CreateAccountScreenKt$$ExternalSyntheticLambda3(mutableState2, 4), gapComposer), dialogSettingViewProvider, gapComposer, ((i3 >> 6) & 57344) | 1572864 | ((i3 << 12) & 29360128), 0);
            if (((Boolean) mutableState2.getValue()).booleanValue()) {
                gapComposer.startReplaceGroup(1590943821);
                String stringResource2 = Operation$State.stringResource(gapComposer, R.string.account_settings_account_delete_dlg_title);
                String stringResource3 = Operation$State.stringResource(R.string.account_settings_account_delete_dlg_instructions_fmt, new Object[]{String.valueOf(readingMailSettingsContract$State.subtitle), ((K9AppNameProvider) appNameProvider).getAppName()}, gapComposer);
                String stringResource4 = Operation$State.stringResource(gapComposer, R.string.account_settings_okay_action);
                String stringResource5 = Operation$State.stringResource(gapComposer, R.string.account_settings_cancel_action);
                boolean z4 = (i7 & 896) == 256;
                Object rememberedValue5 = gapComposer.rememberedValue();
                if (z4 || rememberedValue5 == neverEqualPolicy) {
                    mutableState = mutableState2;
                    rememberedValue5 = new SearchSettingContentKt$$ExternalSyntheticLambda3(function0, mutableState, 2);
                    gapComposer.updateRememberedValue(rememberedValue5);
                } else {
                    mutableState = mutableState2;
                }
                Function0 function02 = (Function0) rememberedValue5;
                Object rememberedValue6 = gapComposer.rememberedValue();
                if (rememberedValue6 == neverEqualPolicy) {
                    rememberedValue6 = new TooltipKt$$ExternalSyntheticLambda1(mutableState, 19);
                    gapComposer.updateRememberedValue(rememberedValue6);
                }
                Function0 function03 = (Function0) rememberedValue6;
                Object rememberedValue7 = gapComposer.rememberedValue();
                if (rememberedValue7 == neverEqualPolicy) {
                    rememberedValue7 = new TooltipKt$$ExternalSyntheticLambda1(mutableState, 20);
                    gapComposer.updateRememberedValue(rememberedValue7);
                }
                TopAppBarKt.AlertDialog(stringResource2, stringResource3, stringResource4, function02, function03, (Modifier) null, stringResource5, (Function0) rememberedValue7, false, (Composer) gapComposer, 100687872);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(1591632083);
                gapComposer.end(false);
            }
            modifier2 = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ScaffoldKt$$ExternalSyntheticLambda2(readingMailSettingsContract$State, function1, function0, dialogSettingViewProvider, readingMailSettingsBuilder, appNameProvider, modifier2, i, 5);
        }
    }

    public static final void RemoteFolderListItem(String str, boolean z, Function0 function0, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        Modifier then;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1132200136);
        int i2 = i | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changed(z) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128) | 3072;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            then = fillElement.then(new SelectableElement(z, null, null, true, true, new Role(3), function0));
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier m220paddingVpY3zN4$default = OffsetKt.m220paddingVpY3zN4$default(then, 12.0f, 0.0f, 2);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, vertical, gapComposer, 48);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m220paddingVpY3zN4$default);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-262372819, new LoadingItemKt$$ExternalSyntheticLambda0(str, 10), gapComposer);
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            DBUtil.RadioButton(z, rememberComposableLambda, function0, OffsetKt.m220paddingVpY3zN4$default(fillElement, 12.0f, 0.0f, 2), false, gapComposer, ((i2 >> 3) & 14) | 48 | (i2 & 896), 16);
            gapComposer.end(true);
            modifier2 = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ChangelogScreenKt$$ExternalSyntheticLambda12(str, z, function0, modifier2, i, 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object SentFolderNotFoundNotification(java.lang.String r4, kotlin.coroutines.Continuation r5) {
        /*
            boolean r0 = r5 instanceof net.thunderbird.feature.notification.api.content.SentFolderNotFoundNotificationKt$SentFolderNotFoundNotification$1
            if (r0 == 0) goto L13
            r0 = r5
            net.thunderbird.feature.notification.api.content.SentFolderNotFoundNotificationKt$SentFolderNotFoundNotification$1 r0 = (net.thunderbird.feature.notification.api.content.SentFolderNotFoundNotificationKt$SentFolderNotFoundNotification$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.feature.notification.api.content.SentFolderNotFoundNotificationKt$SentFolderNotFoundNotification$1 r0 = new net.thunderbird.feature.notification.api.content.SentFolderNotFoundNotificationKt$SentFolderNotFoundNotification$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2e
            if (r1 != r2) goto L27
            java.lang.String r4 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r5)
            goto L52
        L27:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L2e:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.SynchronizedLazyImpl r5 = net.thunderbird.feature.notification.resources.api.String0_commonMainKt.sent_folder_not_found_title$delegate
            java.lang.Object r5 = r5.getValue()
            org.jetbrains.compose.resources.StringResource r5 = (org.jetbrains.compose.resources.StringResource) r5
            r0.L$1 = r4
            r0.label = r2
            androidx.compose.runtime.StaticProvidableCompositionLocal r1 = org.jetbrains.compose.resources.ResourceReaderKt.LocalResourceReader
            org.jetbrains.compose.resources.ResourceEnvironmentKt$getResourceEnvironment$1 r1 = org.jetbrains.compose.resources.ResourceEnvironmentKt.getResourceEnvironment
            java.lang.Object r1 = r1.invoke()
            org.jetbrains.compose.resources.ResourceEnvironment r1 = (org.jetbrains.compose.resources.ResourceEnvironment) r1
            org.jetbrains.compose.resources.DefaultAndroidResourceReader r2 = org.jetbrains.compose.resources.DefaultAndroidResourceReader.INSTANCE
            java.lang.Object r5 = kotlin.text.CharsKt__CharKt.loadString(r5, r2, r1, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r5 != r0) goto L52
            return r0
        L52:
            java.lang.String r5 = (java.lang.String) r5
            net.thunderbird.feature.notification.api.content.SentFolderNotFoundNotification r0 = new net.thunderbird.feature.notification.api.content.SentFolderNotFoundNotification
            r0.<init>(r4, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.minidns.util.Base64.SentFolderNotFoundNotification(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final void SwitchItem(SettingValue.Switch r20, Modifier modifier, Function1 function1, Composer composer, int i) {
        int i2;
        Function1 function12;
        r20.getClass();
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1539398240);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(r20) : gapComposer.changedInstance(r20) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(modifier, 16.0f);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, vertical, gapComposer, 48);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m218padding3ABfNKs);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i3);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m380setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m379reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m380setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            LayoutWeightElement layoutWeightElement = new LayoutWeightElement(1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j2 = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, layoutWeightElement);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Config.CC.m(i4, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m380setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            boolean z = false;
            DebugUtils.m787TextTitleMediumXl4FiYE((String) r20.title.invoke(), null, 0L, null, 0, 0, gapComposer, 0, 62);
            String str = (String) r20.description.invoke();
            if (str == null) {
                gapComposer.startReplaceGroup(939195518);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(939195519);
                Data.Companion.m825TextBodyMediumZHfKjFs(str, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer, 0, 126);
                gapComposer.end(false);
            }
            gapComposer.end(true);
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            OffsetKt.Spacer(gapComposer, SizeKt.m238width3ABfNKs(Modifier.Companion.$$INSTANCE, 8.0f));
            boolean z2 = r20.value;
            boolean z3 = (i2 & 896) == 256;
            if ((i2 & 14) == 4 || ((i2 & 8) != 0 && gapComposer.changedInstance(r20))) {
                z = true;
            }
            boolean z4 = z3 | z;
            Object rememberedValue = gapComposer.rememberedValue();
            if (z4 || rememberedValue == Composer.Companion.Empty) {
                function12 = function1;
                rememberedValue = new MapEntrySerializer$$ExternalSyntheticLambda0(6, function12, r20);
                gapComposer.updateRememberedValue(rememberedValue);
            } else {
                function12 = function1;
            }
            Operation$State.Switch(z2, (Function1) rememberedValue, null, false, gapComposer, 0);
            gapComposer.end(true);
        } else {
            function12 = function1;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextItemKt$$ExternalSyntheticLambda1((Object) r20, modifier, function12, i, 4);
        }
    }

    public static void closeQuietly(InputStreamSource inputStreamSource, OutputStreamSink outputStreamSink) {
        try {
            Sink$CC.m(inputStreamSource);
        } catch (Exception unused) {
        }
        try {
            Sink$CC.m(outputStreamSink);
        } catch (Exception unused2) {
        }
    }

    public static String encodeToString(byte[] bArr) {
        int length = (3 - (bArr.length % 3)) % 3;
        byte[] bArr2 = new byte[bArr.length + length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bArr.length; i += 3) {
            int i2 = ((bArr2[i] & 255) << 16) + ((bArr2[i + 1] & 255) << 8) + (bArr2[i + 2] & 255);
            sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((i2 >> 18) & 63));
            sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((i2 >> 12) & 63));
            sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((i2 >> 6) & 63));
            sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(i2 & 63));
        }
        return ViewSizeResolver.CC.m(sb.substring(0, sb.length() - length), "==".substring(0, length));
    }

    public static SequenceBuilderIterator iterator(Function2 function2) {
        SequenceBuilderIterator sequenceBuilderIterator = new SequenceBuilderIterator();
        sequenceBuilderIterator.nextStep = AtomicFU.createCoroutineUnintercepted(sequenceBuilderIterator, sequenceBuilderIterator, function2);
        return sequenceBuilderIterator;
    }

    public static final MutableState rememberResourceState(DrawableResource drawableResource, DefaultAndroidResourceReader defaultAndroidResourceReader, Object obj, Function0 function0, Function2 function2, Composer composer) {
        drawableResource.getClass();
        defaultAndroidResourceReader.getClass();
        obj.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        ((ResourceEnvironmentKt$DefaultComposeEnvironment$1) gapComposer.consume(ResourceEnvironmentKt.LocalComposeEnvironment)).getClass();
        ResourceEnvironment rememberEnvironment = ResourceEnvironmentKt$DefaultComposeEnvironment$1.rememberEnvironment(gapComposer);
        boolean changed = gapComposer.changed(drawableResource) | gapComposer.changed(defaultAndroidResourceReader) | gapComposer.changed(obj) | gapComposer.changed(rememberEnvironment);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = Updater.mutableStateOf$default(JobKt.runBlockingK(EmptyCoroutineContext.INSTANCE, new ResourceState_blockingKt$rememberResourceState$1$1(function2, rememberEnvironment, null, 2)));
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (MutableState) rememberedValue;
    }

    public static final Object startUndispatched(ScopeCoroutine scopeCoroutine, boolean z, ScopeCoroutine scopeCoroutine2, Function2 function2) {
        Object completedExceptionally;
        Object makeCompletingOnce$kotlinx_coroutines_core;
        try {
            if (function2 instanceof BaseContinuationImpl) {
                TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
                completedExceptionally = function2.invoke(scopeCoroutine2, scopeCoroutine);
            } else {
                completedExceptionally = AtomicFU.wrapWithContinuationImpl(function2, scopeCoroutine2, scopeCoroutine);
            }
        } catch (DispatchException e) {
            Throwable th = e.cause;
            scopeCoroutine.makeCompleting$kotlinx_coroutines_core(new CompletedExceptionally(th, false));
            throw th;
        } catch (Throwable th2) {
            completedExceptionally = new CompletedExceptionally(th2, false);
        }
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (completedExceptionally == coroutineSingletons || (makeCompletingOnce$kotlinx_coroutines_core = scopeCoroutine.makeCompletingOnce$kotlinx_coroutines_core(completedExceptionally)) == JobKt.COMPLETING_WAITING_CHILDREN) {
            return coroutineSingletons;
        }
        scopeCoroutine.afterCompletionUndispatched();
        if (!(makeCompletingOnce$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
            return JobKt.unboxState(makeCompletingOnce$kotlinx_coroutines_core);
        }
        if (!z) {
            Throwable th3 = ((CompletedExceptionally) makeCompletingOnce$kotlinx_coroutines_core).cause;
            if ((th3 instanceof TimeoutCancellationException) && ((TimeoutCancellationException) th3).coroutine == scopeCoroutine) {
                if (completedExceptionally instanceof CompletedExceptionally) {
                    throw ((CompletedExceptionally) completedExceptionally).cause;
                }
                return completedExceptionally;
            }
        }
        throw ((CompletedExceptionally) makeCompletingOnce$kotlinx_coroutines_core).cause;
    }

    public static final Response stripBody(Response response) {
        response.getClass();
        Response.Builder newBuilder = response.newBuilder();
        ResponseBody responseBody = response.body;
        newBuilder.body = new UnreadableResponseBody(responseBody.contentType(), responseBody.contentLength());
        return newBuilder.build();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public CompositeDecoder beginStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean decodeBoolean() {
        Object decodeValue = decodeValue();
        decodeValue.getClass();
        return ((Boolean) decodeValue).booleanValue();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public boolean decodeBooleanElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        return decodeBoolean();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public byte decodeByte() {
        Object decodeValue = decodeValue();
        decodeValue.getClass();
        return ((Byte) decodeValue).byteValue();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public byte decodeByteElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeByte();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public char decodeChar() {
        Object decodeValue = decodeValue();
        decodeValue.getClass();
        return ((Character) decodeValue).charValue();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public char decodeCharElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeChar();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public double decodeDouble() {
        Object decodeValue = decodeValue();
        decodeValue.getClass();
        return ((Double) decodeValue).doubleValue();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public double decodeDoubleElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeDouble();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public int decodeEnum(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        Object decodeValue = decodeValue();
        decodeValue.getClass();
        return ((Integer) decodeValue).intValue();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public float decodeFloat() {
        Object decodeValue = decodeValue();
        decodeValue.getClass();
        return ((Float) decodeValue).floatValue();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public float decodeFloatElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeFloat();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public Decoder decodeInline(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public Decoder decodeInlineElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeInline(primitiveArrayDescriptor.getElementDescriptor(i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public int decodeInt() {
        Object decodeValue = decodeValue();
        decodeValue.getClass();
        return ((Integer) decodeValue).intValue();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public int decodeIntElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        return decodeInt();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public long decodeLong() {
        Object decodeValue = decodeValue();
        decodeValue.getClass();
        return ((Long) decodeValue).longValue();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public long decodeLongElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        return decodeLong();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean decodeNotNullMark() {
        return true;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public Object decodeNullableSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj) {
        serialDescriptor.getClass();
        if (kSerializer.getDescriptor().isNullable() || decodeNotNullMark()) {
            return decodeSerializableValue(kSerializer);
        }
        return null;
    }

    public Object decodeSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj) {
        serialDescriptor.getClass();
        kSerializer.getClass();
        return decodeSerializableValue(kSerializer);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public Object decodeSerializableValue(KSerializer kSerializer) {
        kSerializer.getClass();
        return kSerializer.deserialize(this);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public short decodeShort() {
        Object decodeValue = decodeValue();
        decodeValue.getClass();
        return ((Short) decodeValue).shortValue();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public short decodeShortElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return decodeShort();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public String decodeString() {
        Object decodeValue = decodeValue();
        decodeValue.getClass();
        return (String) decodeValue;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public String decodeStringElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        return decodeString();
    }

    public Object decodeValue() {
        throw new SerializationException(Reflection.getOrCreateKotlinClass(getClass()) + " can't retrieve untyped values");
    }

    public void endStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
    }
}
