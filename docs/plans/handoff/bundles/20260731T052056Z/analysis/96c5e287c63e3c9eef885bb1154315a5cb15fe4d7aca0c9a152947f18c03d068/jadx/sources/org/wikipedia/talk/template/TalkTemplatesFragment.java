package org.wikipedia.talk.template;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.ActionMode;
import androidx.compose.animation.core.Animation;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.tabs.TabLayout;
import java.util.ArrayList;
import java.util.Collections;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cache;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.diff.DiffUtil$DiffLinesAdapter;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda5;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.customize.CustomizeToolbarFragment;
import org.wikipedia.places.PlacesFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.languages.WikipediaLanguagesFragment;
import org.wikipedia.staticdata.TalkAliasData;
import org.wikipedia.talk.TalkReplyViewModel$loadTemplates$2;
import org.wikipedia.talk.db.TalkTemplate;
import org.wikipedia.talk.template.TalkTemplatesFragment;
import org.wikipedia.talk.template.TalkTemplatesItemView;
import org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda0;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.DrawableItemDecoration;
import org.wikipedia.views.LanguageScrollView;
import org.wikipedia.views.SwipeableItemTouchHelperCallback;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.watchlist.WatchlistFragment$special$$inlined$viewModels$default$1;
import retrofit2.Retrofit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\b"}, d2 = {"Lorg/wikipedia/talk/template/TalkTemplatesFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "TalkTemplatesItemViewHolder", "RecyclerAdapter", "MultiSelectCallback", "RearrangeableItemTouchHelperCallback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TalkTemplatesFragment extends Fragment {
    public ActivityLoginBinding _binding;
    public ActionMode actionMode;
    public RecyclerAdapter adapter;
    public final ArrayList deletedItems;
    public ItemTouchHelper itemSwipeTouchHelper;
    public ItemTouchHelper itemTouchHelper;
    public final ReadingListFragment.MultiSelectCallback multiSelectCallback;
    public final Fragment.AnonymousClass10 requestEditTemplate;
    public final Fragment.AnonymousClass10 requestNewTemplate;
    public final ArrayList selectedItems;
    public SwipeableItemTouchHelperCallback touchCallback;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RecyclerAdapter extends RecyclerView.Adapter implements TalkTemplatesItemView.Callback {
        public boolean checkboxEnabled;
        public final ArrayList templatesList = new ArrayList();

        public RecyclerAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return this.templatesList.size();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i) {
            TalkTemplatesItemViewHolder talkTemplatesItemViewHolder = (TalkTemplatesItemViewHolder) viewHolder;
            TalkTemplate talkTemplate = (TalkTemplate) this.templatesList.get(i);
            talkTemplate.getClass();
            talkTemplatesItemViewHolder.entry = talkTemplate;
            final TalkTemplatesItemView talkTemplatesItemView = talkTemplatesItemViewHolder.templatesItemView;
            ActivityLoginBinding activityLoginBinding = TalkTemplatesFragment.this._binding;
            activityLoginBinding.getClass();
            Object[] objArr = 0;
            Object[] objArr2 = ((TabLayout) activityLoginBinding.loginCreateAccountButton).getSelectedTabPosition() == 1;
            Retrofit retrofit = talkTemplatesItemView.binding;
            boolean z = objArr2 == true && i == 0;
            TextView textView = (TextView) retrofit.callAdapterFactories;
            LinearLayout linearLayout = (LinearLayout) retrofit.baseUrl;
            TextView textView2 = (TextView) retrofit.converterFactories;
            textView.setVisibility(!z ? 0 : 8);
            ((TextView) retrofit.callAdapterFactories).setText(talkTemplate.subject);
            textView2.setText(talkTemplate.message);
            textView2.setTypeface(Typeface.SANS_SERIF, z ? 2 : 0);
            textView2.setSingleLine(!z);
            Context context = talkTemplatesItemView.getContext();
            context.getClass();
            int i2 = z ? R.attr.background_color : android.R.attr.selectableItemBackground;
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(i2, typedValue, true)) {
                typedValue = null;
            }
            if (typedValue == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i2, "Attribute not found; ID="));
                return;
            }
            linearLayout.setBackgroundResource(typedValue.resourceId);
            textView2.setEllipsize(z ? null : TextUtils.TruncateAt.END);
            linearLayout.setOnClickListener(new TalkTemplatesItemView$$ExternalSyntheticLambda0(i, objArr == true ? 1 : 0, talkTemplatesItemView));
            linearLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.wikipedia.talk.template.TalkTemplatesItemView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    TalkTemplatesItemView.Callback callback = TalkTemplatesItemView.this.callback;
                    if (callback != null) {
                        TalkTemplatesFragment.RecyclerAdapter recyclerAdapter = (TalkTemplatesFragment.RecyclerAdapter) callback;
                        TalkTemplatesFragment talkTemplatesFragment = TalkTemplatesFragment.this;
                        ActivityLoginBinding activityLoginBinding2 = talkTemplatesFragment._binding;
                        activityLoginBinding2.getClass();
                        if (((TabLayout) activityLoginBinding2.loginCreateAccountButton).getSelectedTabPosition() != 1) {
                            if (talkTemplatesFragment.actionMode == null) {
                                talkTemplatesFragment.requireActivity().startSupportActionMode(talkTemplatesFragment.multiSelectCallback);
                                talkTemplatesFragment.setMultiSelectEnabled$1(true);
                            }
                            ArrayList arrayList = recyclerAdapter.templatesList;
                            int i3 = i;
                            talkTemplatesFragment.toggleSelectedItem((TalkTemplate) arrayList.get(i3));
                            TalkTemplatesFragment.RecyclerAdapter recyclerAdapter2 = talkTemplatesFragment.adapter;
                            if (recyclerAdapter2 != null) {
                                recyclerAdapter2.notifyItemChanged(i3);
                                return true;
                            }
                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                            throw null;
                        }
                    }
                    return true;
                }
            });
            ((CheckBox) retrofit.serviceMethodCache).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: org.wikipedia.talk.template.TalkTemplatesItemView$$ExternalSyntheticLambda2
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                    compoundButton.getClass();
                    TalkTemplatesItemView talkTemplatesItemView2 = TalkTemplatesItemView.this;
                    TalkTemplatesItemView.Callback callback = talkTemplatesItemView2.callback;
                    if (callback != null) {
                        TalkTemplatesFragment.RecyclerAdapter recyclerAdapter = (TalkTemplatesFragment.RecyclerAdapter) callback;
                        TalkTemplatesFragment.this.toggleSelectedItem((TalkTemplate) recyclerAdapter.templatesList.get(i));
                    }
                    talkTemplatesItemView2.updateBackgroundColor();
                }
            });
            talkTemplatesItemView.setCheckBoxEnabled(this.checkboxEnabled);
            TalkTemplatesFragment talkTemplatesFragment = TalkTemplatesFragment.this;
            talkTemplatesItemView.setCheckBoxChecked(talkTemplatesFragment.selectedItems.contains(talkTemplate));
            talkTemplatesItemView.setDragHandleEnabled(talkTemplatesFragment.actionMode != null);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            TalkTemplatesFragment talkTemplatesFragment = TalkTemplatesFragment.this;
            Context requireContext = talkTemplatesFragment.requireContext();
            TalkTemplatesItemView talkTemplatesItemView = new TalkTemplatesItemView(requireContext, null);
            LayoutInflater.from(requireContext).inflate(R.layout.item_talk_templates, talkTemplatesItemView);
            int i2 = R.id.checkbox;
            CheckBox checkBox = (CheckBox) Room.findChildViewById(talkTemplatesItemView, R.id.checkbox);
            if (checkBox != null) {
                i2 = R.id.dragHandle;
                ImageView imageView = (ImageView) Room.findChildViewById(talkTemplatesItemView, R.id.dragHandle);
                if (imageView != null) {
                    i2 = R.id.listItem;
                    LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(talkTemplatesItemView, R.id.listItem);
                    if (linearLayout != null) {
                        i2 = R.id.listItemDescription;
                        TextView textView = (TextView) Room.findChildViewById(talkTemplatesItemView, R.id.listItemDescription);
                        if (textView != null) {
                            i2 = R.id.listItemTitle;
                            TextView textView2 = (TextView) Room.findChildViewById(talkTemplatesItemView, R.id.listItemTitle);
                            if (textView2 != null) {
                                talkTemplatesItemView.binding = new Retrofit(talkTemplatesItemView, checkBox, imageView, linearLayout, textView, textView2);
                                talkTemplatesItemView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                                talkTemplatesItemView.setBackgroundColor(Cache.Companion.getThemedColor(requireContext, R.attr.paper_color));
                                talkTemplatesItemView.setForeground(TuplesKt.getDrawable(requireContext, Cache.Companion.getThemedAttributeId(requireContext, R.attr.selectableItemBackground)));
                                new View[]{talkTemplatesItemView}[0].setOnContextClickListener(new DeviceUtil$$ExternalSyntheticLambda0());
                                return talkTemplatesFragment.new TalkTemplatesItemViewHolder(talkTemplatesItemView);
                            }
                        }
                    }
                }
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(talkTemplatesItemView.getResources().getResourceName(i2)));
            return null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            TalkTemplatesItemViewHolder talkTemplatesItemViewHolder = (TalkTemplatesItemViewHolder) viewHolder;
            TalkTemplatesItemView talkTemplatesItemView = talkTemplatesItemViewHolder.templatesItemView;
            talkTemplatesItemView.setDragHandleTouchListener(new TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0(TalkTemplatesFragment.this, talkTemplatesItemViewHolder, 0));
            talkTemplatesItemView.setCallback(this);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
            TalkTemplatesItemView talkTemplatesItemView = ((TalkTemplatesItemViewHolder) viewHolder).templatesItemView;
            talkTemplatesItemView.setDragHandleTouchListener(null);
            talkTemplatesItemView.setCallback(null);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TalkTemplatesItemViewHolder extends RecyclerView.ViewHolder implements SwipeableItemTouchHelperCallback.Callback {
        public TalkTemplate entry;
        public final TalkTemplatesItemView templatesItemView;

        public TalkTemplatesItemViewHolder(TalkTemplatesItemView talkTemplatesItemView) {
            super(talkTemplatesItemView.getRootView());
            this.templatesItemView = talkTemplatesItemView;
        }

        @Override // org.wikipedia.views.SwipeableItemTouchHelperCallback.Callback
        public final boolean isSwipeable() {
            return true;
        }

        @Override // org.wikipedia.views.SwipeableItemTouchHelperCallback.Callback
        public final void onSwipe() {
            TalkTemplatesFragment talkTemplatesFragment = TalkTemplatesFragment.this;
            ArrayList arrayList = talkTemplatesFragment.selectedItems;
            TalkTemplate talkTemplate = this.entry;
            if (talkTemplate == null) {
                Intrinsics.throwUninitializedPropertyAccessException("entry");
                throw null;
            }
            arrayList.add(talkTemplate);
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            String m = ViewSizeResolver$CC.m();
            Prefs prefs = Prefs.INSTANCE;
            EventPlatformClient.submit(new AppInteractionEvent("delete_message_click", "pt_warning_messages", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
            talkTemplatesFragment.deleteSelectedTalkTemplates();
        }
    }

    public TalkTemplatesFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new WatchlistFragment$special$$inlined$viewModels$default$1(16, new WatchlistFragment$special$$inlined$viewModels$default$1(15, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(TalkTemplatesViewModel.class), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 24), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 22), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 25));
        this.selectedItems = new ArrayList();
        this.deletedItems = new ArrayList();
        this.multiSelectCallback = new ReadingListFragment.MultiSelectCallback(4, this);
        int i = 3;
        this.requestNewTemplate = (Fragment.AnonymousClass10) registerForActivityResult(new TalkTemplatesFragment$$ExternalSyntheticLambda0(this, 0), new FragmentManager$FragmentIntentSenderContract(i));
        this.requestEditTemplate = (Fragment.AnonymousClass10) registerForActivityResult(new TalkTemplatesFragment$$ExternalSyntheticLambda0(this, 1), new FragmentManager$FragmentIntentSenderContract(i));
    }

    public final void deleteSelectedTalkTemplates() {
        ArrayList arrayList = this.deletedItems;
        arrayList.clear();
        ArrayList arrayList2 = this.selectedItems;
        arrayList.addAll(arrayList2);
        TalkTemplatesViewModel viewModel = getViewModel();
        arrayList2.getClass();
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), viewModel.actionExceptionHandler, null, new TalkReplyViewModel$loadTemplates$2(viewModel, arrayList2, null, 8), 2);
    }

    public final TalkTemplatesViewModel getViewModel() {
        return (TalkTemplatesViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        CharSequence trim;
        TextView textView;
        layoutInflater.getClass();
        boolean z = false;
        View inflate = layoutInflater.inflate(R.layout.fragment_talk_templates, viewGroup, false);
        int i = R.id.addSavedMessageFab;
        FloatingActionButton floatingActionButton = (FloatingActionButton) Room.findChildViewById(inflate, R.id.addSavedMessageFab);
        if (floatingActionButton != null) {
            i = R.id.coordinatorView;
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) Room.findChildViewById(inflate, R.id.coordinatorView);
            if (coordinatorLayout != null) {
                i = R.id.talkTemplatesEmptyContainer;
                LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.talkTemplatesEmptyContainer);
                if (linearLayout != null) {
                    i = R.id.talkTemplatesEmptyStateTextView;
                    TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.talkTemplatesEmptyStateTextView);
                    if (textView2 != null) {
                        i = R.id.talkTemplatesErrorView;
                        WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.talkTemplatesErrorView);
                        if (wikiErrorView != null) {
                            i = R.id.talkTemplatesProgressBar;
                            ProgressBar progressBar = (ProgressBar) Room.findChildViewById(inflate, R.id.talkTemplatesProgressBar);
                            if (progressBar != null) {
                                i = R.id.talkTemplatesRecyclerView;
                                RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.talkTemplatesRecyclerView);
                                if (recyclerView != null) {
                                    i = R.id.talkTemplatesTabLayout;
                                    TabLayout tabLayout = (TabLayout) Room.findChildViewById(inflate, R.id.talkTemplatesTabLayout);
                                    if (tabLayout != null) {
                                        i = R.id.talkTemplatesToolbarContainer;
                                        if (((AppBarLayout) Room.findChildViewById(inflate, R.id.talkTemplatesToolbarContainer)) != null) {
                                            i = R.id.toolBarEditButton;
                                            TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.toolBarEditButton);
                                            if (textView3 != null) {
                                                i = R.id.toolbar;
                                                MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
                                                if (materialToolbar != null) {
                                                    this._binding = new ActivityLoginBinding((LinearLayout) inflate, floatingActionButton, coordinatorLayout, linearLayout, textView2, wikiErrorView, progressBar, recyclerView, tabLayout, textView3, materialToolbar);
                                                    AppCompatActivity requireActivity = requireActivity();
                                                    ActivityLoginBinding activityLoginBinding = this._binding;
                                                    activityLoginBinding.getClass();
                                                    requireActivity.setSupportActionBar((MaterialToolbar) activityLoginBinding.toolbar);
                                                    ContextsKt supportActionBar = requireActivity().getSupportActionBar();
                                                    boolean z2 = true;
                                                    if (supportActionBar != null) {
                                                        supportActionBar.setDisplayHomeAsUpEnabled(true);
                                                    }
                                                    if (getViewModel().templateManagementMode) {
                                                        trim = getString(R.string.talk_warn_saved_messages);
                                                        trim.getClass();
                                                    } else {
                                                        StringUtil stringUtil = StringUtil.INSTANCE;
                                                        String namespace = getViewModel().pageTitle.getNamespace();
                                                        if (namespace.length() == 0) {
                                                            namespace = TalkAliasData.valueFor(getViewModel().pageTitle.wikiSite.languageCode);
                                                        }
                                                        trim = StringsKt.trim(StringUtil.fromHtml(((Object) namespace) + ": <a href='#'>" + StringsKt.substringAfter$default(getViewModel().pageTitle.getDisplayText(), ':') + "</a>"));
                                                        if (trim.length() == 0) {
                                                            trim = getString(R.string.talk_no_subject);
                                                            trim.getClass();
                                                        }
                                                    }
                                                    ActivityLoginBinding activityLoginBinding2 = this._binding;
                                                    activityLoginBinding2.getClass();
                                                    MaterialToolbar materialToolbar2 = (MaterialToolbar) activityLoginBinding2.toolbar;
                                                    int i2 = 0;
                                                    while (true) {
                                                        if (i2 >= materialToolbar2.getChildCount()) {
                                                            textView = null;
                                                            break;
                                                        }
                                                        int i3 = i2 + 1;
                                                        View childAt = materialToolbar2.getChildAt(i2);
                                                        if (childAt == null) {
                                                            throw new IndexOutOfBoundsException();
                                                        }
                                                        if (childAt instanceof TextView) {
                                                            textView = (TextView) childAt;
                                                            break;
                                                        }
                                                        i2 = i3;
                                                    }
                                                    if (textView != null) {
                                                        textView.setMovementMethod(new LinkMovementMethodExt(new TalkTemplatesFragment$$ExternalSyntheticLambda0(this, 3)));
                                                    }
                                                    ContextsKt supportActionBar2 = requireActivity().getSupportActionBar();
                                                    if (supportActionBar2 != null) {
                                                        supportActionBar2.setTitle(trim);
                                                    }
                                                    ActivityLoginBinding activityLoginBinding3 = this._binding;
                                                    activityLoginBinding3.getClass();
                                                    ((RecyclerView) activityLoginBinding3.loginButton).setHasFixedSize(true);
                                                    this.adapter = new RecyclerAdapter();
                                                    ActivityLoginBinding activityLoginBinding4 = this._binding;
                                                    activityLoginBinding4.getClass();
                                                    RecyclerView recyclerView2 = (RecyclerView) activityLoginBinding4.loginButton;
                                                    RecyclerAdapter recyclerAdapter = this.adapter;
                                                    if (recyclerAdapter == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                                                        throw null;
                                                    }
                                                    recyclerView2.setAdapter(recyclerAdapter);
                                                    ActivityLoginBinding activityLoginBinding5 = this._binding;
                                                    activityLoginBinding5.getClass();
                                                    RecyclerView recyclerView3 = (RecyclerView) activityLoginBinding5.loginButton;
                                                    requireContext();
                                                    recyclerView3.setLayoutManager(new LinearLayoutManager(1));
                                                    ActivityLoginBinding activityLoginBinding6 = this._binding;
                                                    activityLoginBinding6.getClass();
                                                    ((RecyclerView) activityLoginBinding6.loginButton).addItemDecoration(new DrawableItemDecoration(requireContext(), z2, z, 16));
                                                    ActivityLoginBinding activityLoginBinding7 = this._binding;
                                                    activityLoginBinding7.getClass();
                                                    LinearLayout linearLayout2 = (LinearLayout) activityLoginBinding7.loginPrimaryContainer;
                                                    linearLayout2.getClass();
                                                    return linearLayout2;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.mCalled = true;
        this._binding = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        ActivityLoginBinding activityLoginBinding = this._binding;
        activityLoginBinding.getClass();
        int i = 0;
        ((WikiErrorView) activityLoginBinding.viewLoginError).setRetryClickListener(new TalkTemplatesFragment$$ExternalSyntheticLambda2(this, i));
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new TalkTemplatesFragment$onViewCreated$2(this, null, i), 3);
        ActivityLoginBinding activityLoginBinding2 = this._binding;
        activityLoginBinding2.getClass();
        ((FloatingActionButton) activityLoginBinding2.captchaContainer).setOnClickListener(new TalkTemplatesFragment$$ExternalSyntheticLambda2(this, 1));
        ActivityLoginBinding activityLoginBinding3 = this._binding;
        activityLoginBinding3.getClass();
        int i2 = 2;
        ((TextView) activityLoginBinding3.viewProgressBar).setOnClickListener(new TalkTemplatesFragment$$ExternalSyntheticLambda2(this, i2));
        ActivityLoginBinding activityLoginBinding4 = this._binding;
        activityLoginBinding4.getClass();
        ((TabLayout) activityLoginBinding4.loginCreateAccountButton).addOnTabSelectedListener(new LanguageScrollView.AnonymousClass1(4, this));
        SwipeableItemTouchHelperCallback swipeableItemTouchHelperCallback = new SwipeableItemTouchHelperCallback(requireContext());
        this.touchCallback = swipeableItemTouchHelperCallback;
        swipeableItemTouchHelperCallback.swipeableEnabled = true;
        RecyclerAdapter recyclerAdapter = this.adapter;
        if (recyclerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        this.itemTouchHelper = new ItemTouchHelper(new RearrangeableItemTouchHelperCallback(this, recyclerAdapter));
        SwipeableItemTouchHelperCallback swipeableItemTouchHelperCallback2 = this.touchCallback;
        if (swipeableItemTouchHelperCallback2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("touchCallback");
            throw null;
        }
        this.itemSwipeTouchHelper = new ItemTouchHelper(swipeableItemTouchHelperCallback2);
        ItemTouchHelper itemTouchHelper = this.itemTouchHelper;
        if (itemTouchHelper == null) {
            Intrinsics.throwUninitializedPropertyAccessException("itemTouchHelper");
            throw null;
        }
        ActivityLoginBinding activityLoginBinding5 = this._binding;
        activityLoginBinding5.getClass();
        itemTouchHelper.attachToRecyclerView((RecyclerView) activityLoginBinding5.loginButton);
        ItemTouchHelper itemTouchHelper2 = this.itemSwipeTouchHelper;
        if (itemTouchHelper2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("itemSwipeTouchHelper");
            throw null;
        }
        ActivityLoginBinding activityLoginBinding6 = this._binding;
        activityLoginBinding6.getClass();
        itemTouchHelper2.attachToRecyclerView((RecyclerView) activityLoginBinding6.loginButton);
        ActivityLoginBinding activityLoginBinding7 = this._binding;
        activityLoginBinding7.getClass();
        TextView textView = (TextView) activityLoginBinding7.loginPasswordInput;
        StringUtil stringUtil = StringUtil.INSTANCE;
        textView.setText(StringUtil.fromHtml(getString(R.string.talk_templates_empty_message)));
        ActivityLoginBinding activityLoginBinding8 = this._binding;
        activityLoginBinding8.getClass();
        ((TextView) activityLoginBinding8.loginPasswordInput).setMovementMethod(new LinkMovementMethodExt(new TalkTemplatesFragment$$ExternalSyntheticLambda0(this, i2)));
    }

    public final void setMultiSelectEnabled$1(boolean z) {
        RecyclerAdapter recyclerAdapter = this.adapter;
        if (recyclerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        recyclerAdapter.checkboxEnabled = z;
        recyclerAdapter.notifyItemRangeChanged(0, getViewModel().talkTemplatesList.size());
        requireActivity().invalidateOptionsMenu();
    }

    public final void toggleSelectedItem(TalkTemplate talkTemplate) {
        ArrayList arrayList = this.selectedItems;
        if (arrayList.contains(talkTemplate)) {
            arrayList.remove(talkTemplate);
        } else {
            arrayList.add(talkTemplate);
        }
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            actionMode.setTitle(getString(R.string.multi_select_items_selected, Integer.valueOf(arrayList.size())));
        }
    }

    public final void unselectAllTalkTemplates() {
        ArrayList arrayList = this.selectedItems;
        arrayList.clear();
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            actionMode.setTitle(getString(R.string.multi_select_items_selected, Integer.valueOf(arrayList.size())));
        }
        updateAndNotifyAdapter();
    }

    public final void updateAndNotifyAdapter() {
        RecyclerAdapter recyclerAdapter = this.adapter;
        if (recyclerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        recyclerAdapter.templatesList.clear();
        RecyclerAdapter recyclerAdapter2 = this.adapter;
        if (recyclerAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        ArrayList arrayList = recyclerAdapter2.templatesList;
        ActivityLoginBinding activityLoginBinding = this._binding;
        activityLoginBinding.getClass();
        arrayList.addAll(((TabLayout) activityLoginBinding.loginCreateAccountButton).getSelectedTabPosition() == 0 ? getViewModel().talkTemplatesList : getViewModel().savedTemplatesList);
        ActivityLoginBinding activityLoginBinding2 = this._binding;
        activityLoginBinding2.getClass();
        LinearLayout linearLayout = (LinearLayout) activityLoginBinding2.login2faText;
        RecyclerAdapter recyclerAdapter3 = this.adapter;
        if (recyclerAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        linearLayout.setVisibility(recyclerAdapter3.templatesList.isEmpty() ? 0 : 8);
        ActivityLoginBinding activityLoginBinding3 = this._binding;
        activityLoginBinding3.getClass();
        RecyclerView recyclerView = (RecyclerView) activityLoginBinding3.loginButton;
        RecyclerAdapter recyclerAdapter4 = this.adapter;
        if (recyclerAdapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        recyclerView.setVisibility(recyclerAdapter4.templatesList.isEmpty() ? 8 : 0);
        updateToolbarEditButton();
        RecyclerAdapter recyclerAdapter5 = this.adapter;
        if (recyclerAdapter5 != null) {
            recyclerAdapter5.notifyDataSetChanged();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
    }

    public final void updateToolbarEditButton() {
        ActivityLoginBinding activityLoginBinding = this._binding;
        activityLoginBinding.getClass();
        TextView textView = (TextView) activityLoginBinding.viewProgressBar;
        ActivityLoginBinding activityLoginBinding2 = this._binding;
        activityLoginBinding2.getClass();
        textView.setVisibility((((TabLayout) activityLoginBinding2.loginCreateAccountButton).getSelectedTabPosition() != 0 || getViewModel().talkTemplatesList.isEmpty()) ? 8 : 0);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RearrangeableItemTouchHelperCallback extends ItemTouchHelper.Callback {
        public final /* synthetic */ int $r8$classId = 1;
        public final RecyclerView.Adapter adapter;
        public final /* synthetic */ Fragment this$0;

        public RearrangeableItemTouchHelperCallback(CustomizeToolbarFragment customizeToolbarFragment, DiffUtil$DiffLinesAdapter diffUtil$DiffLinesAdapter) {
            diffUtil$DiffLinesAdapter.getClass();
            this.this$0 = customizeToolbarFragment;
            this.adapter = diffUtil$DiffLinesAdapter;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public final void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            int i = this.$r8$classId;
            Fragment fragment = this.this$0;
            recyclerView.getClass();
            viewHolder.getClass();
            switch (i) {
                case 0:
                    super.clearView(recyclerView, viewHolder);
                    recyclerView.post(new MainFragment$$ExternalSyntheticLambda5(16, (TalkTemplatesFragment) fragment));
                    break;
                case 1:
                    super.clearView(recyclerView, viewHolder);
                    recyclerView.post(new Processor$$ExternalSyntheticLambda2(26, (CustomizeToolbarFragment) fragment, this));
                    break;
                default:
                    super.clearView(recyclerView, viewHolder);
                    recyclerView.post(new MainFragment$$ExternalSyntheticLambda5(14, (WikipediaLanguagesFragment) fragment));
                    break;
            }
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public final int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            int i = this.$r8$classId;
            recyclerView.getClass();
            viewHolder.getClass();
            switch (i) {
                case 0:
                    break;
                case 1:
                    if (viewHolder instanceof CustomizeToolbarFragment.ItemHolder) {
                        break;
                    }
                    break;
                default:
                    if (viewHolder instanceof WikipediaLanguagesFragment.WikipediaLanguageItemHolder) {
                        break;
                    }
                    break;
            }
            return ItemTouchHelper.Callback.makeMovementFlags(3, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public final boolean isItemViewSwipeEnabled() {
            switch (this.$r8$classId) {
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public final boolean isLongPressDragEnabled() {
            switch (this.$r8$classId) {
                case 0:
                    return false;
                case 1:
                    return true;
                default:
                    return false;
            }
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public final boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            int i = this.$r8$classId;
            RecyclerView.Adapter adapter = this.adapter;
            recyclerView.getClass();
            viewHolder.getClass();
            switch (i) {
                case 0:
                    RecyclerAdapter recyclerAdapter = (RecyclerAdapter) adapter;
                    int absoluteAdapterPosition = viewHolder.getAbsoluteAdapterPosition();
                    int absoluteAdapterPosition2 = viewHolder2.getAbsoluteAdapterPosition();
                    TalkTemplatesFragment talkTemplatesFragment = TalkTemplatesFragment.this;
                    ArrayList arrayList = talkTemplatesFragment.getViewModel().talkTemplatesList;
                    Collections.swap(arrayList, absoluteAdapterPosition, absoluteAdapterPosition2);
                    int size = arrayList.size();
                    int i2 = 0;
                    while (i2 < size) {
                        TalkTemplate talkTemplate = (TalkTemplate) arrayList.get(i2);
                        i2++;
                        talkTemplate.order = i2;
                    }
                    TalkTemplatesViewModel viewModel = talkTemplatesFragment.getViewModel();
                    AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), viewModel.exceptionHandler, null, new SyntaxHighlighter.AnonymousClass2(18, viewModel, (Continuation) null), 2);
                    recyclerAdapter.notifyItemMoved(absoluteAdapterPosition, absoluteAdapterPosition2);
                    break;
                case 1:
                    if (viewHolder2 instanceof CustomizeToolbarFragment.ItemHolder) {
                        DiffUtil$DiffLinesAdapter diffUtil$DiffLinesAdapter = (DiffUtil$DiffLinesAdapter) adapter;
                        int absoluteAdapterPosition3 = viewHolder.getAbsoluteAdapterPosition();
                        int absoluteAdapterPosition4 = viewHolder2.getAbsoluteAdapterPosition();
                        Collections.swap(((CustomizeToolbarFragment) diffUtil$DiffLinesAdapter.diffLines).getViewModel().fullList, absoluteAdapterPosition3, absoluteAdapterPosition4);
                        diffUtil$DiffLinesAdapter.notifyItemMoved(absoluteAdapterPosition3, absoluteAdapterPosition4);
                        break;
                    }
                    break;
                default:
                    if (viewHolder2 instanceof WikipediaLanguagesFragment.WikipediaLanguageItemHolder) {
                        WikipediaLanguagesFragment.WikipediaLanguageItemAdapter wikipediaLanguageItemAdapter = (WikipediaLanguagesFragment.WikipediaLanguageItemAdapter) adapter;
                        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
                        int bindingAdapterPosition2 = ((WikipediaLanguagesFragment.WikipediaLanguageItemHolder) viewHolder2).getBindingAdapterPosition();
                        Collections.swap(WikipediaLanguagesFragment.this.wikipediaLanguages, bindingAdapterPosition - 1, bindingAdapterPosition2 - 1);
                        wikipediaLanguageItemAdapter.notifyItemMoved(bindingAdapterPosition, bindingAdapterPosition2);
                        break;
                    }
                    break;
            }
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public final void onSwiped(RecyclerView.ViewHolder viewHolder) {
            int i = this.$r8$classId;
            viewHolder.getClass();
        }

        public RearrangeableItemTouchHelperCallback(WikipediaLanguagesFragment wikipediaLanguagesFragment, WikipediaLanguagesFragment.WikipediaLanguageItemAdapter wikipediaLanguageItemAdapter) {
            wikipediaLanguageItemAdapter.getClass();
            this.this$0 = wikipediaLanguagesFragment;
            this.adapter = wikipediaLanguageItemAdapter;
        }

        public RearrangeableItemTouchHelperCallback(TalkTemplatesFragment talkTemplatesFragment, RecyclerAdapter recyclerAdapter) {
            recyclerAdapter.getClass();
            this.this$0 = talkTemplatesFragment;
            this.adapter = recyclerAdapter;
        }
    }
}
