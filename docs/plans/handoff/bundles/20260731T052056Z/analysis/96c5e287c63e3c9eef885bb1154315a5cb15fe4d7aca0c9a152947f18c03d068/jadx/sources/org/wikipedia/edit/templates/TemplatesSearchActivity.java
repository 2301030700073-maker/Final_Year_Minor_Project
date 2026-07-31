package org.wikipedia.edit.templates;

import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.compose.animation.core.Animation;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager$1;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.gson.GsonBuilder;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.AwaitKt;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.settings.Prefs;
import org.wikipedia.views.CabSearchView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007"}, d2 = {"Lorg/wikipedia/edit/templates/TemplatesSearchActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "CategoryMemberDiffCallback", "CategoryMembersAdapter", "TemplatesSearchItemHolder", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TemplatesSearchActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public GsonBuilder binding;
    public InsertTemplateFragment insertTemplateFragment;
    public final TemplatesSearchActivity$$ExternalSyntheticLambda0 searchCloseListener;
    public CategoryActivity.CategoryMembersAdapter templatesSearchAdapter;
    public final Request.Builder viewModel$delegate;
    public final AvPlayer searchQueryListener = new AvPlayer(4, this);
    public final FragmentManager$1 onBackPressedCallback = new FragmentManager$1(6, this);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TemplatesSearchItemHolder extends RecyclerView.ViewHolder {
        public final MultipartBody.Builder binding;

        public TemplatesSearchItemHolder(MultipartBody.Builder builder) {
            super((LinearLayout) builder.boundary);
            this.binding = builder;
        }
    }

    public TemplatesSearchActivity() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(TemplatesSearchViewModel.class), new Function0(this) { // from class: org.wikipedia.edit.templates.TemplatesSearchActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ TemplatesSearchActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                TemplatesSearchActivity templatesSearchActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return templatesSearchActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return templatesSearchActivity.getViewModelStore();
                    default:
                        return templatesSearchActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.edit.templates.TemplatesSearchActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ TemplatesSearchActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                TemplatesSearchActivity templatesSearchActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return templatesSearchActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return templatesSearchActivity.getViewModelStore();
                    default:
                        return templatesSearchActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.edit.templates.TemplatesSearchActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ TemplatesSearchActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                TemplatesSearchActivity templatesSearchActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return templatesSearchActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return templatesSearchActivity.getViewModelStore();
                    default:
                        return templatesSearchActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
        this.searchCloseListener = new TemplatesSearchActivity$$ExternalSyntheticLambda0(this, i2);
    }

    public static void sendPatrollerExperienceEvent$default(TemplatesSearchActivity templatesSearchActivity, String str) {
        templatesSearchActivity.getClass();
        if (templatesSearchActivity.getViewModel().isFromDiff) {
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            String m = ViewSizeResolver$CC.m();
            Prefs prefs = Prefs.INSTANCE;
            EventPlatformClient.submit(new AppInteractionEvent(str, "pt_templates", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
        }
    }

    public final TemplatesSearchViewModel getViewModel() {
        return (TemplatesSearchViewModel) this.viewModel$delegate.getValue();
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Continuation continuation = null;
        int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.activity_templates_search, (ViewGroup) null, false);
        int i2 = R.id.emptyMessage;
        TextView textView = (TextView) Room.findChildViewById(inflate, R.id.emptyMessage);
        if (textView != null) {
            i2 = R.id.insertTemplateButton;
            TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.insertTemplateButton);
            if (textView2 != null) {
                i2 = R.id.insertTemplateFragment;
                if (((FragmentContainerView) Room.findChildViewById(inflate, R.id.insertTemplateFragment)) != null) {
                    int i3 = R.id.searchCabView;
                    CabSearchView cabSearchView = (CabSearchView) Room.findChildViewById(inflate, R.id.searchCabView);
                    if (cabSearchView != null) {
                        i3 = R.id.searchProgressBar;
                        LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) Room.findChildViewById(inflate, R.id.searchProgressBar);
                        if (linearProgressIndicator != null) {
                            i3 = R.id.templateRecyclerView;
                            RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.templateRecyclerView);
                            if (recyclerView != null) {
                                i3 = R.id.toolbar;
                                MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
                                if (materialToolbar != null) {
                                    i3 = R.id.toolbarContainer;
                                    FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(inflate, R.id.toolbarContainer);
                                    if (frameLayout != null) {
                                        LinearLayout linearLayout = (LinearLayout) inflate;
                                        this.binding = new GsonBuilder(linearLayout, textView, textView2, cabSearchView, linearProgressIndicator, recyclerView, materialToolbar, frameLayout, 7);
                                        setContentView(linearLayout);
                                        GsonBuilder gsonBuilder = this.binding;
                                        if (gsonBuilder == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        setSupportActionBar((MaterialToolbar) gsonBuilder.hierarchyFactories);
                                        sendPatrollerExperienceEvent$default(this, "search_init");
                                        GsonBuilder gsonBuilder2 = this.binding;
                                        if (gsonBuilder2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((CabSearchView) gsonBuilder2.fieldNamingPolicy).setOnQueryTextListener(this.searchQueryListener);
                                        GsonBuilder gsonBuilder3 = this.binding;
                                        if (gsonBuilder3 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((CabSearchView) gsonBuilder3.fieldNamingPolicy).setCloseButtonClickListener(this.searchCloseListener);
                                        GsonBuilder gsonBuilder4 = this.binding;
                                        if (gsonBuilder4 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        CabSearchView cabSearchView2 = (CabSearchView) gsonBuilder4.fieldNamingPolicy;
                                        TypedValue typedValue = new TypedValue();
                                        if (!getTheme().resolveAttribute(R.attr.secondary_color, typedValue, true)) {
                                            typedValue = null;
                                        }
                                        if (typedValue == null) {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969935");
                                            return;
                                        }
                                        cabSearchView2.setSearchHintTextColor(typedValue.data);
                                        GsonBuilder gsonBuilder5 = this.binding;
                                        if (gsonBuilder5 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((CabSearchView) gsonBuilder5.fieldNamingPolicy).setQueryHint(getString(R.string.templates_search_hint));
                                        GsonBuilder gsonBuilder6 = this.binding;
                                        if (gsonBuilder6 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((CabSearchView) gsonBuilder6.fieldNamingPolicy).findViewById(R.id.search_plate).setBackgroundColor(0);
                                        getOnBackPressedDispatcher().addCallback(this.onBackPressedCallback, this);
                                        this.templatesSearchAdapter = new CategoryActivity.CategoryMembersAdapter(this);
                                        GsonBuilder gsonBuilder7 = this.binding;
                                        if (gsonBuilder7 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((RecyclerView) gsonBuilder7.factories).setLayoutManager(new LinearLayoutManager(1));
                                        GsonBuilder gsonBuilder8 = this.binding;
                                        if (gsonBuilder8 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((RecyclerView) gsonBuilder8.factories).setAdapter(this.templatesSearchAdapter);
                                        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R.id.insertTemplateFragment);
                                        findFragmentById.getClass();
                                        this.insertTemplateFragment = (InsertTemplateFragment) findFragmentById;
                                        GsonBuilder gsonBuilder9 = this.binding;
                                        if (gsonBuilder9 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((TextView) gsonBuilder9.longSerializationPolicy).setOnClickListener(new TemplatesSearchActivity$$ExternalSyntheticLambda0(this, i));
                                        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new TemplatesSearchActivity$onCreate$2(this, continuation, i), 3);
                                        return;
                                    }
                                }
                            }
                        }
                    }
                    i2 = i3;
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }

    public final void updateInsertButton(boolean z) {
        GsonBuilder gsonBuilder = this.binding;
        if (gsonBuilder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((TextView) gsonBuilder.longSerializationPolicy).setEnabled(z);
        GsonBuilder gsonBuilder2 = this.binding;
        if (gsonBuilder2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        TextView textView = (TextView) gsonBuilder2.longSerializationPolicy;
        int i = z ? R.attr.progressive_color : R.attr.inactive_color;
        TypedValue typedValue = new TypedValue();
        TypedValue typedValue2 = getTheme().resolveAttribute(i, typedValue, true) ? typedValue : null;
        if (typedValue2 != null) {
            textView.setTextColor(typedValue2.data);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Attribute not found; ID="));
        }
    }

    public final void updateToolbarElevation$1(boolean z) {
        GsonBuilder gsonBuilder = this.binding;
        if (gsonBuilder != null) {
            ((FrameLayout) gsonBuilder.reflectionFilters).setElevation(z ? Okio__OkioKt.dpToPx(1.0f) : RecyclerView.DECELERATION_RATE);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }
}
