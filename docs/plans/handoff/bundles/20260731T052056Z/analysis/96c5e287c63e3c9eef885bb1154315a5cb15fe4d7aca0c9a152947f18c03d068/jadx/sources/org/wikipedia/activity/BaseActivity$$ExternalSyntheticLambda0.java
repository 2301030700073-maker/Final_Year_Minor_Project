package org.wikipedia.activity;

import android.content.DialogInterface;
import android.content.Intent;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.preference.PreferenceFragmentCompat;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.history.HistoryFragment$Companion$clearAllHistory$1$2;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.dev.DeveloperSettingsPreferenceLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BaseActivity$$ExternalSyntheticLambda0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ BaseActivity$$ExternalSyntheticLambda0(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.$r8$classId;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i2) {
            case 0:
                BaseActivity baseActivity = (BaseActivity) obj;
                SVGAndroidRenderer.submitInteraction$default((SVGAndroidRenderer) obj2, "click", null, null, "login_button", null, null, 246);
                Intent putExtra = new Intent(baseActivity, (Class<?>) LoginActivity.class).putExtra("login_request_source", "logout_background").putExtra("create_account_first", true);
                putExtra.getClass();
                baseActivity.startActivity(putExtra);
                break;
            case 1:
                AwaitKt.launch$default((LifecycleCoroutineScopeImpl) obj2, new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 14), null, new HistoryFragment$Companion$clearAllHistory$1$2((Function0) obj, null, 0), 2);
                break;
            case 2:
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                PageTitle pageTitle = ((PageSummary) obj2).getPageTitle(Jsoup.getInstance().getWikiSite());
                PreferenceFragmentCompat preferenceFragmentCompat = (PreferenceFragmentCompat) ((DeveloperSettingsPreferenceLoader) obj).fragment;
                AppCompatActivity requireActivity = preferenceFragmentCompat.requireActivity();
                int i3 = PageActivity.$r8$clinit;
                requireActivity.startActivity(LoginClient.newIntentForNewTab(preferenceFragmentCompat.requireActivity(), new HistoryEntry(2, pageTitle), pageTitle));
                break;
            default:
                PageSummary pageSummary = (PageSummary) ((Pair) obj2).second;
                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                PageTitle pageTitle2 = pageSummary.getPageTitle(Jsoup.getInstance().getWikiSite());
                PreferenceFragmentCompat preferenceFragmentCompat2 = (PreferenceFragmentCompat) ((DeveloperSettingsPreferenceLoader) obj).fragment;
                AppCompatActivity requireActivity2 = preferenceFragmentCompat2.requireActivity();
                int i4 = PageActivity.$r8$clinit;
                requireActivity2.startActivity(LoginClient.newIntentForNewTab(preferenceFragmentCompat2.requireActivity(), new HistoryEntry(2, pageTitle2), pageTitle2));
                break;
        }
    }
}
