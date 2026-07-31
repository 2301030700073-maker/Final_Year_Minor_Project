package kotlinx.serialization.internal;

import androidx.compose.foundation.gestures.DefaultDraggableState$dragScope$1;
import androidx.compose.foundation.gestures.DraggableKt$NoOpOnDragStarted$1;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.LazyListScope$items$1;
import androidx.compose.foundation.lazy.grid.LazyGridInterval;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.lazy.grid.LazyGridItemScopeImpl;
import androidx.compose.material3.SheetDefaultsKt$DragHandleWithTooltip$1$1$1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.InvalidationTracker$implementation$1;
import app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda8;
import com.google.zxing.BinaryBitmap;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.AbstractCollection;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsKt$$ExternalSyntheticLambda0;
import kotlin.time.Instant;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.ImmutableSet;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import net.thunderbird.core.common.state.StateMachine;
import net.thunderbird.core.common.state.builder.InternalStateBuilder;
import net.thunderbird.core.common.state.debug.CommonStatePrettyPrinter;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DragEvent;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableKt;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.core.ui.setting.dialog.ui.components.list.SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;
import net.thunderbird.feature.account.core.AccountCoreModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;
import net.thunderbird.feature.mail.message.list.internal.ui.state.machine.SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;
import net.thunderbird.feature.mail.message.list.internal.ui.state.machine.SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemTrailingElement;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$OnMessageClick;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$ToggleSelectMessages;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MapEntrySerializer$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ MapEntrySerializer$$ExternalSyntheticLambda0(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        int i2 = 2;
        int i3 = 0;
        Instant instant = null;
        int i4 = 1;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder.getClass();
                classSerialDescriptorBuilder.element("key", ((KSerializer) obj3).getDescriptor());
                classSerialDescriptorBuilder.element("value", ((KSerializer) obj2).getDescriptor());
                break;
            case 1:
                CommonStatePrettyPrinter commonStatePrettyPrinter = (CommonStatePrettyPrinter) obj2;
                StringBuilder sb = (StringBuilder) obj;
                sb.getClass();
                Iterator it = ((ArrayDeque) obj3).iterator();
                while (it.hasNext()) {
                    int i5 = i3 + 1;
                    StateMachine.StateTransitionRecord stateTransitionRecord = (StateMachine.StateTransitionRecord) it.next();
                    if (i3 > 0) {
                        sb.append("---");
                        sb.append('\n');
                    }
                    sb.append(((BinaryBitmap) commonStatePrettyPrinter.formatter).buildTransitionRecord(stateTransitionRecord, instant));
                    instant = stateTransitionRecord.timestamp;
                    i3 = i5;
                }
                break;
            case 2:
                DefaultDraggableState$dragScope$1 defaultDraggableState$dragScope$1 = (DefaultDraggableState$dragScope$1) obj3;
                long m442timestuRUvjQ = Offset.m442timestuRUvjQ(1.0f, ((DragEvent.DragDelta) obj).delta);
                Orientation orientation = ((DraggableNode) obj2).orientation;
                DraggableKt$NoOpOnDragStarted$1 draggableKt$NoOpOnDragStarted$1 = DraggableKt.NoOpOnDragStarted;
                orientation.getClass();
                defaultDraggableState$dragScope$1.dragBy(Float.intBitsToFloat((int) (orientation == Orientation.Vertical ? m442timestuRUvjQ & 4294967295L : m442timestuRUvjQ >> 32)));
                break;
            case 3:
                final ImmutableList immutableList = (ImmutableList) obj3;
                final ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj2;
                LazyGridIntervalContent lazyGridIntervalContent = (LazyGridIntervalContent) obj;
                lazyGridIntervalContent.getClass();
                lazyGridIntervalContent.intervals.addInterval(((AbstractCollection) immutableList).getSize(), new LazyGridInterval(new ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3(new AccountCoreModuleKt$$ExternalSyntheticLambda0(2), immutableList), LazyGridIntervalContent.DefaultSpan, new ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3(3, immutableList), new ComposableLambdaImpl(-1942245546, new Function4() { // from class: net.thunderbird.core.ui.setting.dialog.ui.components.common.AutoHeightLazyVerticalGridKt$AutoHeightLazyVerticalGrid_Q2ewo60$lambda$0$0$0$$inlined$itemsIndexed$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj4, Object obj5, Object obj6, Object obj7) {
                        int i6;
                        LazyGridItemScopeImpl lazyGridItemScopeImpl = (LazyGridItemScopeImpl) obj4;
                        int intValue = ((Number) obj5).intValue();
                        Composer composer = (Composer) obj6;
                        int intValue2 = ((Number) obj7).intValue();
                        if ((intValue2 & 6) == 0) {
                            i6 = (((GapComposer) composer).changed(lazyGridItemScopeImpl) ? 4 : 2) | intValue2;
                        } else {
                            i6 = intValue2;
                        }
                        if ((intValue2 & 48) == 0) {
                            i6 |= ((GapComposer) composer).changed(intValue) ? 32 : 16;
                        }
                        GapComposer gapComposer = (GapComposer) composer;
                        if (gapComposer.shouldExecute(i6 & 1, (i6 & 147) != 146)) {
                            Object obj8 = immutableList.get(intValue);
                            gapComposer.startReplaceGroup(-69877004);
                            FillElement fillElement = SizeKt.FillWholeMaxSize;
                            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                            long j = gapComposer.compositeKeyHashCode;
                            int i7 = (int) ((j >>> 32) ^ j);
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
                            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                            Updater.m380setimpl(gapComposer, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
                            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                            composableLambdaImpl.invoke(obj8, (Object) gapComposer, (Object) 0);
                            gapComposer.end(true);
                            gapComposer.end(false);
                        } else {
                            gapComposer.skipToGroupEnd();
                        }
                        return Unit.INSTANCE;
                    }
                }, true)));
                break;
            case 4:
                TextFieldValue textFieldValue = (TextFieldValue) obj;
                textFieldValue.getClass();
                ((MutableState) obj2).setValue(TextFieldValue.m715copy3r_uNRQ$default(textFieldValue, (String) ((SettingValue.Text) obj3).transform.invoke(textFieldValue.annotatedString.text)));
                break;
            case 5:
                SettingValue.SegmentedButton segmentedButton = (SettingValue.SegmentedButton) obj2;
                SettingValue.SegmentedButton.SegmentedButtonOption segmentedButtonOption = (SettingValue.SegmentedButton.SegmentedButtonOption) obj;
                segmentedButtonOption.getClass();
                String str = segmentedButton.id;
                Function0 function0 = segmentedButton.title;
                Function0 function02 = segmentedButton.description;
                ImmutableList immutableList2 = segmentedButton.options;
                immutableList2.getClass();
                ((Function1) obj3).invoke(new SettingValue.SegmentedButton(str, function0, function02, segmentedButtonOption, immutableList2));
                break;
            case 6:
                SettingValue.Switch r7 = (SettingValue.Switch) obj2;
                ((Function1) obj3).invoke(new SettingValue.Switch(r7.id, r7.title, r7.description, ((Boolean) obj).booleanValue()));
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                SetupArchiveFolderDialogContract$State.ChooseArchiveFolder chooseArchiveFolder = (SetupArchiveFolderDialogContract$State.ChooseArchiveFolder) obj3;
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                List list = chooseArchiveFolder.folders;
                lazyListIntervalContent.items(list.size(), null, new ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3(5, list), new ComposableLambdaImpl(802480018, new SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3(list, chooseArchiveFolder, (Function1) obj2, i2), true));
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Boolean) obj).booleanValue();
                ((Function1) obj3).invoke(Boolean.valueOf(!((SetupArchiveFolderDialogContract$State.EmailCantBeArchived) obj2).isDoNotShowDialogAgainChecked));
                break;
            case 9:
                InvalidationTracker$implementation$1 invalidationTracker$implementation$1 = (InvalidationTracker$implementation$1) obj3;
                InvalidationTracker$implementation$1 invalidationTracker$implementation$12 = (InvalidationTracker$implementation$1) obj2;
                InternalStateBuilder internalStateBuilder = (InternalStateBuilder) obj;
                internalStateBuilder.getClass();
                SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1 setupSelectingMessagesStateKt$$ExternalSyntheticLambda1 = new SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1(invalidationTracker$implementation$1, invalidationTracker$implementation$12, i3);
                ClassReference classReference = internalStateBuilder.stateClass;
                internalStateBuilder.transition(classReference, Reflection.getOrCreateKotlinClass(MessageItemEvent$ToggleSelectMessages.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(23), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(19, setupSelectingMessagesStateKt$$ExternalSyntheticLambda1));
                internalStateBuilder.transition(classReference, Reflection.getOrCreateKotlinClass(MessageListEvent.ExitSelectionMode.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(24), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(20, new StringsKt__StringsKt$$ExternalSyntheticLambda0(5, invalidationTracker$implementation$12)));
                internalStateBuilder.transition(classReference, Reflection.getOrCreateKotlinClass(MessageItemEvent$OnMessageClick.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(25), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(21, new SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1(invalidationTracker$implementation$1, invalidationTracker$implementation$12, i4)));
                break;
            case 10:
                ((Boolean) obj).getClass();
                ((Function1) obj3).invoke((MessageItemTrailingElement.FavouriteIconButton) obj2);
                break;
            default:
                ImmutableSet immutableSet = (ImmutableSet) obj3;
                LazyListIntervalContent lazyListIntervalContent2 = (LazyListIntervalContent) obj;
                lazyListIntervalContent2.getClass();
                lazyListIntervalContent2.items(immutableSet.size(), null, LazyListScope$items$1.INSTANCE, new ComposableLambdaImpl(-1524771721, new AccountSetupNavHostKt$$ExternalSyntheticLambda8(7, (Object) immutableSet, (Function1) obj2), true));
                break;
        }
        return unit;
    }
}
