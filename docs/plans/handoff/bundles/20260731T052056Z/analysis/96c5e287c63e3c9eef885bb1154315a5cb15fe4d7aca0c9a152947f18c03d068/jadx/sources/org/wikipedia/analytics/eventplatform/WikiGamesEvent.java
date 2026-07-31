package org.wikipedia.analytics.eventplatform;

import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import coil3.size.ViewSizeResolver$CC;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.JsonImpl;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.SingleFragmentActivity;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.main.MainActivity;
import org.wikipedia.main.MainFragment;
import org.wikipedia.navtab.NavTab;
import org.wikipedia.onboarding.InitialOnboardingActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WikiGamesEvent {
    public static String composeLogString(PageTitle pageTitle) {
        return ViewSizeResolver$CC.m("machineSuggestions.lang:", pageTitle.wikiSite.languageCode, ".title:", StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(pageTitle.getPrefixedText(), ".", "%2E"), ":", "%3A"));
    }

    public static String getReadableNameForView(View view) {
        view.getClass();
        Object parent = view.getParent();
        if (!(parent instanceof RecyclerView)) {
            if (view.getId() == -1) {
                return (!(view instanceof TextView) || (view instanceof EditText)) ? "unnamed" : ((TextView) view).getText().toString();
            }
            try {
                String resourceEntryName = view.getResources().getResourceEntryName(view.getId());
                resourceEntryName.getClass();
                return resourceEntryName;
            } catch (Exception unused) {
                return "unnamed";
            }
        }
        RecyclerView recyclerView = (RecyclerView) parent;
        View findContainingItemView = recyclerView.findContainingItemView(view);
        RecyclerView.ViewHolder childViewHolder = findContainingItemView == null ? null : recyclerView.getChildViewHolder(findContainingItemView);
        int bindingAdapterPosition = childViewHolder != null ? childViewHolder.getBindingAdapterPosition() : 0;
        return getReadableNameForView((View) parent) + "." + bindingAdapterPosition;
    }

    public static String getReadableScreenName(Context context, Fragment fragment) {
        String simpleName;
        Fragment fragment2;
        View view;
        context.getClass();
        if (fragment == null) {
            if (context instanceof SingleFragmentActivity) {
                fragment2 = ((SingleFragmentActivity) context).getSupportFragmentManager().findFragmentById(R.id.fragment_container);
            } else if (context instanceof AppCompatActivity) {
                List<Fragment> fragments = ((AppCompatActivity) context).getSupportFragmentManager().mFragmentStore.getFragments();
                fragments.getClass();
                for (Fragment findFragmentByTag : fragments) {
                    if (findFragmentByTag.isAdded() && !findFragmentByTag.isHidden() && (view = findFragmentByTag.mView) != null && view.getWindowToken() != null && findFragmentByTag.mView.getVisibility() == 0) {
                        fragment2 = findFragmentByTag;
                        break;
                    }
                }
                fragment2 = null;
            } else {
                if (context instanceof ContextThemeWrapper) {
                    ContextThemeWrapper contextThemeWrapper = (ContextThemeWrapper) context;
                    if (contextThemeWrapper.getBaseContext() instanceof AppCompatActivity) {
                        Context baseContext = contextThemeWrapper.getBaseContext();
                        baseContext.getClass();
                        findFragmentByTag = ((AppCompatActivity) baseContext).getSupportFragmentManager().findFragmentByTag("bottom_sheet_fragment");
                        if (findFragmentByTag == null) {
                            Context baseContext2 = contextThemeWrapper.getBaseContext();
                            baseContext2.getClass();
                            List fragments2 = ((AppCompatActivity) baseContext2).getSupportFragmentManager().mFragmentStore.getFragments();
                            fragments2.getClass();
                            Iterator it = fragments2.iterator();
                            while (it.hasNext()) {
                                Fragment findFragmentByTag2 = ((Fragment) it.next()).getChildFragmentManager().findFragmentByTag("bottom_sheet_fragment");
                                if (findFragmentByTag2 != null) {
                                    fragment2 = findFragmentByTag2;
                                    break;
                                }
                            }
                            CollectionsKt.lastOrNull(fragments2);
                        }
                        fragment2 = findFragmentByTag;
                        break;
                    }
                }
                fragment2 = null;
            }
            if (fragment2 == null || !(context instanceof InitialOnboardingActivity)) {
                if (fragment2 == null || !(context instanceof MainActivity)) {
                    if (fragment2 != null) {
                        simpleName = fragment2.getClass().getSimpleName();
                    }
                } else if (fragment2 instanceof MainFragment) {
                    View view2 = ((MainFragment) fragment2).mView;
                    ViewPager2 viewPager2 = view2 != null ? (ViewPager2) view2.findViewById(R.id.main_view_pager) : null;
                    if (viewPager2 == null) {
                        simpleName = fragment2.getClass().getSimpleName();
                    } else {
                        NavTab.Companion companion = NavTab.Companion;
                        int currentItem = viewPager2.getCurrentItem();
                        companion.getClass();
                        simpleName = NavTab.Companion.of(currentItem).name();
                    }
                }
            }
            simpleName = "";
        } else {
            simpleName = fragment.getClass().getSimpleName();
        }
        String simpleName2 = context.getClass().getSimpleName();
        simpleName.getClass();
        return simpleName2.concat(simpleName.length() > 0 ? ".".concat(simpleName) : "");
    }

    public static void submit$default(String str, String str2, Integer num, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, int i) {
        String str12 = null;
        if ((i & 8) != 0) {
            num = null;
        }
        String str13 = (i & 16) != 0 ? null : str3;
        String str14 = (i & 32) != 0 ? null : str4;
        String str15 = (i & 64) != 0 ? null : str5;
        String str16 = (i & 128) != 0 ? null : str6;
        String str17 = (i & 256) != 0 ? null : str7;
        String str18 = (i & 512) != 0 ? null : str8;
        String str19 = (i & 1024) != 0 ? null : str9;
        String str20 = (i & 2048) != 0 ? null : str10;
        String str21 = (i & 4096) != 0 ? null : str11;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
        appOrSystemLanguageCode.getClass();
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        ActivityTabEvent$ActionData activityTabEvent$ActionData = new ActivityTabEvent$ActionData(str13, str17, str18, str19, str20, str21, str14, str15, str16, num);
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str12 = jsonImpl.encodeToString(ActivityTabEvent$ActionData.Companion.serializer(), activityTabEvent$ActionData);
        } catch (Exception e) {
            L.w(e);
        }
        if (str12 == null) {
            str12 = "";
        }
        WikipediaApp wikipediaApp2 = WikipediaApp.instance;
        EventPlatformClient.submit(new AppInteractionEvent(str2, str, str12, ViewSizeResolver$CC.m(), appOrSystemLanguageCode, "app_activity_tab"));
    }

    public void log(Context context, String str) {
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        EventPlatformClient.submit(new BreadCrumbLogEvent(getReadableScreenName(context, null), str));
    }

    public void logSuccess(Context context, PageTitle pageTitle, long j) {
        pageTitle.getClass();
        log(context, composeLogString(pageTitle) + ".success.revId:" + j);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class ActionData {
        public static final Companion Companion = new Companion();
        public final Boolean archive;
        public final String cardType;
        public final String feedbackSelect;
        public final String feedbackText;
        public final String langCode;
        public final Integer position;
        public final String slide;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return WikiGamesEvent$ActionData$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ ActionData(int i, Boolean bool, Integer num, String str, String str2, String str3, String str4, String str5) {
            if ((i & 1) == 0) {
                this.slide = null;
            } else {
                this.slide = str;
            }
            if ((i & 2) == 0) {
                this.archive = null;
            } else {
                this.archive = bool;
            }
            if ((i & 4) == 0) {
                this.feedbackSelect = null;
            } else {
                this.feedbackSelect = str2;
            }
            if ((i & 8) == 0) {
                this.feedbackText = null;
            } else {
                this.feedbackText = str3;
            }
            if ((i & 16) == 0) {
                this.langCode = null;
            } else {
                this.langCode = str4;
            }
            if ((i & 32) == 0) {
                this.cardType = null;
            } else {
                this.cardType = str5;
            }
            if ((i & 64) == 0) {
                this.position = null;
            } else {
                this.position = num;
            }
        }

        public ActionData(String str, Boolean bool, String str2, String str3, Integer num) {
            this.slide = str;
            this.archive = bool;
            this.feedbackSelect = null;
            this.feedbackText = null;
            this.langCode = str2;
            this.cardType = str3;
            this.position = num;
        }
    }

    public static void submit$default(String str, String str2, String str3, Integer num, Integer num2, String str4, String str5, String str6, int i) {
        String str7 = null;
        String str8 = (i & 4) != 0 ? null : str3;
        Integer num3 = (i & 8) != 0 ? null : num;
        Integer num4 = (i & 16) != 0 ? null : num2;
        String str9 = (i & 32) != 0 ? null : str4;
        String str10 = (i & 64) != 0 ? null : str5;
        String str11 = (i & 128) != 0 ? null : str6;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
        str2.getClass();
        appOrSystemLanguageCode.getClass();
        RecommendedReadingListEvent$ActionData recommendedReadingListEvent$ActionData = new RecommendedReadingListEvent$ActionData(str8, num3, num4, str9, str10, str11);
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str7 = jsonImpl.encodeToString(RecommendedReadingListEvent$ActionData.Companion.serializer(), recommendedReadingListEvent$ActionData);
        } catch (Exception e) {
            L.w(e);
        }
        if (str7 == null) {
            str7 = "";
        }
        WikipediaApp wikipediaApp2 = WikipediaApp.instance;
        EventPlatformClient.submit(new AppInteractionEvent(str, str2, str7, ViewSizeResolver$CC.m(), appOrSystemLanguageCode, "app_rabbit_holes"));
    }

    public static void submit$default(int i, Boolean bool, Integer num, String str, String str2, String str3, String str4, String str5) {
        String str6 = null;
        String str7 = (i & 4) != 0 ? null : str3;
        Boolean bool2 = (i & 32) != 0 ? null : bool;
        String str8 = (i & 64) != 0 ? null : str4;
        String str9 = (i & 128) != 0 ? null : str5;
        Integer num2 = (i & 256) != 0 ? null : num;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
        appOrSystemLanguageCode.getClass();
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        ActionData actionData = new ActionData(str7, bool2, str8, str9, num2);
        try {
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            str6 = jsonImpl.encodeToString(ActionData.Companion.serializer(), actionData);
        } catch (Exception e) {
            L.w(e);
        }
        if (str6 == null) {
            str6 = "";
        }
        WikipediaApp wikipediaApp2 = WikipediaApp.instance;
        EventPlatformClient.submit(new AppInteractionEvent(str, str2, str6, ViewSizeResolver$CC.m(), appOrSystemLanguageCode, "app_game_interaction"));
    }
}
