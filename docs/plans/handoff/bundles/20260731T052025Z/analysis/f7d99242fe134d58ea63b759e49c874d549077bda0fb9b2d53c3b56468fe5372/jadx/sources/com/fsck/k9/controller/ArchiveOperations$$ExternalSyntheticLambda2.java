package com.fsck.k9.controller;

import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.ExposedDropdownMenuDefaults;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.IntSize;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda14;
import androidx.room.util.DBUtil;
import androidx.work.Data;
import app.k9mail.core.ui.compose.designsystem.atom.DropdownMenuBoxKt$$ExternalSyntheticLambda6;
import app.k9mail.core.ui.compose.designsystem.atom.RadioGroupKt$$ExternalSyntheticLambda1;
import app.k9mail.core.ui.compose.designsystem.atom.button.ButtonColors;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.common.domain.entity.InteractionMode;
import app.k9mail.feature.account.common.ui.item.LoadingItemKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$State;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsViewModel;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$State;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsViewModel;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$State;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersScreenKt;
import app.k9mail.feature.settings.p000import.ui.SettingsImportAction;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.KoinModuleKt$$ExternalSyntheticLambda0;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import com.skydoves.landscapist.ImageOptions;
import com.skydoves.landscapist.coil3.CoilImageKt;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.math.MathKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.BufferedChannelKt;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.serialization.json.JsonObject$$ExternalSyntheticLambda0;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.SettingValue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ArchiveOperations$$ExternalSyntheticLambda2 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ ArchiveOperations$$ExternalSyntheticLambda2(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        Unit CoilImage$lambda$7$2$0;
        int i = this.$r8$classId;
        int i2 = 9;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        int i3 = 3;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        int i4 = 2;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        Object obj6 = this.f$0;
        switch (i) {
            case 0:
                Base64Util base64Util = (Base64Util) obj6;
                String str = (String) obj5;
                Function4 function4 = (Function4) obj4;
                LegacyAccountDto legacyAccountDto = (LegacyAccountDto) obj;
                LocalFolder localFolder = (LocalFolder) obj2;
                List list = (List) obj3;
                legacyAccountDto.getClass();
                localFolder.getClass();
                list.getClass();
                long j = localFolder.databaseId;
                Long archiveFolderId = legacyAccountDto.getArchiveFolderId();
                if (archiveFolderId == null) {
                    Log.v("No archive folder configured for account %s", legacyAccountDto);
                    break;
                } else if (archiveFolderId.longValue() == j) {
                    Log.v("Skipping messages already in archive folder", new Object[0]);
                    break;
                } else {
                    MessagingController.suppressMessages(legacyAccountDto, list);
                    ((MessagingController) base64Util.alphabet).putBackground(str, new ArchiveOperations$$ExternalSyntheticLambda6(function4, legacyAccountDto, j, list, archiveFolderId, 0));
                    break;
                }
            case 1:
                ImmutableList immutableList = (ImmutableList) obj6;
                Function1 function1 = (Function1) obj5;
                Function1 function12 = (Function1) obj4;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    for (Object obj7 : immutableList) {
                        ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(1921500851, new DropdownMenuBoxKt$$ExternalSyntheticLambda6(r12 ? 1 : 0, obj7, function12), gapComposer);
                        boolean changed = gapComposer.changed(function1) | gapComposer.changedInstance(obj7);
                        Object rememberedValue = gapComposer.rememberedValue();
                        if (changed || rememberedValue == neverEqualPolicy) {
                            rememberedValue = new RadioGroupKt$$ExternalSyntheticLambda1(1, obj7, function1);
                            gapComposer.updateRememberedValue(rememberedValue);
                        }
                        AndroidMenu_androidKt.DropdownMenuItem(rememberComposableLambda, (Function0) rememberedValue, null, false, null, ExposedDropdownMenuDefaults.ItemContentPadding, gapComposer, 6);
                    }
                    break;
                } else {
                    gapComposer.skipToGroupEnd();
                    break;
                }
            case 2:
                ImageVector imageVector = (ImageVector) obj6;
                String str2 = (String) obj5;
                ButtonColors buttonColors = (ButtonColors) obj4;
                RowScope rowScope = (RowScope) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                rowScope.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= ((GapComposer) composer2).changed(rowScope) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    if (imageVector == null) {
                        gapComposer2.startReplaceGroup(1402165250);
                        gapComposer2.end(false);
                    } else {
                        gapComposer2.startReplaceGroup(1402165251);
                        Modifier alignByBaseline = rowScope.alignByBaseline();
                        ((ThemeSpacings) gapComposer2.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                        AtomicFU.m1009IconxqIIw2o(imageVector, OffsetKt.m222paddingqDBjuR0$default(alignByBaseline, 0.0f, 0.0f, 8.0f, 0.0f, 11), new Color(buttonColors.iconColor), gapComposer2, 384, 0);
                        gapComposer2.end(false);
                    }
                    TextKt.m362TextNvy7gAk(str2, null, 0L, 0L, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, null, gapComposer2, 0, 0, 261118);
                    break;
                } else {
                    gapComposer2.skipToGroupEnd();
                    break;
                }
            case 3:
                IncomingServerSettingsViewModel incomingServerSettingsViewModel = (IncomingServerSettingsViewModel) obj6;
                MutableState mutableState = (MutableState) obj5;
                Function1 function13 = (Function1) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue3 & 6) == 0) {
                    intValue3 |= ((GapComposer) composer3).changed(paddingValues) ? 4 : 2;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 19) != 18)) {
                    InteractionMode interactionMode = incomingServerSettingsViewModel.mode;
                    IncomingServerSettingsContract$State incomingServerSettingsContract$State = (IncomingServerSettingsContract$State) mutableState.getValue();
                    Modifier windowInsetsPadding = OffsetKt.windowInsetsPadding(OffsetKt.consumeWindowInsets(OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues), paddingValues), OffsetKt.imeLambda);
                    boolean changed2 = gapComposer3.changed(function13);
                    Object rememberedValue2 = gapComposer3.rememberedValue();
                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new NavHostKt$$ExternalSyntheticLambda14(8, function13);
                        gapComposer3.updateRememberedValue(rememberedValue2);
                    }
                    ActionBar.IncomingServerSettingsContent(interactionMode, incomingServerSettingsContract$State, (Function1) rememberedValue2, windowInsetsPadding, gapComposer3, 64);
                    break;
                } else {
                    gapComposer3.skipToGroupEnd();
                    break;
                }
            case 4:
                OutgoingServerSettingsViewModel outgoingServerSettingsViewModel = (OutgoingServerSettingsViewModel) obj6;
                MutableState mutableState2 = (MutableState) obj5;
                Function1 function14 = (Function1) obj4;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer4 = (Composer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((intValue4 & 6) == 0) {
                    intValue4 |= ((GapComposer) composer4).changed(paddingValues2) ? 4 : 2;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 19) != 18)) {
                    InteractionMode interactionMode2 = outgoingServerSettingsViewModel.mode;
                    OutgoingServerSettingsContract$State outgoingServerSettingsContract$State = (OutgoingServerSettingsContract$State) mutableState2.getValue();
                    boolean changed3 = gapComposer4.changed(function14);
                    Object rememberedValue3 = gapComposer4.rememberedValue();
                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new NavHostKt$$ExternalSyntheticLambda14(21, function14);
                        gapComposer4.updateRememberedValue(rememberedValue3);
                    }
                    MathKt.OutgoingServerSettingsContent(interactionMode2, outgoingServerSettingsContract$State, (Function1) rememberedValue3, OffsetKt.windowInsetsPadding(OffsetKt.consumeWindowInsets(OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues2), paddingValues2), OffsetKt.imeLambda), gapComposer4, 64);
                    break;
                } else {
                    gapComposer4.skipToGroupEnd();
                    break;
                }
            case 5:
                String str3 = (String) obj5;
                SpecialFoldersContract$State specialFoldersContract$State = (SpecialFoldersContract$State) obj6;
                Function1 function15 = (Function1) obj4;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer5 = (Composer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((intValue5 & 6) == 0) {
                    intValue5 |= ((GapComposer) composer5).changed(paddingValues3) ? 4 : 2;
                }
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 19) != 18)) {
                    Modifier padding = OffsetKt.padding(companion, paddingValues3);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer5, 0);
                    long j2 = gapComposer5.compositeKeyHashCode;
                    int i5 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer5.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer5, padding);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer5.startReusableNode();
                    if (gapComposer5.inserting) {
                        gapComposer5.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer5.useNode();
                    }
                    Updater.m380setimpl(gapComposer5, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer5, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer5, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer5, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer5, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    DBUtil.AppTitleTopHeader(str3, null, gapComposer5, 0, 2);
                    OAuthBearer.ContentLoadingErrorView(specialFoldersContract$State, SpecialFoldersScreenKt.f28lambda$314538883, Expect_jvmKt.rememberComposableLambda(1726464490, new DragGestureDetectorKt$$ExternalSyntheticLambda0(i4, function15), gapComposer5), SizeKt.FillWholeMaxSize, null, Expect_jvmKt.rememberComposableLambda(-858952634, new DragGestureDetectorKt$$ExternalSyntheticLambda0(i3, function15), gapComposer5), gapComposer5, 200112);
                    gapComposer5.end(true);
                    break;
                } else {
                    gapComposer5.skipToGroupEnd();
                    break;
                }
            case 6:
                String str4 = (String) obj5;
                Function0 function0 = (Function0) obj6;
                Function0 function02 = (Function0) obj4;
                PaddingValues paddingValues4 = (PaddingValues) obj;
                Composer composer6 = (Composer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                paddingValues4.getClass();
                if ((intValue6 & 6) == 0) {
                    intValue6 |= ((GapComposer) composer6).changed(paddingValues4) ? 4 : 2;
                }
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 19) != 18)) {
                    FillElement fillElement = SizeKt.FillWholeMaxSize;
                    Arrangement$End$1 arrangement$End$1 = OffsetKt.SpaceEvenly;
                    ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(1388039182, new LoadingItemKt$$ExternalSyntheticLambda0(str4, i2), gapComposer6);
                    ComposableLambdaImpl rememberComposableLambda3 = Expect_jvmKt.rememberComposableLambda(1045155373, new AboutFragmentKt$$ExternalSyntheticLambda7(i3, function0, function02), gapComposer6);
                    Object rememberedValue4 = gapComposer6.rememberedValue();
                    if (rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new KoinModuleKt$$ExternalSyntheticLambda0(17);
                        gapComposer6.updateRememberedValue(rememberedValue4);
                    }
                    ScaffoldKt.LazyColumnWithHeaderFooter(fillElement, null, paddingValues4, arrangement$End$1, null, rememberComposableLambda2, rememberComposableLambda3, (Function1) rememberedValue4, gapComposer6, ((intValue6 << 6) & 896) | 14355462);
                    break;
                } else {
                    gapComposer6.skipToGroupEnd();
                    break;
                }
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                SettingsImportAction settingsImportAction = (SettingsImportAction) obj6;
                Function0 function03 = (Function0) obj5;
                Function0 function04 = (Function0) obj4;
                PaddingValues paddingValues5 = (PaddingValues) obj;
                Composer composer7 = (Composer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                paddingValues5.getClass();
                if ((intValue7 & 6) == 0) {
                    intValue7 |= ((GapComposer) composer7).changed(paddingValues5) ? 4 : 2;
                }
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 19) != 18)) {
                    Data.Companion.SettingsImportContent(settingsImportAction, function03, function04, paddingValues5, gapComposer7, (intValue7 << 9) & 7168);
                    break;
                } else {
                    gapComposer7.skipToGroupEnd();
                    break;
                }
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                CoilImage$lambda$7$2$0 = CoilImageKt.CoilImage$lambda$7$2$0((Function0) obj6, (Function2) obj5, (ImageOptions) obj4, (IntSize) obj, (Composer) obj2, ((Integer) obj3).intValue());
                break;
            case 9:
                BufferedChannel bufferedChannel = (BufferedChannel) obj5;
                SelectImplementation selectImplementation = (SelectImplementation) obj4;
                if (obj6 != BufferedChannelKt.CHANNEL_CLOSED) {
                    InlineList.callUndeliveredElement(bufferedChannel.onUndeliveredElement, obj6, selectImplementation.context);
                    break;
                }
                break;
            default:
                SettingValue.Select select = (SettingValue.Select) obj6;
                MutableState mutableState3 = (MutableState) obj5;
                MutableState mutableState4 = (MutableState) obj4;
                Composer composer8 = (Composer) obj2;
                int intValue8 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                GapComposer gapComposer8 = (GapComposer) composer8;
                if (gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 17) != 16)) {
                    String str5 = (String) select.description.invoke();
                    if (str5 == null) {
                        gapComposer8.startReplaceGroup(854278916);
                        gapComposer8.end(false);
                    } else {
                        gapComposer8.startReplaceGroup(854278917);
                        Data.Companion.m825TextBodyMediumZHfKjFs(str5, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer8, 0, 126);
                        ((ThemeSpacings) gapComposer8.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                        OffsetKt.Spacer(gapComposer8, SizeKt.m226height3ABfNKs(companion, 8.0f));
                        gapComposer8.end(false);
                    }
                    Object rememberedValue5 = gapComposer8.rememberedValue();
                    if (rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new BasicTextKt$$ExternalSyntheticLambda0(mutableState3, 11);
                        gapComposer8.updateRememberedValue(rememberedValue5);
                    }
                    Function1 function16 = (Function1) rememberedValue5;
                    ImmutableList immutableList2 = (ImmutableList) mutableState4.getValue();
                    Object rememberedValue6 = gapComposer8.rememberedValue();
                    if (rememberedValue6 == neverEqualPolicy) {
                        rememberedValue6 = new JsonObject$$ExternalSyntheticLambda0(27);
                        gapComposer8.updateRememberedValue(rememberedValue6);
                    }
                    Data.Companion.RadioGroup(function16, immutableList2, (Function1) rememberedValue6, null, (SettingValue.Select.SelectOption) mutableState3.getValue(), gapComposer8, 390, 8);
                    break;
                } else {
                    gapComposer8.skipToGroupEnd();
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ ArchiveOperations$$ExternalSyntheticLambda2(String str, Object obj, Function function, int i) {
        this.$r8$classId = i;
        this.f$1 = str;
        this.f$0 = obj;
        this.f$2 = function;
    }
}
