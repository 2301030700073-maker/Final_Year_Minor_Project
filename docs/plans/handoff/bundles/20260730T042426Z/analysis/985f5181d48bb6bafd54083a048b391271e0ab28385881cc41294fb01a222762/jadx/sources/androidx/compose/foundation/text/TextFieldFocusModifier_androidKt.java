package androidx.compose.foundation.text;

import android.view.InputDevice;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import kotlin.jvm.functions.Function1;

/* compiled from: TextFieldFocusModifier.android.kt */
/* loaded from: classes.dex */
public abstract class TextFieldFocusModifier_androidKt {
    public static final Modifier interceptDPadAndMoveFocus(Modifier modifier, final LegacyTextFieldState legacyTextFieldState, final FocusManager focusManager) {
        return KeyInputModifierKt.onPreviewKeyEvent(modifier, new Function1() { // from class: androidx.compose.foundation.text.TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return m452invokeZmokQxo(((KeyEvent) obj).m1628unboximpl());
            }

            /* renamed from: invoke-ZmokQxo, reason: not valid java name */
            public final Boolean m452invokeZmokQxo(android.view.KeyEvent keyEvent) {
                boolean m451isKeyCodeYhN2O0w;
                boolean m451isKeyCodeYhN2O0w2;
                boolean m451isKeyCodeYhN2O0w3;
                boolean m451isKeyCodeYhN2O0w4;
                boolean m451isKeyCodeYhN2O0w5;
                InputDevice device = keyEvent.getDevice();
                boolean z = false;
                if (device != null && device.supportsSource(513) && !device.isVirtual() && KeyEventType.m1630equalsimpl0(KeyEvent_androidKt.m1635getTypeZmokQxo(keyEvent), KeyEventType.Companion.m1631getKeyDownCS__XNY()) && keyEvent.getSource() != 257) {
                    m451isKeyCodeYhN2O0w = TextFieldFocusModifier_androidKt.m451isKeyCodeYhN2O0w(keyEvent, 19);
                    if (m451isKeyCodeYhN2O0w) {
                        z = FocusManager.this.mo1113moveFocus3ESFkO8(FocusDirection.Companion.m1110getUpdhqQ8s());
                    } else {
                        m451isKeyCodeYhN2O0w2 = TextFieldFocusModifier_androidKt.m451isKeyCodeYhN2O0w(keyEvent, 20);
                        if (m451isKeyCodeYhN2O0w2) {
                            z = FocusManager.this.mo1113moveFocus3ESFkO8(FocusDirection.Companion.m1103getDowndhqQ8s());
                        } else {
                            m451isKeyCodeYhN2O0w3 = TextFieldFocusModifier_androidKt.m451isKeyCodeYhN2O0w(keyEvent, 21);
                            if (m451isKeyCodeYhN2O0w3) {
                                z = FocusManager.this.mo1113moveFocus3ESFkO8(FocusDirection.Companion.m1106getLeftdhqQ8s());
                            } else {
                                m451isKeyCodeYhN2O0w4 = TextFieldFocusModifier_androidKt.m451isKeyCodeYhN2O0w(keyEvent, 22);
                                if (m451isKeyCodeYhN2O0w4) {
                                    z = FocusManager.this.mo1113moveFocus3ESFkO8(FocusDirection.Companion.m1109getRightdhqQ8s());
                                } else {
                                    m451isKeyCodeYhN2O0w5 = TextFieldFocusModifier_androidKt.m451isKeyCodeYhN2O0w(keyEvent, 23);
                                    if (m451isKeyCodeYhN2O0w5) {
                                        SoftwareKeyboardController keyboardController = legacyTextFieldState.getKeyboardController();
                                        if (keyboardController != null) {
                                            keyboardController.show();
                                        }
                                        z = true;
                                    }
                                }
                            }
                        }
                    }
                }
                return Boolean.valueOf(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: isKeyCode-YhN2O0w, reason: not valid java name */
    public static final boolean m451isKeyCodeYhN2O0w(android.view.KeyEvent keyEvent, int i) {
        return Key_androidKt.m1640getNativeKeyCodeYVgTNJs(KeyEvent_androidKt.m1634getKeyZmokQxo(keyEvent)) == i;
    }
}
