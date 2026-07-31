package androidx.compose.foundation.text;

import androidx.compose.ui.focus.FocusOwner;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KeyboardActionRunner {
    public FocusOwner focusManager;
    public KeyboardActions keyboardActions;
    public final SoftwareKeyboardController keyboardController;

    public KeyboardActionRunner(SoftwareKeyboardController softwareKeyboardController) {
        this.keyboardController = softwareKeyboardController;
    }

    public final KeyboardActions getKeyboardActions() {
        KeyboardActions keyboardActions = this.keyboardActions;
        if (keyboardActions != null) {
            return keyboardActions;
        }
        Intrinsics.throwUninitializedPropertyAccessException("keyboardActions");
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003d  */
    /* renamed from: runAction-KlQnJC8, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m188runActionKlQnJC8(int r9) {
        /*
            r8 = this;
            r0 = 0
            r1 = 0
            r2 = 5
            r3 = 6
            r4 = 2
            r5 = 1
            r6 = 7
            if (r9 != r6) goto Le
            r8.getKeyboardActions()
        Lc:
            r7 = r1
            goto L37
        Le:
            if (r9 != r4) goto L14
            r8.getKeyboardActions()
            goto Lc
        L14:
            if (r9 != r3) goto L1a
            r8.getKeyboardActions()
            goto Lc
        L1a:
            if (r9 != r2) goto L20
            r8.getKeyboardActions()
            goto Lc
        L20:
            r7 = 3
            if (r9 != r7) goto L27
            r8.getKeyboardActions()
            goto Lc
        L27:
            r7 = 4
            if (r9 != r7) goto L31
            androidx.compose.foundation.text.KeyboardActions r7 = r8.getKeyboardActions()
            kotlin.jvm.functions.Function1 r7 = r7.onSend
            goto L37
        L31:
            if (r9 != r5) goto L34
            goto L36
        L34:
            if (r9 != 0) goto L6c
        L36:
            goto Lc
        L37:
            if (r7 == 0) goto L3d
            r7.invoke(r8)
            return r5
        L3d:
            java.lang.String r7 = "focusManager"
            if (r9 != r3) goto L4f
            androidx.compose.ui.focus.FocusOwner r8 = r8.focusManager
            if (r8 == 0) goto L4b
            androidx.compose.ui.focus.FocusOwnerImpl r8 = (androidx.compose.ui.focus.FocusOwnerImpl) r8
            r8.m363moveFocusaToIllA(r5, r5)
            return r5
        L4b:
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r7)
            throw r1
        L4f:
            if (r9 != r2) goto L5f
            androidx.compose.ui.focus.FocusOwner r8 = r8.focusManager
            if (r8 == 0) goto L5b
            androidx.compose.ui.focus.FocusOwnerImpl r8 = (androidx.compose.ui.focus.FocusOwnerImpl) r8
            r8.m363moveFocusaToIllA(r4, r5)
            return r5
        L5b:
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r7)
            throw r1
        L5f:
            if (r9 != r6) goto L6b
            androidx.compose.ui.platform.SoftwareKeyboardController r8 = r8.keyboardController
            if (r8 == 0) goto L6b
            androidx.compose.ui.platform.DelegatingSoftwareKeyboardController r8 = (androidx.compose.ui.platform.DelegatingSoftwareKeyboardController) r8
            r8.hide()
            return r5
        L6b:
            return r0
        L6c:
            java.lang.String r8 = "invalid ImeAction"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.KeyboardActionRunner.m188runActionKlQnJC8(int):boolean");
    }
}
