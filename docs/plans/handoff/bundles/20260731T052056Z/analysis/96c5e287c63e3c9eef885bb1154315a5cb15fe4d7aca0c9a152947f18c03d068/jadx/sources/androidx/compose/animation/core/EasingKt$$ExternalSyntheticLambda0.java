package androidx.compose.animation.core;

import android.view.autofill.AutofillValue;
import android.view.textclassifier.TextClassifier;
import android.window.OnBackInvokedDispatcher;
import androidx.compose.foundation.layout.Arrangement$SpacingAlignmentCalculator;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class EasingKt$$ExternalSyntheticLambda0 implements Easing, Arrangement$SpacingAlignmentCalculator, CancellationHandle {
    public final /* synthetic */ int $r8$classId;

    @Override // androidx.compose.foundation.layout.Arrangement$SpacingAlignmentCalculator
    public int align(int i, LayoutDirection layoutDirection) {
        switch (this.$r8$classId) {
            case 10:
                return Math.round((1.0f + (layoutDirection == LayoutDirection.Ltr ? -1.0f : 1.0f)) * (i / 2.0f));
            default:
                return Math.round((1.0f + RecyclerView.DECELERATION_RATE) * ((i + 0) / 2.0f));
        }
    }

    public static /* bridge */ /* synthetic */ AutofillValue m(Object obj) {
        return (AutofillValue) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ TextClassifier m25m(Object obj) {
        return (TextClassifier) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ OnBackInvokedDispatcher m26m(Object obj) {
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
