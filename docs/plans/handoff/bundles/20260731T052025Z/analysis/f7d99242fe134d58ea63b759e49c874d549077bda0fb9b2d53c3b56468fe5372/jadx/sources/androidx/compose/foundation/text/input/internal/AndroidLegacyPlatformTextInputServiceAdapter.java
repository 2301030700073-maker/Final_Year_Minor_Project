package androidx.compose.foundation.text.input.internal;

import android.view.View;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda1;
import androidx.compose.foundation.text.handwriting.StylusHandwriting_androidKt;
import androidx.compose.material.ripple.RippleNode$onAttach$1;
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
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import com.fsck.k9.preferences.XmlSettingsParser$$ExternalSyntheticLambda7;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        SharedFlowImpl MutableSharedFlow$default = FlowKt.MutableSharedFlow$default(0, 2, BufferOverflow.DROP_LATEST);
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
            legacyTextInputMethodRequest.focusedRect = new android.graphics.Rect(MathKt.roundToInt(rect.left), MathKt.roundToInt(rect.top), MathKt.roundToInt(rect.right), MathKt.roundToInt(rect.bottom));
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

    public final void startInput(XmlSettingsParser$$ExternalSyntheticLambda7 xmlSettingsParser$$ExternalSyntheticLambda7) {
        LegacyAdaptingPlatformTextInputModifierNode legacyAdaptingPlatformTextInputModifierNode = this.textInputModifierNode;
        if (legacyAdaptingPlatformTextInputModifierNode == null) {
            return;
        }
        StandaloneCoroutine standaloneCoroutine = null;
        NavHostKt$NavHost$29$1 navHostKt$NavHost$29$1 = new NavHostKt$NavHost$29$1(xmlSettingsParser$$ExternalSyntheticLambda7, this, legacyAdaptingPlatformTextInputModifierNode, standaloneCoroutine, 8);
        if (legacyAdaptingPlatformTextInputModifierNode.isAttached) {
            standaloneCoroutine = JobKt.launch$default(legacyAdaptingPlatformTextInputModifierNode.getCoroutineScope(), null, CoroutineStart.UNDISPATCHED, new RippleNode$onAttach$1(legacyAdaptingPlatformTextInputModifierNode, navHostKt$NavHost$29$1, standaloneCoroutine, 24), 1);
        }
        this.job = standaloneCoroutine;
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
        if (!(this.textInputModifierNode == legacyAdaptingPlatformTextInputModifierNode)) {
            InlineClassHelperKt.throwIllegalStateException("Expected textInputModifierNode to be " + legacyAdaptingPlatformTextInputModifierNode + " but was " + this.textInputModifierNode);
        }
        this.textInputModifierNode = null;
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void updateState(TextFieldValue textFieldValue, TextFieldValue textFieldValue2) {
        LegacyTextInputMethodRequest legacyTextInputMethodRequest = this.currentRequest;
        if (legacyTextInputMethodRequest != null) {
            boolean z = (TextRange.m698equalsimpl0(legacyTextInputMethodRequest.state.selection, textFieldValue2.selection) && Intrinsics.areEqual(legacyTextInputMethodRequest.state.composition, textFieldValue2.composition)) ? false : true;
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
                    int m702getMinimpl = TextRange.m702getMinimpl(textFieldValue2.selection);
                    int m701getMaximpl = TextRange.m701getMaximpl(textFieldValue2.selection);
                    TextRange textRange = legacyTextInputMethodRequest.state.composition;
                    int m702getMinimpl2 = textRange != null ? TextRange.m702getMinimpl(textRange.packedValue) : -1;
                    TextRange textRange2 = legacyTextInputMethodRequest.state.composition;
                    anonymousClass1.getImm().updateSelection((View) anonymousClass1.mCardBackground, m702getMinimpl, m701getMaximpl, m702getMinimpl2, textRange2 != null ? TextRange.m701getMaximpl(textRange2.packedValue) : -1);
                    return;
                }
                return;
            }
            if (textFieldValue != null && (!Intrinsics.areEqual(textFieldValue.annotatedString.text, textFieldValue2.annotatedString.text) || (TextRange.m698equalsimpl0(textFieldValue.selection, textFieldValue2.selection) && !Intrinsics.areEqual(textFieldValue.composition, textFieldValue2.composition)))) {
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
                            anonymousClass13.getImm().updateExtractedText((View) anonymousClass13.mCardBackground, recordingInputConnection2.currentExtractedTextRequestToken, HandwritingGesture_androidKt.access$toExtractedText(textFieldValue3));
                        }
                        TextRange textRange3 = textFieldValue3.composition;
                        long j = textFieldValue3.selection;
                        int m702getMinimpl3 = textRange3 != null ? TextRange.m702getMinimpl(textRange3.packedValue) : -1;
                        TextRange textRange4 = textFieldValue3.composition;
                        anonymousClass13.getImm().updateSelection((View) anonymousClass13.mCardBackground, TextRange.m702getMinimpl(j), TextRange.m701getMaximpl(j), m702getMinimpl3, textRange4 != null ? TextRange.m701getMaximpl(textRange4.packedValue) : -1);
                    }
                }
            }
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void updateTextLayoutResult(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, ProduceKt$awaitClose$4$1 produceKt$awaitClose$4$1, Rect rect, Rect rect2) {
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
    public final void startInput(TextFieldValue textFieldValue, ImeOptions imeOptions, SimpleActor$$ExternalSyntheticLambda0 simpleActor$$ExternalSyntheticLambda0, CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda1) {
        startInput(new XmlSettingsParser$$ExternalSyntheticLambda7(textFieldValue, this, imeOptions, simpleActor$$ExternalSyntheticLambda0, coreTextFieldKt$$ExternalSyntheticLambda1, 4));
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void startInput() {
        startInput(null);
    }
}
