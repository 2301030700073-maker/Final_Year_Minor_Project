package androidx.compose.ui.text.input;

import android.os.Handler;
import android.view.inputmethod.InputConnection;
import kotlin.jvm.functions.Function1;

/* compiled from: NullableInputConnectionWrapper.android.kt */
/* loaded from: classes.dex */
class NullableInputConnectionWrapperApi24 extends NullableInputConnectionWrapperApi21 {
    public NullableInputConnectionWrapperApi24(InputConnection inputConnection, Function1 function1) {
        super(inputConnection, function1);
    }

    @Override // androidx.compose.ui.text.input.NullableInputConnectionWrapperApi21, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i, int i2) {
        boolean deleteSurroundingTextInCodePoints;
        InputConnection delegate = getDelegate();
        if (delegate == null) {
            return false;
        }
        deleteSurroundingTextInCodePoints = delegate.deleteSurroundingTextInCodePoints(i, i2);
        return deleteSurroundingTextInCodePoints;
    }

    @Override // androidx.compose.ui.text.input.NullableInputConnectionWrapperApi21, android.view.inputmethod.InputConnection
    public final Handler getHandler() {
        Handler handler;
        InputConnection delegate = getDelegate();
        if (delegate == null) {
            return null;
        }
        handler = delegate.getHandler();
        return handler;
    }

    @Override // androidx.compose.ui.text.input.NullableInputConnectionWrapperApi21
    protected final void closeDelegate(InputConnection inputConnection) {
        inputConnection.closeConnection();
    }
}
