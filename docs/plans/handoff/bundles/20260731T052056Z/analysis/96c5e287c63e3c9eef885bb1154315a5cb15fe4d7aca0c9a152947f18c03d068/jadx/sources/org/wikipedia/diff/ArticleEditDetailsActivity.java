package org.wikipedia.diff;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.compose.ui.unit.DpKt;
import androidx.fragment.app.BackStackRecord;
import androidx.room.Room;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.MaterialToolbar;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.page.PageTitle;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/diff/ArticleEditDetailsActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "Companion", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ArticleEditDetailsActivity extends BaseActivity {
    public static final ByteString.Companion Companion = new ByteString.Companion(15);
    public OkHttpCall.AnonymousClass1 binding;

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View inflate = getLayoutInflater().inflate(R.layout.activity_article_edit_details, (ViewGroup) null, false);
        int i = R.id.fragmentContainer;
        FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(inflate, R.id.fragmentContainer);
        if (frameLayout != null) {
            i = R.id.toolbar;
            MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
            if (materialToolbar != null) {
                FrameLayout frameLayout2 = (FrameLayout) inflate;
                this.binding = new OkHttpCall.AnonymousClass1(frameLayout2, frameLayout, materialToolbar, 2);
                setContentView(frameLayout2);
                OkHttpCall.AnonymousClass1 anonymousClass1 = this.binding;
                if (anonymousClass1 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                setSupportActionBar((MaterialToolbar) anonymousClass1.this$0);
                ContextsKt supportActionBar = getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.setDisplayHomeAsUpEnabled(true);
                }
                Intent intent = getIntent();
                intent.getClass();
                Parcelable parcelable = (Parcelable) DpKt.getParcelableExtra(intent, "articleTitle", PageTitle.class);
                parcelable.getClass();
                int intExtra = getIntent().getIntExtra("pageId", -1);
                long longExtra = getIntent().getLongExtra("revisionFrom", -1L);
                long longExtra2 = getIntent().getLongExtra("revisionTo", -1L);
                Serializable serializableExtra = getIntent().getSerializableExtra("invokeSource");
                serializableExtra.getClass();
                ArticleEditDetailsFragment articleEditDetailsFragment = new ArticleEditDetailsFragment();
                articleEditDetailsFragment.setArguments(UStringsKt.bundleOf(new Pair("articleTitle", (PageTitle) parcelable), new Pair("pageId", Integer.valueOf(intExtra)), new Pair("revisionFrom", Long.valueOf(longExtra)), new Pair("revisionTo", Long.valueOf(longExtra2)), new Pair("invokeSource", (Constants.InvokeSource) serializableExtra)));
                if (bundle == null) {
                    BackStackRecord backStackRecord = new BackStackRecord(getSupportFragmentManager());
                    OkHttpCall.AnonymousClass1 anonymousClass12 = this.binding;
                    if (anonymousClass12 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    backStackRecord.doAddOp(((FrameLayout) anonymousClass12.val$callback).getId(), articleEditDetailsFragment, null, 1);
                    backStackRecord.commit();
                    return;
                }
                return;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }
}
