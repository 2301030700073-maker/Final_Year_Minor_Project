package org.wikipedia.diff;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.compose.animation.core.Animation;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.BitmapsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.imageview.ShapeableImageView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cache;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.databinding.ItemCustomizeToolbarBinding;
import org.wikipedia.databinding.ItemNotificationBinding;
import org.wikipedia.databinding.ViewCustomCalendarDayBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.feed.onthisday.OnThisDayFragment;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.notifications.NotificationActivity;
import org.wikipedia.notifications.NotificationActivity.NotificationItemHolder;
import org.wikipedia.notifications.NotificationActivity.NotificationSearchBarHolder;
import org.wikipedia.notifications.NotificationCategory;
import org.wikipedia.notifications.NotificationLinkHandler;
import org.wikipedia.notifications.NotificationListItemContainer;
import org.wikipedia.notifications.db.Notification;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.action.PageActionItem;
import org.wikipedia.page.customize.CustomizeToolbarFragment;
import org.wikipedia.page.customize.CustomizeToolbarItemView;
import org.wikipedia.page.issues.PageIssuesDialog$DefaultViewHolder;
import org.wikipedia.page.tabs.Tab;
import org.wikipedia.page.tabs.TabActivity;
import org.wikipedia.page.tabs.TabActivity.TabViewHolder;
import org.wikipedia.places.PlacesFilterActivity;
import org.wikipedia.places.PlacesFilterActivity.PlacesFilterFooterViewHolder;
import org.wikipedia.places.PlacesFilterActivity.PlacesFilterHeaderViewHolder;
import org.wikipedia.readinglist.AddToReadingListDialog;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.readinglist.ReadingListFragment.ReadingListItemHolder;
import org.wikipedia.readinglist.ReadingListFragment.ReadingListPageItemHolder;
import org.wikipedia.readinglist.ReadingListItemView;
import org.wikipedia.readinglist.ReadingListMode;
import org.wikipedia.readinglist.ReadingListPreviewSaveDialogView;
import org.wikipedia.readinglist.ReadingListPreviewSaveDialogView.ReadingListItemHolder;
import org.wikipedia.readinglist.ReadingListsFragment;
import org.wikipedia.readinglist.ReadingListsFragment$$ExternalSyntheticLambda4;
import org.wikipedia.readinglist.ReadingListsFragment.ReadingListItemHolder;
import org.wikipedia.readinglist.ReadingListsFragment.ReadingListPageItemHolder;
import org.wikipedia.readinglist.SortReadingListsDialog;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.talk.ArchivedTalkPagesActivity;
import org.wikipedia.talk.ArchivedTalkPagesActivity.EmptyViewHolder;
import org.wikipedia.talk.template.TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0;
import org.wikipedia.talk.template.TalkTemplatesItemView$$ExternalSyntheticLambda0;
import org.wikipedia.util.FileUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.CustomDatePicker;
import org.wikipedia.views.CustomDatePicker$CustomCalendarAdapter$ViewHolder;
import org.wikipedia.views.DefaultViewHolder;
import org.wikipedia.views.EditNoticesDialog;
import org.wikipedia.views.EditNoticesDialog.DefaultViewHolder;
import org.wikipedia.views.GoneIfEmptyTextView;
import org.wikipedia.views.LangCodeView;
import org.wikipedia.views.PageItemView;
import org.wikipedia.views.UserMentionInputView;
import org.wikipedia.views.UserMentionInputView.UserNameViewHolder;
import org.wikipedia.views.ViewUtil;
import org.wikipedia.views.WikiCardView;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DiffUtil$DiffLinesAdapter extends RecyclerView.Adapter {
    public final /* synthetic */ int $r8$classId;
    public final Object diffLines;

    public DiffUtil$DiffLinesAdapter(List list) {
        this.$r8$classId = 0;
        this.diffLines = list;
    }

    public int getHeaderCount() {
        String str = ((ReadingListFragment) this.diffLines).currentSearchQuery;
        return (str == null || str.length() == 0) ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        int i = this.$r8$classId;
        Object obj = this.diffLines;
        switch (i) {
            case 0:
                return ((List) obj).size();
            case 1:
                return ((NotificationActivity) obj).notificationContainerList.size();
            case 2:
                return ((CustomizeToolbarFragment) obj).getViewModel().fullList.size();
            case 3:
                return ((ArrayList) ((EditNoticesDialog) obj).wikiSite).size();
            case 4:
                return ((TabActivity) obj).app.tabList.size();
            case 5:
                return ((PlacesFilterActivity) obj).filtersList.size();
            case 6:
                return ((AddToReadingListDialog) obj).displayedLists.size();
            case 7:
                return ((ReadingListFragment) obj).displayedLists.size() + getHeaderCount();
            case 8:
                ReadingList readingList = ((ReadingListPreviewSaveDialogView) obj).readingList;
                if (readingList != null) {
                    return readingList.pages.size();
                }
                Intrinsics.throwUninitializedPropertyAccessException("readingList");
                throw null;
            case 9:
                return ((ReadingListsFragment) obj).displayedLists.size();
            case 10:
                List list = ((SortReadingListsDialog) obj).sortOptions;
                if (list != null) {
                    return list.size();
                }
                Intrinsics.throwUninitializedPropertyAccessException("sortOptions");
                throw null;
            case 11:
                return 1;
            case 12:
                return ((CustomDatePicker) obj).selectedDay.getActualMaximum(5);
            case IMAGE_VALUE:
                return ((List) ((EditNoticesDialog) obj).editNotices).size();
            default:
                return ((UserMentionInputView) obj).userNameList.size();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        int i2 = this.$r8$classId;
        Object obj = this.diffLines;
        switch (i2) {
            case 1:
                return ((NotificationListItemContainer) ((NotificationActivity) obj).notificationContainerList.get(i)).type;
            case 2:
                return ((Number) ((Pair) ((CustomizeToolbarFragment) obj).getViewModel().fullList.get(i)).first).intValue();
            case 3:
            case 4:
            case 6:
            case 8:
            default:
                return super.getItemViewType(i);
            case 5:
                ArrayList arrayList = ((PlacesFilterActivity) obj).filtersList;
                if (Intrinsics.areEqual(arrayList.get(i), "header")) {
                    return 0;
                }
                return Intrinsics.areEqual(arrayList.get(i), "footer") ? 1 : 2;
            case 7:
                if (getHeaderCount() == 1 && i == 0) {
                    return 0;
                }
                return ((ReadingListFragment) obj).displayedLists.get(i - getHeaderCount()) instanceof ReadingList ? 1 : 2;
            case 9:
                return !(((ReadingListsFragment) obj).displayedLists.get(i) instanceof ReadingList) ? 1 : 0;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ArrayList arrayList;
        NotificationActivity notificationActivity;
        ImageView imageView;
        int i2;
        Notification.Links links;
        Notification.Link primary;
        String str;
        Drawable drawable;
        Drawable drawable2;
        List list;
        Notification.Link link;
        int i3 = this.$r8$classId;
        int i4 = R.attr.primary_color;
        int i5 = R.attr.progressive_color;
        int i6 = 2;
        char c = 1;
        Object obj = this.diffLines;
        boolean z = false;
        switch (i3) {
            case 0:
                if (viewHolder instanceof DiffUtil$DiffLineHolder) {
                    DiffUtil$DiffLine diffUtil$DiffLine = (DiffUtil$DiffLine) ((List) obj).get(i);
                    diffUtil$DiffLine.getClass();
                    View view = ((DiffUtil$DiffLineHolder) viewHolder).itemView;
                    view.getClass();
                    ((DiffLineView) view).setItem(diffUtil$DiffLine);
                }
                viewHolder.itemView.setTag(Integer.valueOf(i));
                return;
            case 1:
                NotificationActivity notificationActivity2 = (NotificationActivity) obj;
                ArrayList arrayList2 = notificationActivity2.notificationContainerList;
                if (viewHolder instanceof NotificationActivity.NotificationItemHolder) {
                    NotificationActivity.NotificationItemHolder notificationItemHolder = (NotificationActivity.NotificationItemHolder) viewHolder;
                    NotificationListItemContainer notificationListItemContainer = (NotificationListItemContainer) arrayList2.get(i);
                    View view2 = notificationItemHolder.itemView;
                    notificationListItemContainer.getClass();
                    notificationItemHolder.container = notificationListItemContainer;
                    notificationItemHolder.itemPosition = i;
                    Notification notification = notificationListItemContainer.notification;
                    notification.getClass();
                    Notification.Contents contents = notification.contents;
                    NotificationCategory.Companion companion = NotificationCategory.Companion;
                    String str2 = notification.category;
                    companion.getClass();
                    NotificationCategory find = NotificationCategory.Companion.find(str2);
                    NotificationActivity notificationActivity3 = NotificationActivity.this;
                    int themedAttributeId = Cache.Companion.getThemedAttributeId(notificationActivity3, find.getIconColor());
                    Typeface typeface = notificationActivity3.typefaceSansSerifBold;
                    ColorStateList colorStateList = FileUtil.getColorStateList(notificationActivity3, themedAttributeId);
                    ColorStateList themedColorStateList = Cache.Companion.getThemedColorStateList(notificationActivity3, R.attr.primary_color);
                    ColorStateList themedColorStateList2 = Cache.Companion.getThemedColorStateList(notificationActivity3, R.attr.inactive_color);
                    notificationItemHolder.linkHandler = new NotificationLinkHandler(notificationActivity3, find);
                    ItemNotificationBinding itemNotificationBinding = notificationItemHolder.binding;
                    arrayList = arrayList2;
                    ImageView imageView2 = (ImageView) itemNotificationBinding.notificationItemImage;
                    ImageView imageView3 = (ImageView) itemNotificationBinding.notificationOverflowMenu;
                    TextView textView = (TextView) itemNotificationBinding.notificationTime;
                    TextView textView2 = (TextView) itemNotificationBinding.notificationDescription;
                    TextView textView3 = (TextView) itemNotificationBinding.notificationSubtitle;
                    LangCodeView langCodeView = (LangCodeView) itemNotificationBinding.notificationWikiCode;
                    FrameLayout frameLayout = (FrameLayout) itemNotificationBinding.notificationWikiCodeContainer;
                    notificationActivity = notificationActivity2;
                    ImageView imageView4 = (ImageView) itemNotificationBinding.notificationWikiCodeImage;
                    TextView textView4 = (TextView) itemNotificationBinding.notificationTitle;
                    TextView textView5 = (TextView) itemNotificationBinding.notificationSource;
                    imageView2.setImageResource(find.getIconResId());
                    imageView2.setImageTintList(notification.isUnread() ? colorStateList : Cache.Companion.getThemedColorStateList(notificationActivity3, R.attr.placeholder_color));
                    if (contents != null) {
                        String str3 = contents.body;
                        StringUtil stringUtil = StringUtil.INSTANCE;
                        String str4 = contents.header;
                        if (str4 == null) {
                            str4 = "";
                        }
                        String obj2 = StringUtil.fromHtml(StringUtil.removeStyleTags(str4)).toString();
                        int i7 = NotificationActivity.$r8$clinit;
                        imageView = imageView2;
                        StringUtil.setHighlightedAndBoldenedText(textView3, obj2, notificationActivity3.getViewModel().currentSearchQuery);
                        boolean isBlank = StringsKt.isBlank(str3);
                        textView2.setVisibility(!isBlank ? 0 : 8);
                        if (!isBlank) {
                            StringUtil.setHighlightedAndBoldenedText(textView2, StringUtil.fromHtml(StringUtil.removeStyleTags(str3)).toString(), notificationActivity3.getViewModel().currentSearchQuery);
                        }
                        Notification.Links links2 = contents.links;
                        if (links2 == null || (list = links2.secondary) == null || (link = (Notification.Link) CollectionsKt.firstOrNull(list)) == null) {
                            textView4.setText(notificationActivity3.getString(find.getTitle()));
                        } else {
                            StringUtil.setHighlightedAndBoldenedText(textView4, link.label, notificationActivity3.getViewModel().currentSearchQuery);
                        }
                    } else {
                        imageView = imageView2;
                    }
                    textView.setText(DateUtils.getRelativeTimeSpanString(notification.date().getTime(), System.currentTimeMillis(), 0L));
                    textView.setTextColor(notification.isUnread() ? themedColorStateList : themedColorStateList2);
                    imageView3.setImageTintList(notification.isUnread() ? themedColorStateList : themedColorStateList2);
                    textView4.setTypeface(notification.isUnread() ? typeface : Typeface.DEFAULT);
                    textView4.setTextColor(notification.isUnread() ? colorStateList : themedColorStateList);
                    textView3.setTypeface(notification.isUnread() ? typeface : Typeface.DEFAULT);
                    StringUtil stringUtil2 = StringUtil.INSTANCE;
                    String dbNameToLangCode = StringUtil.dbNameToLangCode(notification.wiki);
                    view2.getClass();
                    BitmapsKt.setLayoutDirectionByLang(view2, dbNameToLangCode);
                    Notification.Title title = notification.title;
                    if (title != null) {
                        String str5 = title.full;
                        int i8 = NotificationActivity.$r8$clinit;
                        StringUtil.setHighlightedAndBoldenedText(textView5, str5, notificationActivity3.getViewModel().currentSearchQuery);
                        if (contents != null && (links = contents.links) != null && (primary = links.getPrimary()) != null && (str = primary.url) != null) {
                            Uri parse = Uri.parse(str);
                            parse.getClass();
                            if (UriUtil.isAppSupportedLink(parse)) {
                                drawable = null;
                                drawable2 = null;
                            } else {
                                drawable = notificationActivity3.externalLinkIcon;
                                drawable2 = null;
                                if (drawable == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("externalLinkIcon");
                                    throw null;
                                }
                            }
                            textView5.setCompoundDrawablesRelative(drawable2, drawable2, drawable, drawable2);
                        }
                        ViewGroup.LayoutParams layoutParams = textView5.getLayoutParams();
                        if (layoutParams == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                            return;
                        }
                        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
                        layoutParams2.setMargins(Okio__OkioKt.roundedDpToPx(8.0f), ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin, ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin);
                        textView5.setLayoutParams(layoutParams2);
                        if (dbNameToLangCode.equals("wikidata")) {
                            langCodeView.setVisibility(8);
                            i2 = 0;
                            imageView4.setVisibility(0);
                            imageView4.setImageResource(R.drawable.ic_wikidata_logo);
                            frameLayout.setVisibility(0);
                        } else {
                            i2 = 0;
                            if (dbNameToLangCode.equals("commons")) {
                                langCodeView.setVisibility(8);
                                imageView4.setVisibility(0);
                                imageView4.setImageResource(R.drawable.ic_commons_logo);
                                frameLayout.setVisibility(0);
                            } else {
                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                if (Jsoup.getInstance().getLanguageState().appLanguageLookUpTable.indexOfCode(dbNameToLangCode) >= 0 || Jsoup.getInstance().getLanguageState().getLanguageVariants(dbNameToLangCode) != null) {
                                    i2 = 0;
                                    langCodeView.setVisibility(0);
                                    imageView4.setVisibility(8);
                                    frameLayout.setVisibility(0);
                                    langCodeView.setLangCode(dbNameToLangCode);
                                } else {
                                    ViewGroup.LayoutParams layoutParams3 = textView5.getLayoutParams();
                                    if (layoutParams3 == null) {
                                        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                                        return;
                                    }
                                    ConstraintLayout.LayoutParams layoutParams4 = (ConstraintLayout.LayoutParams) layoutParams3;
                                    layoutParams4.setMargins(((ViewGroup.MarginLayoutParams) layoutParams4).leftMargin, Okio__OkioKt.roundedDpToPx(12.0f), ((ViewGroup.MarginLayoutParams) layoutParams4).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin);
                                    textView5.setLayoutParams(layoutParams4);
                                    frameLayout.setVisibility(8);
                                    i2 = 0;
                                }
                            }
                        }
                        textView5.setVisibility(i2);
                    } else {
                        textView5.setVisibility(8);
                        textView5.setCompoundDrawablesRelative(null, null, null, null);
                        frameLayout.setVisibility(8);
                    }
                    boolean z2 = notificationListItemContainer.selected;
                    ImageView imageView5 = (ImageView) itemNotificationBinding.notificationItemSelectedImage;
                    if (z2) {
                        imageView5.setVisibility(0);
                        imageView.setVisibility(4);
                        view2.setBackgroundColor(Cache.Companion.getThemedColor(notificationActivity3, R.attr.background_color));
                        WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                        if (Jsoup.getInstance().currentTheme.isDark()) {
                            textView4.setTextColor(-1);
                        }
                    } else {
                        imageView5.setVisibility(4);
                        imageView.setVisibility(0);
                        view2.setBackgroundColor(Cache.Companion.getThemedColor(notificationActivity3, R.attr.paper_color));
                    }
                    if (notification.isUnread()) {
                        view2.setTag(R.string.tag_text_key, notificationActivity3.getString(R.string.notifications_swipe_action_read));
                        view2.setTag(R.string.tag_icon_key, Integer.valueOf(R.drawable.ic_outline_drafts_24));
                    } else {
                        view2.setTag(R.string.tag_text_key, notificationActivity3.getString(R.string.notifications_swipe_action_unread));
                        view2.setTag(R.string.tag_icon_key, Integer.valueOf(R.drawable.ic_outline_email_24));
                    }
                    imageView3.setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(14, notificationItemHolder));
                } else {
                    arrayList = arrayList2;
                    notificationActivity = notificationActivity2;
                    if (viewHolder instanceof NotificationActivity.NotificationSearchBarHolder) {
                        NotificationActivity.NotificationSearchBarHolder notificationSearchBarHolder = (NotificationActivity.NotificationSearchBarHolder) viewHolder;
                        TextView textView6 = notificationSearchBarHolder.notificationFilterCountView;
                        NotificationActivity notificationActivity4 = NotificationActivity.this;
                        int i9 = NotificationActivity.$r8$clinit;
                        boolean z3 = notificationActivity4.getViewModel().excludedFiltersCount() != 0;
                        if (z3) {
                            i4 = R.attr.progressive_color;
                        }
                        textView6.setVisibility(z3 ? 0 : 8);
                        textView6.setText(String.valueOf(notificationActivity4.getViewModel().excludedFiltersCount()));
                        notificationSearchBarHolder.notificationFilterButton.setImageTintList(Cache.Companion.getThemedColorStateList(notificationActivity4, i4));
                    }
                }
                if (i == arrayList.size() - 1) {
                    NotificationActivity notificationActivity5 = notificationActivity;
                    if (notificationActivity5.fromContinuation) {
                        notificationActivity5.getViewModel().fetchAndSave(false);
                        return;
                    }
                    return;
                }
                return;
            case 2:
                DefaultViewHolder defaultViewHolder = (DefaultViewHolder) viewHolder;
                CustomizeToolbarFragment customizeToolbarFragment = (CustomizeToolbarFragment) obj;
                if (!(defaultViewHolder instanceof CustomizeToolbarFragment.ItemHolder)) {
                    if (defaultViewHolder instanceof CustomizeToolbarFragment.HeaderViewHolder) {
                        Object obj3 = ((Pair) customizeToolbarFragment.getViewModel().fullList.get(i)).second;
                        obj3.getClass();
                        ((TextView) ((CustomizeToolbarFragment.HeaderViewHolder) defaultViewHolder).itemView.findViewById(R.id.headerTitle)).setText(((Integer) obj3).intValue());
                        return;
                    }
                    return;
                }
                View view3 = ((CustomizeToolbarFragment.ItemHolder) defaultViewHolder).itemView;
                Object obj4 = ((Pair) customizeToolbarFragment.getViewModel().fullList.get(i)).second;
                obj4.getClass();
                PageActionItem pageActionItem = (PageActionItem) obj4;
                view3.getClass();
                CustomizeToolbarItemView customizeToolbarItemView = (CustomizeToolbarItemView) view3;
                ItemCustomizeToolbarBinding itemCustomizeToolbarBinding = customizeToolbarItemView.binding;
                itemCustomizeToolbarBinding.listItem.setText(customizeToolbarItemView.getContext().getString(pageActionItem.getTitleResId()));
                itemCustomizeToolbarBinding.listItem.setCompoundDrawablesRelativeWithIntrinsicBounds(pageActionItem.getIconResId(), 0, 0, 0);
                customizeToolbarItemView.setDragHandleEnabled(true);
                return;
            case 3:
                PageIssuesDialog$DefaultViewHolder pageIssuesDialog$DefaultViewHolder = (PageIssuesDialog$DefaultViewHolder) viewHolder;
                View view4 = pageIssuesDialog$DefaultViewHolder.itemView;
                view4.getClass();
                StringUtil stringUtil3 = StringUtil.INSTANCE;
                ((TextView) view4).setText(StringUtil.fromHtml(StringUtil.removeStyleTags((String) ((ArrayList) pageIssuesDialog$DefaultViewHolder.this$0.wikiSite).get(i))));
                return;
            case 4:
                TabActivity.TabViewHolder tabViewHolder = (TabActivity.TabViewHolder) viewHolder;
                ArrayList arrayList3 = ((TabActivity) obj).app.tabList;
                Tab tab = (Tab) arrayList3.get((arrayList3.size() - i) - 1);
                tab.getClass();
                View view5 = tabViewHolder.itemView;
                TextView textView7 = (TextView) view5.findViewById(R.id.tabArticleTitle);
                StringUtil stringUtil4 = StringUtil.INSTANCE;
                PageTitle backStackPositionTitle = tab.getBackStackPositionTitle();
                String displayText = backStackPositionTitle != null ? backStackPositionTitle.getDisplayText() : null;
                if (displayText == null) {
                    displayText = "";
                }
                textView7.setText(StringUtil.fromHtml(displayText));
                TextView textView8 = (TextView) view5.findViewById(R.id.tabArticleDescription);
                PageTitle backStackPositionTitle2 = tab.getBackStackPositionTitle();
                String str6 = backStackPositionTitle2 != null ? backStackPositionTitle2.description : null;
                textView8.setText(StringUtil.fromHtml(str6 != null ? str6 : ""));
                view5.findViewById(R.id.tabContainer).setOnClickListener(tabViewHolder);
                view5.findViewById(R.id.tabCloseButton).setOnClickListener(tabViewHolder);
                WikiCardView wikiCardView = (WikiCardView) view5.findViewById(R.id.tabCardView);
                wikiCardView.setStrokeWidth(Okio__OkioKt.roundedDpToPx(i == 0 ? 1.5f : 1.0f));
                Context context = wikiCardView.getContext();
                context.getClass();
                if (i != 0) {
                    i5 = R.attr.border_color;
                }
                TypedValue typedValue = new TypedValue();
                TypedValue typedValue2 = context.getTheme().resolveAttribute(i5, typedValue, true) ? typedValue : null;
                if (typedValue2 != null) {
                    wikiCardView.setStrokeColor(typedValue2.data);
                    return;
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i5, "Attribute not found; ID="));
                    return;
                }
            case 5:
                DefaultViewHolder defaultViewHolder2 = (DefaultViewHolder) viewHolder;
                PlacesFilterActivity placesFilterActivity = (PlacesFilterActivity) obj;
                if (defaultViewHolder2 instanceof PlacesFilterActivity.PlacesFilterHeaderViewHolder) {
                    PlacesFilterActivity.PlacesFilterHeaderViewHolder placesFilterHeaderViewHolder = (PlacesFilterActivity.PlacesFilterHeaderViewHolder) defaultViewHolder2;
                    String string = placesFilterActivity.getString(R.string.watchlist_filter_wiki_filter_header);
                    string.getClass();
                    TextView textView9 = placesFilterHeaderViewHolder.headerText;
                    PlacesFilterActivity placesFilterActivity2 = PlacesFilterActivity.this;
                    TypedValue typedValue3 = new TypedValue();
                    TypedValue typedValue4 = placesFilterActivity2.getTheme().resolveAttribute(R.attr.primary_color, typedValue3, true) ? typedValue3 : null;
                    if (typedValue4 == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969882");
                        return;
                    } else {
                        textView9.setTextColor(typedValue4.data);
                        textView9.setText(string);
                        return;
                    }
                }
                if (defaultViewHolder2 instanceof PlacesFilterActivity.PlacesFilterFooterViewHolder) {
                    PlacesFilterActivity.PlacesFilterFooterViewHolder placesFilterFooterViewHolder = (PlacesFilterActivity.PlacesFilterFooterViewHolder) defaultViewHolder2;
                    placesFilterFooterViewHolder.itemView.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(19, PlacesFilterActivity.this, placesFilterFooterViewHolder));
                    return;
                }
                PlacesFilterActivity.PlacesFilterItemViewHolder placesFilterItemViewHolder = (PlacesFilterActivity.PlacesFilterItemViewHolder) defaultViewHolder2;
                String str7 = (String) placesFilterActivity.filtersList.get(i);
                str7.getClass();
                DefaultSocket defaultSocket = placesFilterItemViewHolder.itemViewBinding;
                TextView textView10 = (TextView) defaultSocket.sink;
                WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                textView10.setText(Jsoup.getInstance().getLanguageState().getAppLanguageLocalizedName(str7));
                ((LangCodeView) defaultSocket.closeBits).setLangCode(str7);
                ImageView imageView6 = (ImageView) defaultSocket.source;
                Prefs prefs = Prefs.INSTANCE;
                imageView6.setVisibility(str7.equals(Prefs.getPlacesWikiCode()) ? 0 : 8);
                ((LinearLayout) defaultSocket.socket).setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(20, str7, placesFilterItemViewHolder));
                return;
            case 6:
                ReadingList readingList = (ReadingList) ((AddToReadingListDialog) obj).displayedLists.get(i);
                readingList.getClass();
                View view6 = ((AddToReadingListDialog.ReadingListItemHolder) viewHolder).itemView;
                view6.getClass();
                ReadingListItemView.Description description = ReadingListItemView.Description.SUMMARY;
                int i10 = ReadingListItemView.$r8$clinit;
                ((ReadingListItemView) view6).setReadingList(readingList, description, false, false);
                return;
            case 7:
                ReadingListFragment readingListFragment = (ReadingListFragment) obj;
                if (readingListFragment.readingList != null) {
                    if (viewHolder instanceof ReadingListFragment.ReadingListItemHolder) {
                        ReadingListFragment.ReadingListItemHolder readingListItemHolder = (ReadingListFragment.ReadingListItemHolder) viewHolder;
                        Object obj5 = readingListFragment.displayedLists.get(i - getHeaderCount());
                        obj5.getClass();
                        ReadingListItemView view7 = readingListItemHolder.getView();
                        ReadingListItemView.Description description2 = ReadingListItemView.Description.SUMMARY;
                        int i11 = ReadingListItemView.$r8$clinit;
                        view7.setReadingList((ReadingList) obj5, description2, false, false);
                        ReadingListItemView view8 = readingListItemHolder.getView();
                        ReadingListFragment readingListFragment2 = ReadingListFragment.this;
                        view8.setMode(readingListFragment2.readingListMode);
                        readingListItemHolder.getView().setSearchQuery(readingListFragment2.currentSearchQuery);
                        return;
                    }
                    if (viewHolder instanceof ReadingListFragment.ReadingListPageItemHolder) {
                        ReadingListFragment.ReadingListPageItemHolder readingListPageItemHolder = (ReadingListFragment.ReadingListPageItemHolder) viewHolder;
                        Object obj6 = readingListFragment.displayedLists.get(i - getHeaderCount());
                        obj6.getClass();
                        ReadingListPage readingListPage = (ReadingListPage) obj6;
                        ReadingListFragment readingListFragment3 = ReadingListFragment.this;
                        readingListPageItemHolder.page = readingListPage;
                        WikiSite wikiSite = readingListPage.wiki;
                        String str8 = readingListPage.lang;
                        wikiSite.getClass();
                        str8.getClass();
                        wikiSite.languageCode = str8;
                        readingListPageItemHolder.pageTitle = new PageTitle(readingListPage.apiTitle, wikiSite, readingListPage.thumbUrl, readingListPage.description, readingListPage.displayTitle);
                        View view9 = readingListPageItemHolder.itemView;
                        view9.getClass();
                        PageItemView pageItemView = (PageItemView) view9;
                        ActivityLoginBinding activityLoginBinding = pageItemView.binding;
                        pageItemView.setItem(readingListPage);
                        pageItemView.setTitle(readingListPage.displayTitle);
                        pageItemView.setDescription(readingListPage.description);
                        pageItemView.setImageUrl(readingListPage.thumbUrl);
                        pageItemView.setSelected(readingListPage.selected);
                        pageItemView.setSecondaryActionIcon(readingListPage.getSaving() ? R.drawable.ic_download_in_progress : R.drawable.ic_download_circle_gray_24dp, readingListFragment3.readingListMode == ReadingListMode.DEFAULT && (!readingListPage.offline || readingListPage.getSaving()));
                        int i12 = readingListPage.downloadProgress;
                        pageItemView.setCircularProgressVisibility(i12 > 0 && i12 < 100);
                        int i13 = readingListPage.downloadProgress;
                        if (i13 == 100) {
                            i13 = 0;
                        }
                        pageItemView.setProgress(i13);
                        pageItemView.setActionHint(R.string.reading_list_article_make_offline);
                        pageItemView.setSearchQuery(readingListFragment3.currentSearchQuery);
                        WikipediaApp wikipediaApp4 = WikipediaApp.instance;
                        if (Jsoup.getInstance().isOnline() || (readingListPage.offline && !readingListPage.getSaving())) {
                            z = true;
                        }
                        pageItemView.setViewsGreyedOut(!z);
                        if (readingListFragment3.isRecommendedList()) {
                            LifecycleCoroutineScopeImpl lifecycleScope = ViewModelKt.getLifecycleScope(readingListFragment3.getViewLifecycleOwner());
                            PageTitle pageTitle = readingListPageItemHolder.pageTitle;
                            if (pageTitle == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageTitle");
                                throw null;
                            }
                            SearchFragment$$ExternalSyntheticLambda1 searchFragment$$ExternalSyntheticLambda1 = new SearchFragment$$ExternalSyntheticLambda1(i6, readingListPageItemHolder);
                            AwaitKt.launch$default(lifecycleScope, new LoginClient$login$$inlined$CoroutineExceptionHandler$1(searchFragment$$ExternalSyntheticLambda1), null, new PageActivity$onCreate$1$1$1(pageTitle, searchFragment$$ExternalSyntheticLambda1, null, 20), 2);
                        }
                        String str9 = readingListFragment3.currentSearchQuery;
                        if (str9 == null || str9.length() == 0) {
                            ((HorizontalScrollView) activityLoginBinding.captchaContainer).setVisibility(8);
                            return;
                        }
                        pageItemView.setTitleMaxLines(2);
                        TextView textView11 = (TextView) activityLoginBinding.viewLoginError;
                        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
                        textView11.setEllipsize(truncateAt);
                        pageItemView.setDescriptionMaxLines(2);
                        ((GoneIfEmptyTextView) activityLoginBinding.loginButton).setEllipsize(truncateAt);
                        List list2 = ReadingListBehaviorsUtil.allReadingLists;
                        pageItemView.setUpChipGroup(ReadingListBehaviorsUtil.getListsContainPage(readingListPage));
                        return;
                    }
                    return;
                }
                return;
            case 8:
                ReadingListPreviewSaveDialogView.ReadingListItemHolder readingListItemHolder2 = (ReadingListPreviewSaveDialogView.ReadingListItemHolder) viewHolder;
                ReadingList readingList2 = ((ReadingListPreviewSaveDialogView) obj).readingList;
                if (readingList2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("readingList");
                    throw null;
                }
                ReadingListPage readingListPage2 = (ReadingListPage) readingList2.pages.get(i);
                readingListPage2.getClass();
                readingListItemHolder2.readingListPage = readingListPage2;
                SVGAndroidRenderer sVGAndroidRenderer = readingListItemHolder2.itemBinding;
                ConstraintLayout constraintLayout = (ConstraintLayout) sVGAndroidRenderer.matrixStack;
                TextView textView12 = (TextView) sVGAndroidRenderer.document;
                constraintLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
                TextView textView13 = (TextView) sVGAndroidRenderer.state;
                StringUtil stringUtil5 = StringUtil.INSTANCE;
                textView13.setText(StringUtil.fromHtml(readingListPage2.displayTitle));
                String str10 = readingListPage2.description;
                if (str10 != null && str10.length() != 0) {
                    r15 = 0;
                }
                textView12.setVisibility(r15);
                textView12.setText(StringUtil.fromHtml(readingListPage2.description));
                ViewUtil.loadImage$default((ShapeableImageView) sVGAndroidRenderer.stateStack, readingListPage2.thumbUrl, null, 28);
                constraintLayout.setOnClickListener(readingListItemHolder2);
                ((CheckBox) sVGAndroidRenderer.parentStack).setOnClickListener(readingListItemHolder2);
                readingListItemHolder2.updateState();
                return;
            case 9:
                DefaultViewHolder defaultViewHolder3 = (DefaultViewHolder) viewHolder;
                ReadingListsFragment readingListsFragment = (ReadingListsFragment) obj;
                if (defaultViewHolder3 instanceof ReadingListsFragment.ReadingListItemHolder) {
                    ReadingListsFragment.ReadingListItemHolder readingListItemHolder3 = (ReadingListsFragment.ReadingListItemHolder) defaultViewHolder3;
                    Object obj7 = readingListsFragment.displayedLists.get(i);
                    obj7.getClass();
                    ReadingList readingList3 = (ReadingList) obj7;
                    ReadingListItemView view10 = readingListItemHolder3.getView();
                    ReadingListItemView.Description description3 = ReadingListItemView.Description.SUMMARY;
                    ReadingListsFragment readingListsFragment2 = ReadingListsFragment.this;
                    boolean z4 = readingListsFragment2.selectMode;
                    ReadingList readingList4 = readingListsFragment2.recentPreviewSavedReadingList;
                    view10.setReadingList(readingList3, description3, z4, readingList4 != null && readingList3.id == readingList4.id);
                    readingListItemHolder3.getView().setSearchQuery(readingListsFragment2.currentSearchQuery);
                    readingListItemHolder3.getView().setSaveClickListener(new ReadingListsFragment$$ExternalSyntheticLambda4(readingListsFragment2, 6));
                    return;
                }
                ReadingListsFragment.ReadingListPageItemHolder readingListPageItemHolder2 = (ReadingListsFragment.ReadingListPageItemHolder) defaultViewHolder3;
                Object obj8 = readingListsFragment.displayedLists.get(i);
                obj8.getClass();
                ReadingListPage readingListPage3 = (ReadingListPage) obj8;
                View view11 = readingListPageItemHolder2.itemView;
                view11.getClass();
                PageItemView pageItemView2 = (PageItemView) view11;
                ActivityLoginBinding activityLoginBinding2 = pageItemView2.binding;
                pageItemView2.setItem(readingListPage3);
                pageItemView2.setTitle(readingListPage3.displayTitle);
                pageItemView2.setTitleMaxLines(2);
                TextView textView14 = (TextView) activityLoginBinding2.viewLoginError;
                TextUtils.TruncateAt truncateAt2 = TextUtils.TruncateAt.END;
                textView14.setEllipsize(truncateAt2);
                pageItemView2.setDescription(readingListPage3.description);
                pageItemView2.setDescriptionMaxLines(2);
                ((GoneIfEmptyTextView) activityLoginBinding2.loginButton).setEllipsize(truncateAt2);
                pageItemView2.setImageUrl(readingListPage3.thumbUrl);
                pageItemView2.setSelected(readingListPage3.selected);
                pageItemView2.setSecondaryActionIcon(readingListPage3.getSaving() ? R.drawable.ic_download_in_progress : R.drawable.ic_download_circle_gray_24dp, !readingListPage3.offline || readingListPage3.getSaving());
                int i14 = readingListPage3.downloadProgress;
                pageItemView2.setCircularProgressVisibility(i14 > 0 && i14 < 100);
                int i15 = readingListPage3.downloadProgress;
                if (i15 == 100) {
                    i15 = 0;
                }
                pageItemView2.setProgress(i15);
                pageItemView2.setActionHint(R.string.reading_list_article_make_offline);
                pageItemView2.setSearchQuery(ReadingListsFragment.this.currentSearchQuery);
                List list3 = ReadingListBehaviorsUtil.allReadingLists;
                pageItemView2.setUpChipGroup(ReadingListBehaviorsUtil.getListsContainPage(readingListPage3));
                WikipediaApp wikipediaApp5 = WikipediaApp.instance;
                if (Jsoup.getInstance().isOnline() || (readingListPage3.offline && !readingListPage3.getSaving())) {
                    z = true;
                }
                pageItemView2.setViewsGreyedOut(!z);
                return;
            case 10:
                SortReadingListsDialog.SortItemHolder sortItemHolder = (SortReadingListsDialog.SortItemHolder) viewHolder;
                MultipartBody.Builder builder = sortItemHolder.binding;
                TextView textView15 = (TextView) builder.parts;
                SortReadingListsDialog sortReadingListsDialog = sortItemHolder.this$0;
                List list4 = sortReadingListsDialog.sortOptions;
                if (list4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("sortOptions");
                    throw null;
                }
                textView15.setText((CharSequence) list4.get(i));
                int i16 = sortReadingListsDialog.chosenSortOption;
                ImageView imageView7 = (ImageView) builder.type;
                if (i16 == i) {
                    imageView7.setVisibility(0);
                } else {
                    imageView7.setVisibility(8);
                }
                sortItemHolder.itemView.setOnClickListener(new TalkTemplatesItemView$$ExternalSyntheticLambda0(i, c == true ? 1 : 0, (SortReadingListsDialog) obj));
                return;
            case 11:
                ArchivedTalkPagesActivity.EmptyViewHolder emptyViewHolder = (ArchivedTalkPagesActivity.EmptyViewHolder) viewHolder;
                View view12 = emptyViewHolder.itemView;
                WikiErrorView wikiErrorView = (WikiErrorView) view12.findViewById(R.id.errorView);
                View findViewById = view12.findViewById(R.id.progressBar);
                TextView textView16 = (TextView) view12.findViewById(R.id.emptyMessage);
                findViewById.getClass();
                findViewById.setVisibility(8);
                wikiErrorView.getClass();
                wikiErrorView.setVisibility(8);
                textView16.setText(ArchivedTalkPagesActivity.this.getString(R.string.archive_empty));
                textView16.setVisibility(0);
                return;
            case 12:
                CustomDatePicker$CustomCalendarAdapter$ViewHolder customDatePicker$CustomCalendarAdapter$ViewHolder = (CustomDatePicker$CustomCalendarAdapter$ViewHolder) viewHolder;
                int i17 = i + 1;
                ViewCustomCalendarDayBinding viewCustomCalendarDayBinding = customDatePicker$CustomCalendarAdapter$ViewHolder.binding;
                CustomDatePicker customDatePicker = (CustomDatePicker) customDatePicker$CustomCalendarAdapter$ViewHolder.this$0.diffLines;
                Calendar calendar = customDatePicker.callbackDay;
                Calendar calendar2 = customDatePicker.selectedDay;
                Calendar calendar3 = customDatePicker.today;
                if (i17 == calendar3.get(5) && calendar3.get(2) == calendar2.get(2)) {
                    viewCustomCalendarDayBinding.dayText.setTextColor(Cache.Companion.getThemedColor(customDatePicker.requireContext(), R.attr.progressive_color));
                } else {
                    viewCustomCalendarDayBinding.dayText.setTextColor(Cache.Companion.getThemedColor(customDatePicker.requireContext(), R.attr.primary_color));
                }
                if (i17 == calendar.get(5) && calendar2.get(2) == calendar.get(2)) {
                    viewCustomCalendarDayBinding.dayText.setTextColor(Cache.Companion.getThemedColor(customDatePicker.requireContext(), R.attr.paper_color));
                    viewCustomCalendarDayBinding.dayText.setTypeface(Typeface.DEFAULT_BOLD);
                    viewCustomCalendarDayBinding.dayCircleBackground.setVisibility(0);
                } else {
                    viewCustomCalendarDayBinding.dayText.setTypeface(Typeface.DEFAULT);
                    viewCustomCalendarDayBinding.dayCircleBackground.setVisibility(8);
                }
                viewCustomCalendarDayBinding.dayText.setText(String.format(Locale.getDefault(), "%d", Arrays.copyOf(new Object[]{Integer.valueOf(i17)}, 1)));
                return;
            case IMAGE_VALUE:
                EditNoticesDialog.DefaultViewHolder defaultViewHolder4 = (EditNoticesDialog.DefaultViewHolder) viewHolder;
                View view13 = defaultViewHolder4.itemView;
                view13.getClass();
                StringUtil stringUtil6 = StringUtil.INSTANCE;
                ((TextView) view13).setText(StringUtil.fromHtml(StringUtil.removeStyleTags((String) ((List) EditNoticesDialog.this.editNotices).get(i))));
                return;
            default:
                UserMentionInputView.UserNameViewHolder userNameViewHolder = (UserMentionInputView.UserNameViewHolder) viewHolder;
                userNameViewHolder.userName = (String) UserMentionInputView.this.userNameList.get(i);
                View view14 = userNameViewHolder.itemView;
                view14.setOnClickListener(userNameViewHolder);
                TextView textView17 = (TextView) view14;
                String str11 = userNameViewHolder.userName;
                if (str11 != null) {
                    textView17.setText(str11);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("userName");
                    throw null;
                }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        int i2 = this.$r8$classId;
        Object obj = this.diffLines;
        switch (i2) {
            case 0:
                Context context = viewGroup.getContext();
                context.getClass();
                return new DiffUtil$DiffLineHolder(new DiffLineView(context));
            case 1:
                NotificationActivity notificationActivity = (NotificationActivity) obj;
                if (i == 0) {
                    View inflate = notificationActivity.getLayoutInflater().inflate(R.layout.view_notification_search_bar, viewGroup, false);
                    inflate.getClass();
                    return notificationActivity.new NotificationSearchBarHolder(inflate);
                }
                View inflate2 = notificationActivity.getLayoutInflater().inflate(R.layout.item_notification, viewGroup, false);
                int i3 = R.id.notificationDescription;
                TextView textView = (TextView) Room.findChildViewById(inflate2, R.id.notificationDescription);
                if (textView != null) {
                    i3 = R.id.notificationItemImage;
                    ImageView imageView = (ImageView) Room.findChildViewById(inflate2, R.id.notificationItemImage);
                    if (imageView != null) {
                        i3 = R.id.notificationItemSelectedImage;
                        ImageView imageView2 = (ImageView) Room.findChildViewById(inflate2, R.id.notificationItemSelectedImage);
                        if (imageView2 != null) {
                            i3 = R.id.notificationOverflowMenu;
                            ImageView imageView3 = (ImageView) Room.findChildViewById(inflate2, R.id.notificationOverflowMenu);
                            if (imageView3 != null) {
                                i3 = R.id.notificationSource;
                                TextView textView2 = (TextView) Room.findChildViewById(inflate2, R.id.notificationSource);
                                if (textView2 != null) {
                                    i3 = R.id.notificationSubtitle;
                                    TextView textView3 = (TextView) Room.findChildViewById(inflate2, R.id.notificationSubtitle);
                                    if (textView3 != null) {
                                        i3 = R.id.notificationTime;
                                        TextView textView4 = (TextView) Room.findChildViewById(inflate2, R.id.notificationTime);
                                        if (textView4 != null) {
                                            i3 = R.id.notificationTitle;
                                            TextView textView5 = (TextView) Room.findChildViewById(inflate2, R.id.notificationTitle);
                                            if (textView5 != null) {
                                                i3 = R.id.notificationWikiCode;
                                                LangCodeView langCodeView = (LangCodeView) Room.findChildViewById(inflate2, R.id.notificationWikiCode);
                                                if (langCodeView != null) {
                                                    i3 = R.id.notificationWikiCodeContainer;
                                                    FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(inflate2, R.id.notificationWikiCodeContainer);
                                                    if (frameLayout != null) {
                                                        ImageView imageView4 = (ImageView) Room.findChildViewById(inflate2, R.id.notificationWikiCodeImage);
                                                        if (imageView4 != null) {
                                                            ItemNotificationBinding itemNotificationBinding = new ItemNotificationBinding();
                                                            itemNotificationBinding.rootView = (ConstraintLayout) inflate2;
                                                            itemNotificationBinding.notificationDescription = textView;
                                                            itemNotificationBinding.notificationItemImage = imageView;
                                                            itemNotificationBinding.notificationItemSelectedImage = imageView2;
                                                            itemNotificationBinding.notificationOverflowMenu = imageView3;
                                                            itemNotificationBinding.notificationSource = textView2;
                                                            itemNotificationBinding.notificationSubtitle = textView3;
                                                            itemNotificationBinding.notificationTime = textView4;
                                                            itemNotificationBinding.notificationTitle = textView5;
                                                            itemNotificationBinding.notificationWikiCode = langCodeView;
                                                            itemNotificationBinding.notificationWikiCodeContainer = frameLayout;
                                                            itemNotificationBinding.notificationWikiCodeImage = imageView4;
                                                            return notificationActivity.new NotificationItemHolder(itemNotificationBinding);
                                                        }
                                                        i3 = R.id.notificationWikiCodeImage;
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
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate2.getResources().getResourceName(i3)));
                return null;
            case 2:
                if (i == 0) {
                    View inflate3 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_customize_toolbar_description, viewGroup, false);
                    inflate3.getClass();
                    return new CustomizeToolbarFragment.DescriptionViewHolder(inflate3);
                }
                if (i == 1) {
                    View inflate4 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_customize_toolbar_header, viewGroup, false);
                    inflate4.getClass();
                    return new CustomizeToolbarFragment.HeaderViewHolder(inflate4);
                }
                if (i == 3) {
                    View inflate5 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_customize_toolbar_set_to_default, viewGroup, false);
                    inflate5.getClass();
                    CustomizeToolbarFragment.DescriptionViewHolder descriptionViewHolder = new CustomizeToolbarFragment.DescriptionViewHolder(inflate5);
                    ((TextView) inflate5.findViewById(R.id.resetToDefaultButton)).setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(16, (CustomizeToolbarFragment) obj));
                    return descriptionViewHolder;
                }
                if (i == 4) {
                    View inflate6 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_customize_toolbar_empty_placeholder, viewGroup, false);
                    inflate6.getClass();
                    return new CustomizeToolbarFragment.DescriptionViewHolder(inflate6);
                }
                CustomizeToolbarItemView customizeToolbarItemView = new CustomizeToolbarItemView(viewGroup.getContext());
                LayoutInflater.from(customizeToolbarItemView.getContext()).inflate(R.layout.item_customize_toolbar, customizeToolbarItemView);
                int i4 = R.id.dragHandle;
                ImageView imageView5 = (ImageView) Room.findChildViewById(customizeToolbarItemView, R.id.dragHandle);
                if (imageView5 != null) {
                    i4 = R.id.listItem;
                    TextView textView6 = (TextView) Room.findChildViewById(customizeToolbarItemView, R.id.listItem);
                    if (textView6 != null) {
                        customizeToolbarItemView.binding = new ItemCustomizeToolbarBinding(customizeToolbarItemView, imageView5, textView6);
                        customizeToolbarItemView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                        Context context2 = customizeToolbarItemView.getContext();
                        context2.getClass();
                        TypedValue typedValue = new TypedValue();
                        if (!context2.getTheme().resolveAttribute(R.attr.paper_color, typedValue, true)) {
                            typedValue = null;
                        }
                        if (typedValue == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
                            return null;
                        }
                        customizeToolbarItemView.setBackgroundColor(typedValue.data);
                        View[] viewArr = {textView6, imageView5};
                        for (int i5 = 0; i5 < 2; i5++) {
                            viewArr[i5].setOnClickListener(ShareUtil.TOOLBAR_ON_CLICK_LISTENER);
                        }
                        return new CustomizeToolbarFragment.ItemHolder(customizeToolbarItemView);
                    }
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(customizeToolbarItemView.getResources().getResourceName(i4)));
                return null;
            case 3:
                EditNoticesDialog editNoticesDialog = (EditNoticesDialog) obj;
                AlertController.AlertParams alertParams = (AlertController.AlertParams) editNoticesDialog.array;
                TextView textView7 = new TextView(alertParams.mContext);
                textView7.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                ContextThemeWrapper contextThemeWrapper = alertParams.mContext;
                TypedValue typedValue2 = new TypedValue();
                if (!contextThemeWrapper.getTheme().resolveAttribute(R.attr.primary_color, typedValue2, true)) {
                    typedValue2 = null;
                }
                if (typedValue2 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969882");
                    return null;
                }
                textView7.setTextColor(typedValue2.data);
                textView7.setLineSpacing(Okio__OkioKt.dpToPx(6.0f), 1.0f);
                textView7.setMovementMethod(editNoticesDialog.movementMethod);
                textView7.setPadding(0, Okio__OkioKt.roundedDpToPx(16.0f), 0, Okio__OkioKt.roundedDpToPx(16.0f));
                return new PageIssuesDialog$DefaultViewHolder(editNoticesDialog, textView7);
            case 4:
                TabActivity tabActivity = (TabActivity) obj;
                View inflate7 = tabActivity.getLayoutInflater().inflate(R.layout.item_tab_contents, viewGroup, false);
                inflate7.getClass();
                return tabActivity.new TabViewHolder(inflate7);
            case 5:
                PlacesFilterActivity placesFilterActivity = (PlacesFilterActivity) obj;
                if (i == 0) {
                    View inflate8 = placesFilterActivity.getLayoutInflater().inflate(R.layout.view_watchlist_filter_header, viewGroup, false);
                    inflate8.getClass();
                    return placesFilterActivity.new PlacesFilterHeaderViewHolder(inflate8);
                }
                if (i == 1) {
                    View inflate9 = placesFilterActivity.getLayoutInflater().inflate(R.layout.view_places_filters_footer, viewGroup, false);
                    inflate9.getClass();
                    return placesFilterActivity.new PlacesFilterFooterViewHolder(inflate9);
                }
                View inflate10 = placesFilterActivity.getLayoutInflater().inflate(R.layout.view_places_filter_item, (ViewGroup) null, false);
                int i6 = R.id.placesFilterLangCode;
                LangCodeView langCodeView2 = (LangCodeView) Room.findChildViewById(inflate10, R.id.placesFilterLangCode);
                if (langCodeView2 != null) {
                    i6 = R.id.placesFilterRadio;
                    ImageView imageView6 = (ImageView) Room.findChildViewById(inflate10, R.id.placesFilterRadio);
                    if (imageView6 != null) {
                        i6 = R.id.placesFilterTitle;
                        TextView textView8 = (TextView) Room.findChildViewById(inflate10, R.id.placesFilterTitle);
                        if (textView8 != null) {
                            return new PlacesFilterActivity.PlacesFilterItemViewHolder(new DefaultSocket((LinearLayout) inflate10, langCodeView2, imageView6, textView8, 23), this);
                        }
                    }
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate10.getResources().getResourceName(i6)));
                return null;
            case 6:
                ReadingListItemView readingListItemView = new ReadingListItemView(((AddToReadingListDialog) obj).requireContext(), 0);
                AddToReadingListDialog.ReadingListItemHolder readingListItemHolder = new AddToReadingListDialog.ReadingListItemHolder(readingListItemView);
                readingListItemView.setLongClickable(false);
                return readingListItemHolder;
            case 7:
                ReadingListFragment readingListFragment = (ReadingListFragment) obj;
                if (i != 0) {
                    return i != 1 ? readingListFragment.new ReadingListPageItemHolder(new PageItemView(readingListFragment.requireContext())) : readingListFragment.new ReadingListItemHolder(new ReadingListItemView(readingListFragment.requireContext(), 0));
                }
                ReadingListItemView readingListItemView2 = readingListFragment.headerView;
                if (readingListItemView2 != null) {
                    return new OnThisDayFragment.FooterViewHolder(readingListItemView2);
                }
                Intrinsics.throwUninitializedPropertyAccessException("headerView");
                throw null;
            case 8:
                ReadingListPreviewSaveDialogView readingListPreviewSaveDialogView = (ReadingListPreviewSaveDialogView) obj;
                View inflate11 = LayoutInflater.from(readingListPreviewSaveDialogView.getContext()).inflate(R.layout.item_reading_list_preview_save_select_item, (ViewGroup) null, false);
                int i7 = R.id.articleDescription;
                TextView textView9 = (TextView) Room.findChildViewById(inflate11, R.id.articleDescription);
                if (textView9 != null) {
                    i7 = R.id.articleName;
                    TextView textView10 = (TextView) Room.findChildViewById(inflate11, R.id.articleName);
                    if (textView10 != null) {
                        i7 = R.id.articleThumbnail;
                        ShapeableImageView shapeableImageView = (ShapeableImageView) Room.findChildViewById(inflate11, R.id.articleThumbnail);
                        if (shapeableImageView != null) {
                            i7 = R.id.checkbox;
                            CheckBox checkBox = (CheckBox) Room.findChildViewById(inflate11, R.id.checkbox);
                            if (checkBox != null) {
                                ConstraintLayout constraintLayout = (ConstraintLayout) inflate11;
                                return readingListPreviewSaveDialogView.new ReadingListItemHolder(new SVGAndroidRenderer(constraintLayout, textView9, textView10, shapeableImageView, checkBox, constraintLayout));
                            }
                        }
                    }
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate11.getResources().getResourceName(i7)));
                return null;
            case 9:
                ReadingListsFragment readingListsFragment = (ReadingListsFragment) obj;
                return i == 0 ? readingListsFragment.new ReadingListItemHolder(new ReadingListItemView(readingListsFragment.requireContext(), 0)) : readingListsFragment.new ReadingListPageItemHolder(new PageItemView(readingListsFragment.requireContext()));
            case 10:
                SortReadingListsDialog sortReadingListsDialog = (SortReadingListsDialog) obj;
                View inflate12 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_reading_lists_sort_options_item, viewGroup, false);
                int i8 = R.id.check;
                ImageView imageView7 = (ImageView) Room.findChildViewById(inflate12, R.id.check);
                if (imageView7 != null) {
                    i8 = R.id.sort_type;
                    TextView textView11 = (TextView) Room.findChildViewById(inflate12, R.id.sort_type);
                    if (textView11 != null) {
                        return new SortReadingListsDialog.SortItemHolder(sortReadingListsDialog, new MultipartBody.Builder((LinearLayout) inflate12, imageView7, textView11));
                    }
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate12.getResources().getResourceName(i8)));
                return null;
            case 11:
                ArchivedTalkPagesActivity archivedTalkPagesActivity = (ArchivedTalkPagesActivity) obj;
                View inflate13 = archivedTalkPagesActivity.getLayoutInflater().inflate(R.layout.item_list_progress, viewGroup, false);
                inflate13.getClass();
                return archivedTalkPagesActivity.new EmptyViewHolder(inflate13);
            case 12:
                View inflate14 = LayoutInflater.from(((CustomDatePicker) obj).requireContext()).inflate(R.layout.view_custom_calendar_day, viewGroup, false);
                int i9 = R.id.day_circle_background;
                ImageView imageView8 = (ImageView) Room.findChildViewById(inflate14, R.id.day_circle_background);
                if (imageView8 != null) {
                    i9 = R.id.day_text;
                    TextView textView12 = (TextView) Room.findChildViewById(inflate14, R.id.day_text);
                    if (textView12 != null) {
                        return new CustomDatePicker$CustomCalendarAdapter$ViewHolder(this, new ViewCustomCalendarDayBinding((FrameLayout) inflate14, imageView8, textView12));
                    }
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate14.getResources().getResourceName(i9)));
                return null;
            case IMAGE_VALUE:
                EditNoticesDialog editNoticesDialog2 = (EditNoticesDialog) obj;
                TextView textView13 = new TextView(((AlertController.AlertParams) editNoticesDialog2.array).mContext);
                textView13.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                textView13.setMovementMethod(editNoticesDialog2.movementMethod);
                textView13.setPadding(0, Okio__OkioKt.roundedDpToPx(16.0f), 0, Okio__OkioKt.roundedDpToPx(16.0f));
                return editNoticesDialog2.new DefaultViewHolder(textView13);
            default:
                View inflate15 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_search_recent, viewGroup, false);
                inflate15.getClass();
                return ((UserMentionInputView) obj).new UserNameViewHolder(inflate15);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        int i = this.$r8$classId;
        Object obj = this.diffLines;
        switch (i) {
            case 2:
                org.wikipedia.views.DefaultViewHolder defaultViewHolder = (org.wikipedia.views.DefaultViewHolder) viewHolder;
                if (defaultViewHolder instanceof CustomizeToolbarFragment.ItemHolder) {
                    View view = ((CustomizeToolbarFragment.ItemHolder) defaultViewHolder).itemView;
                    view.getClass();
                    ((CustomizeToolbarItemView) view).setDragHandleTouchListener(new TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0((CustomizeToolbarFragment) obj, defaultViewHolder, 1));
                    break;
                }
                break;
            case 6:
                View view2 = ((AddToReadingListDialog.ReadingListItemHolder) viewHolder).itemView;
                view2.getClass();
                ((ReadingListItemView) view2).setCallback(((AddToReadingListDialog) obj).listItemCallback);
                break;
            case 7:
                ReadingListFragment readingListFragment = (ReadingListFragment) obj;
                if (!(viewHolder instanceof ReadingListFragment.ReadingListItemHolder)) {
                    if (viewHolder instanceof ReadingListFragment.ReadingListPageItemHolder) {
                        View view3 = ((ReadingListFragment.ReadingListPageItemHolder) viewHolder).itemView;
                        view3.getClass();
                        ((PageItemView) view3).setCallback(readingListFragment.readingListPageItemCallback);
                        break;
                    }
                } else {
                    ((ReadingListFragment.ReadingListItemHolder) viewHolder).getView().setCallback(readingListFragment.readingListItemCallback);
                    break;
                }
                break;
            case 9:
                org.wikipedia.views.DefaultViewHolder defaultViewHolder2 = (org.wikipedia.views.DefaultViewHolder) viewHolder;
                ReadingListsFragment readingListsFragment = (ReadingListsFragment) obj;
                if (!(defaultViewHolder2 instanceof ReadingListsFragment.ReadingListItemHolder)) {
                    View view4 = ((ReadingListsFragment.ReadingListPageItemHolder) defaultViewHolder2).itemView;
                    view4.getClass();
                    ((PageItemView) view4).setCallback(readingListsFragment.readingListPageItemCallback);
                    break;
                } else {
                    ((ReadingListsFragment.ReadingListItemHolder) defaultViewHolder2).getView().setCallback(readingListsFragment.readingListItemCallback);
                    break;
                }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        switch (this.$r8$classId) {
            case 2:
                org.wikipedia.views.DefaultViewHolder defaultViewHolder = (org.wikipedia.views.DefaultViewHolder) viewHolder;
                if (defaultViewHolder instanceof CustomizeToolbarFragment.ItemHolder) {
                    View view = ((CustomizeToolbarFragment.ItemHolder) defaultViewHolder).itemView;
                    view.getClass();
                    ((CustomizeToolbarItemView) view).setDragHandleTouchListener(null);
                    break;
                }
                break;
            case 6:
                View view2 = ((AddToReadingListDialog.ReadingListItemHolder) viewHolder).itemView;
                view2.getClass();
                ((ReadingListItemView) view2).setCallback(null);
                break;
            case 7:
                if (!(viewHolder instanceof ReadingListFragment.ReadingListItemHolder)) {
                    if (viewHolder instanceof ReadingListFragment.ReadingListPageItemHolder) {
                        View view3 = ((ReadingListFragment.ReadingListPageItemHolder) viewHolder).itemView;
                        view3.getClass();
                        ((PageItemView) view3).setCallback(null);
                        break;
                    }
                } else {
                    ((ReadingListFragment.ReadingListItemHolder) viewHolder).getView().setCallback(null);
                    break;
                }
                break;
            case 9:
                org.wikipedia.views.DefaultViewHolder defaultViewHolder2 = (org.wikipedia.views.DefaultViewHolder) viewHolder;
                if (!(defaultViewHolder2 instanceof ReadingListsFragment.ReadingListItemHolder)) {
                    View view4 = ((ReadingListsFragment.ReadingListPageItemHolder) defaultViewHolder2).itemView;
                    view4.getClass();
                    ((PageItemView) view4).setCallback(null);
                    break;
                } else {
                    ((ReadingListsFragment.ReadingListItemHolder) defaultViewHolder2).getView().setCallback(null);
                    break;
                }
        }
    }

    public /* synthetic */ DiffUtil$DiffLinesAdapter(int i, Object obj) {
        this.$r8$classId = i;
        this.diffLines = obj;
    }

    public DiffUtil$DiffLinesAdapter(PlacesFilterActivity placesFilterActivity, PlacesFilterActivity placesFilterActivity2) {
        this.$r8$classId = 5;
        this.diffLines = placesFilterActivity;
    }
}
