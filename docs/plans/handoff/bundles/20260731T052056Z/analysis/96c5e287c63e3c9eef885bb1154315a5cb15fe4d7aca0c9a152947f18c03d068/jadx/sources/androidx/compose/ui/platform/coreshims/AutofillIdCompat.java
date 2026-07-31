package androidx.compose.ui.platform.coreshims;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillValue;
import androidx.compose.ui.autofill.AutofillApi27Helper;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AutofillIdCompat {
    public final Object mWrappedObj;

    public void commit() {
        ((AutofillManager) this.mWrappedObj).commit();
    }

    public void notifyValueChanged(AndroidComposeView androidComposeView, int i, AutofillValue autofillValue) {
        ((AutofillManager) this.mWrappedObj).notifyValueChanged(androidComposeView, i, autofillValue);
    }

    public void notifyViewEntered(AndroidComposeView androidComposeView, int i, Rect rect) {
        ((AutofillManager) this.mWrappedObj).notifyViewEntered(androidComposeView, i, rect);
    }

    public void notifyViewExited(AndroidComposeView androidComposeView, int i) {
        ((AutofillManager) this.mWrappedObj).notifyViewExited(androidComposeView, i);
    }

    public void notifyViewVisibilityChanged(View view, int i, boolean z) {
        if (Build.VERSION.SDK_INT >= 27) {
            AutofillApi27Helper.notifyViewVisibilityChanged(view, (AutofillManager) this.mWrappedObj, i, z);
        }
    }

    public void requestAutofill(AndroidComposeView androidComposeView, int i, Rect rect) {
        ((AutofillManager) this.mWrappedObj).requestAutofill(androidComposeView, i, rect);
    }

    public AutofillId toAutofillId() {
        return VisualTransformation$Companion$$ExternalSyntheticLambda0.m660m(this.mWrappedObj);
    }
}
