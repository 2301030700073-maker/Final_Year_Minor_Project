package com.fsck.k9.activity;

import android.widget.Toast;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.R;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageCompose$MessageComposeMessageLoaderCallback$1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Base64Util this$1;

    public /* synthetic */ MessageCompose$MessageComposeMessageLoaderCallback$1(Base64Util base64Util, int i) {
        this.$r8$classId = i;
        this.this$1 = base64Util;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Base64Util base64Util = this.this$1;
        switch (i) {
            case 0:
                Toast.makeText((MessageCompose) base64Util.inverseAlphabet, R.string.status_invalid_id_error, 1).show();
                break;
            default:
                Toast.makeText((MessageCompose) base64Util.inverseAlphabet, R.string.status_network_error, 1).show();
                break;
        }
    }
}
