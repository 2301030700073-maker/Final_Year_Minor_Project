package androidx.compose.ui.platform.coreshims;

import android.os.Build;
import android.view.View;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.contentcapture.ContentCaptureSession;
import androidx.compose.ui.contentcapture.ContentCaptureSessionWrapper;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticBUOutline0;
import androidx.core.view.DifferentialMotionFlingController$$ExternalSyntheticLambda0;
import coil3.memory.MemoryCacheService;
import j$.util.Objects;
import okhttp3.Cookie;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ContentCaptureSessionCompat implements ContentCaptureSessionWrapper {
    public final View mView;
    public final Object mWrappedObj;

    public ContentCaptureSessionCompat(ContentCaptureSession contentCaptureSession, View view) {
        this.mWrappedObj = contentCaptureSession;
        this.mView = view;
    }

    public final void flush() {
        if (Build.VERSION.SDK_INT >= 29) {
            ContentCaptureSession m = DifferentialMotionFlingController$$ExternalSyntheticLambda0.m(this.mWrappedObj);
            AutofillIdCompat autofillId = Cookie.Companion.getAutofillId(this.mView);
            Objects.requireNonNull(autofillId);
            m.notifyViewsDisappeared(LayoutNode$$ExternalSyntheticBUOutline0.m(autofillId.mWrappedObj), new long[]{Long.MIN_VALUE});
        }
    }

    public final AutofillId newAutofillId(long j) {
        if (Build.VERSION.SDK_INT < 29) {
            return null;
        }
        ContentCaptureSession m = DifferentialMotionFlingController$$ExternalSyntheticLambda0.m(this.mWrappedObj);
        AutofillIdCompat autofillId = Cookie.Companion.getAutofillId(this.mView);
        Objects.requireNonNull(autofillId);
        return m.newAutofillId(LayoutNode$$ExternalSyntheticBUOutline0.m(autofillId.mWrappedObj), j);
    }

    public final MemoryCacheService newVirtualViewStructure(AutofillId autofillId, long j) {
        if (Build.VERSION.SDK_INT >= 29) {
            return new MemoryCacheService(DifferentialMotionFlingController$$ExternalSyntheticLambda0.m(this.mWrappedObj).newVirtualViewStructure(autofillId, j));
        }
        return null;
    }

    public final void notifyViewAppeared(ViewStructure viewStructure) {
        if (Build.VERSION.SDK_INT >= 29) {
            DifferentialMotionFlingController$$ExternalSyntheticLambda0.m(this.mWrappedObj).notifyViewAppeared(viewStructure);
        }
    }

    public final void notifyViewDisappeared(AutofillId autofillId) {
        if (Build.VERSION.SDK_INT >= 29) {
            DifferentialMotionFlingController$$ExternalSyntheticLambda0.m(this.mWrappedObj).notifyViewDisappeared(autofillId);
        }
    }

    public final void notifyViewTextChanged(AutofillId autofillId, String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            ((ContentCaptureSession) this.mWrappedObj).notifyViewTextChanged(autofillId, str);
        }
    }
}
