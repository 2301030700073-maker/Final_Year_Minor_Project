package org.wikipedia.commons;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.compose.ui.unit.DpKt;
import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.text.UStringsKt;
import okhttp3.Cache;
import org.wikipedia.R;
import org.wikipedia.activity.SingleFragmentActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.views.ImageZoomHelper;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/commons/FilePageActivity;", "Lorg/wikipedia/activity/SingleFragmentActivity;", "Lorg/wikipedia/commons/FilePageFragment;", "<init>", "()V", "Companion", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FilePageActivity extends SingleFragmentActivity {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        Intent intent = getIntent();
        intent.getClass();
        Parcelable parcelable = (Parcelable) DpKt.getParcelableExtra(intent, "title", PageTitle.class);
        parcelable.getClass();
        boolean booleanExtra = getIntent().getBooleanExtra("allowEdit", true);
        FilePageFragment filePageFragment = new FilePageFragment();
        filePageFragment.setArguments(UStringsKt.bundleOf(new Pair("title", (PageTitle) parcelable), new Pair("allowEdit", Boolean.valueOf(booleanExtra))));
        return filePageFragment;
    }

    @Override // org.wikipedia.activity.SingleFragmentActivity, org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.imageZoomHelper = new ImageZoomHelper(this);
        setStatusBarColor(Cache.Companion.getThemedColor(this, R.attr.paper_color));
        setNavigationBarColor(Cache.Companion.getThemedColor(this, R.attr.paper_color));
    }
}
