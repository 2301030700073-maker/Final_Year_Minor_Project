package org.wikipedia.games;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.MaterialToolbar;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.ConnectionPool;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.SingleFragmentActivity;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.main.MainActivity;
import org.wikipedia.navtab.NavTab;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.NotificationButtonView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/games/GamesHubActivity;", "Lorg/wikipedia/activity/SingleFragmentActivity;", "Lorg/wikipedia/games/GamesHubFragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class GamesHubActivity extends SingleFragmentActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ConnectionPool binding;
    public NotificationButtonView notificationButtonView;

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        return new GamesHubFragment();
    }

    @Override // org.wikipedia.activity.SingleFragmentActivity, org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View inflate = getLayoutInflater().inflate(R.layout.activity_games_hub, (ViewGroup) null, false);
        int i = R.id.fragment_container;
        if (((FrameLayout) Room.findChildViewById(inflate, R.id.fragment_container)) != null) {
            i = R.id.toolbar;
            MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
            if (materialToolbar != null) {
                LinearLayout linearLayout = (LinearLayout) inflate;
                this.binding = new ConnectionPool(26, linearLayout, materialToolbar);
                setContentView(linearLayout);
                ConnectionPool connectionPool = this.binding;
                if (connectionPool == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                setSupportActionBar((MaterialToolbar) connectionPool.delegate);
                ContextsKt supportActionBar = getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.setDisplayHomeAsUpEnabled(true);
                }
                setTitle(getString(R.string.games_hub_activity_title));
                this.notificationButtonView = new NotificationButtonView(this, null);
                return;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_games_hub_overflow, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // org.wikipedia.activity.BaseActivity, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId != R.id.menu_game_stats) {
            if (itemId != R.id.menu_learn_more) {
                return super.onOptionsItemSelected(menuItem);
            }
            WikiGamesEvent.submit$default(1020, null, null, "learn_more_click", "games_hub", null, null, null);
            String string = getString(R.string.games_hub_wiki_url);
            string.getClass();
            Uri parse = Uri.parse(string);
            parse.getClass();
            UriUtil.visitInExternalBrowser(this, parse);
            return true;
        }
        WikiGamesEvent.submit$default(1020, null, null, "game_stats_click", "games_hub", null, null, null);
        WikiGames wikiGames = WikiGames.WHICH_CAME_FIRST;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        boolean isLangSupported = wikiGames.isLangSupported(ViewSizeResolver$CC.m());
        Intent intent = new Intent(this, (Class<?>) MainActivity.class);
        intent.addFlags(603979776);
        intent.putExtra("goToSETab", NavTab.EDITS.ordinal());
        intent.putExtra("scrollToGames", isLangSupported);
        if (!StringsKt__StringsJVMKt.equals(Jsoup.getInstance().getLanguageState().getAppLanguageCode(), ((GamesHubFragment) getFragment()).getViewModel().selectedLanguage, true) || !isLangSupported) {
            intent.putExtra("snackbarMessage", getString(R.string.activity_tab_snackbar_label));
        }
        startActivity(intent);
        finish();
        return true;
    }

    @Override // android.app.Activity
    public final boolean onPrepareOptionsMenu(Menu menu) {
        menu.getClass();
        MenuItem findItem = menu.findItem(R.id.menu_notifications);
        if (Headers.Companion.isLoggedIn()) {
            findItem.setVisible(true);
            NotificationButtonView notificationButtonView = this.notificationButtonView;
            if (notificationButtonView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            Prefs prefs = Prefs.INSTANCE;
            notificationButtonView.setUnreadCount(Prefs.getNotificationUnreadCount());
            NotificationButtonView notificationButtonView2 = this.notificationButtonView;
            if (notificationButtonView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            notificationButtonView2.setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(13, this));
            NotificationButtonView notificationButtonView3 = this.notificationButtonView;
            if (notificationButtonView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            notificationButtonView3.setContentDescription(getString(R.string.notifications_activity_title));
            NotificationButtonView notificationButtonView4 = this.notificationButtonView;
            if (notificationButtonView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            findItem.setActionView(notificationButtonView4);
            findItem.expandActionView();
            NotificationButtonView notificationButtonView5 = this.notificationButtonView;
            if (notificationButtonView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            View view = new View[]{notificationButtonView5}[0];
            RegexKt.setTooltipText(view, view.getContentDescription());
        } else {
            findItem.setVisible(false);
        }
        updateNotificationDot$1(false);
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        invalidateOptionsMenu();
    }

    @Override // org.wikipedia.activity.BaseActivity
    public final void onUnreadNotification() {
        updateNotificationDot$1(true);
    }

    public final void updateNotificationDot$1(boolean z) {
        if (Headers.Companion.isLoggedIn()) {
            Prefs prefs = Prefs.INSTANCE;
            if (Prefs.getNotificationUnreadCount() > 0) {
                NotificationButtonView notificationButtonView = this.notificationButtonView;
                if (notificationButtonView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                    throw null;
                }
                notificationButtonView.setUnreadCount(Prefs.getNotificationUnreadCount());
                if (z) {
                    NotificationButtonView notificationButtonView2 = this.notificationButtonView;
                    if (notificationButtonView2 != null) {
                        notificationButtonView2.runAnimation();
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                        throw null;
                    }
                }
                return;
            }
        }
        NotificationButtonView notificationButtonView3 = this.notificationButtonView;
        if (notificationButtonView3 != null) {
            notificationButtonView3.setUnreadCount(0);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
            throw null;
        }
    }
}
