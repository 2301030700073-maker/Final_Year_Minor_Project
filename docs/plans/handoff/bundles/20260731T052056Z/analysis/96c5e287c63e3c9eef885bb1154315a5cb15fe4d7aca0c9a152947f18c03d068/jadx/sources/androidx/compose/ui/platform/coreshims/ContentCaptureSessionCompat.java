package androidx.compose.ui.platform.coreshims;

import android.os.Build;
import android.view.View;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.contentcapture.ContentCaptureSession;
import androidx.compose.ui.contentcapture.ContentCaptureSessionWrapper;
import androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0;
import androidx.paging.HintHandler;
import coil3.util.ContextsKt;
import j$.util.Objects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
            ContentCaptureSession m662m = VisualTransformation$Companion$$ExternalSyntheticLambda0.m662m(this.mWrappedObj);
            AutofillIdCompat autofillId = ContextsKt.getAutofillId(this.mView);
            Objects.requireNonNull(autofillId);
            m662m.notifyViewsDisappeared(VisualTransformation$Companion$$ExternalSyntheticLambda0.m660m(autofillId.mWrappedObj), new long[]{Long.MIN_VALUE});
        }
    }

    public final AutofillId newAutofillId(long j) {
        if (Build.VERSION.SDK_INT < 29) {
            return null;
        }
        ContentCaptureSession m662m = VisualTransformation$Companion$$ExternalSyntheticLambda0.m662m(this.mWrappedObj);
        AutofillIdCompat autofillId = ContextsKt.getAutofillId(this.mView);
        Objects.requireNonNull(autofillId);
        return m662m.newAutofillId(VisualTransformation$Companion$$ExternalSyntheticLambda0.m660m(autofillId.mWrappedObj), j);
    }

    public final HintHandler newVirtualViewStructure(AutofillId autofillId, long j) {
        if (Build.VERSION.SDK_INT >= 29) {
            return new HintHandler(6, VisualTransformation$Companion$$ExternalSyntheticLambda0.m662m(this.mWrappedObj).newVirtualViewStructure(autofillId, j));
        }
        return null;
    }

    public final void notifyViewAppeared(ViewStructure viewStructure) {
        if (Build.VERSION.SDK_INT >= 29) {
            VisualTransformation$Companion$$ExternalSyntheticLambda0.m662m(this.mWrappedObj).notifyViewAppeared(viewStructure);
        }
    }

    public final void notifyViewDisappeared(AutofillId autofillId) {
        if (Build.VERSION.SDK_INT >= 29) {
            VisualTransformation$Companion$$ExternalSyntheticLambda0.m662m(this.mWrappedObj).notifyViewDisappeared(autofillId);
        }
    }

    public final void notifyViewTextChanged(AutofillId autofillId, String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            ((ContentCaptureSession) this.mWrappedObj).notifyViewTextChanged(autofillId, str);
        }
    }
}
