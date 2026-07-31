package androidx.compose.ui.input.key;

import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Key_androidKt {
    public static final long Key(int i) {
        long j = i << 32;
        int i2 = Key.$r8$clinit;
        return j;
    }

    /* renamed from: getKey-ZmokQxo, reason: not valid java name */
    public static final long m557getKeyZmokQxo(android.view.KeyEvent keyEvent) {
        return Key(keyEvent.getKeyCode());
    }

    /* renamed from: getType-ZmokQxo, reason: not valid java name */
    public static final int m558getTypeZmokQxo(android.view.KeyEvent keyEvent) {
        int action = keyEvent.getAction();
        if (action != 0) {
            return action != 1 ? 0 : 1;
        }
        return 2;
    }

    public static final Modifier onKeyEvent(Function1 function1) {
        return new KeyInputElement(function1, null);
    }

    public static final Modifier onPreviewKeyEvent(Modifier modifier, Function1 function1) {
        return modifier.then(new KeyInputElement(null, function1));
    }
}
