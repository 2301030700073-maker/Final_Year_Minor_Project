package androidx.compose.ui.autofill;

import android.view.autofill.AutofillId;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.coreshims.AutofillIdCompat;
import androidx.datastore.preferences.protobuf.Utf8;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidAutofill implements Autofill {
    public final android.view.autofill.AutofillManager autofillManager;
    public final AutofillTree autofillTree;
    public final AutofillId rootAutofillId;
    public final AndroidComposeView view;

    public AndroidAutofill(AndroidComposeView androidComposeView, AutofillTree autofillTree) {
        this.view = androidComposeView;
        this.autofillTree = autofillTree;
        android.view.autofill.AutofillManager autofillManager = (android.view.autofill.AutofillManager) androidComposeView.getContext().getSystemService(android.view.autofill.AutofillManager.class);
        if (autofillManager == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Autofill service could not be located.");
            throw null;
        }
        this.autofillManager = autofillManager;
        androidComposeView.setImportantForAutofill(1);
        AutofillIdCompat autofillId = Utf8.SafeProcessor.getAutofillId(androidComposeView);
        AutofillId autofillId2 = autofillId != null ? (AutofillId) autofillId.mWrappedObj : null;
        if (autofillId2 == null) {
            throw Modifier.CC.m405m("Required value was null.");
        }
        this.rootAutofillId = autofillId2;
    }
}
