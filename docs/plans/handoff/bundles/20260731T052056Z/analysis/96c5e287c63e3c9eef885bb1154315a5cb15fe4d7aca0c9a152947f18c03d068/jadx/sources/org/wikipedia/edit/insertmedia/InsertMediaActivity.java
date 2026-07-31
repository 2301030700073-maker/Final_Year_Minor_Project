package org.wikipedia.edit.insertmedia;

import android.content.Intent;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.view.ActionMode;
import androidx.compose.animation.core.Animation;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager$1;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.DefaultSocket;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.databinding.FragmentPlacesBinding;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda5;
import org.wikipedia.page.PageTitle;
import org.wikipedia.talk.TalkTopicActivity;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.ImageZoomHelper;
import org.wikipedia.views.WikiCardView;
import org.wikipedia.views.WikiSwipeRefreshLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0005\u0004\u0005\u0006\u0007\bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\t"}, d2 = {"Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "CategoryMemberDiffCallback", "CategoryMembersAdapter", "InsertMediaItemHolder", "SearchCallback", "Companion", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class InsertMediaActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ActionMode actionMode;
    public FragmentPlacesBinding binding;
    public CategoryActivity.CategoryMembersAdapter insertMediaAdapter;
    public InsertMediaAdvancedSettingsFragment insertMediaAdvancedSettingsFragment;
    public InsertMediaSettingsFragment insertMediaSettingsFragment;
    public final FragmentManager$1 onBackPressedCallback = new FragmentManager$1(5, this);
    public final TalkTopicActivity.SearchCallback searchActionModeCallback;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class InsertMediaItemHolder extends RecyclerView.ViewHolder {
        public final DefaultSocket binding;

        public InsertMediaItemHolder(DefaultSocket defaultSocket) {
            super((FrameLayout) defaultSocket.socket);
            this.binding = defaultSocket;
        }
    }

    public InsertMediaActivity() {
        final int i = 1;
        this.searchActionModeCallback = new TalkTopicActivity.SearchCallback(i, this);
        final int i2 = 0;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(InsertMediaViewModel.class), new Function0(this) { // from class: org.wikipedia.edit.insertmedia.InsertMediaActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ InsertMediaActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                InsertMediaActivity insertMediaActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return insertMediaActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return insertMediaActivity.getViewModelStore();
                    default:
                        return insertMediaActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.edit.insertmedia.InsertMediaActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ InsertMediaActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                InsertMediaActivity insertMediaActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return insertMediaActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return insertMediaActivity.getViewModelStore();
                    default:
                        return insertMediaActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.edit.insertmedia.InsertMediaActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ InsertMediaActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                InsertMediaActivity insertMediaActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return insertMediaActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return insertMediaActivity.getViewModelStore();
                    default:
                        return insertMediaActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
    }

    public final void adjustRefreshViewLayoutParams(boolean z) {
        int i;
        FragmentPlacesBinding fragmentPlacesBinding = this.binding;
        if (fragmentPlacesBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        FrameLayout frameLayout = (FrameLayout) fragmentPlacesBinding.mapViewButton;
        ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
        if (layoutParams == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams");
            return;
        }
        CoordinatorLayout.LayoutParams layoutParams2 = (CoordinatorLayout.LayoutParams) layoutParams;
        layoutParams2.setBehavior(z ? null : new AppBarLayout.ScrollingViewBehavior());
        if (z) {
            TypedArray obtainStyledAttributes = getTheme().obtainStyledAttributes(new int[]{R.attr.actionBarSize});
            obtainStyledAttributes.getClass();
            i = obtainStyledAttributes.getDimensionPixelSize(0, 0);
            obtainStyledAttributes.recycle();
        } else {
            i = 0;
        }
        ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = i;
        frameLayout.setLayoutParams(layoutParams2);
        FragmentPlacesBinding fragmentPlacesBinding2 = this.binding;
        if (fragmentPlacesBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ViewGroup.LayoutParams layoutParams3 = ((MaterialToolbar) fragmentPlacesBinding2.tabsButton).getLayoutParams();
        layoutParams3.getClass();
        ((AppBarLayout.LayoutParams) layoutParams3).scrollFlags = z ? 0 : 5;
    }

    public final void applyActionBarButtonStyle$1(MenuItem menuItem, boolean z) {
        View inflate = getLayoutInflater().inflate(R.layout.item_edit_actionbar_button, (ViewGroup) null, false);
        if (inflate == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("rootView");
            return;
        }
        Button button = (Button) inflate;
        menuItem.setActionView(button);
        button.setText(menuItem.getTitle());
        int i = z ? R.attr.progressive_color : R.attr.placeholder_color;
        TypedValue typedValue = new TypedValue();
        int i2 = 1;
        TypedValue typedValue2 = getTheme().resolveAttribute(i, typedValue, true) ? typedValue : null;
        if (typedValue2 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Attribute not found; ID="));
            return;
        }
        button.setTextColor(typedValue2.data);
        button.setTag(menuItem);
        button.setEnabled(menuItem.isEnabled());
        button.setOnClickListener(new InsertMediaActivity$$ExternalSyntheticLambda1(this, i2));
    }

    public final InsertMediaViewModel getViewModel() {
        return (InsertMediaViewModel) this.viewModel$delegate.getValue();
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Continuation continuation = null;
        int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.activity_insert_media, (ViewGroup) null, false);
        int i2 = R.id.emptyImageContainer;
        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.emptyImageContainer);
        if (linearLayout != null) {
            i2 = R.id.emptyMessage;
            TextView textView = (TextView) Room.findChildViewById(inflate, R.id.emptyMessage);
            if (textView != null) {
                i2 = R.id.imageInfoButton;
                ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.imageInfoButton);
                if (imageView != null) {
                    i2 = R.id.imageInfoContainer;
                    FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(inflate, R.id.imageInfoContainer);
                    if (frameLayout != null) {
                        i2 = R.id.imageViewContainer;
                        FrameLayout frameLayout2 = (FrameLayout) Room.findChildViewById(inflate, R.id.imageViewContainer);
                        if (frameLayout2 != null) {
                            i2 = R.id.insertMediaAdvancedSettingsFragment;
                            if (((FragmentContainerView) Room.findChildViewById(inflate, R.id.insertMediaAdvancedSettingsFragment)) != null) {
                                if (((FragmentContainerView) Room.findChildViewById(inflate, R.id.insertMediaSettingsFragment)) != null) {
                                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) inflate;
                                    int i3 = R.id.progressBar;
                                    LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) Room.findChildViewById(inflate, R.id.progressBar);
                                    if (linearProgressIndicator != null) {
                                        i3 = R.id.recyclerView;
                                        RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.recyclerView);
                                        if (recyclerView != null) {
                                            i3 = R.id.refreshView;
                                            WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) Room.findChildViewById(inflate, R.id.refreshView);
                                            if (wikiSwipeRefreshLayout != null) {
                                                i3 = R.id.scrollableContainer;
                                                FrameLayout frameLayout3 = (FrameLayout) Room.findChildViewById(inflate, R.id.scrollableContainer);
                                                if (frameLayout3 != null) {
                                                    i3 = R.id.search_container;
                                                    WikiCardView wikiCardView = (WikiCardView) Room.findChildViewById(inflate, R.id.search_container);
                                                    if (wikiCardView != null) {
                                                        i3 = R.id.searchInputField;
                                                        TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.searchInputField);
                                                        if (textView2 != null) {
                                                            i3 = R.id.selectedImage;
                                                            FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) Room.findChildViewById(inflate, R.id.selectedImage);
                                                            if (faceAndColorDetectImageView != null) {
                                                                i3 = R.id.selectedImageContainer;
                                                                FrameLayout frameLayout4 = (FrameLayout) Room.findChildViewById(inflate, R.id.selectedImageContainer);
                                                                if (frameLayout4 != null) {
                                                                    i3 = R.id.toolbar;
                                                                    MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
                                                                    if (materialToolbar != null) {
                                                                        i3 = R.id.toolbarContainer;
                                                                        AppBarLayout appBarLayout = (AppBarLayout) Room.findChildViewById(inflate, R.id.toolbarContainer);
                                                                        if (appBarLayout != null) {
                                                                            this.binding = new FragmentPlacesBinding(coordinatorLayout, linearLayout, textView, imageView, frameLayout, frameLayout2, linearProgressIndicator, recyclerView, wikiSwipeRefreshLayout, frameLayout3, wikiCardView, textView2, faceAndColorDetectImageView, frameLayout4, materialToolbar, appBarLayout);
                                                                            setContentView(coordinatorLayout);
                                                                            FragmentPlacesBinding fragmentPlacesBinding = this.binding;
                                                                            if (fragmentPlacesBinding == null) {
                                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                throw null;
                                                                            }
                                                                            setSupportActionBar((MaterialToolbar) fragmentPlacesBinding.tabsButton);
                                                                            this.imageZoomHelper = new ImageZoomHelper(this);
                                                                            ContextsKt supportActionBar = getSupportActionBar();
                                                                            if (supportActionBar != null) {
                                                                                supportActionBar.setTitle(getString(R.string.insert_media_title));
                                                                            }
                                                                            getOnBackPressedDispatcher().addCallback(this.onBackPressedCallback, this);
                                                                            FragmentPlacesBinding fragmentPlacesBinding2 = this.binding;
                                                                            if (fragmentPlacesBinding2 == null) {
                                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                throw null;
                                                                            }
                                                                            ((WikiSwipeRefreshLayout) fragmentPlacesBinding2.listViewButton).setOnRefreshListener(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(14, this));
                                                                            FragmentPlacesBinding fragmentPlacesBinding3 = this.binding;
                                                                            if (fragmentPlacesBinding3 == null) {
                                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                throw null;
                                                                            }
                                                                            WikiCardView wikiCardView2 = fragmentPlacesBinding3.searchContainer;
                                                                            TypedValue typedValue = new TypedValue();
                                                                            if (!getTheme().resolveAttribute(R.attr.background_color, typedValue, true)) {
                                                                                typedValue = null;
                                                                            }
                                                                            if (typedValue == null) {
                                                                                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130968673");
                                                                                return;
                                                                            }
                                                                            wikiCardView2.setCardBackgroundColor(typedValue.data);
                                                                            FragmentPlacesBinding fragmentPlacesBinding4 = this.binding;
                                                                            if (fragmentPlacesBinding4 == null) {
                                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                throw null;
                                                                            }
                                                                            fragmentPlacesBinding4.listRecyclerView.setLayoutManager(new GridLayoutManager(3));
                                                                            Constants.InvokeSource invokeSource = getViewModel().invokeSource;
                                                                            Constants.InvokeSource invokeSource2 = Constants.InvokeSource.EDIT_ADD_IMAGE;
                                                                            if (invokeSource != invokeSource2) {
                                                                                CategoryActivity.CategoryMembersAdapter categoryMembersAdapter = new CategoryActivity.CategoryMembersAdapter(this);
                                                                                this.insertMediaAdapter = categoryMembersAdapter;
                                                                                FragmentPlacesBinding fragmentPlacesBinding5 = this.binding;
                                                                                if (fragmentPlacesBinding5 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                    throw null;
                                                                                }
                                                                                fragmentPlacesBinding5.listRecyclerView.setAdapter(categoryMembersAdapter);
                                                                            }
                                                                            AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new InsertMediaActivity$onCreate$2(this, continuation, i), 3);
                                                                            Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R.id.insertMediaSettingsFragment);
                                                                            findFragmentById.getClass();
                                                                            this.insertMediaSettingsFragment = (InsertMediaSettingsFragment) findFragmentById;
                                                                            Fragment findFragmentById2 = getSupportFragmentManager().findFragmentById(R.id.insertMediaAdvancedSettingsFragment);
                                                                            findFragmentById2.getClass();
                                                                            this.insertMediaAdvancedSettingsFragment = (InsertMediaAdvancedSettingsFragment) findFragmentById2;
                                                                            FragmentPlacesBinding fragmentPlacesBinding6 = this.binding;
                                                                            if (fragmentPlacesBinding6 == null) {
                                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                throw null;
                                                                            }
                                                                            fragmentPlacesBinding6.searchTextView.setText(getViewModel().searchQuery);
                                                                            FragmentPlacesBinding fragmentPlacesBinding7 = this.binding;
                                                                            if (fragmentPlacesBinding7 == null) {
                                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                throw null;
                                                                            }
                                                                            fragmentPlacesBinding7.searchContainer.setOnClickListener(new InsertMediaActivity$$ExternalSyntheticLambda1(this, i));
                                                                            adjustRefreshViewLayoutParams(false);
                                                                            if (getViewModel().invokeSource == invokeSource2 && getViewModel().selectedImage != null && bundle == null) {
                                                                                FragmentPlacesBinding fragmentPlacesBinding8 = this.binding;
                                                                                if (fragmentPlacesBinding8 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                    throw null;
                                                                                }
                                                                                fragmentPlacesBinding8.rootView.setVisibility(8);
                                                                                FragmentPlacesBinding fragmentPlacesBinding9 = this.binding;
                                                                                if (fragmentPlacesBinding9 != null) {
                                                                                    ((CoordinatorLayout) fragmentPlacesBinding9.searchCloseBtn).post(new MainFragment$$ExternalSyntheticLambda5(7, this));
                                                                                    return;
                                                                                } else {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                    throw null;
                                                                                }
                                                                            }
                                                                            return;
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
                                    i2 = i3;
                                } else {
                                    i2 = R.id.insertMediaSettingsFragment;
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_insert_media, menu);
        return true;
    }

    @Override // org.wikipedia.activity.BaseActivity, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        PageTitle pageTitle = getViewModel().selectedImage;
        int itemId = menuItem.getItemId();
        if (itemId == R.id.menu_next) {
            showMediaSettingsFragment();
            adjustRefreshViewLayoutParams(true);
            return true;
        }
        if (itemId == R.id.menu_save) {
            if (getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE && pageTitle != null) {
                ImageRecommendationsEvent.Companion.logAction("advanced_setting_save", "caption_entry", ImageRecommendationsEvent.Companion.getActionDataString$default(ImageRecommendationsEvent.Companion, pageTitle.getPrefixedText(), getViewModel().selectedImageSource, getViewModel().selectedImageSourceProjects, null, "accepted", null, null, null, false, 488), pageTitle.wikiSite.languageCode);
            }
            getOnBackPressedDispatcher().onBackPressed();
            return true;
        }
        if (itemId != R.id.menu_insert) {
            return super.onOptionsItemSelected(menuItem);
        }
        if (getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE && pageTitle != null) {
            ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
            String prefixedText = pageTitle.getPrefixedText();
            String str = getViewModel().selectedImageSource;
            String str2 = getViewModel().selectedImageSourceProjects;
            InsertMediaSettingsFragment insertMediaSettingsFragment = this.insertMediaSettingsFragment;
            if (insertMediaSettingsFragment == null) {
                Intrinsics.throwUninitializedPropertyAccessException("insertMediaSettingsFragment");
                throw null;
            }
            Boolean valueOf = Boolean.valueOf(insertMediaSettingsFragment.getCaptionText().length() > 0);
            InsertMediaSettingsFragment insertMediaSettingsFragment2 = this.insertMediaSettingsFragment;
            if (insertMediaSettingsFragment2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("insertMediaSettingsFragment");
                throw null;
            }
            ImageRecommendationsEvent.Companion.logAction("caption_continue", "caption_entry", ImageRecommendationsEvent.Companion.getActionDataString$default(companion, prefixedText, str, str2, null, "accepted", null, valueOf, Boolean.valueOf(insertMediaSettingsFragment2.getAlternativeText().length() > 0), false, 296), pageTitle.wikiSite.languageCode);
        }
        if (pageTitle == null) {
            return true;
        }
        Intent putExtra = new Intent().putExtra("imageTitle", pageTitle);
        InsertMediaSettingsFragment insertMediaSettingsFragment3 = this.insertMediaSettingsFragment;
        if (insertMediaSettingsFragment3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("insertMediaSettingsFragment");
            throw null;
        }
        Intent putExtra2 = putExtra.putExtra("resultImageCaption", insertMediaSettingsFragment3.getCaptionText());
        InsertMediaSettingsFragment insertMediaSettingsFragment4 = this.insertMediaSettingsFragment;
        if (insertMediaSettingsFragment4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("insertMediaSettingsFragment");
            throw null;
        }
        Intent putExtra3 = putExtra2.putExtra("resultImageAlt", insertMediaSettingsFragment4.getAlternativeText()).putExtra("resultImageType", getViewModel().imageType).putExtra("resultImagePos", getViewModel().imagePosition).putExtra("resultImageSize", getViewModel().imageSize);
        putExtra3.getClass();
        setResult(100, putExtra3);
        finish();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e8  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onPrepareOptionsMenu(android.view.Menu r10) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.insertmedia.InsertMediaActivity.onPrepareOptionsMenu(android.view.Menu):boolean");
    }

    public final void showMediaSettingsFragment() {
        FragmentPlacesBinding fragmentPlacesBinding = this.binding;
        if (fragmentPlacesBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        fragmentPlacesBinding.rootView.setVisibility(8);
        FragmentPlacesBinding fragmentPlacesBinding2 = this.binding;
        if (fragmentPlacesBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        fragmentPlacesBinding2.searchContainer.setVisibility(8);
        FragmentPlacesBinding fragmentPlacesBinding3 = this.binding;
        if (fragmentPlacesBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((LinearProgressIndicator) fragmentPlacesBinding3.listEmptyContainer).setVisibility(8);
        InsertMediaSettingsFragment insertMediaSettingsFragment = this.insertMediaSettingsFragment;
        if (insertMediaSettingsFragment != null) {
            insertMediaSettingsFragment.show();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("insertMediaSettingsFragment");
            throw null;
        }
    }
}
