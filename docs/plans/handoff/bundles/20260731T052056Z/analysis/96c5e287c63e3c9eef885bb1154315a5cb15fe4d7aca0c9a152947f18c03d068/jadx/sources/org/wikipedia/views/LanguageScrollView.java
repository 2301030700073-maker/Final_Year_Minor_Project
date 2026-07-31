package org.wikipedia.views;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.view.ActionMode;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.viewpager2.widget.ViewPager2;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.tabs.TabLayout;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cache;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.notifications.NotificationActivity;
import org.wikipedia.notifications.NotificationViewModel;
import org.wikipedia.notifications.NotificationViewModel$updateSearchQuery$1;
import org.wikipedia.search.RecentSearchesFragment;
import org.wikipedia.search.RecentSearchesFragment$onCreateView$1$1$1;
import org.wikipedia.search.SearchFragment;
import org.wikipedia.talk.template.TalkTemplatesFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\fB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u000b\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lorg/wikipedia/views/LanguageScrollView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "getSelectedPosition", "()I", "selectedPosition", "org/wikipedia/search/SearchFragment", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LanguageScrollView extends ConstraintLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public boolean allowSelect;
    public final ConnectionPool binding;
    public SearchFragment callback;
    public List languageCodes;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LanguageScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.view_language_scroll, this);
        int i = R.id.horizontal_scroll_languages;
        TabLayout tabLayout = (TabLayout) Room.findChildViewById(this, R.id.horizontal_scroll_languages);
        if (tabLayout != null) {
            i = R.id.more_languages;
            Button button = (Button) Room.findChildViewById(this, R.id.more_languages);
            if (button != null) {
                this.binding = new ConnectionPool(this, tabLayout, button);
                this.languageCodes = new ArrayList();
                tabLayout.addOnTabSelectedListener(new AnonymousClass1(0, this));
                button.setOnClickListener(new ViewUtil$$ExternalSyntheticLambda0(1, this));
                return;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public static void updateTabLanguageCode$default(LanguageScrollView languageScrollView, View view, String str, Integer num, Integer num2, int i) {
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            num = null;
        }
        if ((i & 8) != 0) {
            num2 = null;
        }
        boolean z = (i & 16) == 0;
        LangCodeView langCodeView = (LangCodeView) view.findViewById(R.id.language_code);
        if (str != null) {
            langCodeView.setLangCode(str);
        }
        langCodeView.binding.langCodeText.setBackgroundResource(z ? R.drawable.square_shape_border_filled : R.drawable.square_shape_border);
        if (num != null) {
            langCodeView.setTextColor(num.intValue());
        }
        if (num2 != null) {
            langCodeView.setBackgroundTint(num2.intValue());
        }
    }

    public static void updateTabLanguageLabel$default(LanguageScrollView languageScrollView, View view, String str, Integer num, int i) {
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            num = null;
        }
        TextView textView = (TextView) view.findViewById(R.id.language_label);
        if (str != null && str.length() != 0) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            textView.setText(Jsoup.getInstance().getLanguageState().getAppLanguageLocalizedName(str));
        }
        if (num != null) {
            textView.setTextColor(num.intValue());
        }
    }

    public final int getSelectedPosition() {
        return ((TabLayout) this.binding.delegate).getSelectedTabPosition();
    }

    public final void updateTabView(TabLayout.Tab tab, boolean z) {
        LanguageScrollView languageScrollView;
        SearchFragment searchFragment;
        View view = tab.customView;
        int i = 1;
        Continuation continuation = null;
        if (!z) {
            if (view != null) {
                Context context = getContext();
                TypedValue m = ViewSizeResolver$CC.m(context);
                if (!context.getTheme().resolveAttribute(R.attr.placeholder_color, m, true)) {
                    m = null;
                }
                if (m == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969851");
                    return;
                }
                int i2 = m.data;
                updateTabLanguageLabel$default(this, view, null, Integer.valueOf(i2), 2);
                updateTabLanguageCode$default(this, view, null, Integer.valueOf(i2), Integer.valueOf(i2), 18);
                return;
            }
            return;
        }
        if (view != null) {
            Context context2 = getContext();
            context2.getClass();
            int themedColor = Cache.Companion.getThemedColor(context2, R.attr.progressive_color);
            Context context3 = getContext();
            context3.getClass();
            languageScrollView = this;
            updateTabLanguageCode$default(languageScrollView, view, null, Integer.valueOf(Cache.Companion.getThemedColor(context3, R.attr.paper_color)), Integer.valueOf(themedColor), 2);
            updateTabLanguageLabel$default(languageScrollView, view, null, Integer.valueOf(themedColor), 2);
        } else {
            languageScrollView = this;
        }
        if (!languageScrollView.allowSelect || (searchFragment = languageScrollView.callback) == null) {
            return;
        }
        String str = (String) languageScrollView.languageCodes.get(tab.position);
        str.getClass();
        if (searchFragment.langBtnClicked) {
            searchFragment.langBtnClicked = false;
        }
        searchFragment.searchLanguageCode = str;
        RecentSearchesFragment recentSearchesFragment = searchFragment.recentSearchesFragment;
        if (recentSearchesFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recentSearchesFragment");
            throw null;
        }
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(recentSearchesFragment), recentSearchesFragment.coroutineExceptionHandler, null, new RecentSearchesFragment$onCreateView$1$1$1(recentSearchesFragment, continuation, i), 2);
        searchFragment.startSearch(searchFragment.query, false, false);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.views.LanguageScrollView$1, reason: invalid class name */
    public final class AnonymousClass1 implements TabLayout.OnTabSelectedListener {
        public final /* synthetic */ int $r8$classId;
        public final Object this$0;

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public final void onTabReselected(TabLayout.Tab tab) {
            switch (this.$r8$classId) {
                case 0:
                    tab.getClass();
                    LanguageScrollView languageScrollView = (LanguageScrollView) this.this$0;
                    int i = LanguageScrollView.$r8$clinit;
                    languageScrollView.updateTabView(tab, true);
                    break;
                case 1:
                    break;
                case 2:
                    tab.getClass();
                    break;
                case 3:
                    tab.getClass();
                    break;
                default:
                    tab.getClass();
                    break;
            }
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public final void onTabSelected(TabLayout.Tab tab) {
            int i = this.$r8$classId;
            Continuation continuation = null;
            int i2 = 1;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    int i3 = LanguageScrollView.$r8$clinit;
                    ((LanguageScrollView) obj).updateTabView(tab, true);
                    return;
                case 1:
                    ((ViewPager2) obj).setCurrentItem(tab.position, true);
                    return;
                case 2:
                    CategoryActivity categoryActivity = (CategoryActivity) obj;
                    int i4 = CategoryActivity.$r8$clinit;
                    categoryActivity.getViewModel().showSubcategories = tab.position == 1;
                    boolean z = categoryActivity.getViewModel().showSubcategories;
                    DefaultSocket defaultSocket = categoryActivity.binding;
                    if (z) {
                        if (defaultSocket != null) {
                            ((RecyclerView) defaultSocket.socket).setAdapter(categoryActivity.subcategoriesConcatAdapter);
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                    }
                    if (defaultSocket != null) {
                        ((RecyclerView) defaultSocket.socket).setAdapter(categoryActivity.categoryMembersConcatAdapter);
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                case 3:
                    NotificationActivity notificationActivity = (NotificationActivity) obj;
                    int i5 = NotificationActivity.$r8$clinit;
                    NotificationViewModel viewModel = notificationActivity.getViewModel();
                    viewModel.selectedFilterTab = tab.position;
                    AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), viewModel.handler, null, new NotificationViewModel$updateSearchQuery$1(viewModel, continuation, i2), 2);
                    notificationActivity.finishActionMode$1();
                    return;
                default:
                    TalkTemplatesFragment talkTemplatesFragment = (TalkTemplatesFragment) obj;
                    ActionMode actionMode = talkTemplatesFragment.actionMode;
                    if (actionMode != null) {
                        actionMode.finish();
                    }
                    SwipeableItemTouchHelperCallback swipeableItemTouchHelperCallback = talkTemplatesFragment.touchCallback;
                    if (swipeableItemTouchHelperCallback == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("touchCallback");
                        throw null;
                    }
                    swipeableItemTouchHelperCallback.swipeableEnabled = tab.position == 0;
                    talkTemplatesFragment.updateAndNotifyAdapter();
                    talkTemplatesFragment.updateToolbarEditButton();
                    return;
            }
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public final void onTabUnselected(TabLayout.Tab tab) {
            switch (this.$r8$classId) {
                case 0:
                    tab.getClass();
                    LanguageScrollView languageScrollView = (LanguageScrollView) this.this$0;
                    int i = LanguageScrollView.$r8$clinit;
                    languageScrollView.updateTabView(tab, false);
                    break;
                case 1:
                    break;
                case 2:
                    tab.getClass();
                    break;
                case 3:
                    tab.getClass();
                    break;
                default:
                    tab.getClass();
                    break;
            }
        }

        private final void onTabReselected$com$google$android$material$tabs$TabLayoutMediator$ViewPagerOnTabSelectedListener(TabLayout.Tab tab) {
        }

        private final void onTabUnselected$com$google$android$material$tabs$TabLayoutMediator$ViewPagerOnTabSelectedListener(TabLayout.Tab tab) {
        }
    }
}
