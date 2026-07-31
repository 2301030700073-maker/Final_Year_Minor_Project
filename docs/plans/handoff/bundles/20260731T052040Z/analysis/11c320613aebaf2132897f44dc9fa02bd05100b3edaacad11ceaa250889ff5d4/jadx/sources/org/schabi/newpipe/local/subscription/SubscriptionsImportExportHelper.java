package org.schabi.newpipe.local.subscription;

import android.content.Context;
import androidx.activity.result.ActivityResultLauncher;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import okhttp3.Cookie;
import org.schabi.newpipe.streams.io.StoredFileHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionsImportExportHelper {
    public static final Companion Companion;
    public static final String TAG;
    public final Context context;
    public final Fragment fragment;
    public final ActivityResultLauncher requestExportLauncher;
    public final ActivityResultLauncher requestImportLauncher;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    static {
        Companion companion = new Companion();
        Companion = companion;
        TAG = Owner.CC.m("SubscriptionsImportExportHelper@", Integer.toHexString(companion.hashCode()));
    }

    public SubscriptionsImportExportHelper(Fragment fragment) {
        this.fragment = fragment;
        Context requireContext = fragment.requireContext();
        requireContext.getClass();
        this.context = requireContext;
        int i = 3;
        ActivityResultLauncher registerForActivityResult = fragment.registerForActivityResult(new FragmentManager.FragmentIntentSenderContract(i), new SubscriptionsImportExportHelper$requestExportLauncher$1(this, 0));
        registerForActivityResult.getClass();
        this.requestExportLauncher = registerForActivityResult;
        ActivityResultLauncher registerForActivityResult2 = fragment.registerForActivityResult(new FragmentManager.FragmentIntentSenderContract(i), new SubscriptionsImportExportHelper$requestExportLauncher$1(this, 1));
        registerForActivityResult2.getClass();
        this.requestImportLauncher = registerForActivityResult2;
    }

    public final void onExportSelected() {
        String m = Modifier.CC.m("newpipe_subscriptions_", new SimpleDateFormat("yyyyMMddHHmm", Locale.ENGLISH).format(new Date()), ".json");
        SubscriptionFragment.Companion.getClass();
        String str = SubscriptionFragment.JSON_MIME_TYPE;
        Context context = this.context;
        Cookie.Companion.launchSafe(this.requestExportLauncher, StoredFileHelper.getNewPicker(context, m, str, null), TAG, context);
    }
}
