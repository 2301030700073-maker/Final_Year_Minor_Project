package androidx.compose.foundation;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNode_androidKt;

/* compiled from: Clickable.android.kt */
/* loaded from: classes.dex */
public abstract class Clickable_androidKt {
    private static final long TapIndicationDelay = ViewConfiguration.getTapTimeout();

    public static final boolean isComposeRootInScrollableContainer(DelegatableNode delegatableNode) {
        return isInScrollableViewGroup(DelegatableNode_androidKt.requireView(delegatableNode));
    }

    private static final boolean isInScrollableViewGroup(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && (parent instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if (viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
            parent = viewGroup.getParent();
        }
        return false;
    }

    public static final long getTapIndicationDelay() {
        return TapIndicationDelay;
    }

    /* renamed from: isPress-ZmokQxo, reason: not valid java name */
    public static final boolean m127isPressZmokQxo(KeyEvent keyEvent) {
        return KeyEventType.m1630equalsimpl0(KeyEvent_androidKt.m1635getTypeZmokQxo(keyEvent), KeyEventType.Companion.m1631getKeyDownCS__XNY()) && m126isEnterZmokQxo(keyEvent);
    }

    /* renamed from: isClick-ZmokQxo, reason: not valid java name */
    public static final boolean m125isClickZmokQxo(KeyEvent keyEvent) {
        return KeyEventType.m1630equalsimpl0(KeyEvent_androidKt.m1635getTypeZmokQxo(keyEvent), KeyEventType.Companion.m1632getKeyUpCS__XNY()) && m126isEnterZmokQxo(keyEvent);
    }

    /* renamed from: isEnter-ZmokQxo, reason: not valid java name */
    private static final boolean m126isEnterZmokQxo(KeyEvent keyEvent) {
        int m1640getNativeKeyCodeYVgTNJs = Key_androidKt.m1640getNativeKeyCodeYVgTNJs(KeyEvent_androidKt.m1634getKeyZmokQxo(keyEvent));
        return m1640getNativeKeyCodeYVgTNJs == 23 || m1640getNativeKeyCodeYVgTNJs == 66 || m1640getNativeKeyCodeYVgTNJs == 160;
    }
}
