package androidx.compose.foundation.text;

import android.view.KeyEvent;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent_androidKt;

/* compiled from: KeyMapping.android.kt */
/* loaded from: classes.dex */
public abstract class KeyMapping_androidKt {
    private static final KeyMapping platformDefaultKeyMapping = new KeyMapping() { // from class: androidx.compose.foundation.text.KeyMapping_androidKt$platformDefaultKeyMapping$1
        @Override // androidx.compose.foundation.text.KeyMapping
        /* renamed from: map-ZmokQxo */
        public KeyCommand mo393mapZmokQxo(KeyEvent keyEvent) {
            KeyCommand keyCommand = null;
            if (KeyEvent_androidKt.m1639isShiftPressedZmokQxo(keyEvent) && KeyEvent_androidKt.m1637isAltPressedZmokQxo(keyEvent)) {
                long m1634getKeyZmokQxo = KeyEvent_androidKt.m1634getKeyZmokQxo(keyEvent);
                MappedKeys mappedKeys = MappedKeys.INSTANCE;
                if (Key.m1607equalsimpl0(m1634getKeyZmokQxo, mappedKeys.m420getDirectionLeftEK5gGoQ())) {
                    keyCommand = KeyCommand.SELECT_LINE_LEFT;
                } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo, mappedKeys.m421getDirectionRightEK5gGoQ())) {
                    keyCommand = KeyCommand.SELECT_LINE_RIGHT;
                } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo, mappedKeys.m422getDirectionUpEK5gGoQ())) {
                    keyCommand = KeyCommand.SELECT_HOME;
                } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo, mappedKeys.m419getDirectionDownEK5gGoQ())) {
                    keyCommand = KeyCommand.SELECT_END;
                }
            } else if (KeyEvent_androidKt.m1637isAltPressedZmokQxo(keyEvent)) {
                long m1634getKeyZmokQxo2 = KeyEvent_androidKt.m1634getKeyZmokQxo(keyEvent);
                MappedKeys mappedKeys2 = MappedKeys.INSTANCE;
                if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m420getDirectionLeftEK5gGoQ())) {
                    keyCommand = KeyCommand.LINE_LEFT;
                } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m421getDirectionRightEK5gGoQ())) {
                    keyCommand = KeyCommand.LINE_RIGHT;
                } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m422getDirectionUpEK5gGoQ())) {
                    keyCommand = KeyCommand.HOME;
                } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m419getDirectionDownEK5gGoQ())) {
                    keyCommand = KeyCommand.END;
                }
            }
            return keyCommand == null ? KeyMappingKt.getDefaultKeyMapping().mo393mapZmokQxo(keyEvent) : keyCommand;
        }
    };

    public static final KeyMapping getPlatformDefaultKeyMapping() {
        return platformDefaultKeyMapping;
    }
}
