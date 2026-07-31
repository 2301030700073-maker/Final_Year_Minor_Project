package androidx.compose.foundation.layout;

import android.view.autofill.AutofillValue;
import android.window.OnBackInvokedDispatcher;
import androidx.compose.animation.core.Easing;
import androidx.compose.runtime.CancellationHandle;
import java.util.ConcurrentModificationException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Arrangement$$ExternalSyntheticLambda0 implements Easing, CancellationHandle {
    public static /* synthetic */ void m() {
        throw new ConcurrentModificationException();
    }

    public static /* bridge */ /* synthetic */ AutofillValue m(Object obj) {
        return (AutofillValue) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ OnBackInvokedDispatcher m78m(Object obj) {
        return (OnBackInvokedDispatcher) obj;
    }

    @Override // androidx.compose.runtime.CancellationHandle
    public void cancel() {
    }

    @Override // androidx.compose.animation.core.Easing
    public float transform(float f) {
        return f;
    }
}
