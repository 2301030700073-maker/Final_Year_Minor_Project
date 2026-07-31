package androidx.compose.ui.text.input;

import android.graphics.Rect;
import android.view.Choreographer;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.camera.camera2.impl.UseCaseThreads$$ExternalSyntheticLambda0;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.room.util.RelationUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextInputServiceAndroid implements PlatformTextInputService {
    public final Lazy baseInputConnection$delegate;
    public final CursorAnchorInfoController cursorAnchorInfoController;
    public boolean editorHasFocus;
    public Rect focusedRect;
    public Preview$$ExternalSyntheticLambda0 frameCallback;
    public final ArrayList ics;
    public ImeOptions imeOptions;
    public final UseCaseThreads$$ExternalSyntheticLambda0 inputCommandProcessorExecutor;
    public final MenuHostHelper inputMethodManager;
    public Function1 onEditCommand;
    public Function1 onImeActionPerformed;
    public TextFieldValue state;
    public final MutableVector textInputCommandQueue;
    public final View view;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TextInputCommand {
        public static final /* synthetic */ TextInputCommand[] $VALUES;
        public static final TextInputCommand HideKeyboard;
        public static final TextInputCommand ShowKeyboard;
        public static final TextInputCommand StartInput;
        public static final TextInputCommand StopInput;

        static {
            TextInputCommand textInputCommand = new TextInputCommand("StartInput", 0);
            StartInput = textInputCommand;
            TextInputCommand textInputCommand2 = new TextInputCommand("StopInput", 1);
            StopInput = textInputCommand2;
            TextInputCommand textInputCommand3 = new TextInputCommand("ShowKeyboard", 2);
            ShowKeyboard = textInputCommand3;
            TextInputCommand textInputCommand4 = new TextInputCommand("HideKeyboard", 3);
            HideKeyboard = textInputCommand4;
            $VALUES = new TextInputCommand[]{textInputCommand, textInputCommand2, textInputCommand3, textInputCommand4};
        }

        public static TextInputCommand valueOf(String str) {
            return (TextInputCommand) Enum.valueOf(TextInputCommand.class, str);
        }

        public static TextInputCommand[] values() {
            return (TextInputCommand[]) $VALUES.clone();
        }
    }

    public TextInputServiceAndroid(View view, AndroidComposeView androidComposeView) {
        MenuHostHelper menuHostHelper = new MenuHostHelper(view);
        UseCaseThreads$$ExternalSyntheticLambda0 useCaseThreads$$ExternalSyntheticLambda0 = new UseCaseThreads$$ExternalSyntheticLambda0(1, Choreographer.getInstance());
        this.view = view;
        this.inputMethodManager = menuHostHelper;
        this.inputCommandProcessorExecutor = useCaseThreads$$ExternalSyntheticLambda0;
        this.onEditCommand = TextInputServiceAndroid$stopInput$1.INSTANCE$3;
        this.onImeActionPerformed = TextInputServiceAndroid$stopInput$1.INSTANCE$4;
        this.state = new TextFieldValue(4, TextRange.Zero, "");
        this.imeOptions = ImeOptions.Default;
        this.ics = new ArrayList();
        this.baseInputConnection$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new LayoutNode$_foldedChildren$1(15, this));
        this.cursorAnchorInfoController = new CursorAnchorInfoController(androidComposeView, menuHostHelper);
        this.textInputCommandQueue = new MutableVector(new TextInputCommand[16]);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void hideSoftwareKeyboard() {
        sendInputCommand(TextInputCommand.HideKeyboard);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void notifyFocusedRect(androidx.compose.ui.geometry.Rect rect) {
        Rect rect2;
        this.focusedRect = new Rect(MathKt.roundToInt(rect.left), MathKt.roundToInt(rect.top), MathKt.roundToInt(rect.right), MathKt.roundToInt(rect.bottom));
        if (!this.ics.isEmpty() || (rect2 = this.focusedRect) == null) {
            return;
        }
        this.view.requestRectangleOnScreen(new Rect(rect2));
    }

    public final void sendInputCommand(TextInputCommand textInputCommand) {
        this.textInputCommandQueue.add(textInputCommand);
        if (this.frameCallback == null) {
            Preview$$ExternalSyntheticLambda0 preview$$ExternalSyntheticLambda0 = new Preview$$ExternalSyntheticLambda0(24, this);
            this.inputCommandProcessorExecutor.execute(preview$$ExternalSyntheticLambda0);
            this.frameCallback = preview$$ExternalSyntheticLambda0;
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void showSoftwareKeyboard() {
        sendInputCommand(TextInputCommand.ShowKeyboard);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void startInput(TextFieldValue textFieldValue, ImeOptions imeOptions, SimpleActor$$ExternalSyntheticLambda0 simpleActor$$ExternalSyntheticLambda0, CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda1) {
        this.editorHasFocus = true;
        this.state = textFieldValue;
        this.imeOptions = imeOptions;
        this.onEditCommand = simpleActor$$ExternalSyntheticLambda0;
        this.onImeActionPerformed = coreTextFieldKt$$ExternalSyntheticLambda1;
        sendInputCommand(TextInputCommand.StartInput);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void stopInput() {
        this.editorHasFocus = false;
        this.onEditCommand = TextInputServiceAndroid$stopInput$1.INSTANCE;
        this.onImeActionPerformed = TextInputServiceAndroid$stopInput$1.INSTANCE$5;
        this.focusedRect = null;
        sendInputCommand(TextInputCommand.StopInput);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void updateState(TextFieldValue textFieldValue, TextFieldValue textFieldValue2) {
        boolean z = (TextRange.m698equalsimpl0(this.state.selection, textFieldValue2.selection) && Intrinsics.areEqual(this.state.composition, textFieldValue2.composition)) ? false : true;
        this.state = textFieldValue2;
        int size = this.ics.size();
        for (int i = 0; i < size; i++) {
            RecordingInputConnection recordingInputConnection = (RecordingInputConnection) ((WeakReference) this.ics.get(i)).get();
            if (recordingInputConnection != null) {
                recordingInputConnection.mTextFieldValue = textFieldValue2;
            }
        }
        CursorAnchorInfoController cursorAnchorInfoController = this.cursorAnchorInfoController;
        synchronized (cursorAnchorInfoController.lock) {
            cursorAnchorInfoController.textFieldValue = null;
            cursorAnchorInfoController.offsetMapping = null;
            cursorAnchorInfoController.textLayoutResult = null;
            cursorAnchorInfoController.textFieldToRootTransform = TextInputServiceAndroid$stopInput$1.INSTANCE$1;
            cursorAnchorInfoController.innerTextFieldBounds = null;
            cursorAnchorInfoController.decorationBoxBounds = null;
        }
        if (Intrinsics.areEqual(textFieldValue, textFieldValue2)) {
            if (z) {
                MenuHostHelper menuHostHelper = this.inputMethodManager;
                int m702getMinimpl = TextRange.m702getMinimpl(textFieldValue2.selection);
                int m701getMaximpl = TextRange.m701getMaximpl(textFieldValue2.selection);
                TextRange textRange = this.state.composition;
                int m702getMinimpl2 = textRange != null ? TextRange.m702getMinimpl(textRange.packedValue) : -1;
                TextRange textRange2 = this.state.composition;
                ((InputMethodManager) ((Lazy) menuHostHelper.mMenuProviders).getValue()).updateSelection((View) menuHostHelper.mOnInvalidateMenuCallback, m702getMinimpl, m701getMaximpl, m702getMinimpl2, textRange2 != null ? TextRange.m701getMaximpl(textRange2.packedValue) : -1);
                return;
            }
            return;
        }
        if (textFieldValue != null && (!Intrinsics.areEqual(textFieldValue.annotatedString.text, textFieldValue2.annotatedString.text) || (TextRange.m698equalsimpl0(textFieldValue.selection, textFieldValue2.selection) && !Intrinsics.areEqual(textFieldValue.composition, textFieldValue2.composition)))) {
            MenuHostHelper menuHostHelper2 = this.inputMethodManager;
            ((InputMethodManager) ((Lazy) menuHostHelper2.mMenuProviders).getValue()).restartInput((View) menuHostHelper2.mOnInvalidateMenuCallback);
            return;
        }
        int size2 = this.ics.size();
        for (int i2 = 0; i2 < size2; i2++) {
            RecordingInputConnection recordingInputConnection2 = (RecordingInputConnection) ((WeakReference) this.ics.get(i2)).get();
            if (recordingInputConnection2 != null) {
                TextFieldValue textFieldValue3 = this.state;
                MenuHostHelper menuHostHelper3 = this.inputMethodManager;
                if (recordingInputConnection2.isActive) {
                    recordingInputConnection2.mTextFieldValue = textFieldValue3;
                    if (recordingInputConnection2.extractedTextMonitorMode) {
                        ((InputMethodManager) ((Lazy) menuHostHelper3.mMenuProviders).getValue()).updateExtractedText((View) menuHostHelper3.mOnInvalidateMenuCallback, recordingInputConnection2.currentExtractedTextRequestToken, RelationUtil.toExtractedText(textFieldValue3));
                    }
                    TextRange textRange3 = textFieldValue3.composition;
                    long j = textFieldValue3.selection;
                    int m702getMinimpl3 = textRange3 != null ? TextRange.m702getMinimpl(textRange3.packedValue) : -1;
                    TextRange textRange4 = textFieldValue3.composition;
                    ((InputMethodManager) ((Lazy) menuHostHelper3.mMenuProviders).getValue()).updateSelection((View) menuHostHelper3.mOnInvalidateMenuCallback, TextRange.m702getMinimpl(j), TextRange.m701getMaximpl(j), m702getMinimpl3, textRange4 != null ? TextRange.m701getMaximpl(textRange4.packedValue) : -1);
                }
            }
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void updateTextLayoutResult(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, ProduceKt$awaitClose$4$1 produceKt$awaitClose$4$1, androidx.compose.ui.geometry.Rect rect, androidx.compose.ui.geometry.Rect rect2) {
        CursorAnchorInfoController cursorAnchorInfoController = this.cursorAnchorInfoController;
        synchronized (cursorAnchorInfoController.lock) {
            try {
                cursorAnchorInfoController.textFieldValue = textFieldValue;
                cursorAnchorInfoController.offsetMapping = offsetMapping;
                cursorAnchorInfoController.textLayoutResult = textLayoutResult;
                cursorAnchorInfoController.textFieldToRootTransform = produceKt$awaitClose$4$1;
                cursorAnchorInfoController.innerTextFieldBounds = rect;
                cursorAnchorInfoController.decorationBoxBounds = rect2;
                if (!cursorAnchorInfoController.hasPendingImmediateRequest) {
                    if (cursorAnchorInfoController.monitorEnabled) {
                    }
                }
                cursorAnchorInfoController.updateCursorAnchorInfo();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void startInput() {
        sendInputCommand(TextInputCommand.StartInput);
    }
}
