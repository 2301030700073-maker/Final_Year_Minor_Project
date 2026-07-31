package org.wikipedia.activity;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.CookieManager;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.compose.ui.unit.DpKt;
import androidx.room.Room;
import coil3.network.NetworkHeaders;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Cache;
import okhttp3.Cookie;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.SingleWebViewActivity;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.okhttp.OkHttpWebViewClient;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.page.LinkHandler;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.PageViewModel;
import org.wikipedia.settings.Prefs;
import org.wikipedia.staticdata.MainPageNameData;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.ObservableWebView;
import org.wikipedia.yearinreview.YearInReviewViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/activity/SingleWebViewActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "SingleWebViewLinkHandler", "org/wikipedia/login/LoginClient", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SingleWebViewActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public DefaultSocket binding;
    public SingleWebViewLinkHandler blankLinkHandler;
    public final PageViewModel blankModel = new PageViewModel();
    public String currentUrl;
    public boolean isWebForm;
    public PageTitle pageTitleToLoadOnBackPress;
    public boolean showBackButton;
    public String targetUrl;
    public boolean wasFormSubmitted;

    public static void setCookies(String str) {
        List loadForRequest;
        CookieManager cookieManager = CookieManager.getInstance();
        if (NetworkHeaders.Builder.INSTANCE == null) {
            try {
                Prefs prefs = Prefs.INSTANCE;
                NetworkHeaders.Builder.INSTANCE = new NetworkHeaders.Builder(new LinkedHashMap(Prefs.getCookies()));
            } catch (Exception e) {
                L.logRemoteErrorIfProd(e);
            }
        }
        NetworkHeaders.Builder builder = NetworkHeaders.Builder.INSTANCE;
        if (builder == null) {
            builder = new NetworkHeaders.Builder(new LinkedHashMap());
            NetworkHeaders.Builder.INSTANCE = builder;
        }
        synchronized (builder) {
            str.getClass();
            HttpUrl.Builder builder2 = new HttpUrl.Builder(0);
            builder2.parse$okhttp(null, str);
            loadForRequest = builder.loadForRequest(builder2.m872build());
        }
        Iterator it = ((ArrayList) loadForRequest).iterator();
        while (it.hasNext()) {
            cookieManager.setCookie(str, ((Cookie) it.next()).toString());
        }
    }

    public final void goBack() {
        String str;
        String stringExtra = getIntent().getStringExtra("pageContentInfo");
        if (stringExtra != null && stringExtra.length() != 0) {
            String stringExtra2 = getIntent().getStringExtra("pageContentInfo");
            if (Intrinsics.areEqual(stringExtra2, "donorExperience")) {
                Cache.Companion.logAction$default(12, "article_return_click", "webpay_processed", null, null);
            } else if (Intrinsics.areEqual(stringExtra2, "yearInReview") && (str = YearInReviewViewModel.currentCampaignId) != null) {
                UriUtil.submit$default(230, null, "article_return_click", str, "webpay_processed", null);
            }
        }
        PageTitle pageTitle = this.pageTitleToLoadOnBackPress;
        if (pageTitle != null) {
            HistoryEntry historyEntry = new HistoryEntry(40, pageTitle);
            Intent putExtra = new Intent("org.wikipedia.load_from_existing_tab").setClass(this, PageActivity.class).putExtra("org.wikipedia.history.historyentry", historyEntry).putExtra("title", historyEntry.getTitle());
            putExtra.getClass();
            startActivity(putExtra);
        }
        finish();
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.activity_single_web_view, (ViewGroup) null, false);
        int i2 = R.id.backButton;
        Button button = (Button) Room.findChildViewById(inflate, R.id.backButton);
        if (button != null) {
            i2 = R.id.progressBar;
            LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) Room.findChildViewById(inflate, R.id.progressBar);
            if (linearProgressIndicator != null) {
                i2 = R.id.toolbar;
                MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
                if (materialToolbar != null) {
                    i2 = R.id.webView;
                    ObservableWebView observableWebView = (ObservableWebView) Room.findChildViewById(inflate, R.id.webView);
                    if (observableWebView != null) {
                        FrameLayout frameLayout = (FrameLayout) inflate;
                        this.binding = new DefaultSocket(frameLayout, button, linearProgressIndicator, materialToolbar, observableWebView, 10);
                        setContentView(frameLayout);
                        DefaultSocket defaultSocket = this.binding;
                        if (defaultSocket == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        setSupportActionBar((MaterialToolbar) defaultSocket.source);
                        ContextsKt supportActionBar = getSupportActionBar();
                        if (supportActionBar != null) {
                            supportActionBar.setTitle("");
                        }
                        String stringExtra = getIntent().getStringExtra("url");
                        stringExtra.getClass();
                        this.targetUrl = stringExtra;
                        this.showBackButton = getIntent().getBooleanExtra("goBack", false);
                        this.isWebForm = getIntent().getBooleanExtra("isWebForm", false);
                        Intent intent = getIntent();
                        intent.getClass();
                        this.pageTitleToLoadOnBackPress = (PageTitle) ((Parcelable) DpKt.getParcelableExtra(intent, "title", PageTitle.class));
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        WikiSite wikiSite = Jsoup.getInstance().getWikiSite();
                        SingleWebViewLinkHandler singleWebViewLinkHandler = new SingleWebViewLinkHandler(this);
                        singleWebViewLinkHandler.wikiSite = wikiSite;
                        this.blankLinkHandler = singleWebViewLinkHandler;
                        DpKt.addCallback$default(getOnBackPressedDispatcher(), this, new MainActivity$$ExternalSyntheticLambda1(1, this));
                        DefaultSocket defaultSocket2 = this.binding;
                        if (defaultSocket2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((Button) defaultSocket2.socket).setVisibility(this.showBackButton ? 0 : 8);
                        DefaultSocket defaultSocket3 = this.binding;
                        if (defaultSocket3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((Button) defaultSocket3.socket).setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(4, this));
                        DefaultSocket defaultSocket4 = this.binding;
                        if (defaultSocket4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((ObservableWebView) defaultSocket4.sink).getSettings().setJavaScriptEnabled(true);
                        DefaultSocket defaultSocket5 = this.binding;
                        if (defaultSocket5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((ObservableWebView) defaultSocket5.sink).getSettings().setMediaPlaybackRequiresUserGesture(false);
                        DefaultSocket defaultSocket6 = this.binding;
                        if (defaultSocket6 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((ObservableWebView) defaultSocket6.sink).setWebViewClient(new OkHttpWebViewClient() { // from class: org.wikipedia.activity.SingleWebViewActivity$onCreate$3
                            @Override // org.wikipedia.dataclient.okhttp.OkHttpWebViewClient
                            public final LinkHandler getLinkHandler() {
                                SingleWebViewActivity.SingleWebViewLinkHandler singleWebViewLinkHandler2 = SingleWebViewActivity.this.blankLinkHandler;
                                if (singleWebViewLinkHandler2 != null) {
                                    return singleWebViewLinkHandler2;
                                }
                                Intrinsics.throwUninitializedPropertyAccessException("blankLinkHandler");
                                throw null;
                            }

                            @Override // org.wikipedia.dataclient.okhttp.OkHttpWebViewClient
                            public final PageViewModel getModel() {
                                return SingleWebViewActivity.this.blankModel;
                            }

                            @Override // android.webkit.WebViewClient
                            public final void onPageFinished(WebView webView, String str) {
                                super.onPageFinished(webView, str);
                                SingleWebViewActivity singleWebViewActivity = SingleWebViewActivity.this;
                                DefaultSocket defaultSocket7 = singleWebViewActivity.binding;
                                if (defaultSocket7 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                    throw null;
                                }
                                ((LinearProgressIndicator) defaultSocket7.closeBits).setVisibility(8);
                                singleWebViewActivity.currentUrl = str;
                                if (webView != null) {
                                    webView.evaluateJavascript("(function() {let style = document.createElement('style');style.innerHTML = '.header-chrome { visibility: hidden; margin-top: 0px; height: 0px; } #page-secondary-actions { display: none; } .mw-footer { padding-bottom: 0px; } .page-actions-menu { display: none; } .minerva__tab-container { display: none; } .banner-container { display: none; }';document.head.appendChild(style);})();", null);
                                }
                                singleWebViewActivity.invalidateOptionsMenu();
                                if (singleWebViewActivity.isWebForm && singleWebViewActivity.wasFormSubmitted) {
                                    DefaultSocket defaultSocket8 = singleWebViewActivity.binding;
                                    if (defaultSocket8 == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                        throw null;
                                    }
                                    ((Button) defaultSocket8.socket).setVisibility(0);
                                }
                                if (str == null) {
                                    str = "";
                                }
                                SingleWebViewActivity.setCookies(str);
                            }

                            @Override // android.webkit.WebViewClient
                            public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                                super.onPageStarted(webView, str, bitmap);
                                SingleWebViewActivity singleWebViewActivity = SingleWebViewActivity.this;
                                DefaultSocket defaultSocket7 = singleWebViewActivity.binding;
                                if (defaultSocket7 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                    throw null;
                                }
                                ((LinearProgressIndicator) defaultSocket7.closeBits).setVisibility(0);
                                singleWebViewActivity.invalidateOptionsMenu();
                            }

                            @Override // org.wikipedia.dataclient.okhttp.OkHttpWebViewClient, android.webkit.WebViewClient
                            public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                                webView.getClass();
                                webResourceRequest.getClass();
                                if (Intrinsics.areEqual(webResourceRequest.getMethod(), "POST")) {
                                    SingleWebViewActivity.this.wasFormSubmitted = true;
                                }
                                return super.shouldInterceptRequest(webView, webResourceRequest);
                            }

                            @Override // android.webkit.WebViewClient
                            public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                                SingleWebViewActivity singleWebViewActivity = SingleWebViewActivity.this;
                                if (singleWebViewActivity.isWebForm) {
                                    String valueOf = String.valueOf(webResourceRequest != null ? webResourceRequest.getUrl() : null);
                                    String str = singleWebViewActivity.targetUrl;
                                    if (str == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("targetUrl");
                                        throw null;
                                    }
                                    if (!StringsKt__StringsJVMKt.startsWith(valueOf, str, false)) {
                                        singleWebViewActivity.finish();
                                        if (webResourceRequest == null) {
                                            return true;
                                        }
                                        String path = webResourceRequest.getUrl().getPath();
                                        if (path == null) {
                                            path = "";
                                        }
                                        StringUtil stringUtil = StringUtil.INSTANCE;
                                        if (StringsKt__StringsJVMKt.endsWith(path, StringsKt__StringsJVMKt.replace$default(MainPageNameData.valueFor("en"), " ", "_"), false)) {
                                            return true;
                                        }
                                        Uri url = webResourceRequest.getUrl();
                                        url.getClass();
                                        UriUtil.visitInExternalBrowser(singleWebViewActivity, url);
                                        return true;
                                    }
                                }
                                return false;
                            }
                        });
                        DefaultSocket defaultSocket7 = this.binding;
                        if (defaultSocket7 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((ObservableWebView) defaultSocket7.sink).setWebChromeClient(new SingleWebViewActivity$onCreate$4(i, this));
                        String str = this.targetUrl;
                        if (str == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("targetUrl");
                            throw null;
                        }
                        setCookies(str);
                        if (bundle == null) {
                            DefaultSocket defaultSocket8 = this.binding;
                            if (defaultSocket8 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                throw null;
                            }
                            ObservableWebView observableWebView2 = (ObservableWebView) defaultSocket8.sink;
                            String str2 = this.targetUrl;
                            if (str2 != null) {
                                observableWebView2.loadUrl(str2);
                                return;
                            } else {
                                Intrinsics.throwUninitializedPropertyAccessException("targetUrl");
                                throw null;
                            }
                        }
                        return;
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_single_webview, menu);
        return true;
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onDestroy() {
        DefaultSocket defaultSocket = this.binding;
        if (defaultSocket == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((ObservableWebView) defaultSocket.sink).clearAllListeners();
        DefaultSocket defaultSocket2 = this.binding;
        if (defaultSocket2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ViewParent parent = ((ObservableWebView) defaultSocket2.sink).getParent();
        parent.getClass();
        ViewGroup viewGroup = (ViewGroup) parent;
        DefaultSocket defaultSocket3 = this.binding;
        if (defaultSocket3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        viewGroup.removeView((ObservableWebView) defaultSocket3.sink);
        super.onDestroy();
    }

    @Override // org.wikipedia.activity.BaseActivity, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != R.id.menu_in_new) {
            return super.onOptionsItemSelected(menuItem);
        }
        String str = this.currentUrl;
        if (str == null) {
            return true;
        }
        Uri parse = Uri.parse(str);
        parse.getClass();
        UriUtil.visitInExternalBrowser(this, parse);
        return true;
    }

    @Override // android.app.Activity
    public final boolean onPrepareOptionsMenu(Menu menu) {
        String str;
        menu.getClass();
        MenuItem findItem = menu.findItem(R.id.menu_group);
        if (findItem != null) {
            DefaultSocket defaultSocket = this.binding;
            if (defaultSocket == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            findItem.setVisible((((LinearProgressIndicator) defaultSocket.closeBits).getVisibility() == 0 || (str = this.currentUrl) == null || str.length() == 0) ? false : true);
        }
        return super.onPrepareOptionsMenu(menu);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SingleWebViewLinkHandler extends LinkHandler {
        public WikiSite wikiSite;

        @Override // org.wikipedia.page.LinkHandler
        public final WikiSite getWikiSite() {
            return this.wikiSite;
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onPageLinkClicked(String str, String str2) {
            str2.getClass();
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onInternalLinkClicked(PageTitle pageTitle) {
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onMediaLinkClicked(PageTitle pageTitle) {
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onDiffLinkClicked(PageTitle pageTitle, long j) {
        }
    }
}
