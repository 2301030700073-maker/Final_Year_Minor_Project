package coil3.size;

import android.view.View;
import android.view.ViewTreeObserver;
import coil3.size.ViewSizeResolver;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealViewSizeResolver<T extends View> implements ViewSizeResolver<T> {
    private final boolean subtractPadding;
    private final T view;

    public RealViewSizeResolver(T t, boolean z) {
        this.view = t;
        this.subtractPadding = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RealViewSizeResolver)) {
            return false;
        }
        RealViewSizeResolver realViewSizeResolver = (RealViewSizeResolver) obj;
        return Intrinsics.areEqual(this.view, realViewSizeResolver.view) && this.subtractPadding == realViewSizeResolver.subtractPadding;
    }

    @Override // coil3.size.ViewSizeResolver
    public boolean getSubtractPadding() {
        return this.subtractPadding;
    }

    @Override // coil3.size.ViewSizeResolver
    public T getView() {
        return this.view;
    }

    public int hashCode() {
        return (this.view.hashCode() * 31) + (this.subtractPadding ? 1231 : 1237);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.view.ViewTreeObserver$OnPreDrawListener, coil3.size.ViewSizeResolver$size$3$preDrawListener$1] */
    @Override // coil3.size.ViewSizeResolver, coil3.size.SizeResolver
    public final Object size(Continuation continuation) {
        Size $private$getSize = ViewSizeResolver.CC.$private$getSize(this);
        if ($private$getSize != null) {
            return $private$getSize;
        }
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, AtomicFU.intercepted(continuation));
        cancellableContinuationImpl.initCancellability();
        final ViewTreeObserver viewTreeObserver = getView().getViewTreeObserver();
        final ?? r1 = new ViewTreeObserver.OnPreDrawListener() { // from class: coil3.size.ViewSizeResolver$size$3$preDrawListener$1
            private boolean isResumed;

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                Size $private$getSize2 = ViewSizeResolver.CC.$private$getSize(this);
                if ($private$getSize2 != null) {
                    ViewSizeResolver<View> viewSizeResolver = this;
                    ViewTreeObserver viewTreeObserver2 = viewTreeObserver;
                    if (viewTreeObserver2.isAlive()) {
                        viewTreeObserver2.removeOnPreDrawListener(this);
                    } else {
                        viewSizeResolver.getView().getViewTreeObserver().removeOnPreDrawListener(this);
                    }
                    if (!this.isResumed) {
                        this.isResumed = true;
                        cancellableContinuationImpl.resumeWith($private$getSize2);
                    }
                }
                return true;
            }
        };
        viewTreeObserver.addOnPreDrawListener(r1);
        cancellableContinuationImpl.invokeOnCancellation(new Function1() { // from class: coil3.size.ViewSizeResolver$size$3$1
            public final void invoke(Throwable th) {
                ViewSizeResolver<View> viewSizeResolver = this;
                ViewTreeObserver viewTreeObserver2 = viewTreeObserver;
                ViewSizeResolver$size$3$preDrawListener$1 viewSizeResolver$size$3$preDrawListener$1 = r1;
                if (viewTreeObserver2.isAlive()) {
                    viewTreeObserver2.removeOnPreDrawListener(viewSizeResolver$size$3$preDrawListener$1);
                } else {
                    viewSizeResolver.getView().getViewTreeObserver().removeOnPreDrawListener(viewSizeResolver$size$3$preDrawListener$1);
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.INSTANCE;
            }
        });
        return cancellableContinuationImpl.getResult();
    }

    public String toString() {
        return "RealViewSizeResolver(view=" + this.view + ", subtractPadding=" + this.subtractPadding + ")";
    }
}
