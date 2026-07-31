package org.wikipedia.feed.news;

import android.content.Context;
import android.content.res.ColorStateList;
import android.net.Uri;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.paging.LoadStateAdapter;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Reflection;
import okhttp3.Cache;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.databinding.FragmentNewsBinding;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$2;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.feed.view.ListItemView;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.page.PageTitle;
import org.wikipedia.suggestededits.SuggestedEditsTask;
import org.wikipedia.suggestededits.SuggestedEditsTaskView;
import org.wikipedia.suggestededits.SuggestedEditsTasksFragment;
import org.wikipedia.util.DeviceUtil;
import org.wikipedia.util.ImageUrlUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.AppTextView;
import org.wikipedia.views.DefaultViewHolder;
import org.wikipedia.views.DrawableItemDecoration;
import org.wikipedia.views.FaceAndColorDetectImageView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/feed/news/NewsFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "RecyclerAdapter", "org/wikipedia/media/AvPlayer", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NewsFragment extends Fragment {
    public FragmentNewsBinding _binding;
    public final NewsFragment$$ExternalSyntheticLambda0 offsetChangedListener;
    public final Request.Builder viewModel$delegate;

    public NewsFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new HomeFragment$special$$inlined$viewModels$default$2(8, new HomeFragment$special$$inlined$viewModels$default$2(7, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(NewsViewModel.class), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 16), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 3), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 17));
        this.offsetChangedListener = new NewsFragment$$ExternalSyntheticLambda0(0, this);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Uri uri;
        layoutInflater.getClass();
        int i = 0;
        View inflate = layoutInflater.inflate(R.layout.fragment_news, viewGroup, false);
        int i2 = R.id.app_bar_layout;
        AppBarLayout appBarLayout = (AppBarLayout) Room.findChildViewById(inflate, R.id.app_bar_layout);
        if (appBarLayout != null) {
            i2 = R.id.gradient_view;
            View findChildViewById = Room.findChildViewById(inflate, R.id.gradient_view);
            if (findChildViewById != null) {
                i2 = R.id.header_image_view;
                FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) Room.findChildViewById(inflate, R.id.header_image_view);
                if (faceAndColorDetectImageView != null) {
                    i2 = R.id.news_story_items_recyclerview;
                    RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.news_story_items_recyclerview);
                    if (recyclerView != null) {
                        i2 = R.id.story_text_view;
                        AppTextView appTextView = (AppTextView) Room.findChildViewById(inflate, R.id.story_text_view);
                        if (appTextView != null) {
                            i2 = R.id.toolbar;
                            MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
                            if (materialToolbar != null) {
                                i2 = R.id.toolbar_container;
                                CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) Room.findChildViewById(inflate, R.id.toolbar_container);
                                if (collapsingToolbarLayout != null) {
                                    this._binding = new FragmentNewsBinding((CoordinatorLayout) inflate, appBarLayout, findChildViewById, faceAndColorDetectImageView, recyclerView, appTextView, materialToolbar, collapsingToolbarLayout);
                                    AppCompatActivity requireActivity = requireActivity();
                                    FragmentNewsBinding fragmentNewsBinding = this._binding;
                                    fragmentNewsBinding.getClass();
                                    requireActivity.setSupportActionBar((MaterialToolbar) fragmentNewsBinding.toolbar);
                                    ContextsKt supportActionBar = requireActivity().getSupportActionBar();
                                    if (supportActionBar != null) {
                                        supportActionBar.setDisplayHomeAsUpEnabled(true);
                                    }
                                    ContextsKt supportActionBar2 = requireActivity().getSupportActionBar();
                                    if (supportActionBar2 != null) {
                                        supportActionBar2.setTitle("");
                                    }
                                    FragmentNewsBinding fragmentNewsBinding2 = this._binding;
                                    fragmentNewsBinding2.getClass();
                                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) fragmentNewsBinding2.rootView;
                                    coordinatorLayout.getClass();
                                    Request.Builder builder = this.viewModel$delegate;
                                    BitmapsKt.setLayoutDirectionByLang(coordinatorLayout, ((NewsViewModel) builder.getValue()).wiki.languageCode);
                                    FragmentNewsBinding fragmentNewsBinding3 = this._binding;
                                    fragmentNewsBinding3.getClass();
                                    ((View) fragmentNewsBinding3.gradientView).setBackground(Jsoup.getPowerGradient(Cache.Companion.getThemedColor(requireContext(), R.attr.overlay_color), 48));
                                    Uri firstImageUri = NewsItem.getFirstImageUri(((NewsViewModel) builder.getValue()).item.links);
                                    if (firstImageUri != null) {
                                        Pattern pattern = ImageUrlUtil.WIDTH_IN_IMAGE_URL_REGEX;
                                        String uri2 = firstImageUri.toString();
                                        uri2.getClass();
                                        uri = Uri.parse(ImageUrlUtil.getUrlForPreferredSize(960, uri2));
                                        uri.getClass();
                                    } else {
                                        uri = null;
                                    }
                                    if (uri == null) {
                                        FragmentNewsBinding fragmentNewsBinding4 = this._binding;
                                        fragmentNewsBinding4.getClass();
                                        ((AppBarLayout) fragmentNewsBinding4.appBarLayout).setExpanded(false, false, true);
                                    }
                                    FragmentNewsBinding fragmentNewsBinding5 = this._binding;
                                    fragmentNewsBinding5.getClass();
                                    FaceAndColorDetectImageView faceAndColorDetectImageView2 = (FaceAndColorDetectImageView) fragmentNewsBinding5.headerImageView;
                                    int i3 = FaceAndColorDetectImageView.$r8$clinit;
                                    faceAndColorDetectImageView2.loadImage(uri, null);
                                    AppCompatActivity requireActivity2 = requireActivity();
                                    FragmentNewsBinding fragmentNewsBinding6 = this._binding;
                                    fragmentNewsBinding6.getClass();
                                    DeviceUtil.updateStatusBarTheme(requireActivity2, (MaterialToolbar) fragmentNewsBinding6.toolbar, true);
                                    FragmentNewsBinding fragmentNewsBinding7 = this._binding;
                                    fragmentNewsBinding7.getClass();
                                    ((AppBarLayout) fragmentNewsBinding7.appBarLayout).addOnOffsetChangedListener(this.offsetChangedListener);
                                    FragmentNewsBinding fragmentNewsBinding8 = this._binding;
                                    fragmentNewsBinding8.getClass();
                                    ((CollapsingToolbarLayout) fragmentNewsBinding8.toolbarContainer).setStatusBarScrimColor(Cache.Companion.getThemedColor(requireContext(), R.attr.paper_color));
                                    FragmentNewsBinding fragmentNewsBinding9 = this._binding;
                                    fragmentNewsBinding9.getClass();
                                    AppTextView appTextView2 = (AppTextView) fragmentNewsBinding9.storyTextView;
                                    String str = ((NewsViewModel) builder.getValue()).item.story;
                                    StringUtil stringUtil = StringUtil.INSTANCE;
                                    appTextView2.setText(StringUtil.fromHtml(StringUtil.removeStyleTags(str != null ? str : "")).toString());
                                    FragmentNewsBinding fragmentNewsBinding10 = this._binding;
                                    fragmentNewsBinding10.getClass();
                                    RecyclerView recyclerView2 = (RecyclerView) fragmentNewsBinding10.newsStoryItemsRecyclerview;
                                    requireContext();
                                    recyclerView2.setLayoutManager(new LinearLayoutManager(1));
                                    FragmentNewsBinding fragmentNewsBinding11 = this._binding;
                                    fragmentNewsBinding11.getClass();
                                    ((RecyclerView) fragmentNewsBinding11.newsStoryItemsRecyclerview).addItemDecoration(new DrawableItemDecoration(requireContext(), false, false, 28));
                                    FragmentNewsBinding fragmentNewsBinding12 = this._binding;
                                    fragmentNewsBinding12.getClass();
                                    ((RecyclerView) fragmentNewsBinding12.newsStoryItemsRecyclerview).setNestedScrollingEnabled(false);
                                    FragmentNewsBinding fragmentNewsBinding13 = this._binding;
                                    fragmentNewsBinding13.getClass();
                                    RecyclerView recyclerView3 = (RecyclerView) fragmentNewsBinding13.newsStoryItemsRecyclerview;
                                    List list = ((NewsViewModel) builder.getValue()).item.links;
                                    ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                                    Iterator it = list.iterator();
                                    while (it.hasNext()) {
                                        arrayList.add(((PageSummary) it.next()).getPageTitle(((NewsViewModel) builder.getValue()).wiki));
                                    }
                                    recyclerView3.setAdapter(new RecyclerAdapter(arrayList, new AvPlayer(5, this), i));
                                    FragmentNewsBinding fragmentNewsBinding14 = this._binding;
                                    fragmentNewsBinding14.getClass();
                                    CoordinatorLayout coordinatorLayout2 = (CoordinatorLayout) fragmentNewsBinding14.rootView;
                                    coordinatorLayout2.getClass();
                                    return coordinatorLayout2;
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        FragmentNewsBinding fragmentNewsBinding = this._binding;
        fragmentNewsBinding.getClass();
        ((AppBarLayout) fragmentNewsBinding.appBarLayout).removeOnOffsetChangedListener(this.offsetChangedListener);
        this._binding = null;
        this.mCalled = true;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RecyclerAdapter extends LoadStateAdapter {
        public final /* synthetic */ int $r8$classId;
        public final Object callback;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RecyclerAdapter(SuggestedEditsTasksFragment suggestedEditsTasksFragment, ArrayList arrayList) {
            super(arrayList);
            this.$r8$classId = 2;
            arrayList.getClass();
            this.callback = suggestedEditsTasksFragment;
        }

        @Override // androidx.paging.LoadStateAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int i2 = this.$r8$classId;
            Object obj = this.callback;
            switch (i2) {
                case 0:
                    PageTitle pageTitle = (PageTitle) ((List) this.loadState).get(i);
                    ListItemView listItemView = (ListItemView) ((DefaultViewHolder) viewHolder).getView();
                    listItemView.title = pageTitle;
                    listItemView.setHistoryEntry(new HistoryEntry(16, pageTitle));
                    listItemView.callback = (AvPlayer) obj;
                    break;
                case 1:
                    PageTitle pageTitle2 = (PageTitle) ((List) this.loadState).get(i);
                    ListItemView listItemView2 = (ListItemView) ((DefaultViewHolder) viewHolder).getView();
                    listItemView2.title = pageTitle2;
                    listItemView2.setHistoryEntry(new HistoryEntry(22, pageTitle2));
                    listItemView2.callback = (AvPlayer) obj;
                    break;
                default:
                    SuggestedEditsTaskView suggestedEditsTaskView = (SuggestedEditsTaskView) ((DefaultViewHolder) viewHolder).getView();
                    final SuggestedEditsTask suggestedEditsTask = (SuggestedEditsTask) ((List) this.loadState).get(i);
                    final AvPlayer avPlayer = ((SuggestedEditsTasksFragment) obj).callback;
                    suggestedEditsTask.getClass();
                    SVGAndroidRenderer sVGAndroidRenderer = suggestedEditsTaskView.binding;
                    Context context = suggestedEditsTaskView.getContext();
                    context.getClass();
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    final int i3 = 2;
                    int i4 = ((ArrayList) ViewSizeResolver$CC.m785m()).size() >= 2 ? R.attr.progressive_color : R.attr.placeholder_color;
                    TypedValue typedValue = new TypedValue();
                    final int i5 = 1;
                    if (!context.getTheme().resolveAttribute(i4, typedValue, true)) {
                        typedValue = null;
                    }
                    if (typedValue == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i4, "Attribute not found; ID="));
                        break;
                    } else {
                        int i6 = typedValue.data;
                        MaterialButton materialButton = (MaterialButton) sVGAndroidRenderer.document;
                        MaterialButton materialButton2 = (MaterialButton) sVGAndroidRenderer.canvas;
                        materialButton.setIconTint(ColorStateList.valueOf(i6));
                        materialButton.setTextColor(i6);
                        ((TextView) sVGAndroidRenderer.parentStack).setText(suggestedEditsTask.title);
                        ((TextView) sVGAndroidRenderer.state).setText(suggestedEditsTask.description);
                        materialButton2.setText(suggestedEditsTask.primaryAction);
                        int i7 = suggestedEditsTask.primaryActionIcon;
                        if (i7 != 0) {
                            materialButton2.setIconResource(i7);
                        }
                        materialButton2.setContentDescription(suggestedEditsTask.primaryAction + " " + suggestedEditsTask.title);
                        ((ImageView) sVGAndroidRenderer.stateStack).setImageResource(suggestedEditsTask.imageDrawable);
                        ((TextView) sVGAndroidRenderer.matrixStack).setVisibility(suggestedEditsTask.f76new ? 0 : 8);
                        suggestedEditsTaskView.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.suggestededits.SuggestedEditsTaskView$$ExternalSyntheticLambda0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i8 = r3;
                                AvPlayer avPlayer2 = avPlayer;
                                SuggestedEditsTask suggestedEditsTask2 = suggestedEditsTask;
                                switch (i8) {
                                    case 0:
                                        if (avPlayer2 != null) {
                                            avPlayer2.onViewClick(suggestedEditsTask2, false);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        if (avPlayer2 != null) {
                                            avPlayer2.onViewClick(suggestedEditsTask2, false);
                                            break;
                                        }
                                        break;
                                    default:
                                        if (avPlayer2 != null) {
                                            avPlayer2.onViewClick(suggestedEditsTask2, true);
                                            break;
                                        }
                                        break;
                                }
                            }
                        });
                        materialButton2.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.suggestededits.SuggestedEditsTaskView$$ExternalSyntheticLambda0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i8 = i5;
                                AvPlayer avPlayer2 = avPlayer;
                                SuggestedEditsTask suggestedEditsTask2 = suggestedEditsTask;
                                switch (i8) {
                                    case 0:
                                        if (avPlayer2 != null) {
                                            avPlayer2.onViewClick(suggestedEditsTask2, false);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        if (avPlayer2 != null) {
                                            avPlayer2.onViewClick(suggestedEditsTask2, false);
                                            break;
                                        }
                                        break;
                                    default:
                                        if (avPlayer2 != null) {
                                            avPlayer2.onViewClick(suggestedEditsTask2, true);
                                            break;
                                        }
                                        break;
                                }
                            }
                        });
                        materialButton.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.suggestededits.SuggestedEditsTaskView$$ExternalSyntheticLambda0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i8 = i3;
                                AvPlayer avPlayer2 = avPlayer;
                                SuggestedEditsTask suggestedEditsTask2 = suggestedEditsTask;
                                switch (i8) {
                                    case 0:
                                        if (avPlayer2 != null) {
                                            avPlayer2.onViewClick(suggestedEditsTask2, false);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        if (avPlayer2 != null) {
                                            avPlayer2.onViewClick(suggestedEditsTask2, false);
                                            break;
                                        }
                                        break;
                                    default:
                                        if (avPlayer2 != null) {
                                            avPlayer2.onViewClick(suggestedEditsTask2, true);
                                            break;
                                        }
                                        break;
                                }
                            }
                        });
                        String str = suggestedEditsTask.secondaryAction;
                        materialButton.setVisibility((str == null || str.length() == 0) ? 8 : 0);
                        materialButton.setText(suggestedEditsTask.secondaryAction);
                        materialButton.setContentDescription(suggestedEditsTask.secondaryAction + " " + suggestedEditsTask.title);
                        break;
                    }
                    break;
            }
        }

        @Override // androidx.paging.LoadStateAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            switch (this.$r8$classId) {
                case 0:
                    Context context = viewGroup.getContext();
                    context.getClass();
                    return new DefaultViewHolder(new ListItemView(context, 0));
                case 1:
                    Context context2 = viewGroup.getContext();
                    context2.getClass();
                    return new DefaultViewHolder(new ListItemView(context2, 0));
                default:
                    Context context3 = viewGroup.getContext();
                    context3.getClass();
                    return new DefaultViewHolder(new SuggestedEditsTaskView(context3));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ RecyclerAdapter(ArrayList arrayList, ListItemView.Callback callback, int i) {
            super(arrayList);
            this.$r8$classId = i;
            this.callback = callback;
        }
    }
}
