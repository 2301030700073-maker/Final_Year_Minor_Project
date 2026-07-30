package androidx.compose.ui.text.input;

import android.os.CancellationSignal;
import android.view.inputmethod.HandwritingGesture;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.PreviewableHandwritingGesture;
import java.util.concurrent.Executor;
import java.util.function.IntConsumer;
import kotlin.jvm.functions.Function1;

/* compiled from: NullableInputConnectionWrapper.android.kt */
/* loaded from: classes.dex */
class NullableInputConnectionWrapperApi34 extends NullableInputConnectionWrapperApi25 {
    public NullableInputConnectionWrapperApi34(InputConnection inputConnection, Function1 function1) {
        super(inputConnection, function1);
    }

    @Override // android.view.inputmethod.InputConnection
    public final void performHandwritingGesture(HandwritingGesture handwritingGesture, Executor executor, IntConsumer intConsumer) {
        InputConnection delegate = getDelegate();
        if (delegate != null) {
            delegate.performHandwritingGesture(handwritingGesture, executor, intConsumer);
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean previewHandwritingGesture(PreviewableHandwritingGesture previewableHandwritingGesture, CancellationSignal cancellationSignal) {
        boolean previewHandwritingGesture;
        InputConnection delegate = getDelegate();
        if (delegate == null) {
            return false;
        }
        previewHandwritingGesture = delegate.previewHandwritingGesture(previewableHandwritingGesture, cancellationSignal);
        return previewHandwritingGesture;
    }
}
