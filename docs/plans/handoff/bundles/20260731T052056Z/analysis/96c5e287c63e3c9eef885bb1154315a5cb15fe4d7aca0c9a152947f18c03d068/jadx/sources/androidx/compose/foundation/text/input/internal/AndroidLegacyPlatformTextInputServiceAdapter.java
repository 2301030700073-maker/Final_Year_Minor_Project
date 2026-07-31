package androidx.compose.foundation.text.input.internal;

import android.view.View;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda1;
import androidx.compose.foundation.text.handwriting.StylusHandwriting_androidKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.DelegatingSoftwareKeyboardController;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.PlatformTextInputService;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.datastore.core.SimpleActor$offer$2;
import androidx.paging.FlowExtKt$simpleScan$1;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.network.okhttp.internal.CallsKt$await$2$1;
import java.lang.ref.WeakReference;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda23;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidLegacyPlatformTextInputServiceAdapter implements PlatformTextInputService {
    public SharedFlowImpl backingStylusHandwritingTrigger;
    public LegacyTextInputMethodRequest currentRequest;
    public StandaloneCoroutine job;
    public LegacyAdaptingPlatformTextInputModifierNode textInputModifierNode;

    public final MutableSharedFlow getStylusHandwritingTrigger() {
        SharedFlowImpl sharedFlowImpl = this.backingStylusHandwritingTrigger;
        if (sharedFlowImpl != null) {
            return sharedFlowImpl;
        }
        if (!StylusHandwriting_androidKt.isStylusHandwritingSupported) {
            return null;
        }
        SharedFlowImpl MutableSharedFlow$default = StateFlowKt.MutableSharedFlow$default(0, 2, BufferOverflow.DROP_LATEST);
        this.backingStylusHandwritingTrigger = MutableSharedFlow$default;
        return MutableSharedFlow$default;
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void hideSoftwareKeyboard() {
        SoftwareKeyboardController softwareKeyboardController;
        LegacyAdaptingPlatformTextInputModifierNode legacyAdaptingPlatformTextInputModifierNode = this.textInputModifierNode;
        if (legacyAdaptingPlatformTextInputModifierNode == null || (softwareKeyboardController = (SoftwareKeyboardController) HitTestResultKt.currentValueOf(legacyAdaptingPlatformTextInputModifierNode, CompositionLocalsKt.LocalSoftwareKeyboardController)) == null) {
            return;
        }
        ((DelegatingSoftwareKeyboardController) softwareKeyboardController).hide();
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void notifyFocusedRect(Rect rect) {
        android.graphics.Rect rect2;
        LegacyTextInputMethodRequest legacyTextInputMethodRequest = this.currentRequest;
        if (legacyTextInputMethodRequest != null) {
            legacyTextInputMethodRequest.focusedRect = new android.graphics.Rect(UnsignedKt.roundToInt(rect.left), UnsignedKt.roundToInt(rect.top), UnsignedKt.roundToInt(rect.right), UnsignedKt.roundToInt(rect.bottom));
            if (!legacyTextInputMethodRequest.ics.isEmpty() || (rect2 = legacyTextInputMethodRequest.focusedRect) == null) {
                return;
            }
            legacyTextInputMethodRequest.view.requestRectangleOnScreen(new android.graphics.Rect(rect2));
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void showSoftwareKeyboard() {
        SoftwareKeyboardController softwareKeyboardController;
        LegacyAdaptingPlatformTextInputModifierNode legacyAdaptingPlatformTextInputModifierNode = this.textInputModifierNode;
        if (legacyAdaptingPlatformTextInputModifierNode == null || (softwareKeyboardController = (SoftwareKeyboardController) HitTestResultKt.currentValueOf(legacyAdaptingPlatformTextInputModifierNode, CompositionLocalsKt.LocalSoftwareKeyboardController)) == null) {
            return;
        }
        ((DelegatingSoftwareKeyboardController) softwareKeyboardController).show();
    }

    public final void startInput(GamesHubScreenKt$$ExternalSyntheticLambda23 gamesHubScreenKt$$ExternalSyntheticLambda23) {
        LegacyAdaptingPlatformTextInputModifierNode legacyAdaptingPlatformTextInputModifierNode = this.textInputModifierNode;
        if (legacyAdaptingPlatformTextInputModifierNode == null) {
            return;
        }
        this.job = legacyAdaptingPlatformTextInputModifierNode.isAttached ? AwaitKt.launch$default(legacyAdaptingPlatformTextInputModifierNode.getCoroutineScope(), null, CoroutineStart.UNDISPATCHED, new SimpleActor$offer$2(legacyAdaptingPlatformTextInputModifierNode, new FlowExtKt$simpleScan$1(gamesHubScreenKt$$ExternalSyntheticLambda23, this, legacyAdaptingPlatformTextInputModifierNode, r4, 4), r4, 15), 1) : null;
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void stopInput() {
        StandaloneCoroutine standaloneCoroutine = this.job;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        this.job = null;
        MutableSharedFlow stylusHandwritingTrigger = getStylusHandwritingTrigger();
        if (stylusHandwritingTrigger != null) {
            ((SharedFlowImpl) stylusHandwritingTrigger).resetReplayCache();
        }
    }

    public final void unregisterModifier(LegacyAdaptingPlatformTextInputModifierNode legacyAdaptingPlatformTextInputModifierNode) {
        if (this.textInputModifierNode != legacyAdaptingPlatformTextInputModifierNode) {
            InlineClassHelperKt.throwIllegalStateException("Expected textInputModifierNode to be " + legacyAdaptingPlatformTextInputModifierNode + " but was " + this.textInputModifierNode);
        }
        this.textInputModifierNode = null;
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void updateState(TextFieldValue textFieldValue, TextFieldValue textFieldValue2) {
        LegacyTextInputMethodRequest legacyTextInputMethodRequest = this.currentRequest;
        if (legacyTextInputMethodRequest != null) {
            boolean z = (TextRange.m640equalsimpl0(legacyTextInputMethodRequest.state.selection, textFieldValue2.selection) && Intrinsics.areEqual(legacyTextInputMethodRequest.state.composition, textFieldValue2.composition)) ? false : true;
            legacyTextInputMethodRequest.state = textFieldValue2;
            int size = legacyTextInputMethodRequest.ics.size();
            for (int i = 0; i < size; i++) {
                RecordingInputConnection recordingInputConnection = (RecordingInputConnection) ((WeakReference) legacyTextInputMethodRequest.ics.get(i)).get();
                if (recordingInputConnection != null) {
                    recordingInputConnection.textFieldValue = textFieldValue2;
                }
            }
            LegacyCursorAnchorInfoController legacyCursorAnchorInfoController = legacyTextInputMethodRequest.cursorAnchorInfoController;
            synchronized (legacyCursorAnchorInfoController.lock) {
                legacyCursorAnchorInfoController.textFieldValue = null;
                legacyCursorAnchorInfoController.offsetMapping = null;
                legacyCursorAnchorInfoController.textLayoutResult = null;
                legacyCursorAnchorInfoController.innerTextFieldBounds = null;
                legacyCursorAnchorInfoController.decorationBoxBounds = null;
            }
            if (Intrinsics.areEqual(textFieldValue, textFieldValue2)) {
                if (z) {
                    CardView.AnonymousClass1 anonymousClass1 = legacyTextInputMethodRequest.inputMethodManager;
                    int m644getMinimpl = TextRange.m644getMinimpl(textFieldValue2.selection);
                    int m643getMaximpl = TextRange.m643getMaximpl(textFieldValue2.selection);
                    TextRange textRange = legacyTextInputMethodRequest.state.composition;
                    int m644getMinimpl2 = textRange != null ? TextRange.m644getMinimpl(textRange.packedValue) : -1;
                    TextRange textRange2 = legacyTextInputMethodRequest.state.composition;
                    anonymousClass1.getImm().updateSelection((View) anonymousClass1.mCardBackground, m644getMinimpl, m643getMaximpl, m644getMinimpl2, textRange2 != null ? TextRange.m643getMaximpl(textRange2.packedValue) : -1);
                    return;
                }
                return;
            }
            if (textFieldValue != null && (!Intrinsics.areEqual(textFieldValue.annotatedString.text, textFieldValue2.annotatedString.text) || (TextRange.m640equalsimpl0(textFieldValue.selection, textFieldValue2.selection) && !Intrinsics.areEqual(textFieldValue.composition, textFieldValue2.composition)))) {
                CardView.AnonymousClass1 anonymousClass12 = legacyTextInputMethodRequest.inputMethodManager;
                anonymousClass12.getImm().restartInput((View) anonymousClass12.mCardBackground);
                return;
            }
            int size2 = legacyTextInputMethodRequest.ics.size();
            for (int i2 = 0; i2 < size2; i2++) {
                RecordingInputConnection recordingInputConnection2 = (RecordingInputConnection) ((WeakReference) legacyTextInputMethodRequest.ics.get(i2)).get();
                if (recordingInputConnection2 != null) {
                    TextFieldValue textFieldValue3 = legacyTextInputMethodRequest.state;
                    CardView.AnonymousClass1 anonymousClass13 = legacyTextInputMethodRequest.inputMethodManager;
                    if (recordingInputConnection2.isActive) {
                        recordingInputConnection2.textFieldValue = textFieldValue3;
                        if (recordingInputConnection2.extractedTextMonitorMode) {
                            anonymousClass13.getImm().updateExtractedText((View) anonymousClass13.mCardBackground, recordingInputConnection2.currentExtractedTextRequestToken, HandwritingGesture_androidKt.toExtractedText(textFieldValue3));
                        }
                        TextRange textRange3 = textFieldValue3.composition;
                        long j = textFieldValue3.selection;
                        int m644getMinimpl3 = textRange3 != null ? TextRange.m644getMinimpl(textRange3.packedValue) : -1;
                        TextRange textRange4 = textFieldValue3.composition;
                        anonymousClass13.getImm().updateSelection((View) anonymousClass13.mCardBackground, TextRange.m644getMinimpl(j), TextRange.m643getMaximpl(j), m644getMinimpl3, textRange4 != null ? TextRange.m643getMaximpl(textRange4.packedValue) : -1);
                    }
                }
            }
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void updateTextLayoutResult(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, CallsKt$await$2$1 callsKt$await$2$1, Rect rect, Rect rect2) {
        LegacyTextInputMethodRequest legacyTextInputMethodRequest = this.currentRequest;
        if (legacyTextInputMethodRequest != null) {
            LegacyCursorAnchorInfoController legacyCursorAnchorInfoController = legacyTextInputMethodRequest.cursorAnchorInfoController;
            synchronized (legacyCursorAnchorInfoController.lock) {
                try {
                    legacyCursorAnchorInfoController.textFieldValue = textFieldValue;
                    legacyCursorAnchorInfoController.offsetMapping = offsetMapping;
                    legacyCursorAnchorInfoController.textLayoutResult = textLayoutResult;
                    legacyCursorAnchorInfoController.innerTextFieldBounds = rect;
                    legacyCursorAnchorInfoController.decorationBoxBounds = rect2;
                    if (!legacyCursorAnchorInfoController.hasPendingImmediateRequest) {
                        if (legacyCursorAnchorInfoController.monitorEnabled) {
                        }
                    }
                    legacyCursorAnchorInfoController.updateCursorAnchorInfo();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void startInput(TextFieldValue textFieldValue, ImeOptions imeOptions, UtilsKt$$ExternalSyntheticLambda1 utilsKt$$ExternalSyntheticLambda1, CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda1) {
        startInput(new GamesHubScreenKt$$ExternalSyntheticLambda23(textFieldValue, this, imeOptions, utilsKt$$ExternalSyntheticLambda1, coreTextFieldKt$$ExternalSyntheticLambda1));
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void startInput() {
        startInput(null);
    }
}
