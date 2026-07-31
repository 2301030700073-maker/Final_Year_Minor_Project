package androidx.activity.compose;

import kotlin.jvm.functions.Function0;
import net.openid.appauth.JsonUtil$Field;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComposeBackHandler extends JsonUtil$Field {
    public Function0 currentOnBackCompleted;

    @Override // net.openid.appauth.JsonUtil$Field
    public final void onBackCompleted() {
        this.currentOnBackCompleted.invoke();
    }
}
