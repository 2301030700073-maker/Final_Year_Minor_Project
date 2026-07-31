package androidx.compose.ui.autofill;

import android.view.autofill.AutofillId;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.coreshims.AutofillIdCompat;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Autofill service could not be located.");
            throw null;
        }
        this.autofillManager = autofillManager;
        androidComposeView.setImportantForAutofill(1);
        AutofillIdCompat autofillId = Cookie.Companion.getAutofillId(androidComposeView);
        AutofillId autofillId2 = autofillId != null ? (AutofillId) autofillId.mWrappedObj : null;
        if (autofillId2 == null) {
            throw Modifier.CC.m("Required value was null.");
        }
        this.rootAutofillId = autofillId2;
    }
}
