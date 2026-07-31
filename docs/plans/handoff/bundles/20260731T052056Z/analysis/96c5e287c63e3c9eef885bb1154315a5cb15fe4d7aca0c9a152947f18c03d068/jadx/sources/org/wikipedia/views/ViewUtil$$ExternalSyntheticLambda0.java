package org.wikipedia.views;

import android.content.Intent;
import android.os.Build;
import android.text.Editable;
import android.view.ActionMode;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.PopupWindow;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.app.AlertDialog;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.fragment.app.Fragment;
import androidx.paging.HintHandler;
import com.google.android.material.textfield.TextInputLayout;
import com.google.gson.GsonBuilder;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.wikipedia.analytics.eventplatform.ArticleInteractionEvent;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.notifications.NotificationActivity;
import org.wikipedia.notifications.NotificationFilterActivity;
import org.wikipedia.notifications.NotificationLinkHandler;
import org.wikipedia.notifications.NotificationListItemContainer;
import org.wikipedia.notifications.db.Notification;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.edithistory.EditHistoryListActivity;
import org.wikipedia.page.tabs.Tab;
import org.wikipedia.search.SearchFragment;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFilterActivity;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFragment;
import org.wikipedia.usercontrib.UserContribFilterActivity;
import org.wikipedia.usercontrib.UserContribListActivity;
import org.wikipedia.util.UriUtil;
import org.wikipedia.watchlist.WatchlistFilterActivity;
import org.wikipedia.watchlist.WatchlistFilterItemView;
import org.wikipedia.watchlist.WatchlistFragment;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewUtil$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ViewUtil$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Editable text;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                ((ActionMode) obj).finish();
                return;
            case 1:
                SearchFragment searchFragment = ((LanguageScrollView) obj).callback;
                if (searchFragment != null) {
                    searchFragment.onLangButtonClick();
                    return;
                }
                return;
            case 2:
                NotificationActionsOverflowView notificationActionsOverflowView = (NotificationActionsOverflowView) obj;
                Object tag = view.getTag();
                tag.getClass();
                String str = ((Notification.Link) tag).url;
                NotificationListItemContainer notificationListItemContainer = notificationActionsOverflowView.container;
                if (notificationListItemContainer == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("container");
                    throw null;
                }
                Notification notification = notificationListItemContainer.notification;
                if (str.length() > 0 && notification != null) {
                    NotificationLinkHandler notificationLinkHandler = notificationActionsOverflowView.linkHandler;
                    if (notificationLinkHandler == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("linkHandler");
                        throw null;
                    }
                    notificationLinkHandler.wikiSite = new WikiSite(str);
                    NotificationLinkHandler notificationLinkHandler2 = notificationActionsOverflowView.linkHandler;
                    if (notificationLinkHandler2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("linkHandler");
                        throw null;
                    }
                    notificationLinkHandler2.onUrlClick(str, null, "");
                }
                PopupWindow popupWindow = notificationActionsOverflowView.popupWindowHost;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                }
                notificationActionsOverflowView.popupWindowHost = null;
                return;
            case 3:
                PageActionOverflowView pageActionOverflowView = (PageActionOverflowView) obj;
                pageActionOverflowView.dismissPopupWindowHost();
                PageFragment pageFragment = PageFragment.this;
                GsonBuilder gsonBuilder = pageFragment.pageFragmentLoadState;
                if (gsonBuilder == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("pageFragmentLoadState");
                    throw null;
                }
                if (((Tab) gsonBuilder.hierarchyFactories).getBackStackPosition() < r0.backStack.size() - 1) {
                    Tab tab = (Tab) gsonBuilder.hierarchyFactories;
                    if (tab.getBackStackPosition() < tab.backStack.size() - 1) {
                        tab.backStackPosition = tab.getBackStackPosition() + 1;
                    }
                    gsonBuilder.loadFromBackStack();
                }
                ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                if (articleInteractionEvent != null) {
                    articleInteractionEvent.submitEvent("forward");
                    return;
                }
                return;
            case 4:
                OkHttpCall.AnonymousClass1 anonymousClass1 = ((SearchAndFilterActionProvider) obj).callback;
                switch (anonymousClass1.$r8$classId) {
                    case VERTICAL_GRID_ITEM_VALUE:
                        NotificationActivity notificationActivity = (NotificationActivity) anonymousClass1.this$0;
                        Window window = notificationActivity.getWindow();
                        window.getClass();
                        HintHandler hintHandler = new HintHandler(window.getDecorView());
                        int i2 = Build.VERSION.SDK_INT;
                        (i2 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i2 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i2 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                        int i3 = NotificationFilterActivity.$r8$clinit;
                        notificationActivity.startActivity(new Intent(notificationActivity, (Class<?>) NotificationFilterActivity.class));
                        return;
                    case RADIO_GROUP_VALUE:
                        ((EditHistoryListActivity) anonymousClass1.this$0).showFilterOverflowMenu();
                        return;
                    case SIZE_BOX_VALUE:
                        SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = (SuggestedEditsRecentEditsFragment) anonymousClass1.this$0;
                        Fragment.AnonymousClass10 anonymousClass10 = suggestedEditsRecentEditsFragment.launchFilterActivity;
                        int i4 = SuggestedEditsRecentEditsFilterActivity.$r8$clinit;
                        anonymousClass10.launch(new Intent(suggestedEditsRecentEditsFragment.requireContext(), (Class<?>) SuggestedEditsRecentEditsFilterActivity.class), null);
                        return;
                    case 24:
                        UserContribListActivity userContribListActivity = (UserContribListActivity) anonymousClass1.this$0;
                        ActivityResultRegistry$register$2 activityResultRegistry$register$2 = userContribListActivity.launchFilterActivity;
                        List list = UserContribFilterActivity.NAMESPACE_LIST;
                        activityResultRegistry$register$2.launch(new Intent(userContribListActivity, (Class<?>) UserContribFilterActivity.class), null);
                        return;
                    default:
                        WatchlistFragment watchlistFragment = (WatchlistFragment) anonymousClass1.this$0;
                        Window window2 = watchlistFragment.requireActivity().getWindow();
                        window2.getClass();
                        HintHandler hintHandler2 = new HintHandler(window2.getDecorView());
                        int i5 = Build.VERSION.SDK_INT;
                        (i5 >= 35 ? new WindowInsetsControllerCompat$Impl35(window2, hintHandler2) : i5 >= 30 ? new WindowInsetsControllerCompat$Impl30(window2, hintHandler2) : i5 >= 26 ? new WindowInsetsControllerCompat$Impl26(window2, hintHandler2) : new WindowInsetsControllerCompat$Impl23(window2, hintHandler2)).hide();
                        int i6 = WatchlistFilterActivity.$r8$clinit;
                        watchlistFragment.startActivity(new Intent(watchlistFragment.requireContext(), (Class<?>) WatchlistFilterActivity.class), null);
                        return;
                }
            case 5:
                AlertDialog alertDialog = ((SuggestedArticleDescriptionsDialog) obj).dialog;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                    return;
                }
                return;
            case 6:
                EditText editText = ((TextInputLayout) ((SuggestedArticleDescriptionsReportDialog) obj).binding.tags).getEditText();
                if (editText == null || (text = editText.getText()) == null) {
                    return;
                }
                text.clear();
                return;
            case 7:
                AlertDialog alertDialog2 = (AlertDialog) ((Ref$ObjectRef) obj).element;
                if (alertDialog2 != null) {
                    alertDialog2.dismiss();
                    return;
                }
                return;
            case 8:
                WatchlistFilterItemView watchlistFilterItemView = (WatchlistFilterItemView) obj;
                WatchlistFilterItemView.Callback callback = watchlistFilterItemView.callback;
                if (callback != null) {
                    callback.onCheckedChanged(watchlistFilterItemView.filter);
                    return;
                }
                return;
            default:
                UriUtil.submit$default(238, null, "close_click", null, "feedback_choice", null);
                ((AlertDialog) obj).dismiss();
                return;
        }
    }
}
