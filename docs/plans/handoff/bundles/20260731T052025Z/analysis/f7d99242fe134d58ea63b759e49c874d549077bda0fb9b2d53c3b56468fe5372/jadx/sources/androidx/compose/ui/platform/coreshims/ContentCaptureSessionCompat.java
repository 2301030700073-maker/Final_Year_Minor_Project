package androidx.compose.ui.platform.coreshims;

import android.os.Build;
import android.view.View;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.contentcapture.ContentCaptureSession;
import androidx.camera.view.PreviewView;
import androidx.compose.ui.contentcapture.ContentCaptureSessionWrapper;
import androidx.core.view.DifferentialMotionFlingController$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.protobuf.Utf8;
import j$.util.Objects;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            ContentCaptureSession m793m = DifferentialMotionFlingController$$ExternalSyntheticLambda0.m793m(this.mWrappedObj);
            AutofillIdCompat autofillId = Utf8.SafeProcessor.getAutofillId(this.mView);
            Objects.requireNonNull(autofillId);
            m793m.notifyViewsDisappeared(DifferentialMotionFlingController$$ExternalSyntheticLambda0.m(autofillId.mWrappedObj), new long[]{Long.MIN_VALUE});
        }
    }

    public final AutofillId newAutofillId(long j) {
        if (Build.VERSION.SDK_INT < 29) {
            return null;
        }
        ContentCaptureSession m793m = DifferentialMotionFlingController$$ExternalSyntheticLambda0.m793m(this.mWrappedObj);
        AutofillIdCompat autofillId = Utf8.SafeProcessor.getAutofillId(this.mView);
        Objects.requireNonNull(autofillId);
        return m793m.newAutofillId(DifferentialMotionFlingController$$ExternalSyntheticLambda0.m(autofillId.mWrappedObj), j);
    }

    public final PreviewView.AnonymousClass1 newVirtualViewStructure(AutofillId autofillId, long j) {
        if (Build.VERSION.SDK_INT < 29) {
            return null;
        }
        return new PreviewView.AnonymousClass1(27, DifferentialMotionFlingController$$ExternalSyntheticLambda0.m793m(this.mWrappedObj).newVirtualViewStructure(autofillId, j));
    }

    public final void notifyViewAppeared(ViewStructure viewStructure) {
        if (Build.VERSION.SDK_INT >= 29) {
            DifferentialMotionFlingController$$ExternalSyntheticLambda0.m793m(this.mWrappedObj).notifyViewAppeared(viewStructure);
        }
    }

    public final void notifyViewDisappeared(AutofillId autofillId) {
        if (Build.VERSION.SDK_INT >= 29) {
            DifferentialMotionFlingController$$ExternalSyntheticLambda0.m793m(this.mWrappedObj).notifyViewDisappeared(autofillId);
        }
    }

    public final void notifyViewTextChanged(AutofillId autofillId, String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            ((ContentCaptureSession) this.mWrappedObj).notifyViewTextChanged(autofillId, str);
        }
    }
}
