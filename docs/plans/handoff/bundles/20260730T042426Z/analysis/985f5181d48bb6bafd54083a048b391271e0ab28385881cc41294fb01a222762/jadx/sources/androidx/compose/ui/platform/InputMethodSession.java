package androidx.compose.ui.platform;

import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.text.input.NullableInputConnectionWrapper;
import androidx.compose.ui.text.input.NullableInputConnectionWrapper_androidKt;
import java.lang.ref.WeakReference;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: AndroidPlatformTextInputSession.android.kt */
/* loaded from: classes.dex */
final class InputMethodSession {
    private boolean disposed;
    private final Function0 onAllConnectionsClosed;
    private final PlatformTextInputMethodRequest request;
    private final Object lock = new Object();
    private MutableVector connections = new MutableVector(new WeakReference[16], 0);

    public InputMethodSession(PlatformTextInputMethodRequest platformTextInputMethodRequest, Function0 function0) {
        this.request = platformTextInputMethodRequest;
        this.onAllConnectionsClosed = function0;
    }

    public final boolean isActive() {
        return !this.disposed;
    }

    public final InputConnection createInputConnection(EditorInfo editorInfo) {
        synchronized (this.lock) {
            if (this.disposed) {
                return null;
            }
            NullableInputConnectionWrapper NullableInputConnectionWrapper = NullableInputConnectionWrapper_androidKt.NullableInputConnectionWrapper(this.request.createInputConnection(editorInfo), new Function1() { // from class: androidx.compose.ui.platform.InputMethodSession$createInputConnection$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((NullableInputConnectionWrapper) obj);
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:12:0x0026  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x003b  */
                /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void invoke(androidx.compose.ui.text.input.NullableInputConnectionWrapper r5) {
                    /*
                        r4 = this;
                        r5.disposeDelegate()
                        androidx.compose.ui.platform.InputMethodSession r0 = androidx.compose.ui.platform.InputMethodSession.this
                        androidx.compose.runtime.collection.MutableVector r0 = androidx.compose.ui.platform.InputMethodSession.access$getConnections$p(r0)
                        int r1 = r0.getSize()
                        if (r1 <= 0) goto L23
                        java.lang.Object[] r0 = r0.getContent()
                        r2 = 0
                    L14:
                        r3 = r0[r2]
                        java.lang.ref.WeakReference r3 = (java.lang.ref.WeakReference) r3
                        boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r5)
                        if (r3 == 0) goto L1f
                        goto L24
                    L1f:
                        int r2 = r2 + 1
                        if (r2 < r1) goto L14
                    L23:
                        r2 = -1
                    L24:
                        if (r2 < 0) goto L2f
                        androidx.compose.ui.platform.InputMethodSession r5 = androidx.compose.ui.platform.InputMethodSession.this
                        androidx.compose.runtime.collection.MutableVector r5 = androidx.compose.ui.platform.InputMethodSession.access$getConnections$p(r5)
                        r5.removeAt(r2)
                    L2f:
                        androidx.compose.ui.platform.InputMethodSession r5 = androidx.compose.ui.platform.InputMethodSession.this
                        androidx.compose.runtime.collection.MutableVector r5 = androidx.compose.ui.platform.InputMethodSession.access$getConnections$p(r5)
                        boolean r5 = r5.isEmpty()
                        if (r5 == 0) goto L44
                        androidx.compose.ui.platform.InputMethodSession r5 = androidx.compose.ui.platform.InputMethodSession.this
                        kotlin.jvm.functions.Function0 r5 = androidx.compose.ui.platform.InputMethodSession.access$getOnAllConnectionsClosed$p(r5)
                        r5.invoke()
                    L44:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.InputMethodSession$createInputConnection$1$1.invoke(androidx.compose.ui.text.input.NullableInputConnectionWrapper):void");
                }
            });
            this.connections.add(new WeakReference(NullableInputConnectionWrapper));
            return NullableInputConnectionWrapper;
        }
    }

    public final void dispose() {
        synchronized (this.lock) {
            try {
                this.disposed = true;
                MutableVector mutableVector = this.connections;
                int size = mutableVector.getSize();
                if (size > 0) {
                    Object[] content = mutableVector.getContent();
                    int i = 0;
                    do {
                        NullableInputConnectionWrapper nullableInputConnectionWrapper = (NullableInputConnectionWrapper) ((WeakReference) content[i]).get();
                        if (nullableInputConnectionWrapper != null) {
                            nullableInputConnectionWrapper.disposeDelegate();
                        }
                        i++;
                    } while (i < size);
                }
                this.connections.clear();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
