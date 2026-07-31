package org.wikipedia.search;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$1;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.text.UStringsKt;
import okhttp3.Request;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp$$ExternalSyntheticLambda2;
import org.wikipedia.activity.SingleFragmentActivity;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda1;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/search/SearchActivity;", "Lorg/wikipedia/activity/SingleFragmentActivity;", "Lorg/wikipedia/search/SearchFragment;", "<init>", "()V", "org/wikipedia/login/LoginClient", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SearchActivity extends SingleFragmentActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final FragmentManager$1 onBackPressedCallback = new FragmentManager$1(11, this);

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        Constants.InvokeSource invokeSource = (Constants.InvokeSource) getIntent().getSerializableExtra("invokeSource");
        if (invokeSource == null) {
            if ("android.intent.action.SEND".equals(getIntent().getAction())) {
                invokeSource = Constants.InvokeSource.INTENT_SHARE;
            } else if ("android.intent.action.PROCESS_TEXT".equals(getIntent().getAction())) {
                invokeSource = Constants.InvokeSource.INTENT_PROCESS_TEXT;
            } else {
                invokeSource = Constants.InvokeSource.INTENT_UNKNOWN;
                String action = getIntent().getAction();
                if (action == null) {
                    action = "";
                }
                L.logRemoteErrorIfProd(new RuntimeException("Unknown intent when launching SearchActivity: ".concat(action)));
            }
        }
        String stringExtra = getIntent().getStringExtra("query");
        boolean booleanExtra = getIntent().getBooleanExtra("returnLink", false);
        String stringExtra2 = getIntent().getStringExtra("articleTitle");
        boolean booleanExtra2 = getIntent().getBooleanExtra("showHybridSearch", false);
        invokeSource.getClass();
        SearchFragment searchFragment = new SearchFragment();
        searchFragment.setArguments(UStringsKt.bundleOf(new Pair("invokeSource", invokeSource), new Pair("lastQuery", stringExtra), new Pair("returnLink", Boolean.valueOf(booleanExtra)), new Pair("articleTitle", stringExtra2), new Pair("showHybridSearch", Boolean.valueOf(booleanExtra2))));
        return searchFragment;
    }

    @Override // org.wikipedia.activity.SingleFragmentActivity, org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        int intExtra;
        super.onCreate(bundle);
        if (getIntent().hasExtra("showSnackbarMessage") && (intExtra = getIntent().getIntExtra("showSnackbarMessage", 0)) != 0) {
            ShareUtil.showMessage(this, intExtra);
            getIntent().removeExtra("showSnackbarMessage");
        }
        getOnBackPressedDispatcher().addCallback(this.onBackPressedCallback, this);
        DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda1 = TestKitchenAdapter.flushEventsRunnable;
        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
        testKitchenClient.getClass();
        SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-search", testKitchenClient);
        sVGAndroidRenderer.parentStack = "search";
        sVGAndroidRenderer.startFunnel("search");
        HybridSearchAbCTest hybridSearchAbCTest = new HybridSearchAbCTest();
        String groupName = hybridSearchAbCTest.getGroupName();
        Prefs prefs = Prefs.INSTANCE;
        sVGAndroidRenderer.stateStack = new Request.Builder("apps_hybridsearch", groupName, PrefsIoUtil.getString(R.string.preference_key_reading_app_install_id, null), new WikipediaApp$$ExternalSyntheticLambda2(hybridSearchAbCTest));
        this._instrument = sVGAndroidRenderer;
    }
}
