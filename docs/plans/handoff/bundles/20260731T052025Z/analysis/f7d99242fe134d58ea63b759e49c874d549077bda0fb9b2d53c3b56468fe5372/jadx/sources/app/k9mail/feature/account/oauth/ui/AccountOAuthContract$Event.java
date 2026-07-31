package app.k9mail.feature.account.oauth.ui;

import android.content.Intent;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountOAuthContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnBackClicked implements AccountOAuthContract$Event {
        public static final OnBackClicked INSTANCE = new OnBackClicked();
        public static final OnBackClicked INSTANCE$1 = new OnBackClicked();
        public static final OnBackClicked INSTANCE$2 = new OnBackClicked();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnOAuthResult implements AccountOAuthContract$Event {
        public final Intent data;
        public final int resultCode;

        public OnOAuthResult(Intent intent, int i) {
            this.resultCode = i;
            this.data = intent;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnOAuthResult)) {
                return false;
            }
            OnOAuthResult onOAuthResult = (OnOAuthResult) obj;
            return this.resultCode == onOAuthResult.resultCode && Intrinsics.areEqual(this.data, onOAuthResult.data);
        }

        public final int hashCode() {
            int i = this.resultCode * 31;
            Intent intent = this.data;
            return i + (intent == null ? 0 : intent.hashCode());
        }

        public final String toString() {
            return "OnOAuthResult(resultCode=" + this.resultCode + ", data=" + this.data + ")";
        }
    }
}
