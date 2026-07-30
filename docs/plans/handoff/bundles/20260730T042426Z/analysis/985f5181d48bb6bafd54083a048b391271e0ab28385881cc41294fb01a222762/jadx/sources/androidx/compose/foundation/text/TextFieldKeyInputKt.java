package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextPreparedSelectionState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;

/* compiled from: TextFieldKeyInput.kt */
/* loaded from: classes.dex */
public abstract class TextFieldKeyInputKt {
    /* renamed from: textFieldKeyInput-2WJ9YEU, reason: not valid java name */
    public static final Modifier m455textFieldKeyInput2WJ9YEU(Modifier modifier, final LegacyTextFieldState legacyTextFieldState, final TextFieldSelectionManager textFieldSelectionManager, final TextFieldValue textFieldValue, final Function1 function1, final boolean z, final boolean z2, final OffsetMapping offsetMapping, final UndoManager undoManager, final int i) {
        return ComposedModifierKt.composed$default(modifier, null, new Function3() { // from class: androidx.compose.foundation.text.TextFieldKeyInputKt$textFieldKeyInput$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                return invoke((Modifier) obj, (Composer) obj2, ((Number) obj3).intValue());
            }

            public final Modifier invoke(Modifier modifier2, Composer composer, int i2) {
                composer.startReplaceGroup(851809892);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(851809892, i2, -1, "androidx.compose.foundation.text.textFieldKeyInput.<anonymous> (TextFieldKeyInput.kt:245)");
                }
                Object rememberedValue = composer.rememberedValue();
                Composer.Companion companion = Composer.Companion;
                if (rememberedValue == companion.getEmpty()) {
                    rememberedValue = new TextPreparedSelectionState();
                    composer.updateRememberedValue(rememberedValue);
                }
                TextPreparedSelectionState textPreparedSelectionState = (TextPreparedSelectionState) rememberedValue;
                Object rememberedValue2 = composer.rememberedValue();
                if (rememberedValue2 == companion.getEmpty()) {
                    rememberedValue2 = new DeadKeyCombiner();
                    composer.updateRememberedValue(rememberedValue2);
                }
                TextFieldKeyInput textFieldKeyInput = new TextFieldKeyInput(LegacyTextFieldState.this, textFieldSelectionManager, textFieldValue, z, z2, textPreparedSelectionState, offsetMapping, undoManager, (DeadKeyCombiner) rememberedValue2, null, function1, i, 512, null);
                Modifier.Companion companion2 = Modifier.Companion;
                boolean changedInstance = composer.changedInstance(textFieldKeyInput);
                Object rememberedValue3 = composer.rememberedValue();
                if (changedInstance || rememberedValue3 == companion.getEmpty()) {
                    rememberedValue3 = new TextFieldKeyInputKt$textFieldKeyInput$2$1$1(textFieldKeyInput);
                    composer.updateRememberedValue(rememberedValue3);
                }
                Modifier onKeyEvent = KeyInputModifierKt.onKeyEvent(companion2, (Function1) ((KFunction) rememberedValue3));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceGroup();
                return onKeyEvent;
            }
        }, 1, null);
    }
}
