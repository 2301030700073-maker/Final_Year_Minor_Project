package org.wikipedia.suggestededits;

import android.app.Activity;
import android.view.View;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.Snackbar;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import okhttp3.Headers;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.talk.TalkTopicActivity$showUndoSnackbar$2;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsSnackbars {
    public static final LinkedHashMap snackbarSessionMap = new LinkedHashMap();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OpenPageListener {
        void open(View view);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DescriptionEditActivity.Action.values().length];
            try {
                iArr[DescriptionEditActivity.Action.ADD_DESCRIPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DescriptionEditActivity.Action.ADD_IMAGE_TAGS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static String getMapKey(Activity activity, DescriptionEditActivity.Action action) {
        return activity.getComponentName().getClassName() + "." + action.name();
    }

    public static void show(final Activity activity, final DescriptionEditActivity.Action action, boolean z, String str, boolean z2, OpenPageListener openPageListener) {
        String string;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        WikipediaApp jsoup = Jsoup.getInstance();
        if (!z) {
            showFeedLinkSnackbar(activity, action);
            return;
        }
        DescriptionEditActivity.Action action2 = DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION;
        if ((action == action2 || action == DescriptionEditActivity.Action.TRANSLATE_CAPTION) && ((ArrayList) jsoup.getLanguageState().getAppLanguageCodes()).size() > 1) {
            string = activity.getString(action == action2 ? R.string.description_edit_success_saved_in_lang_snackbar : R.string.description_edit_success_saved_image_caption_in_lang_snackbar, jsoup.getLanguageState().getAppLanguageLocalizedName(str));
        } else {
            int i = action == null ? -1 : WhenMappings.$EnumSwitchMapping$0[action.ordinal()];
            string = activity.getString(i != 1 ? i != 2 ? R.string.description_edit_success_saved_image_caption_snackbar : R.string.description_edit_success_saved_image_tags_snackbar : R.string.description_edit_success_saved_snackbar);
        }
        string.getClass();
        Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(activity, string, 0, 12);
        if (z2 && openPageListener != null) {
            makeSnackbar$default.setAction(R.string.suggested_edits_article_cta_snackbar_action, new DiffLineView$$ExternalSyntheticLambda0(24, openPageListener));
        }
        makeSnackbar$default.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.suggestededits.SuggestedEditsSnackbars$show$2
            @Override // com.google.android.material.snackbar.Snackbar.Callback
            public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                Activity activity2 = activity;
                if (activity2.isDestroyed()) {
                    return;
                }
                LinkedHashMap linkedHashMap = SuggestedEditsSnackbars.snackbarSessionMap;
                SuggestedEditsSnackbars.showFeedLinkSnackbar(activity2, action);
            }
        });
        makeSnackbar$default.show();
    }

    public static /* synthetic */ void show$default(Activity activity, DescriptionEditActivity.Action action, String str, int i) {
        if ((i & 8) != 0) {
            str = null;
        }
        show(activity, action, true, str, false, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void showFeedLinkSnackbar(Activity activity, DescriptionEditActivity.Action action) {
        Integer num = 0;
        if (action != null) {
            String mapKey = getMapKey(activity, action);
            LinkedHashMap linkedHashMap = snackbarSessionMap;
            Object obj = linkedHashMap.get(mapKey);
            if (obj == null) {
                linkedHashMap.put(mapKey, num);
                obj = num;
            }
            int intValue = ((Number) obj).intValue();
            int i = 2;
            if (intValue < 2) {
                String string = activity.getString(R.string.description_edit_success_se_general_feed_link_snackbar);
                string.getClass();
                Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(activity, string, 0, 12);
                makeSnackbar$default.setAction(R.string.suggested_edits_tasks_onboarding_get_started, new HomeFragment$$ExternalSyntheticLambda8(25, activity, action));
                makeSnackbar$default.addCallback(new TalkTopicActivity$showUndoSnackbar$2(activity, i));
                makeSnackbar$default.show();
                String mapKey2 = getMapKey(activity, action);
                String mapKey3 = getMapKey(activity, action);
                Object obj2 = linkedHashMap.get(mapKey3);
                if (obj2 == 0) {
                    linkedHashMap.put(mapKey3, num);
                } else {
                    num = obj2;
                }
                linkedHashMap.put(mapKey2, Integer.valueOf(num.intValue() + 1));
                return;
            }
        }
        Headers.Companion.maybeShowTempAccountWelcome(activity);
    }
}
