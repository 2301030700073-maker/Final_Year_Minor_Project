package androidx.compose.ui.input.key;

import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Key_androidKt {
    public static final long Key(int i) {
        long j = i << 32;
        int i2 = Key.$r8$clinit;
        return j;
    }

    /* renamed from: getKey-ZmokQxo, reason: not valid java name */
    public static final long m499getKeyZmokQxo(android.view.KeyEvent keyEvent) {
        return Key(keyEvent.getKeyCode());
    }

    /* renamed from: getType-ZmokQxo, reason: not valid java name */
    public static final int m500getTypeZmokQxo(android.view.KeyEvent keyEvent) {
        int action = keyEvent.getAction();
        if (action != 0) {
            return action != 1 ? 0 : 1;
        }
        return 2;
    }

    public static final Modifier onKeyEvent(Modifier modifier, Function1 function1) {
        return modifier.then(new KeyInputElement(function1, null));
    }

    public static final Modifier onPreviewKeyEvent(Modifier modifier, Function1 function1) {
        return modifier.then(new KeyInputElement(null, function1));
    }
}
