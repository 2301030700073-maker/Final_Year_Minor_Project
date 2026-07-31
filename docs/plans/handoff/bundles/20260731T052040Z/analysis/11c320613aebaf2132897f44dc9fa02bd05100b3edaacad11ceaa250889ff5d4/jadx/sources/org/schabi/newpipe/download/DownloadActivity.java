package org.schabi.newpipe.download;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.FragmentContainerView;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import okio.Options;
import org.jsoup.nodes.Printer;
import org.schabi.newpipe.R;
import org.schabi.newpipe.util.DeviceUtils;
import org.schabi.newpipe.views.FocusOverlayView;
import us.shandian.giga.service.DownloadManagerService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class DownloadActivity extends AppCompatActivity {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Intent intent = new Intent();
        intent.setClass(this, DownloadManagerService.class);
        startService(intent);
        Options.Companion.setTheme(this, -1);
        super.onCreate(bundle);
        View inflate = getLayoutInflater().inflate(R.layout.activity_downloader, (ViewGroup) null, false);
        int i = R.id.frame;
        if (((FragmentContainerView) Options.Companion.findChildViewById(R.id.frame, inflate)) != null) {
            i = R.id.toolbar_layout;
            View findChildViewById = Options.Companion.findChildViewById(R.id.toolbar_layout, inflate);
            if (findChildViewById != null) {
                Printer bind = Printer.bind(findChildViewById);
                setContentView((LinearLayout) inflate);
                setSupportActionBar((Toolbar) bind.accum);
                Options.Companion supportActionBar = getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.setDisplayHomeAsUpEnabled(true);
                    supportActionBar.setTitle(R.string.downloads_title);
                    supportActionBar.setDisplayShowTitleEnabled(true);
                }
                getWindow().getDecorView().getViewTreeObserver().addOnGlobalLayoutListener(new AppCompatSpinner.AnonymousClass2(this, 5));
                if (DeviceUtils.isTv(this)) {
                    FocusOverlayView.setupFocusObserver(this);
                    return;
                }
                return;
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(R.menu.download_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }
}
