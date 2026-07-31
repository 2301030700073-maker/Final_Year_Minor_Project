package androidx.compose.ui.autofill;

import android.view.autofill.AutofillId;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.coreshims.AutofillIdCompat;
import coil3.util.ContextsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Autofill service could not be located.");
            throw null;
        }
        this.autofillManager = autofillManager;
        androidComposeView.setImportantForAutofill(1);
        AutofillIdCompat autofillId = ContextsKt.getAutofillId(androidComposeView);
        AutofillId autofillId2 = autofillId != null ? (AutofillId) autofillId.mWrappedObj : null;
        if (autofillId2 == null) {
            throw Modifier.CC.m("Required value was null.");
        }
        this.rootAutofillId = autofillId2;
    }
}
