package androidx.compose.foundation.text;

import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.text.input.ImeAction;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: KeyboardActionRunner.kt */
/* loaded from: classes.dex */
public final class KeyboardActionRunner implements KeyboardActionScope {
    public FocusManager focusManager;
    public KeyboardActions keyboardActions;
    private final SoftwareKeyboardController keyboardController;

    public KeyboardActionRunner(SoftwareKeyboardController softwareKeyboardController) {
        this.keyboardController = softwareKeyboardController;
    }

    public final KeyboardActions getKeyboardActions() {
        KeyboardActions keyboardActions = this.keyboardActions;
        if (keyboardActions != null) {
            return keyboardActions;
        }
        Intrinsics.throwUninitializedPropertyAccessException("keyboardActions");
        return null;
    }

    public final void setKeyboardActions(KeyboardActions keyboardActions) {
        this.keyboardActions = keyboardActions;
    }

    public final FocusManager getFocusManager() {
        FocusManager focusManager = this.focusManager;
        if (focusManager != null) {
            return focusManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("focusManager");
        return null;
    }

    public final void setFocusManager(FocusManager focusManager) {
        this.focusManager = focusManager;
    }

    /* renamed from: runAction-KlQnJC8, reason: not valid java name */
    public final void m395runActionKlQnJC8(int i) {
        Function1 function1;
        ImeAction.Companion companion = ImeAction.Companion;
        Unit unit = null;
        if (ImeAction.m2198equalsimpl0(i, companion.m2203getDoneeUduSuo())) {
            function1 = getKeyboardActions().getOnDone();
        } else if (ImeAction.m2198equalsimpl0(i, companion.m2204getGoeUduSuo())) {
            function1 = getKeyboardActions().getOnGo();
        } else if (ImeAction.m2198equalsimpl0(i, companion.m2205getNexteUduSuo())) {
            function1 = getKeyboardActions().getOnNext();
        } else if (ImeAction.m2198equalsimpl0(i, companion.m2207getPreviouseUduSuo())) {
            function1 = getKeyboardActions().getOnPrevious();
        } else if (ImeAction.m2198equalsimpl0(i, companion.m2208getSearcheUduSuo())) {
            function1 = getKeyboardActions().getOnSearch();
        } else if (ImeAction.m2198equalsimpl0(i, companion.m2209getSendeUduSuo())) {
            function1 = getKeyboardActions().getOnSend();
        } else {
            if (!(ImeAction.m2198equalsimpl0(i, companion.m2202getDefaulteUduSuo()) ? true : ImeAction.m2198equalsimpl0(i, companion.m2206getNoneeUduSuo()))) {
                throw new IllegalStateException("invalid ImeAction");
            }
            function1 = null;
        }
        if (function1 != null) {
            function1.invoke(this);
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            m394defaultKeyboardActionKlQnJC8(i);
        }
    }

    /* renamed from: defaultKeyboardAction-KlQnJC8, reason: not valid java name */
    public void m394defaultKeyboardActionKlQnJC8(int i) {
        ImeAction.Companion companion = ImeAction.Companion;
        if (ImeAction.m2198equalsimpl0(i, companion.m2205getNexteUduSuo())) {
            getFocusManager().mo1113moveFocus3ESFkO8(FocusDirection.Companion.m1107getNextdhqQ8s());
            return;
        }
        if (ImeAction.m2198equalsimpl0(i, companion.m2207getPreviouseUduSuo())) {
            getFocusManager().mo1113moveFocus3ESFkO8(FocusDirection.Companion.m1108getPreviousdhqQ8s());
            return;
        }
        if (!ImeAction.m2198equalsimpl0(i, companion.m2203getDoneeUduSuo())) {
            if (ImeAction.m2198equalsimpl0(i, companion.m2204getGoeUduSuo()) ? true : ImeAction.m2198equalsimpl0(i, companion.m2208getSearcheUduSuo()) ? true : ImeAction.m2198equalsimpl0(i, companion.m2209getSendeUduSuo()) ? true : ImeAction.m2198equalsimpl0(i, companion.m2202getDefaulteUduSuo())) {
                return;
            }
            ImeAction.m2198equalsimpl0(i, companion.m2206getNoneeUduSuo());
        } else {
            SoftwareKeyboardController softwareKeyboardController = this.keyboardController;
            if (softwareKeyboardController != null) {
                softwareKeyboardController.hide();
            }
        }
    }
}
