package org.wikipedia.talk;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.compose.animation.core.Animation;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.MaterialToolbar;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda1;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.DrawableItemDecoration;
import org.wikipedia.views.PageItemView;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u0001:\b\u0004\u0005\u0006\u0007\b\t\n\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\f"}, d2 = {"Lorg/wikipedia/talk/ArchivedTalkPagesActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "LoadingItemAdapter", "DiffLinesAdapter", "CategoryMemberDiffCallback", "CategoryMembersAdapter", "LoadingViewHolder", "EmptyViewHolder", "ArchivedTalkPageItemHolder", "org/wikipedia/media/AvPlayer", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ArchivedTalkPagesActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final CategoryActivity.CategoryMembersAdapter archivedTalkPagesAdapter;
    public final ConcatAdapter archivedTalkPagesConcatAdapter;
    public final CategoryActivity.LoadingItemAdapter archivedTalkPagesLoadFooter;
    public final CategoryActivity.LoadingItemAdapter archivedTalkPagesLoadHeader;
    public OkHttpCall.AnonymousClass1 binding;
    public final AvPlayer itemCallback;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ArchivedTalkPageItemHolder extends RecyclerView.ViewHolder {
        public final PageItemView view;

        public ArchivedTalkPageItemHolder(PageItemView pageItemView) {
            super(pageItemView);
            this.view = pageItemView;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EmptyViewHolder extends RecyclerView.ViewHolder {
        public EmptyViewHolder(View view) {
            super(view);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LoadingViewHolder extends RecyclerView.ViewHolder {
        public LoadingViewHolder(View view) {
            super(view);
        }
    }

    public ArchivedTalkPagesActivity() {
        CategoryActivity.CategoryMembersAdapter categoryMembersAdapter = new CategoryActivity.CategoryMembersAdapter(this);
        this.archivedTalkPagesAdapter = categoryMembersAdapter;
        final int i = 0;
        CategoryActivity.LoadingItemAdapter loadingItemAdapter = new CategoryActivity.LoadingItemAdapter(this, new Function0(this) { // from class: org.wikipedia.talk.ArchivedTalkPagesActivity$$ExternalSyntheticLambda0
            public final /* synthetic */ ArchivedTalkPagesActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                Unit unit = Unit.INSTANCE;
                ArchivedTalkPagesActivity archivedTalkPagesActivity = this.f$0;
                switch (i2) {
                    case 0:
                        archivedTalkPagesActivity.archivedTalkPagesAdapter.retry();
                        break;
                    default:
                        archivedTalkPagesActivity.archivedTalkPagesAdapter.retry();
                        break;
                }
                return unit;
            }
        }, 3);
        this.archivedTalkPagesLoadHeader = loadingItemAdapter;
        final int i2 = 1;
        CategoryActivity.LoadingItemAdapter loadingItemAdapter2 = new CategoryActivity.LoadingItemAdapter(this, new Function0(this) { // from class: org.wikipedia.talk.ArchivedTalkPagesActivity$$ExternalSyntheticLambda0
            public final /* synthetic */ ArchivedTalkPagesActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                Unit unit = Unit.INSTANCE;
                ArchivedTalkPagesActivity archivedTalkPagesActivity = this.f$0;
                switch (i22) {
                    case 0:
                        archivedTalkPagesActivity.archivedTalkPagesAdapter.retry();
                        break;
                    default:
                        archivedTalkPagesActivity.archivedTalkPagesAdapter.retry();
                        break;
                }
                return unit;
            }
        }, 3);
        this.archivedTalkPagesLoadFooter = loadingItemAdapter2;
        this.archivedTalkPagesConcatAdapter = categoryMembersAdapter.withLoadStateHeaderAndFooter(loadingItemAdapter, loadingItemAdapter2);
        this.itemCallback = new AvPlayer(24, this);
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(ArchivedTalkPagesViewModel.class), new Function0(this) { // from class: org.wikipedia.talk.ArchivedTalkPagesActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ ArchivedTalkPagesActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                ArchivedTalkPagesActivity archivedTalkPagesActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return archivedTalkPagesActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return archivedTalkPagesActivity.getViewModelStore();
                    default:
                        return archivedTalkPagesActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.talk.ArchivedTalkPagesActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ ArchivedTalkPagesActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                ArchivedTalkPagesActivity archivedTalkPagesActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return archivedTalkPagesActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return archivedTalkPagesActivity.getViewModelStore();
                    default:
                        return archivedTalkPagesActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.talk.ArchivedTalkPagesActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ ArchivedTalkPagesActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                ArchivedTalkPagesActivity archivedTalkPagesActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return archivedTalkPagesActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return archivedTalkPagesActivity.getViewModelStore();
                    default:
                        return archivedTalkPagesActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TextView textView;
        super.onCreate(bundle);
        Continuation continuation = null;
        int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.activity_archived_talk_pages, (ViewGroup) null, false);
        int i2 = R.id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.recyclerView);
        if (recyclerView != null) {
            i2 = R.id.toolbar;
            MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
            if (materialToolbar != null) {
                FrameLayout frameLayout = (FrameLayout) inflate;
                this.binding = new OkHttpCall.AnonymousClass1(frameLayout, recyclerView, materialToolbar, 1);
                setContentView(frameLayout);
                OkHttpCall.AnonymousClass1 anonymousClass1 = this.binding;
                if (anonymousClass1 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                setSupportActionBar((MaterialToolbar) anonymousClass1.this$0);
                PageTitle pageTitle = ((ArchivedTalkPagesViewModel) this.viewModel$delegate.getValue()).pageTitle;
                StringUtil stringUtil = StringUtil.INSTANCE;
                CharSequence fromHtml = StringUtil.fromHtml(getString(R.string.talk_archived_title, Animation.CC.m("<a href='#'>", StringsKt.substringAfter$default(pageTitle.getDisplayText(), ':'), "</a>")));
                OkHttpCall.AnonymousClass1 anonymousClass12 = this.binding;
                if (anonymousClass12 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                MaterialToolbar materialToolbar2 = (MaterialToolbar) anonymousClass12.this$0;
                int i3 = 0;
                while (true) {
                    if (i3 >= materialToolbar2.getChildCount()) {
                        textView = null;
                        break;
                    }
                    int i4 = i3 + 1;
                    View childAt = materialToolbar2.getChildAt(i3);
                    if (childAt == null) {
                        throw new IndexOutOfBoundsException();
                    }
                    if (childAt instanceof TextView) {
                        textView = (TextView) childAt;
                        break;
                    }
                    i3 = i4;
                }
                if (textView != null) {
                    textView.setContentDescription(fromHtml);
                    textView.setMovementMethod(new LinkMovementMethodExt(new SearchFragment$$ExternalSyntheticLambda1(9, this)));
                    View view = new View[]{textView}[0];
                    RegexKt.setTooltipText(view, view.getContentDescription());
                }
                ContextsKt supportActionBar = getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.setTitle(fromHtml);
                }
                ContextsKt supportActionBar2 = getSupportActionBar();
                if (supportActionBar2 != null) {
                    supportActionBar2.setDisplayHomeAsUpEnabled(true);
                }
                OkHttpCall.AnonymousClass1 anonymousClass13 = this.binding;
                if (anonymousClass13 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((RecyclerView) anonymousClass13.val$callback).setLayoutManager(new LinearLayoutManager(1));
                OkHttpCall.AnonymousClass1 anonymousClass14 = this.binding;
                if (anonymousClass14 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((RecyclerView) anonymousClass14.val$callback).addItemDecoration(new DrawableItemDecoration((Context) this, false, false, 16));
                OkHttpCall.AnonymousClass1 anonymousClass15 = this.binding;
                if (anonymousClass15 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((RecyclerView) anonymousClass15.val$callback).setAdapter(this.archivedTalkPagesConcatAdapter);
                AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new ArchivedTalkPagesActivity$onCreate$1(this, continuation, i), 3);
                return;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }
}
