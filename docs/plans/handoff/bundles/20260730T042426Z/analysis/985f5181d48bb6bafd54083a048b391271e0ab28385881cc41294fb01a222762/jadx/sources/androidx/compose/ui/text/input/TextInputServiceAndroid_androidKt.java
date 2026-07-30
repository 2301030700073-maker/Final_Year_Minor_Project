package androidx.compose.ui.text.input;

import android.view.Choreographer;
import android.view.inputmethod.EditorInfo;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.emoji2.text.EmojiCompat;
import java.util.concurrent.Executor;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* compiled from: TextInputServiceAndroid.android.kt */
/* loaded from: classes.dex */
public abstract class TextInputServiceAndroid_androidKt {
    private static final boolean hasFlag(int i, int i2) {
        return (i & i2) == i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateWithEmojiCompat(EditorInfo editorInfo) {
        if (EmojiCompat.isConfigured()) {
            EmojiCompat.get();
            throw null;
        }
    }

    public static final void update(EditorInfo editorInfo, ImeOptions imeOptions, TextFieldValue textFieldValue) {
        int m2212getImeActioneUduSuo = imeOptions.m2212getImeActioneUduSuo();
        ImeAction.Companion companion = ImeAction.Companion;
        int i = 6;
        if (ImeAction.m2198equalsimpl0(m2212getImeActioneUduSuo, companion.m2202getDefaulteUduSuo())) {
            if (!imeOptions.getSingleLine()) {
                i = 0;
            }
        } else if (ImeAction.m2198equalsimpl0(m2212getImeActioneUduSuo, companion.m2206getNoneeUduSuo())) {
            i = 1;
        } else if (ImeAction.m2198equalsimpl0(m2212getImeActioneUduSuo, companion.m2204getGoeUduSuo())) {
            i = 2;
        } else if (ImeAction.m2198equalsimpl0(m2212getImeActioneUduSuo, companion.m2205getNexteUduSuo())) {
            i = 5;
        } else if (ImeAction.m2198equalsimpl0(m2212getImeActioneUduSuo, companion.m2207getPreviouseUduSuo())) {
            i = 7;
        } else if (ImeAction.m2198equalsimpl0(m2212getImeActioneUduSuo, companion.m2208getSearcheUduSuo())) {
            i = 3;
        } else if (ImeAction.m2198equalsimpl0(m2212getImeActioneUduSuo, companion.m2209getSendeUduSuo())) {
            i = 4;
        } else if (!ImeAction.m2198equalsimpl0(m2212getImeActioneUduSuo, companion.m2203getDoneeUduSuo())) {
            throw new IllegalStateException("invalid ImeAction");
        }
        editorInfo.imeOptions = i;
        imeOptions.getPlatformImeOptions();
        int m2213getKeyboardTypePjHm6EE = imeOptions.m2213getKeyboardTypePjHm6EE();
        KeyboardType.Companion companion2 = KeyboardType.Companion;
        if (KeyboardType.m2230equalsimpl0(m2213getKeyboardTypePjHm6EE, companion2.m2241getTextPjHm6EE())) {
            editorInfo.inputType = 1;
        } else if (KeyboardType.m2230equalsimpl0(m2213getKeyboardTypePjHm6EE, companion2.m2234getAsciiPjHm6EE())) {
            editorInfo.inputType = 1;
            editorInfo.imeOptions |= Integer.MIN_VALUE;
        } else if (KeyboardType.m2230equalsimpl0(m2213getKeyboardTypePjHm6EE, companion2.m2237getNumberPjHm6EE())) {
            editorInfo.inputType = 2;
        } else if (KeyboardType.m2230equalsimpl0(m2213getKeyboardTypePjHm6EE, companion2.m2240getPhonePjHm6EE())) {
            editorInfo.inputType = 3;
        } else if (KeyboardType.m2230equalsimpl0(m2213getKeyboardTypePjHm6EE, companion2.m2243getUriPjHm6EE())) {
            editorInfo.inputType = 17;
        } else if (KeyboardType.m2230equalsimpl0(m2213getKeyboardTypePjHm6EE, companion2.m2236getEmailPjHm6EE())) {
            editorInfo.inputType = 33;
        } else if (KeyboardType.m2230equalsimpl0(m2213getKeyboardTypePjHm6EE, companion2.m2239getPasswordPjHm6EE())) {
            editorInfo.inputType = 129;
        } else if (KeyboardType.m2230equalsimpl0(m2213getKeyboardTypePjHm6EE, companion2.m2238getNumberPasswordPjHm6EE())) {
            editorInfo.inputType = 18;
        } else if (KeyboardType.m2230equalsimpl0(m2213getKeyboardTypePjHm6EE, companion2.m2235getDecimalPjHm6EE())) {
            editorInfo.inputType = 8194;
        } else {
            throw new IllegalStateException("Invalid Keyboard Type");
        }
        if (!imeOptions.getSingleLine() && hasFlag(editorInfo.inputType, 1)) {
            editorInfo.inputType |= PKIFailureInfo.unsupportedVersion;
            if (ImeAction.m2198equalsimpl0(imeOptions.m2212getImeActioneUduSuo(), companion.m2202getDefaulteUduSuo())) {
                editorInfo.imeOptions |= 1073741824;
            }
        }
        if (hasFlag(editorInfo.inputType, 1)) {
            int m2211getCapitalizationIUNYP9k = imeOptions.m2211getCapitalizationIUNYP9k();
            KeyboardCapitalization.Companion companion3 = KeyboardCapitalization.Companion;
            if (KeyboardCapitalization.m2218equalsimpl0(m2211getCapitalizationIUNYP9k, companion3.m2222getCharactersIUNYP9k())) {
                editorInfo.inputType |= PKIFailureInfo.certConfirmed;
            } else if (KeyboardCapitalization.m2218equalsimpl0(m2211getCapitalizationIUNYP9k, companion3.m2226getWordsIUNYP9k())) {
                editorInfo.inputType |= 8192;
            } else if (KeyboardCapitalization.m2218equalsimpl0(m2211getCapitalizationIUNYP9k, companion3.m2224getSentencesIUNYP9k())) {
                editorInfo.inputType |= 16384;
            }
            if (imeOptions.getAutoCorrect()) {
                editorInfo.inputType |= 32768;
            }
        }
        editorInfo.initialSelStart = TextRange.m2125getStartimpl(textFieldValue.m2247getSelectiond9O1mEE());
        editorInfo.initialSelEnd = TextRange.m2120getEndimpl(textFieldValue.m2247getSelectiond9O1mEE());
        EditorInfoCompat.setInitialSurroundingText(editorInfo, textFieldValue.getText());
        editorInfo.imeOptions |= 33554432;
    }

    public static final Executor asExecutor(final Choreographer choreographer) {
        return new Executor() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid_androidKt$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                TextInputServiceAndroid_androidKt.asExecutor$lambda$2(choreographer, runnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void asExecutor$lambda$2(Choreographer choreographer, final Runnable runnable) {
        choreographer.postFrameCallback(new Choreographer.FrameCallback() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid_androidKt$$ExternalSyntheticLambda1
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                runnable.run();
            }
        });
    }
}
