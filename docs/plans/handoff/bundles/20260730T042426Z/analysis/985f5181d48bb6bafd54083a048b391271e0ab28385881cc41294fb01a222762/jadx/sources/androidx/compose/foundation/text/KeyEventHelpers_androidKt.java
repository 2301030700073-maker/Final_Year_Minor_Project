package androidx.compose.foundation.text;

import android.view.KeyEvent;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;

/* compiled from: KeyEventHelpers.android.kt */
/* loaded from: classes.dex */
public abstract class KeyEventHelpers_androidKt {
    public static final void showCharacterPalette() {
    }

    /* renamed from: cancelsTextSelection-ZmokQxo, reason: not valid java name */
    public static final boolean m392cancelsTextSelectionZmokQxo(KeyEvent keyEvent) {
        return keyEvent.getKeyCode() == 4 && KeyEventType.m1630equalsimpl0(KeyEvent_androidKt.m1635getTypeZmokQxo(keyEvent), KeyEventType.Companion.m1632getKeyUpCS__XNY());
    }
}
