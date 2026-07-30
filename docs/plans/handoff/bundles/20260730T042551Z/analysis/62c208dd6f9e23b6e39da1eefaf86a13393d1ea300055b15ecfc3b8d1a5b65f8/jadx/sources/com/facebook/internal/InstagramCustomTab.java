package com.facebook.internal;

import android.net.Uri;
import android.os.Bundle;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3756th;

/* loaded from: classes.dex */
public final class InstagramCustomTab extends CustomTab {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        public final Uri getURIForAction(String str, Bundle bundle) {
            C0173Do.m401try(str, NativeProtocol.WEB_DIALOG_ACTION);
            if (C0173Do.m394do(str, "oauth")) {
                Utility utility = Utility.INSTANCE;
                return Utility.buildUri(ServerProtocol.getInstagramDialogAuthority(), ServerProtocol.INSTAGRAM_OAUTH_PATH, bundle);
            }
            Utility utility2 = Utility.INSTANCE;
            return Utility.buildUri(ServerProtocol.getInstagramDialogAuthority(), C3756th.m8306try() + "/dialog/" + str, bundle);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstagramCustomTab(String str, Bundle bundle) {
        super(str, bundle);
        C0173Do.m401try(str, NativeProtocol.WEB_DIALOG_ACTION);
        setUri(Companion.getURIForAction(str, bundle == null ? new Bundle() : bundle));
    }
}
