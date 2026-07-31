package androidx.compose.ui.text.input;

import android.graphics.Rect;
import android.view.Choreographer;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.network.okhttp.internal.CallsKt$await$2$1;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVG;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.UnsignedKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextInputServiceAndroid implements PlatformTextInputService {
    public final Lazy baseInputConnection$delegate;
    public final CursorAnchorInfoController cursorAnchorInfoController;
    public boolean editorHasFocus;
    public Rect focusedRect;
    public Task$$ExternalSyntheticLambda0 frameCallback;
    public final ArrayList ics;
    public ImeOptions imeOptions;
    public final TextInputServiceAndroid_androidKt$$ExternalSyntheticLambda0 inputCommandProcessorExecutor;
    public final SVG inputMethodManager;
    public Function1 onEditCommand;
    public Function1 onImeActionPerformed;
    public TextFieldValue state;
    public final MutableVector textInputCommandQueue;
    public final View view;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TextInputCommand {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ TextInputCommand[] $VALUES;
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
            TextInputCommand[] textInputCommandArr = {textInputCommand, textInputCommand2, textInputCommand3, textInputCommand4};
            $VALUES = textInputCommandArr;
            $ENTRIES = new EnumEntriesList(textInputCommandArr);
        }

        public static TextInputCommand valueOf(String str) {
            return (TextInputCommand) Enum.valueOf(TextInputCommand.class, str);
        }

        public static TextInputCommand[] values() {
            return (TextInputCommand[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TextInputCommand.values().length];
            try {
                iArr[TextInputCommand.StartInput.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TextInputCommand.StopInput.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TextInputCommand.ShowKeyboard.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TextInputCommand.HideKeyboard.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public TextInputServiceAndroid(View view, AndroidComposeView androidComposeView) {
        SVG svg = new SVG(view);
        TextInputServiceAndroid_androidKt$$ExternalSyntheticLambda0 textInputServiceAndroid_androidKt$$ExternalSyntheticLambda0 = new TextInputServiceAndroid_androidKt$$ExternalSyntheticLambda0(Choreographer.getInstance());
        this.view = view;
        this.inputMethodManager = svg;
        this.inputCommandProcessorExecutor = textInputServiceAndroid_androidKt$$ExternalSyntheticLambda0;
        this.onEditCommand = TextInputServiceAndroid$stopInput$1.INSTANCE$3;
        this.onImeActionPerformed = TextInputServiceAndroid$stopInput$1.INSTANCE$4;
        this.state = new TextFieldValue(4, TextRange.Zero, "");
        this.imeOptions = ImeOptions.Default;
        this.ics = new ArrayList();
        this.baseInputConnection$delegate = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new LayoutNode$_foldedChildren$1(14, this));
        this.cursorAnchorInfoController = new CursorAnchorInfoController(androidComposeView, svg);
        this.textInputCommandQueue = new MutableVector(new TextInputCommand[16]);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void hideSoftwareKeyboard() {
        sendInputCommand(TextInputCommand.HideKeyboard);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void notifyFocusedRect(androidx.compose.ui.geometry.Rect rect) {
        Rect rect2;
        this.focusedRect = new Rect(UnsignedKt.roundToInt(rect.left), UnsignedKt.roundToInt(rect.top), UnsignedKt.roundToInt(rect.right), UnsignedKt.roundToInt(rect.bottom));
        if (!this.ics.isEmpty() || (rect2 = this.focusedRect) == null) {
            return;
        }
        this.view.requestRectangleOnScreen(new Rect(rect2));
    }

    public final void sendInputCommand(TextInputCommand textInputCommand) {
        this.textInputCommandQueue.add(textInputCommand);
        if (this.frameCallback == null) {
            Task$$ExternalSyntheticLambda0 task$$ExternalSyntheticLambda0 = new Task$$ExternalSyntheticLambda0(8, this);
            this.inputCommandProcessorExecutor.execute(task$$ExternalSyntheticLambda0);
            this.frameCallback = task$$ExternalSyntheticLambda0;
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void showSoftwareKeyboard() {
        sendInputCommand(TextInputCommand.ShowKeyboard);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void startInput(TextFieldValue textFieldValue, ImeOptions imeOptions, UtilsKt$$ExternalSyntheticLambda1 utilsKt$$ExternalSyntheticLambda1, CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda1) {
        this.editorHasFocus = true;
        this.state = textFieldValue;
        this.imeOptions = imeOptions;
        this.onEditCommand = utilsKt$$ExternalSyntheticLambda1;
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
        boolean z = (TextRange.m640equalsimpl0(this.state.selection, textFieldValue2.selection) && Intrinsics.areEqual(this.state.composition, textFieldValue2.composition)) ? false : true;
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
                SVG svg = this.inputMethodManager;
                int m644getMinimpl = TextRange.m644getMinimpl(textFieldValue2.selection);
                int m643getMaximpl = TextRange.m643getMaximpl(textFieldValue2.selection);
                TextRange textRange = this.state.composition;
                int m644getMinimpl2 = textRange != null ? TextRange.m644getMinimpl(textRange.packedValue) : -1;
                TextRange textRange2 = this.state.composition;
                ((InputMethodManager) ((Lazy) svg.cssRules).getValue()).updateSelection((View) svg.rootElement, m644getMinimpl, m643getMaximpl, m644getMinimpl2, textRange2 != null ? TextRange.m643getMaximpl(textRange2.packedValue) : -1);
                return;
            }
            return;
        }
        if (textFieldValue != null && (!Intrinsics.areEqual(textFieldValue.annotatedString.text, textFieldValue2.annotatedString.text) || (TextRange.m640equalsimpl0(textFieldValue.selection, textFieldValue2.selection) && !Intrinsics.areEqual(textFieldValue.composition, textFieldValue2.composition)))) {
            SVG svg2 = this.inputMethodManager;
            ((InputMethodManager) ((Lazy) svg2.cssRules).getValue()).restartInput((View) svg2.rootElement);
            return;
        }
        int size2 = this.ics.size();
        for (int i2 = 0; i2 < size2; i2++) {
            RecordingInputConnection recordingInputConnection2 = (RecordingInputConnection) ((WeakReference) this.ics.get(i2)).get();
            if (recordingInputConnection2 != null) {
                TextFieldValue textFieldValue3 = this.state;
                SVG svg3 = this.inputMethodManager;
                if (recordingInputConnection2.isActive) {
                    recordingInputConnection2.mTextFieldValue = textFieldValue3;
                    if (recordingInputConnection2.extractedTextMonitorMode) {
                        ((InputMethodManager) ((Lazy) svg3.cssRules).getValue()).updateExtractedText((View) svg3.rootElement, recordingInputConnection2.currentExtractedTextRequestToken, ContextsKt.toExtractedText(textFieldValue3));
                    }
                    TextRange textRange3 = textFieldValue3.composition;
                    long j = textFieldValue3.selection;
                    int m644getMinimpl3 = textRange3 != null ? TextRange.m644getMinimpl(textRange3.packedValue) : -1;
                    TextRange textRange4 = textFieldValue3.composition;
                    ((InputMethodManager) ((Lazy) svg3.cssRules).getValue()).updateSelection((View) svg3.rootElement, TextRange.m644getMinimpl(j), TextRange.m643getMaximpl(j), m644getMinimpl3, textRange4 != null ? TextRange.m643getMaximpl(textRange4.packedValue) : -1);
                }
            }
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void updateTextLayoutResult(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, CallsKt$await$2$1 callsKt$await$2$1, androidx.compose.ui.geometry.Rect rect, androidx.compose.ui.geometry.Rect rect2) {
        CursorAnchorInfoController cursorAnchorInfoController = this.cursorAnchorInfoController;
        synchronized (cursorAnchorInfoController.lock) {
            try {
                cursorAnchorInfoController.textFieldValue = textFieldValue;
                cursorAnchorInfoController.offsetMapping = offsetMapping;
                cursorAnchorInfoController.textLayoutResult = textLayoutResult;
                cursorAnchorInfoController.textFieldToRootTransform = callsKt$await$2$1;
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
