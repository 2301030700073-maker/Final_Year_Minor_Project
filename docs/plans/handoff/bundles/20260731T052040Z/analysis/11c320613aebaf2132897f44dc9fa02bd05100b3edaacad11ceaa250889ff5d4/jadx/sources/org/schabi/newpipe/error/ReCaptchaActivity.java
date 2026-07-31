package org.schabi.newpipe.error;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.preference.PreferenceManager;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import j$.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.regex.Pattern;
import okio.Options;
import org.jsoup.nodes.Printer;
import org.schabi.newpipe.DownloaderImpl;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ReCaptchaActivity extends AppCompatActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public String foundCookies = "";
    public Printer recaptchaBinding;

    static {
        ReCaptchaActivity.class.toString();
    }

    public final void handleCookies(String str) {
        if (str == null) {
            return;
        }
        if ((str.contains("s_gl=") || str.contains("goojf=") || str.contains("VISITOR_INFO1_LIVE=") || str.contains("GOOGLE_ABUSE_EXEMPTION=")) && !this.foundCookies.contains(str)) {
            if (this.foundCookies.isEmpty() || this.foundCookies.endsWith("; ")) {
                this.foundCookies = Modifier.CC.m(new StringBuilder(), this.foundCookies, str);
                return;
            }
            boolean endsWith = this.foundCookies.endsWith(";");
            String str2 = this.foundCookies;
            if (endsWith) {
                this.foundCookies = Owner.CC.m(str2, " ", str);
            } else {
                this.foundCookies = Owner.CC.m(str2, "; ", str);
            }
        }
    }

    public final void handleCookiesFromUrl(String str) {
        if (str == null) {
            return;
        }
        handleCookies(CookieManager.getInstance().getCookie(str));
        int indexOf = str.indexOf("google_abuse=");
        if (indexOf != -1) {
            try {
                String substring = str.substring(indexOf + 13, str.indexOf("+path"));
                Pattern pattern = Utils.M_PATTERN;
                handleCookies(URLDecoder.decode(substring, StandardCharsets.UTF_8));
            } catch (StringIndexOutOfBoundsException unused) {
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        saveCookiesAndFinish();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Options.Companion.setTheme(this, -1);
        super.onCreate(bundle);
        View inflate = getLayoutInflater().inflate(R.layout.activity_recaptcha, (ViewGroup) null, false);
        int i = R.id.reCaptchaWebView;
        WebView webView = (WebView) Options.Companion.findChildViewById(R.id.reCaptchaWebView, inflate);
        if (webView != null) {
            i = R.id.toolbar;
            Toolbar toolbar = (Toolbar) Options.Companion.findChildViewById(R.id.toolbar, inflate);
            if (toolbar != null) {
                RelativeLayout relativeLayout = (RelativeLayout) inflate;
                this.recaptchaBinding = new Printer(4, relativeLayout, webView, toolbar);
                setContentView(relativeLayout);
                setSupportActionBar((Toolbar) this.recaptchaBinding.settings);
                String stringExtra = getIntent().getStringExtra("recaptcha_url_extra");
                String replace = (stringExtra == null || stringExtra.trim().isEmpty()) ? "https://www.youtube.com" : stringExtra.replace("&pbj=1", "").replace("pbj=1&", "").replace("?pbj=1", "");
                setResult(0);
                WebSettings settings = ((WebView) this.recaptchaBinding.accum).getSettings();
                settings.setJavaScriptEnabled(true);
                settings.setUserAgentString("Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0");
                ((WebView) this.recaptchaBinding.accum).setWebViewClient(new WebViewClient() { // from class: org.schabi.newpipe.error.ReCaptchaActivity.1
                    @Override // android.webkit.WebViewClient
                    public final void onPageFinished(WebView webView2, String str) {
                        super.onPageFinished(webView2, str);
                        int i2 = ReCaptchaActivity.$r8$clinit;
                        ReCaptchaActivity.this.handleCookiesFromUrl(str);
                    }

                    @Override // android.webkit.WebViewClient
                    public final boolean shouldOverrideUrlLoading(WebView webView2, WebResourceRequest webResourceRequest) {
                        int i2 = MainActivity.$r8$clinit;
                        String uri = webResourceRequest.getUrl().toString();
                        int i3 = ReCaptchaActivity.$r8$clinit;
                        ReCaptchaActivity.this.handleCookiesFromUrl(uri);
                        return false;
                    }
                });
                ((WebView) this.recaptchaBinding.accum).clearCache(true);
                ((WebView) this.recaptchaBinding.accum).clearHistory();
                CookieManager.getInstance().removeAllCookies(null);
                ((WebView) this.recaptchaBinding.accum).loadUrl(replace);
                return;
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_recaptcha, menu);
        Options.Companion supportActionBar = getSupportActionBar();
        if (supportActionBar == null) {
            return true;
        }
        supportActionBar.setDisplayHomeAsUpEnabled(false);
        supportActionBar.setTitle(R.string.title_activity_recaptcha);
        supportActionBar.setSubtitle();
        return true;
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != R.id.menu_item_done) {
            return false;
        }
        saveCookiesAndFinish();
        return true;
    }

    public final void saveCookiesAndFinish() {
        handleCookiesFromUrl(((WebView) this.recaptchaBinding.accum).getUrl());
        if (!this.foundCookies.isEmpty()) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(getApplicationContext());
            defaultSharedPreferences.edit().putString(getApplicationContext().getString(R.string.recaptcha_cookies_key), this.foundCookies).apply();
            DownloaderImpl downloaderImpl = DownloaderImpl.instance;
            downloaderImpl.mCookies.put("recaptcha_cookies", this.foundCookies);
            setResult(-1);
        }
        ((WebView) this.recaptchaBinding.accum).loadUrl("about:blank");
        Intent intent = new Intent(this, (Class<?>) MainActivity.class);
        intent.addFlags(67108864);
        navigateUpTo(intent);
    }
}
