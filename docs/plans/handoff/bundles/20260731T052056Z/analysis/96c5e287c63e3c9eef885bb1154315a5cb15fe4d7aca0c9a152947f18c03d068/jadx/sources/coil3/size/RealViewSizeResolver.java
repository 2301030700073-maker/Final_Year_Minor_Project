package coil3.size;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import kotlin.ExceptionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RealViewSizeResolver implements SizeResolver {
    public final View view;

    public RealViewSizeResolver(ImageView imageView) {
        this.view = imageView;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof RealViewSizeResolver) && Intrinsics.areEqual(this.view, ((RealViewSizeResolver) obj).view);
    }

    public final int hashCode() {
        return (this.view.hashCode() * 31) + 1231;
    }

    @Override // coil3.size.SizeResolver
    public final Object size(Continuation continuation) {
        Size $private$getSize = ViewSizeResolver$CC.$private$getSize(this);
        if ($private$getSize != null) {
            return $private$getSize;
        }
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, ExceptionsKt.intercepted(continuation));
        cancellableContinuationImpl.initCancellability();
        final ViewTreeObserver viewTreeObserver = this.view.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: coil3.size.ViewSizeResolver$size$3$preDrawListener$1
            public boolean isResumed;

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                RealViewSizeResolver realViewSizeResolver = RealViewSizeResolver.this;
                Size $private$getSize2 = ViewSizeResolver$CC.$private$getSize(realViewSizeResolver);
                if ($private$getSize2 != null) {
                    ViewTreeObserver viewTreeObserver2 = viewTreeObserver;
                    if (viewTreeObserver2.isAlive()) {
                        viewTreeObserver2.removeOnPreDrawListener(this);
                    } else {
                        realViewSizeResolver.view.getViewTreeObserver().removeOnPreDrawListener(this);
                    }
                    if (!this.isResumed) {
                        this.isResumed = true;
                        cancellableContinuationImpl.resumeWith($private$getSize2);
                    }
                }
                return true;
            }
        };
        viewTreeObserver.addOnPreDrawListener(onPreDrawListener);
        cancellableContinuationImpl.invokeOnCancellation(new ViewSizeResolver$size$3$1(this, viewTreeObserver, onPreDrawListener, 0));
        return cancellableContinuationImpl.getResult();
    }

    public final String toString() {
        return "RealViewSizeResolver(view=" + this.view + ", subtractPadding=true)";
    }
}
