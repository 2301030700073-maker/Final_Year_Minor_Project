package com.fsck.k9.activity.setup;

import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.CheckboxKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.RelationUtil;
import androidx.work.Data;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.atom.textfield.TextFieldLabelKt;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.KoinModuleKt$$ExternalSyntheticLambda0;
import com.fsck.k9.R;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda3;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.math.MathKt;
import kotlin.sequences.SequencesKt___SequencesKt$$ExternalSyntheticLambda0;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayTreeFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.MailDisplayFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.UnifiedDisplayFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.folder.FolderListItemKt$WhenMappings;
import okio.Options;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AccountSetupCompositionKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ boolean f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$7;

    public /* synthetic */ AccountSetupCompositionKt$$ExternalSyntheticLambda3(Function1 function1, String str, String str2, String str3, boolean z, String str4, AbstractPersistentList abstractPersistentList, Pair pair) {
        this.f$0 = function1;
        this.f$1 = str;
        this.f$2 = str2;
        this.f$3 = str3;
        this.f$4 = z;
        this.f$5 = str4;
        this.f$6 = abstractPersistentList;
        this.f$7 = pair;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        KeyboardOptions keyboardOptions;
        String stringResource;
        int i = this.$r8$classId;
        int i2 = 7;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$7;
        Object obj4 = this.f$6;
        Object obj5 = this.f$5;
        Object obj6 = this.f$3;
        Object obj7 = this.f$1;
        Object obj8 = this.f$2;
        Object obj9 = this.f$0;
        switch (i) {
            case 0:
                Function1 function1 = (Function1) obj9;
                String str = (String) obj7;
                String str2 = (String) obj8;
                String str3 = (String) obj6;
                String str4 = (String) obj5;
                AbstractPersistentList abstractPersistentList = (AbstractPersistentList) obj4;
                Pair pair = (Pair) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    return unit;
                }
                FillElement fillElement = SizeKt.FillWholeMaxSize;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), Alignment.Companion.Start, gapComposer, 0);
                long j = gapComposer.compositeKeyHashCode;
                int i3 = (int) (j ^ (j >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, fillElement);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                Updater.m380setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                Updater.m380setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                Integer valueOf = Integer.valueOf(i3);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                Updater.m380setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                Updater.m379reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                Updater.m380setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
                String stringResource2 = Operation$State.stringResource(gapComposer, R.string.account_settings_name_label);
                KeyboardOptions keyboardOptions2 = new KeyboardOptions(0, 125);
                boolean changed = gapComposer.changed(function1);
                Object rememberedValue = gapComposer.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                if (changed || rememberedValue == neverEqualPolicy) {
                    keyboardOptions = keyboardOptions2;
                    rememberedValue = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(26, function1);
                    gapComposer.updateRememberedValue(rememberedValue);
                } else {
                    keyboardOptions = keyboardOptions2;
                }
                TextInputKt.TextInput((Function1) rememberedValue, null, str, stringResource2, false, null, null, false, false, keyboardOptions, null, gapComposer, 805306368, 1522);
                String stringResource3 = Operation$State.stringResource(gapComposer, R.string.account_settings_email_label);
                ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                Modifier m220paddingVpY3zN4$default = OffsetKt.m220paddingVpY3zN4$default(companion, 16.0f, 0.0f, 2);
                FillElement fillElement2 = SizeKt.FillWholeMaxWidth;
                Modifier then = m220paddingVpY3zN4$default.then(fillElement2);
                boolean changed2 = gapComposer.changed(function1);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changed2 || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(27, function1);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                TextFieldLabelKt.TextFieldOutlinedEmailAddress(str2, (Function1) rememberedValue2, then, stringResource3, false, false, gapComposer, 0, 240);
                String stringResource4 = Operation$State.stringResource(gapComposer, R.string.account_settings_always_bcc_label);
                ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                Modifier then2 = OffsetKt.m220paddingVpY3zN4$default(companion, 16.0f, 0.0f, 2).then(fillElement2);
                boolean changed3 = gapComposer.changed(function1);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changed3 || rememberedValue3 == neverEqualPolicy) {
                    rememberedValue3 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(28, function1);
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                TextFieldLabelKt.TextFieldOutlinedEmailAddress(str3, (Function1) rememberedValue3, then2, stringResource4, false, false, gapComposer, 0, 240);
                boolean changed4 = gapComposer.changed(function1);
                boolean z = this.f$4;
                boolean changed5 = changed4 | gapComposer.changed(z);
                Object rememberedValue4 = gapComposer.rememberedValue();
                if (changed5 || rememberedValue4 == neverEqualPolicy) {
                    rememberedValue4 = new CheckboxKt$$ExternalSyntheticLambda2(function1, z, 3);
                    gapComposer.updateRememberedValue(rememberedValue4);
                }
                Modifier m136clickableoSLSa3U$default = ImageKt.m136clickableoSLSa3U$default(fillElement2, true, null, (Function0) rememberedValue4, 14);
                RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer, 48);
                long j2 = gapComposer.compositeKeyHashCode;
                int i4 = (int) (j2 ^ (j2 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, m136clickableoSLSa3U$default);
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                Updater.m380setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                Config.CC.m(i4, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m380setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                boolean changed6 = gapComposer.changed(function1);
                Object rememberedValue5 = gapComposer.rememberedValue();
                if (changed6 || rememberedValue5 == neverEqualPolicy) {
                    rememberedValue5 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(23, function1);
                    gapComposer.updateRememberedValue(rememberedValue5);
                }
                RelationUtil.Checkbox(z, (Function1) rememberedValue5, null, false, gapComposer, 0);
                MathKt.m984TextBodySmallXl4FiYE(Operation$State.stringResource(gapComposer, R.string.account_settings_signature_use_label), null, 0L, null, 0, 0, gapComposer, 0, 62);
                gapComposer.end(true);
                if (z) {
                    gapComposer.startReplaceGroup(1307580812);
                    String stringResource5 = Operation$State.stringResource(gapComposer, R.string.account_settings_signature_label);
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    Modifier then3 = OffsetKt.m220paddingVpY3zN4$default(companion, 16.0f, 0.0f, 2).then(fillElement2);
                    boolean changed7 = gapComposer.changed(function1);
                    Object rememberedValue6 = gapComposer.rememberedValue();
                    if (changed7 || rememberedValue6 == neverEqualPolicy) {
                        rememberedValue6 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(24, function1);
                        gapComposer.updateRememberedValue(rememberedValue6);
                    }
                    TextFieldLabelKt.TextFieldOutlined(str4, (Function1) rememberedValue6, then3, stringResource5, false, false, false, false, null, gapComposer, 0, 2032);
                    ViewSizeResolver.CC.m((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal), companion, 4.0f, gapComposer);
                    String stringResource6 = Operation$State.stringResource(gapComposer, R.string.account_settings_signature__location_label);
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    Utf8.SafeProcessor.m799TextBodyLargeXl4FiYE(stringResource6, OffsetKt.m220paddingVpY3zN4$default(companion, 16.0f, 0.0f, 2), 0L, null, 0, 0, gapComposer, 0, 60);
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    Modifier m220paddingVpY3zN4$default2 = OffsetKt.m220paddingVpY3zN4$default(companion, 8.0f, 0.0f, 2);
                    boolean changed8 = gapComposer.changed(function1);
                    Object rememberedValue7 = gapComposer.rememberedValue();
                    if (changed8 || rememberedValue7 == neverEqualPolicy) {
                        rememberedValue7 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(25, function1);
                        gapComposer.updateRememberedValue(rememberedValue7);
                    }
                    Function1 function12 = (Function1) rememberedValue7;
                    Object rememberedValue8 = gapComposer.rememberedValue();
                    if (rememberedValue8 == neverEqualPolicy) {
                        rememberedValue8 = new KoinModuleKt$$ExternalSyntheticLambda0(28);
                        gapComposer.updateRememberedValue(rememberedValue8);
                    }
                    Data.Companion.RadioGroup(function12, abstractPersistentList, (Function1) rememberedValue8, m220paddingVpY3zN4$default2, pair, gapComposer, 384, 0);
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(1308735934);
                    gapComposer.end(false);
                }
                gapComposer.end(true);
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                ByteStreamsKt.MessageListItem((MessageItemUi) obj9, this.f$4, (MessageListPreferences) obj7, (Modifier) obj8, (Function0) obj6, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit;
            default:
                DisplayFolder displayFolder = (DisplayFolder) obj9;
                FolderNameFormatter folderNameFormatter = (FolderNameFormatter) obj8;
                String str5 = (String) obj7;
                DisplayTreeFolder displayTreeFolder = (DisplayTreeFolder) obj6;
                MutableState mutableState = (MutableState) obj5;
                Ref$IntRef ref$IntRef = (Ref$IntRef) obj4;
                Ref$IntRef ref$IntRef2 = (Ref$IntRef) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    return unit;
                }
                if (displayFolder instanceof MailDisplayFolder) {
                    gapComposer2.startReplaceGroup(19913898);
                    gapComposer2.end(false);
                    MailDisplayFolder mailDisplayFolder = (MailDisplayFolder) displayFolder;
                    stringResource = StringsKt.removePrefix(folderNameFormatter.displayName(mailDisplayFolder.folder), str5 + mailDisplayFolder.pathDelimiter);
                } else {
                    if (!(displayFolder instanceof UnifiedDisplayFolder)) {
                        gapComposer2.startReplaceGroup(19918679);
                        gapComposer2.end(false);
                        Regex$$ExternalSyntheticBUOutline0.m$2(displayFolder, "Unknown display folder: ");
                        return null;
                    }
                    gapComposer2.startReplaceGroup(19916946);
                    if (FolderListItemKt$WhenMappings.$EnumSwitchMapping$0[0] != 1) {
                        throw ViewSizeResolver.CC.m(gapComposer2, 945012578, false);
                    }
                    gapComposer2.startReplaceGroup(945014742);
                    stringResource = Operation$State.stringResource(gapComposer2, R.string.navigation_drawer_dropdown_unified_inbox_title);
                    gapComposer2.end(false);
                    gapComposer2.end(false);
                }
                Options.Companion.NavigationDrawerLabel(stringResource, Expect_jvmKt.rememberComposableLambda(-501710572, new MessageListFragmentKt$$ExternalSyntheticLambda3(i2, ref$IntRef, ref$IntRef2, this.f$4), gapComposer2), null, !displayTreeFolder.children.isEmpty() ? mutableState : null, gapComposer2, 48);
                return unit;
        }
    }

    public /* synthetic */ AccountSetupCompositionKt$$ExternalSyntheticLambda3(MessageItemUi messageItemUi, boolean z, MessageListPreferences messageListPreferences, Modifier modifier, Function0 function0, Function0 function02, Function0 function03, Function0 function04, int i) {
        this.f$0 = messageItemUi;
        this.f$4 = z;
        this.f$1 = messageListPreferences;
        this.f$2 = modifier;
        this.f$3 = function0;
        this.f$5 = function02;
        this.f$6 = function03;
        this.f$7 = function04;
    }

    public /* synthetic */ AccountSetupCompositionKt$$ExternalSyntheticLambda3(DisplayFolder displayFolder, FolderNameFormatter folderNameFormatter, String str, DisplayTreeFolder displayTreeFolder, MutableState mutableState, Ref$IntRef ref$IntRef, Ref$IntRef ref$IntRef2, boolean z) {
        this.f$0 = displayFolder;
        this.f$2 = folderNameFormatter;
        this.f$1 = str;
        this.f$3 = displayTreeFolder;
        this.f$5 = mutableState;
        this.f$6 = ref$IntRef;
        this.f$7 = ref$IntRef2;
        this.f$4 = z;
    }
}
