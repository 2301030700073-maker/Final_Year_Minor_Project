package androidx.compose.foundation.text.modifiers;

import androidx.collection.MutableLongObjectMap;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.selection.MultiWidgetSelectionDelegate;
import androidx.compose.foundation.text.selection.SelectionAdjustment$Companion;
import androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.selection.SelectionManager$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.selection.SelectionManager$$ExternalSyntheticLambda1;
import androidx.compose.foundation.text.selection.SelectionRegistrarImpl;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.foundation.text.selection.SimpleLayoutKt;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerHoverIconModifierElement;
import androidx.compose.ui.input.pointer.PointerIcon;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendPointerInputElement;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;
import coil3.memory.RealStrongMemoryCache$cache$1;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SelectionController implements RememberObserver {
    public final long backgroundSelectionColor;
    public final Modifier modifier;
    public StaticTextSelectionParams params = StaticTextSelectionParams.Empty;
    public MultiWidgetSelectionDelegate selectable;
    public final long selectableId;
    public final SelectionRegistrarImpl selectionRegistrar;

    /* JADX WARN: Type inference failed for: r6v1, types: [androidx.compose.foundation.text.modifiers.SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1, java.lang.Object] */
    public SelectionController(final long j, final SelectionRegistrarImpl selectionRegistrarImpl, long j2) {
        Modifier then;
        this.selectableId = j;
        this.selectionRegistrar = selectionRegistrarImpl;
        this.backgroundSelectionColor = j2;
        final SelectionController$$ExternalSyntheticLambda0 selectionController$$ExternalSyntheticLambda0 = new SelectionController$$ExternalSyntheticLambda0(this, 2);
        final ?? r6 = new TextDragObserver() { // from class: androidx.compose.foundation.text.modifiers.SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1
            public long lastPosition = 0;
            public long dragTotalDistance = 0;
            public SelectionAdjustment$Companion$$ExternalSyntheticLambda0 selectionAdjustmentMode = SelectionAdjustment$Companion.None;

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void onCancel() {
                SelectionManager$$ExternalSyntheticLambda1 selectionManager$$ExternalSyntheticLambda1;
                long j3 = j;
                SelectionRegistrarImpl selectionRegistrarImpl2 = selectionRegistrarImpl;
                if (!SelectionRegistrarKt.hasSelection(selectionRegistrarImpl2, j3) || (selectionManager$$ExternalSyntheticLambda1 = selectionRegistrarImpl2.onSelectionUpdateEndCallback) == null) {
                    return;
                }
                selectionManager$$ExternalSyntheticLambda1.invoke();
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDrag-k-4lQ0M */
            public final void mo194onDragk4lQ0M(long j3) {
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) SelectionController$$ExternalSyntheticLambda0.this.invoke();
                if (layoutCoordinates == null || !layoutCoordinates.isAttached()) {
                    return;
                }
                SelectionRegistrarImpl selectionRegistrarImpl2 = selectionRegistrarImpl;
                if (SelectionRegistrarKt.hasSelection(selectionRegistrarImpl2, j)) {
                    long m386plusMKHz9U = Offset.m386plusMKHz9U(this.dragTotalDistance, j3);
                    this.dragTotalDistance = m386plusMKHz9U;
                    long m386plusMKHz9U2 = Offset.m386plusMKHz9U(this.lastPosition, m386plusMKHz9U);
                    if (selectionRegistrarImpl2.m234notifySelectionUpdatenjBpvok(layoutCoordinates, m386plusMKHz9U2, this.lastPosition, this.selectionAdjustmentMode, true)) {
                        this.lastPosition = m386plusMKHz9U2;
                        this.dragTotalDistance = 0L;
                    }
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onStart-3MmeM6k */
            public final void mo195onStart3MmeM6k(long j3, SelectionAdjustment$Companion$$ExternalSyntheticLambda0 selectionAdjustment$Companion$$ExternalSyntheticLambda0) {
                this.selectionAdjustmentMode = selectionAdjustment$Companion$$ExternalSyntheticLambda0;
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) SelectionController$$ExternalSyntheticLambda0.this.invoke();
                SelectionRegistrarImpl selectionRegistrarImpl2 = selectionRegistrarImpl;
                if (layoutCoordinates != null) {
                    if (!layoutCoordinates.isAttached()) {
                        return;
                    }
                    SelectionAdjustment$Companion$$ExternalSyntheticLambda0 selectionAdjustment$Companion$$ExternalSyntheticLambda02 = this.selectionAdjustmentMode;
                    FrameworkSQLiteDatabase$$ExternalSyntheticLambda0 frameworkSQLiteDatabase$$ExternalSyntheticLambda0 = selectionRegistrarImpl2.onSelectionUpdateStartCallback;
                    if (frameworkSQLiteDatabase$$ExternalSyntheticLambda0 != null) {
                        frameworkSQLiteDatabase$$ExternalSyntheticLambda0.invoke(Boolean.TRUE, layoutCoordinates, new Offset(j3), selectionAdjustment$Companion$$ExternalSyntheticLambda02);
                    }
                    this.lastPosition = j3;
                }
                if (SelectionRegistrarKt.hasSelection(selectionRegistrarImpl2, j)) {
                    this.dragTotalDistance = 0L;
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void onStop() {
                SelectionManager$$ExternalSyntheticLambda1 selectionManager$$ExternalSyntheticLambda1;
                long j3 = j;
                SelectionRegistrarImpl selectionRegistrarImpl2 = selectionRegistrarImpl;
                if (!SelectionRegistrarKt.hasSelection(selectionRegistrarImpl2, j3) || (selectionManager$$ExternalSyntheticLambda1 = selectionRegistrarImpl2.onSelectionUpdateEndCallback) == null) {
                    return;
                }
                selectionManager$$ExternalSyntheticLambda1.invoke();
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDown-k-4lQ0M */
            public final void mo193onDownk4lQ0M() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void onUp() {
            }
        };
        final RealStrongMemoryCache$cache$1 realStrongMemoryCache$cache$1 = new RealStrongMemoryCache$cache$1(selectionController$$ExternalSyntheticLambda0, selectionRegistrarImpl, j);
        SuspendPointerInputElement suspendPointerInputElement = new SuspendPointerInputElement(realStrongMemoryCache$cache$1, r6, new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.modifiers.SelectionControllerKt$makeDefaultSelectionModifier$1
            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                Object awaitSelectionGestures = SimpleLayoutKt.awaitSelectionGestures(pointerInputScope, RealStrongMemoryCache$cache$1.this, r6, continuation);
                return awaitSelectionGestures == CoroutineSingletons.COROUTINE_SUSPENDED ? awaitSelectionGestures : Unit.INSTANCE;
            }
        }, 4);
        PointerIcon.Companion.getClass();
        then = suspendPointerInputElement.then(new PointerHoverIconModifierElement(PointerId.pointerIconText));
        this.modifier = then;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onAbandoned() {
        MultiWidgetSelectionDelegate multiWidgetSelectionDelegate = this.selectable;
        if (multiWidgetSelectionDelegate != null) {
            this.selectionRegistrar.unsubscribe(multiWidgetSelectionDelegate);
            this.selectable = null;
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onForgotten() {
        MultiWidgetSelectionDelegate multiWidgetSelectionDelegate = this.selectable;
        if (multiWidgetSelectionDelegate != null) {
            this.selectionRegistrar.unsubscribe(multiWidgetSelectionDelegate);
            this.selectable = null;
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onRemembered() {
        SelectionController$$ExternalSyntheticLambda0 selectionController$$ExternalSyntheticLambda0 = new SelectionController$$ExternalSyntheticLambda0(this, 0);
        SelectionController$$ExternalSyntheticLambda0 selectionController$$ExternalSyntheticLambda02 = new SelectionController$$ExternalSyntheticLambda0(this, 1);
        long j = this.selectableId;
        MultiWidgetSelectionDelegate multiWidgetSelectionDelegate = new MultiWidgetSelectionDelegate(j, selectionController$$ExternalSyntheticLambda0, selectionController$$ExternalSyntheticLambda02);
        SelectionRegistrarImpl selectionRegistrarImpl = this.selectionRegistrar;
        MutableLongObjectMap mutableLongObjectMap = selectionRegistrarImpl._selectableMap;
        if (j == 0) {
            InlineClassHelperKt.throwIllegalArgumentException("The selectable contains an invalid id: " + j);
        }
        if (mutableLongObjectMap.containsKey(j)) {
            InlineClassHelperKt.throwIllegalArgumentException("Another selectable with the id: " + multiWidgetSelectionDelegate + ".selectableId has already subscribed.");
        }
        mutableLongObjectMap.set(j, multiWidgetSelectionDelegate);
        selectionRegistrarImpl._selectables.add(multiWidgetSelectionDelegate);
        selectionRegistrarImpl.sorted = false;
        this.selectable = multiWidgetSelectionDelegate;
    }

    public final void updateTextLayout(TextLayoutResult textLayoutResult) {
        SelectionManager$$ExternalSyntheticLambda0 selectionManager$$ExternalSyntheticLambda0;
        TextLayoutResult textLayoutResult2 = this.params.textLayoutResult;
        if (textLayoutResult2 != null && !Intrinsics.areEqual(textLayoutResult2.layoutInput.text, textLayoutResult.layoutInput.text) && (selectionManager$$ExternalSyntheticLambda0 = this.selectionRegistrar.onSelectableChangeCallback) != null) {
            selectionManager$$ExternalSyntheticLambda0.invoke(Long.valueOf(this.selectableId));
        }
        this.params = StaticTextSelectionParams.copy$default(this.params, null, textLayoutResult, 1);
    }
}
