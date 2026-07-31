package androidx.compose.material3;

import androidx.camera.core.impl.Config;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.internal.Icons$Filled;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.semantics.AppendedSemanticsElement;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.fsck.k9.R;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.funding.FeatureFundingModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.mail.message.list.internal.ui.state.machine.SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.mail.message.list.ui.event.FolderEvent$FolderLoaded;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$DeselectAll;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$OnFocusEnter;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$OnFocusExit;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$OnMessageClick;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$SelectAll;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$SetMessageActive;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$ToggleSelectMessages;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.reader.impl.inject.FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SheetDefaultsKt$DragHandleWithTooltip$1$1$1 implements Function2 {
    public final /* synthetic */ Object $dragHandleDescription;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SheetDefaultsKt$DragHandleWithTooltip$1$1$1(int i, Object obj) {
        this.$r8$classId = i;
        this.$dragHandleDescription = obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        Unit unit = Unit.INSTANCE;
        int i2 = 2;
        Object obj3 = this.$dragHandleDescription;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Number) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    TextKt.m362TextNvy7gAk((String) obj3, null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer, 0, 0, 262142);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 1:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Number) obj2).intValue();
                MenuHostHelper menuHostHelper = (MenuHostHelper) obj3;
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    String m371getString2EP1pXo = Icons$Filled.m371getString2EP1pXo(gapComposer2, R.string.m3c_dialog);
                    PaddingValuesImpl paddingValuesImpl = AlertDialogKt.DialogPadding;
                    Modifier m237sizeInqDBjuR0$default = SizeKt.m237sizeInqDBjuR0$default(companion, 280.0f, 0.0f, 560.0f, 10);
                    boolean changed = gapComposer2.changed(m371getString2EP1pXo);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new IconKt$$ExternalSyntheticLambda1(m371getString2EP1pXo, i2);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Modifier then = m237sizeInqDBjuR0$default.then(SemanticsModifierKt.semantics(companion, false, (Function1) rememberedValue));
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, true);
                    int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer2);
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, then);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m380setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        Modifier.CC.m(currentCompositeKeyHash, gapComposer2, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
                    }
                    Updater.m380setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    Config.CC.m(0, (ComposableLambdaImpl) menuHostHelper.mProviderToLifecycleContainers, gapComposer2, true);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 2:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Number) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    Arrangement$End$1 arrangement$End$1 = OffsetKt.f4End;
                    BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
                    Function3 function3 = ((SingleRowTopAppBarOverrideScope) obj3).actions;
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$End$1, vertical, gapComposer3, 54);
                    int currentCompositeKeyHash2 = Updater.getCurrentCompositeKeyHash(gapComposer3);
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer3, companion);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer3.useNode();
                    }
                    Updater.m380setimpl(gapComposer3, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer3, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    if (gapComposer3.inserting || !Intrinsics.areEqual(gapComposer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                        Modifier.CC.m(currentCompositeKeyHash2, gapComposer3, currentCompositeKeyHash2, composeUiNode$Companion$SetModifier$12);
                    }
                    Updater.m380setimpl(gapComposer3, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    function3.invoke(RowScopeInstance.INSTANCE, gapComposer3, 6);
                    gapComposer3.end(true);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
            case 3:
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Number) obj2).intValue();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    Object rememberedValue2 = gapComposer4.rememberedValue();
                    if (rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new TextKt$$ExternalSyntheticLambda1(9);
                        gapComposer4.updateRememberedValue(rememberedValue2);
                    }
                    AppendedSemanticsElement appendedSemanticsElement = new AppendedSemanticsElement((Function1) rememberedValue2, false);
                    MutableState mutableState = (MutableState) obj3;
                    MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                    int currentCompositeKeyHash3 = Updater.getCurrentCompositeKeyHash(gapComposer4);
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer4.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer4, appendedSemanticsElement);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                    gapComposer4.startReusableNode();
                    if (gapComposer4.inserting) {
                        gapComposer4.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer4.useNode();
                    }
                    Updater.m380setimpl(gapComposer4, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer4, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    if (gapComposer4.inserting || !Intrinsics.areEqual(gapComposer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                        Modifier.CC.m(currentCompositeKeyHash3, gapComposer4, currentCompositeKeyHash3, composeUiNode$Companion$SetModifier$13);
                    }
                    Updater.m380setimpl(gapComposer4, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                    ((Function2) mutableState.getValue()).invoke(gapComposer4, 0);
                    gapComposer4.end(true);
                } else {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
            case 4:
                obj.getClass();
                obj2.getClass();
                return ((FeatureFundingModuleKt$$ExternalSyntheticLambda0) obj3).invoke(obj, (FolderEvent$FolderLoaded) obj2);
            case 5:
                obj.getClass();
                obj2.getClass();
                return ((FeatureFundingModuleKt$$ExternalSyntheticLambda0) obj3).invoke(obj, (MessageItemEvent$SelectAll) obj2);
            case 6:
                obj.getClass();
                obj2.getClass();
                return ((FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1) obj3).invoke(obj, (MessageItemEvent$DeselectAll) obj2);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                obj.getClass();
                obj2.getClass();
                return ((FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1) obj3).invoke(obj, (MessageItemEvent$OnFocusEnter) obj2);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                obj.getClass();
                obj2.getClass();
                return ((FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1) obj3).invoke(obj, (MessageItemEvent$OnFocusExit) obj2);
            case 9:
                obj.getClass();
                obj2.getClass();
                return ((FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1) obj3).invoke(obj, (MessageListEvent.UpdateFooter) obj2);
            case 10:
                obj.getClass();
                obj2.getClass();
                return ((FeatureFundingModuleKt$$ExternalSyntheticLambda0) obj3).invoke(obj, (MessageListEvent.UpdatePreferences) obj2);
            case 11:
                obj.getClass();
                obj2.getClass();
                return ((FeatureFundingModuleKt$$ExternalSyntheticLambda0) obj3).invoke(obj, (MessageListEvent.ChangeSortCriteria) obj2);
            case BasicTextKt.ShiftMeta /* 12 */:
                obj.getClass();
                obj2.getClass();
                return ((FeatureFundingModuleKt$$ExternalSyntheticLambda0) obj3).invoke(obj, (MessageListEvent.SwipeActionsLoaded) obj2);
            case 13:
                obj.getClass();
                obj2.getClass();
                return ((FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1) obj3).invoke(obj, (MessageItemEvent$SetMessageActive) obj2);
            case 14:
                obj.getClass();
                obj2.getClass();
                return ((FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1) obj3).invoke(obj, (MessageItemEvent$OnMessageClick) obj2);
            case OffsetKt.Horizontal /* 15 */:
                obj.getClass();
                obj2.getClass();
                return ((FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1) obj3).invoke(obj, (MessageItemEvent$ToggleSelectMessages) obj2);
            case 16:
                obj.getClass();
                obj2.getClass();
                return (Boolean) ((FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1) obj3).invoke(obj, (MessageListEvent.MessagesLoaded) obj2);
            case 17:
                obj.getClass();
                obj2.getClass();
                return ((FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1) obj3).invoke(obj, (MessageListEvent.MessagesLoaded) obj2);
            case 18:
                obj.getClass();
                obj2.getClass();
                return ((StringsKt__StringsKt$$ExternalSyntheticLambda0) obj3).invoke(obj, (MessageListEvent.UpdateLoadingProgress) obj2);
            case 19:
                obj.getClass();
                obj2.getClass();
                return ((SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1) obj3).invoke(obj, (MessageItemEvent$ToggleSelectMessages) obj2);
            case 20:
                obj.getClass();
                obj2.getClass();
                return ((StringsKt__StringsKt$$ExternalSyntheticLambda0) obj3).invoke(obj, (MessageListEvent.ExitSelectionMode) obj2);
            case 21:
                obj.getClass();
                obj2.getClass();
                return ((SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1) obj3).invoke(obj, (MessageItemEvent$OnMessageClick) obj2);
            case 22:
                obj.getClass();
                obj2.getClass();
                return (Boolean) ((FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1) obj3).invoke(obj, (MessageListEvent.AllConfigsReady) obj2);
            case 23:
                obj.getClass();
                obj2.getClass();
                return ((FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1) obj3).invoke(obj, (MessageListEvent.AllConfigsReady) obj2);
            case 24:
                obj.getClass();
                obj2.getClass();
                return ((FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1) obj3).invoke(obj, (MessageListEvent.UpdatePreferences) obj2);
            default:
                obj.getClass();
                obj2.getClass();
                return ((FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1) obj3).invoke(obj, (MessageListEvent.SortCriteriaLoaded) obj2);
        }
    }
}
