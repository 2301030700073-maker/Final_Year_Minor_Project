package androidx.compose.ui.focus;

import android.view.KeyEvent;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.rotary.RotaryScrollEvent;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: FocusOwner.kt */
/* loaded from: classes.dex */
public interface FocusOwner extends FocusManager {
    /* renamed from: clearFocus-I7lrPNg, reason: not valid java name */
    boolean mo1114clearFocusI7lrPNg(boolean z, boolean z2, boolean z3, int i);

    /* renamed from: dispatchInterceptedSoftKeyboardEvent-ZmokQxo, reason: not valid java name */
    boolean mo1115dispatchInterceptedSoftKeyboardEventZmokQxo(KeyEvent keyEvent);

    /* renamed from: dispatchKeyEvent-YhN2O0w, reason: not valid java name */
    boolean mo1116dispatchKeyEventYhN2O0w(KeyEvent keyEvent, Function0 function0);

    boolean dispatchRotaryEvent(RotaryScrollEvent rotaryScrollEvent);

    /* renamed from: focusSearch-ULY8qGw, reason: not valid java name */
    Boolean mo1117focusSearchULY8qGw(int i, Rect rect, Function1 function1);

    Rect getFocusRect();

    FocusTransactionManager getFocusTransactionManager();

    Modifier getModifier();

    FocusState getRootState();

    void releaseFocus();

    /* renamed from: requestFocusForOwner-7o62pno, reason: not valid java name */
    boolean mo1118requestFocusForOwner7o62pno(FocusDirection focusDirection, Rect rect);

    void scheduleInvalidation(FocusEventModifierNode focusEventModifierNode);

    void scheduleInvalidation(FocusPropertiesModifierNode focusPropertiesModifierNode);

    void scheduleInvalidation(FocusTargetNode focusTargetNode);

    /* compiled from: FocusOwner.kt */
    /* renamed from: androidx.compose.ui.focus.FocusOwner$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        /* renamed from: dispatchKeyEvent-YhN2O0w$default, reason: not valid java name */
        public static /* synthetic */ boolean m1119dispatchKeyEventYhN2O0w$default(FocusOwner focusOwner, KeyEvent keyEvent, Function0 function0, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: dispatchKeyEvent-YhN2O0w");
            }
            if ((i & 2) != 0) {
                function0 = new Function0() { // from class: androidx.compose.ui.focus.FocusOwner$dispatchKeyEvent$1
                    @Override // kotlin.jvm.functions.Function0
                    public final Boolean invoke() {
                        return Boolean.FALSE;
                    }
                };
            }
            return focusOwner.mo1116dispatchKeyEventYhN2O0w(keyEvent, function0);
        }
    }
}
