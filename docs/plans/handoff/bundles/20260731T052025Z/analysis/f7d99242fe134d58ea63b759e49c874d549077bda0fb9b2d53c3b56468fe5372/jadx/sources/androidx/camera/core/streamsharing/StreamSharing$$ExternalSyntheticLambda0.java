package androidx.camera.core.streamsharing;

import android.view.autofill.AutofillValue;
import android.view.textclassifier.TextClassifier;
import androidx.arch.core.util.Function;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.compose.animation.core.Easing;
import androidx.compose.foundation.layout.Arrangement$SpacingAlignmentCalculator;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ConcurrentModificationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class StreamSharing$$ExternalSyntheticLambda0 implements Function, Easing, Arrangement$SpacingAlignmentCalculator, CancellationHandle {
    public final /* synthetic */ int $r8$classId;

    public static /* synthetic */ void m(int i, StringBuilder sb) {
        sb.append(i);
        sb.append(']');
        throw new IndexOutOfBoundsException(sb.toString());
    }

    @Override // androidx.compose.foundation.layout.Arrangement$SpacingAlignmentCalculator
    public int align(int i, LayoutDirection layoutDirection) {
        switch (this.$r8$classId) {
            case 6:
                return Math.round((1.0f + 0.0f) * ((i + 0) / 2.0f));
            default:
                return Math.round((1.0f + (layoutDirection == LayoutDirection.Ltr ? -1.0f : 1.0f)) * (i / 2.0f));
        }
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        return ProcessCameraProvider.sAppInstance;
    }

    public /* synthetic */ StreamSharing$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ TextClassifier m94m(Object obj) {
        return (TextClassifier) obj;
    }

    public static /* synthetic */ void m() {
        throw new ConcurrentModificationException();
    }

    public static /* bridge */ /* synthetic */ AutofillValue m(Object obj) {
        return (AutofillValue) obj;
    }

    public static /* synthetic */ void m(Object obj, String str) {
        throw new IllegalStateException(str + obj);
    }

    @Override // androidx.compose.runtime.CancellationHandle
    public void cancel() {
    }

    @Override // androidx.compose.animation.core.Easing
    public float transform(float f) {
        return f;
    }
}
