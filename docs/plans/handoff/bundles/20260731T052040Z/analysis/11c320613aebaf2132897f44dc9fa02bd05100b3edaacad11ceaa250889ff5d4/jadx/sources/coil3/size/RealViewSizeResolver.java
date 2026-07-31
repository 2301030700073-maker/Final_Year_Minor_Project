package coil3.size;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import coil3.RealImageLoader$execute$3;
import com.android.tools.r8.RecordTag;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.view.ViewTreeObserver$OnPreDrawListener, coil3.size.ViewSizeResolver$size$3$preDrawListener$1] */
    @Override // coil3.size.SizeResolver
    public final Object size(RealImageLoader$execute$3 realImageLoader$execute$3) {
        Size $private$getSize = RecordTag.$private$getSize(this);
        if ($private$getSize != null) {
            return $private$getSize;
        }
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, UStringsKt.intercepted(realImageLoader$execute$3));
        cancellableContinuationImpl.initCancellability();
        final ViewTreeObserver viewTreeObserver = this.view.getViewTreeObserver();
        final ?? r1 = new ViewTreeObserver.OnPreDrawListener() { // from class: coil3.size.ViewSizeResolver$size$3$preDrawListener$1
            public boolean isResumed;

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                RealViewSizeResolver realViewSizeResolver = RealViewSizeResolver.this;
                Size $private$getSize2 = RecordTag.$private$getSize(realViewSizeResolver);
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
        viewTreeObserver.addOnPreDrawListener(r1);
        cancellableContinuationImpl.invokeOnCancellation(new Function1() { // from class: coil3.size.ViewSizeResolver$size$3$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ViewTreeObserver viewTreeObserver2 = viewTreeObserver;
                boolean isAlive = viewTreeObserver2.isAlive();
                ViewSizeResolver$size$3$preDrawListener$1 viewSizeResolver$size$3$preDrawListener$1 = r1;
                if (isAlive) {
                    viewTreeObserver2.removeOnPreDrawListener(viewSizeResolver$size$3$preDrawListener$1);
                } else {
                    RealViewSizeResolver.this.view.getViewTreeObserver().removeOnPreDrawListener(viewSizeResolver$size$3$preDrawListener$1);
                }
                return Unit.INSTANCE;
            }
        });
        return cancellableContinuationImpl.getResult();
    }

    public final String toString() {
        return "RealViewSizeResolver(view=" + this.view + ", subtractPadding=true)";
    }
}
