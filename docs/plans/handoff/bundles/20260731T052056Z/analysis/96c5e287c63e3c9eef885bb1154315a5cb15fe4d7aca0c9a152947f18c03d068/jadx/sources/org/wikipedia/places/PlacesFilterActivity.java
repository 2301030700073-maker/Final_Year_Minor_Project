package org.wikipedia.places;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.MaterialToolbar;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cache;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.diff.DiffUtil$DiffLinesAdapter;
import org.wikipedia.settings.Prefs;
import org.wikipedia.views.DefaultViewHolder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\b"}, d2 = {"Lorg/wikipedia/places/PlacesFilterActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "DiffLinesAdapter", "PlacesFilterHeaderViewHolder", "PlacesFilterFooterViewHolder", "PlacesFilterItemViewHolder", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PlacesFilterActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ActivityResultRegistry$register$2 addLanguageLauncher;
    public MultipartBody.Builder binding;
    public final ArrayList filtersList;
    public final String initLanguage;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PlacesFilterFooterViewHolder extends DefaultViewHolder {
        public PlacesFilterFooterViewHolder(View view) {
            super(view);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PlacesFilterHeaderViewHolder extends DefaultViewHolder {
        public final TextView headerText;

        public PlacesFilterHeaderViewHolder(View view) {
            super(view);
            View findViewById = view.findViewById(R.id.filter_header_title);
            findViewById.getClass();
            this.headerText = (TextView) findViewById;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PlacesFilterItemViewHolder extends DefaultViewHolder {
        public final DiffUtil$DiffLinesAdapter callback;
        public final DefaultSocket itemViewBinding;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public PlacesFilterItemViewHolder(okio.internal.DefaultSocket r2, org.wikipedia.diff.DiffUtil$DiffLinesAdapter r3) {
            /*
                r1 = this;
                java.lang.Object r0 = r2.socket
                android.widget.LinearLayout r0 = (android.widget.LinearLayout) r0
                r0.getClass()
                r1.<init>(r0)
                r1.itemViewBinding = r2
                r1.callback = r3
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.places.PlacesFilterActivity.PlacesFilterItemViewHolder.<init>(okio.internal.DefaultSocket, org.wikipedia.diff.DiffUtil$DiffLinesAdapter):void");
        }
    }

    public PlacesFilterActivity() {
        Prefs prefs = Prefs.INSTANCE;
        this.initLanguage = Prefs.getPlacesWikiCode();
        this.filtersList = new ArrayList();
        this.addLanguageLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(29, this), new FragmentManager$FragmentIntentSenderContract(3));
    }

    @Override // android.app.Activity
    public final void finish() {
        Intent intent = new Intent();
        Prefs prefs = Prefs.INSTANCE;
        setResult(-1, intent.putExtra("langChanged", !Intrinsics.areEqual(this.initLanguage, Prefs.getPlacesWikiCode())));
        super.finish();
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View inflate = getLayoutInflater().inflate(R.layout.activity_places_filters, (ViewGroup) null, false);
        int i = R.id.placesFiltersRecyclerView;
        RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.placesFiltersRecyclerView);
        if (recyclerView != null) {
            i = R.id.toolbar;
            MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
            if (materialToolbar != null) {
                this.binding = new MultipartBody.Builder((FrameLayout) inflate, recyclerView, materialToolbar);
                setUpRecyclerView$1();
                setStatusBarColor(Cache.Companion.getThemedColor(this, R.attr.background_color));
                setNavigationBarColor(Cache.Companion.getThemedColor(this, R.attr.background_color));
                MultipartBody.Builder builder = this.binding;
                if (builder == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                setSupportActionBar((MaterialToolbar) builder.parts);
                ContextsKt supportActionBar = getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.setDisplayHomeAsUpEnabled(true);
                }
                MultipartBody.Builder builder2 = this.binding;
                if (builder2 != null) {
                    setContentView((FrameLayout) builder2.boundary);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public final void setUpRecyclerView$1() {
        ArrayList arrayList = this.filtersList;
        arrayList.clear();
        arrayList.add("header");
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        arrayList.addAll(Jsoup.getInstance().getLanguageState().getAppLanguageCodes());
        arrayList.add("footer");
        MultipartBody.Builder builder = this.binding;
        if (builder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((RecyclerView) builder.type).setLayoutManager(new LinearLayoutManager(1));
        MultipartBody.Builder builder2 = this.binding;
        if (builder2 != null) {
            ((RecyclerView) builder2.type).setAdapter(new DiffUtil$DiffLinesAdapter(this, this));
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }
}
