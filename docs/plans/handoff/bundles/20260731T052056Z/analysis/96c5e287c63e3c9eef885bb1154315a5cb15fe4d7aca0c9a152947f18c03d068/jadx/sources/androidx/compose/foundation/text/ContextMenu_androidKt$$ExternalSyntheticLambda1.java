package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.MultiWidgetSelectionDelegate;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$5$1$1$1$1$1$1;
import androidx.compose.foundation.text.selection.SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.foundation.text.selection.SelectionManager$$ExternalSyntheticLambda1;
import androidx.compose.foundation.text.selection.SelectionManager$handleDragObserver$1;
import androidx.compose.foundation.text.selection.SimpleLayoutKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.SuspendPointerInputElement;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ContextMenu_androidKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SelectionManager f$0;
    public final /* synthetic */ ComposableLambdaImpl f$1;

    public /* synthetic */ ContextMenu_androidKt$$ExternalSyntheticLambda1(ComposableLambdaImpl composableLambdaImpl, SelectionManager selectionManager) {
        this.$r8$classId = 2;
        this.f$1 = composableLambdaImpl;
        this.f$0 = selectionManager;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Selection.AnchorInfo anchorInfo;
        MultiWidgetSelectionDelegate anchorSelectable$foundation;
        float lineHeight;
        Selection.AnchorInfo anchorInfo2;
        MultiWidgetSelectionDelegate anchorSelectable$foundation2;
        boolean z;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SelectionManager selectionManager = this.f$0;
        ComposableLambdaImpl composableLambdaImpl = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                BasicTextKt.ContextMenuArea(selectionManager, composableLambdaImpl, (GapComposer) obj, Updater.updateChangedFlags(49));
                break;
            case 1:
                ((Integer) obj2).getClass();
                BasicTextKt.CommonContextMenuArea(selectionManager, composableLambdaImpl, (GapComposer) obj, Updater.updateChangedFlags(49));
                break;
            default:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i2 = 2;
                int i3 = 0;
                int i4 = 1;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke((Object) gapComposer, (Object) 0);
                    if (selectionManager.isInTouchMode() && ((Boolean) selectionManager.hasFocus$delegate.getValue()).booleanValue()) {
                        Selection selection = selectionManager.getSelection();
                        if (!(selection == null ? true : Intrinsics.areEqual(selection.start, selection.end))) {
                            gapComposer.startReplaceGroup(-1736224054);
                            Selection selection2 = selectionManager.getSelection();
                            if (selection2 == null) {
                                gapComposer.startReplaceGroup(2011629175);
                                gapComposer.end(false);
                                z = false;
                            } else {
                                gapComposer.startReplaceGroup(2011629176);
                                gapComposer.startReplaceGroup(-1736222526);
                                List listOf = Room.listOf((Object[]) new Boolean[]{Boolean.TRUE, Boolean.FALSE});
                                int size = listOf.size();
                                int i5 = 0;
                                while (i5 < size) {
                                    boolean booleanValue = ((Boolean) listOf.get(i5)).booleanValue();
                                    boolean changed = gapComposer.changed(booleanValue);
                                    Object rememberedValue = gapComposer.rememberedValue();
                                    Object obj3 = Composer$Companion.Empty;
                                    if (changed || rememberedValue == obj3) {
                                        rememberedValue = new SelectionManager$handleDragObserver$1(booleanValue, selectionManager);
                                        gapComposer.updateRememberedValue(rememberedValue);
                                    }
                                    TextDragObserver textDragObserver = (TextDragObserver) rememberedValue;
                                    boolean changed2 = gapComposer.changed(booleanValue);
                                    Object rememberedValue2 = gapComposer.rememberedValue();
                                    if (changed2 || rememberedValue2 == obj3) {
                                        rememberedValue2 = booleanValue ? new SelectionManager$$ExternalSyntheticLambda1(selectionManager, i4) : new SelectionManager$$ExternalSyntheticLambda1(selectionManager, i2);
                                        gapComposer.updateRememberedValue(rememberedValue2);
                                    }
                                    Function0 function0 = (Function0) rememberedValue2;
                                    ResolvedTextDirection resolvedTextDirection = booleanValue ? selection2.start.direction : selection2.end.direction;
                                    if (booleanValue) {
                                        Selection selection3 = selectionManager.getSelection();
                                        if (selection3 != null && (anchorSelectable$foundation2 = selectionManager.getAnchorSelectable$foundation((anchorInfo2 = selection3.start))) != null) {
                                            int i6 = anchorInfo2.offset;
                                            TextLayoutResult textLayoutResult = (TextLayoutResult) anchorSelectable$foundation2.layoutResultCallback.invoke();
                                            if (textLayoutResult != null) {
                                                lineHeight = BasicTextKt.getLineHeight(textLayoutResult, i6);
                                            }
                                        }
                                        lineHeight = RecyclerView.DECELERATION_RATE;
                                    } else {
                                        Selection selection4 = selectionManager.getSelection();
                                        if (selection4 != null && (anchorSelectable$foundation = selectionManager.getAnchorSelectable$foundation((anchorInfo = selection4.end))) != null) {
                                            int i7 = anchorInfo.offset;
                                            TextLayoutResult textLayoutResult2 = (TextLayoutResult) anchorSelectable$foundation.layoutResultCallback.invoke();
                                            if (textLayoutResult2 != null) {
                                                lineHeight = BasicTextKt.getLineHeight(textLayoutResult2, i7);
                                            }
                                        }
                                        lineHeight = RecyclerView.DECELERATION_RATE;
                                    }
                                    SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0 selectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0 = new SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0(function0);
                                    boolean z2 = selection2.handlesCrossed;
                                    boolean changedInstance = gapComposer.changedInstance(textDragObserver);
                                    Object rememberedValue3 = gapComposer.rememberedValue();
                                    if (changedInstance || rememberedValue3 == obj3) {
                                        rememberedValue3 = new SelectionContainerKt$SelectionContainer$5$1$1$1$1$1$1(textDragObserver, i3);
                                        gapComposer.updateRememberedValue(rememberedValue3);
                                    }
                                    SimpleLayoutKt.m235SelectionHandlewLIcFTc(selectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0, booleanValue, resolvedTextDirection, z2, 0L, lineHeight, new SuspendPointerInputElement(textDragObserver, null, (PointerInputEventHandler) rememberedValue3, 6), gapComposer, 0);
                                    i5++;
                                    i3 = 0;
                                    selection2 = selection2;
                                    i4 = 1;
                                    i2 = 2;
                                }
                                boolean z3 = i3;
                                gapComposer.end(z3);
                                gapComposer.end(z3);
                                z = z3;
                            }
                            gapComposer.end(z);
                            break;
                        }
                    }
                    gapComposer.startReplaceGroup(2013602667);
                    gapComposer.end(false);
                    break;
                }
                break;
        }
        return unit;
    }

    public /* synthetic */ ContextMenu_androidKt$$ExternalSyntheticLambda1(SelectionManager selectionManager, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = selectionManager;
        this.f$1 = composableLambdaImpl;
    }
}
