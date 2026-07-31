package org.wikipedia.settings;

import android.content.Context;
import android.graphics.Typeface;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.text.format.DateFormat;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import coil3.util.BitmapsKt;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.imageview.ShapeableImageView;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.enums.EnumEntries;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Cache;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import okio.internal.DefaultSocket;
import org.wikipedia.R;
import org.wikipedia.categories.CategoryDialog;
import org.wikipedia.databinding.ItemWatchlistBinding;
import org.wikipedia.databinding.ViewWatchlistSearchBarBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.dataclient.page.NearbyPage;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.feed.onthisday.OnThisDayPagesViewHolder;
import org.wikipedia.gallery.GalleryThumbnailScrollView;
import org.wikipedia.gallery.GalleryThumbnailScrollView.GalleryItemHolder;
import org.wikipedia.gallery.ImageInfo;
import org.wikipedia.games.onthisday.OnThisDayGameResultFragment;
import org.wikipedia.games.onthisday.OnThisDayGameResultFragment.ShareRecyclerViewItemHolder;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.edithistory.EditHistoryListActivity;
import org.wikipedia.page.edithistory.EditHistoryListActivity$$ExternalSyntheticLambda2;
import org.wikipedia.page.references.PageReferences;
import org.wikipedia.page.references.ReferenceDialog;
import org.wikipedia.page.references.ReferenceDialog.ViewHolder;
import org.wikipedia.places.PlacesFragment;
import org.wikipedia.places.PlacesFragment.RecyclerViewItemHolder;
import org.wikipedia.suggestededits.ImageTag;
import org.wikipedia.suggestededits.SuggestedEditsImageTagDialog;
import org.wikipedia.suggestededits.SuggestedEditsImageTagDialog.ResultItemHolder;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.GeoUtil;
import org.wikipedia.util.Resource;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.AppTextView;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.GoneIfEmptyTextView;
import org.wikipedia.views.LangCodeView;
import org.wikipedia.views.PageItemView;
import org.wikipedia.views.ViewUtil;
import org.wikipedia.views.WikiCardView;
import org.wikipedia.watchlist.WatchlistFragment;
import org.wikipedia.watchlist.WatchlistFragment.WatchlistItemViewHolder;
import org.wikipedia.watchlist.WatchlistItemView;
import org.wikipedia.watchlist.WatchlistViewModel;
import retrofit2.OkHttpCall;
import retrofit2.Retrofit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/settings/AppIconDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "AppIconAdapter", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AppIconDialog extends ExtendedBottomSheetDialogFragment {
    public OkHttpCall.AnonymousClass1 _binding;

    public AppIconDialog() {
        super(false);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.dialog_app_icon, viewGroup, false);
        int i = R.id.appIconRecyclerView;
        RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.appIconRecyclerView);
        if (recyclerView != null) {
            i = R.id.app_icon_sub_title;
            if (((TextView) Room.findChildViewById(inflate, R.id.app_icon_sub_title)) != null) {
                i = R.id.app_icon_title;
                if (((TextView) Room.findChildViewById(inflate, R.id.app_icon_title)) != null) {
                    this._binding = new OkHttpCall.AnonymousClass1(3, (ConstraintLayout) inflate, recyclerView);
                    FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(requireContext());
                    flexboxLayoutManager.setFlexDirection(0);
                    if (flexboxLayoutManager.mJustifyContent != 2) {
                        flexboxLayoutManager.mJustifyContent = 2;
                        flexboxLayoutManager.requestLayout();
                    }
                    flexboxLayoutManager.setAlignItems(2);
                    recyclerView.setLayoutManager(flexboxLayoutManager);
                    OkHttpCall.AnonymousClass1 anonymousClass1 = this._binding;
                    anonymousClass1.getClass();
                    RecyclerView recyclerView2 = (RecyclerView) anonymousClass1.this$0;
                    AppIconAdapter appIconAdapter = new AppIconAdapter(LauncherIcon.getEntries());
                    appIconAdapter.onItemClickListener = new MainActivity$$ExternalSyntheticLambda1(22, this);
                    recyclerView2.setAdapter(appIconAdapter);
                    OkHttpCall.AnonymousClass1 anonymousClass12 = this._binding;
                    anonymousClass12.getClass();
                    ConstraintLayout constraintLayout = (ConstraintLayout) anonymousClass12.val$callback;
                    constraintLayout.getClass();
                    return constraintLayout;
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this._binding = null;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AppIconAdapter extends RecyclerView.Adapter {
        public final /* synthetic */ int $r8$classId;
        public Object list;
        public Object onItemClickListener;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class AppIconViewHolder extends RecyclerView.ViewHolder {
            public final OkHttpCall.AnonymousClass1 binding;

            public AppIconViewHolder(OkHttpCall.AnonymousClass1 anonymousClass1) {
                super((ShapeableImageView) anonymousClass1.val$callback);
                this.binding = anonymousClass1;
            }
        }

        public AppIconAdapter(WatchlistFragment watchlistFragment, List list) {
            this.$r8$classId = 9;
            list.getClass();
            this.onItemClickListener = watchlistFragment;
            new ArrayList();
            this.list = list;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            switch (this.$r8$classId) {
            }
            return ((List) this.list).size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            switch (this.$r8$classId) {
                case 9:
                    if (i == 0 && ((WatchlistFragment) this.onItemClickListener).actionMode == null) {
                        return 0;
                    }
                    return ((List) this.list).get(i) instanceof Date ? 1 : 2;
                default:
                    return super.getItemViewType(i);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            boolean z;
            int i2 = this.$r8$classId;
            int i3 = 10;
            int i4 = R.attr.progressive_color;
            switch (i2) {
                case 0:
                    AppIconViewHolder appIconViewHolder = (AppIconViewHolder) viewHolder;
                    LauncherIcon launcherIcon = (LauncherIcon) ((List) this.list).get(i);
                    launcherIcon.getClass();
                    OkHttpCall.AnonymousClass1 anonymousClass1 = appIconViewHolder.binding;
                    ShapeableImageView shapeableImageView = (ShapeableImageView) anonymousClass1.this$0;
                    AppIconAdapter appIconAdapter = AppIconAdapter.this;
                    ShapeableImageView shapeableImageView2 = (ShapeableImageView) anonymousClass1.val$callback;
                    shapeableImageView.setForeground(shapeableImageView2.getContext().getDrawable(launcherIcon.getForeground()));
                    shapeableImageView.setBackground(shapeableImageView2.getContext().getDrawable(launcherIcon.getBackground()));
                    shapeableImageView.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(24, appIconAdapter, launcherIcon));
                    Prefs prefs = Prefs.INSTANCE;
                    boolean areEqual = Intrinsics.areEqual(PrefsIoUtil.getString(R.string.preference_key_selected_app_icon, LauncherIcon.DEFAULT.getKey()), launcherIcon.getKey());
                    if (!areEqual) {
                        i4 = R.attr.border_color;
                    }
                    float f = areEqual ? 2.0f : 1.0f;
                    Context context = shapeableImageView.getContext();
                    context.getClass();
                    shapeableImageView.setStrokeColor(Cache.Companion.getThemedColorStateList(context, i4));
                    shapeableImageView.setStrokeWidth(Okio__OkioKt.dpToPx(f));
                    break;
                case 1:
                    PageTitle pageTitle = (PageTitle) ((List) this.list).get(i);
                    pageTitle.getClass();
                    PageItemView pageItemView = ((CategoryDialog.CategoryItemHolder) viewHolder).view;
                    pageItemView.setItem(pageTitle);
                    StringUtil stringUtil = StringUtil.INSTANCE;
                    pageItemView.setTitle(StringsKt.substringAfter$default(pageTitle.getDisplayText(), ':'));
                    break;
                case 2:
                    OnThisDayPagesViewHolder onThisDayPagesViewHolder = (OnThisDayPagesViewHolder) viewHolder;
                    PageSummary pageSummary = (PageSummary) ((List) this.list).get(i);
                    pageSummary.getClass();
                    View view = onThisDayPagesViewHolder.itemView;
                    TextView textView = (TextView) view.findViewById(R.id.description);
                    TextView textView2 = (TextView) view.findViewById(R.id.title);
                    onThisDayPagesViewHolder.selectedPage = pageSummary;
                    textView.setText(pageSummary.description);
                    String str = pageSummary.description;
                    textView.setVisibility((str == null || str.length() == 0) ? 8 : 0);
                    String str2 = pageSummary.description;
                    textView2.setMaxLines((str2 == null || str2.length() == 0) ? 2 : 1);
                    StringUtil stringUtil2 = StringUtil.INSTANCE;
                    textView2.setText(StringUtil.fromHtml(pageSummary.getDisplayTitle()));
                    String thumbnailUrl = pageSummary.getThumbnailUrl();
                    FrameLayout frameLayout = onThisDayPagesViewHolder.imageContainer;
                    if (thumbnailUrl != null && thumbnailUrl.length() != 0) {
                        frameLayout.setVisibility(0);
                        FaceAndColorDetectImageView faceAndColorDetectImageView = onThisDayPagesViewHolder.image;
                        Uri parse = Uri.parse(thumbnailUrl);
                        int i5 = FaceAndColorDetectImageView.$r8$clinit;
                        faceAndColorDetectImageView.loadImage(parse, null);
                        break;
                    } else {
                        frameLayout.setVisibility(8);
                        break;
                    }
                    break;
                case 3:
                    GalleryThumbnailScrollView.GalleryItemHolder galleryItemHolder = (GalleryThumbnailScrollView.GalleryItemHolder) viewHolder;
                    MwQueryPage mwQueryPage = (MwQueryPage) ((List) this.list).get(i);
                    ImageView imageView = galleryItemHolder.imageView;
                    mwQueryPage.getClass();
                    galleryItemHolder.galleryItem = mwQueryPage;
                    ImageInfo imageInfo = mwQueryPage.imageInfo();
                    if (imageInfo != null) {
                        imageView.setFocusable(true);
                        imageView.setOnClickListener(galleryItemHolder);
                        imageView.setOnTouchListener(galleryItemHolder);
                        ViewUtil.loadImage$default(imageView, imageInfo.thumbUrl, null, 28);
                        break;
                    }
                    break;
                case 4:
                    OnThisDayGameResultFragment.ShareRecyclerViewItemHolder shareRecyclerViewItemHolder = (OnThisDayGameResultFragment.ShareRecyclerViewItemHolder) viewHolder;
                    PageSummary pageSummary2 = (PageSummary) ((List) this.list).get(i);
                    pageSummary2.getClass();
                    DefaultSocket defaultSocket = shareRecyclerViewItemHolder.binding;
                    TextView textView3 = (TextView) defaultSocket.sink;
                    StringUtil stringUtil3 = StringUtil.INSTANCE;
                    textView3.setText(StringUtil.fromHtml(pageSummary2.getDisplayTitle()));
                    GoneIfEmptyTextView goneIfEmptyTextView = (GoneIfEmptyTextView) defaultSocket.closeBits;
                    goneIfEmptyTextView.setText(StringUtil.fromHtml(pageSummary2.description));
                    String str3 = pageSummary2.description;
                    goneIfEmptyTextView.setVisibility((str3 == null || str3.length() == 0) ? 8 : 0);
                    String thumbnailUrl2 = pageSummary2.getThumbnailUrl();
                    OnThisDayGameResultFragment onThisDayGameResultFragment = OnThisDayGameResultFragment.this;
                    if (thumbnailUrl2 == null) {
                        onThisDayGameResultFragment.loadedImagesForShare++;
                        break;
                    } else {
                        ViewUtil.loadImage$default((ShapeableImageView) defaultSocket.source, thumbnailUrl2, new AvPlayer(i3, onThisDayGameResultFragment), 12);
                        break;
                    }
                case 5:
                    EditHistoryListActivity.SearchBarViewHolder searchBarViewHolder = (EditHistoryListActivity.SearchBarViewHolder) viewHolder;
                    ViewWatchlistSearchBarBinding viewWatchlistSearchBarBinding = searchBarViewHolder.binding;
                    ImageView imageView2 = viewWatchlistSearchBarBinding.filterButton;
                    WikiCardView wikiCardView = viewWatchlistSearchBarBinding.rootView;
                    EditHistoryListActivity editHistoryListActivity = searchBarViewHolder.this$0;
                    int i6 = EditHistoryListActivity.$r8$clinit;
                    imageView2.setVisibility(editHistoryListActivity.getViewModel().editHistoryStatsData.getValue() instanceof Resource.Success ? 0 : 8);
                    TypedValue typedValue = new TypedValue();
                    TypedValue typedValue2 = editHistoryListActivity.getTheme().resolveAttribute(R.attr.background_color, typedValue, true) ? typedValue : null;
                    if (typedValue2 == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130968673");
                        break;
                    } else {
                        wikiCardView.setCardBackgroundColor(typedValue2.data);
                        searchBarViewHolder.itemView.setOnClickListener(new EditHistoryListActivity$$ExternalSyntheticLambda2(editHistoryListActivity, 2));
                        imageView2.setOnClickListener(new EditHistoryListActivity$$ExternalSyntheticLambda2(editHistoryListActivity, 3));
                        View view2 = new View[]{imageView2}[0];
                        RegexKt.setTooltipText(view2, view2.getContentDescription());
                        wikiCardView.setVisibility(0);
                        break;
                    }
                case 6:
                    ReferenceDialog.ViewHolder viewHolder2 = (ReferenceDialog.ViewHolder) viewHolder;
                    List list = (List) this.list;
                    String str4 = ((PageReferences.Reference) list.get(i)).text;
                    boolean contains = StringsKt.contains(str4, "lower", false);
                    if (StringsKt.contains(str4, "alpha ", false)) {
                        List split$default = StringsKt.split$default(str4, new String[]{" "});
                        StringUtil stringUtil4 = StringUtil.INSTANCE;
                        int parseInt = Integer.parseInt(StringsKt__StringsJVMKt.replace$default((String) CollectionsKt.last(split$default), "]", ""));
                        String str5 = "";
                        while (true) {
                            int i7 = parseInt - 1;
                            if (i7 >= 0) {
                                str5 = ((char) ((i7 % 26) + 65)) + str5;
                                parseInt = i7 / 26;
                            } else if (contains) {
                                Locale locale = Locale.getDefault();
                                locale.getClass();
                                str4 = str5.toLowerCase(locale);
                                str4.getClass();
                            } else {
                                str4 = str5;
                            }
                        }
                    }
                    Pattern compile = Pattern.compile("[\\[\\]]");
                    compile.getClass();
                    String replaceAll = compile.matcher(str4).replaceAll("");
                    replaceAll.getClass();
                    String concat = replaceAll.concat(".");
                    PageReferences.Reference reference = (PageReferences.Reference) list.get(i);
                    reference.getClass();
                    DefaultSocket defaultSocket2 = viewHolder2.binding;
                    ((AppTextView) defaultSocket2.source).setText(concat);
                    ((LinearLayout) defaultSocket2.socket).post(new Processor$$ExternalSyntheticLambda1(ReferenceDialog.this, reference, viewHolder2, i3));
                    break;
                case 7:
                    PlacesFragment.RecyclerViewItemHolder recyclerViewItemHolder = (PlacesFragment.RecyclerViewItemHolder) viewHolder;
                    NearbyPage nearbyPage = (NearbyPage) ((List) this.list).get(i);
                    PlacesFragment placesFragment = (PlacesFragment) this.onItemClickListener;
                    String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
                    Location location = placesFragment.getViewModel().lastKnownLocation;
                    nearbyPage.getClass();
                    recyclerViewItemHolder.page = nearbyPage;
                    Retrofit retrofit = recyclerViewItemHolder.binding;
                    TextView textView4 = (TextView) retrofit.callAdapterFactories;
                    StringUtil stringUtil5 = StringUtil.INSTANCE;
                    PageTitle pageTitle2 = nearbyPage.pageTitle;
                    textView4.setText(StringUtil.fromHtml(pageTitle2.getDisplayText()));
                    GoneIfEmptyTextView goneIfEmptyTextView2 = (GoneIfEmptyTextView) retrofit.callFactory;
                    goneIfEmptyTextView2.setText(StringUtil.fromHtml(pageTitle2.description));
                    String str6 = pageTitle2.description;
                    goneIfEmptyTextView2.setVisibility((str6 == null || str6.length() == 0) ? 8 : 0);
                    if (location != null) {
                        TextView textView5 = (TextView) retrofit.baseUrl;
                        Location location2 = nearbyPage.getLocation();
                        Locale locale2 = Locale.getDefault();
                        locale2.getClass();
                        textView5.setText(GeoUtil.getDistanceWithUnit(location, location2, locale2));
                    }
                    String str7 = pageTitle2.thumbUrl;
                    if (str7 != null) {
                        ViewUtil.loadImage$default((ShapeableImageView) retrofit.converterFactories, str7, null, 28);
                        break;
                    }
                    break;
                case 8:
                    SuggestedEditsImageTagDialog.ResultItemHolder resultItemHolder = (SuggestedEditsImageTagDialog.ResultItemHolder) viewHolder;
                    ImageTag imageTag = (ImageTag) ((List) this.list).get(i);
                    imageTag.getClass();
                    View view3 = resultItemHolder.itemView;
                    ((TextView) view3.findViewById(R.id.labelName)).setText(imageTag.label);
                    ((TextView) view3.findViewById(R.id.labelDescription)).setText(imageTag.description);
                    view3.setTag(imageTag);
                    view3.setOnClickListener(resultItemHolder);
                    break;
                default:
                    List list2 = (List) this.list;
                    if (!(viewHolder instanceof WatchlistFragment.WatchlistSearchBarHolder)) {
                        if (!(viewHolder instanceof WatchlistFragment.WatchlistDateViewHolder)) {
                            WatchlistFragment.WatchlistItemViewHolder watchlistItemViewHolder = (WatchlistFragment.WatchlistItemViewHolder) viewHolder;
                            Object obj = list2.get(i);
                            obj.getClass();
                            MwQueryResult.WatchlistItem watchlistItem = (MwQueryResult.WatchlistItem) obj;
                            View view4 = watchlistItemViewHolder.itemView;
                            view4.getClass();
                            WatchlistItemView watchlistItemView = (WatchlistItemView) view4;
                            WatchlistFragment watchlistFragment = WatchlistFragment.this;
                            String str8 = watchlistFragment.getViewModel().currentSearchQuery;
                            String str9 = watchlistItem.logtype;
                            String str10 = watchlistItem.user;
                            watchlistItemView.item = watchlistItem;
                            ItemWatchlistBinding itemWatchlistBinding = watchlistItemView.binding;
                            LangCodeView langCodeView = itemWatchlistBinding.langCodeText;
                            MaterialButton materialButton = itemWatchlistBinding.userNameText;
                            GoneIfEmptyTextView goneIfEmptyTextView3 = itemWatchlistBinding.summaryText;
                            WikiCardView wikiCardView2 = itemWatchlistBinding.containerView;
                            MaterialButton materialButton2 = itemWatchlistBinding.diffText;
                            WikiSite wikiSite = watchlistItem.wiki;
                            wikiSite.getClass();
                            langCodeView.setLangCode(wikiSite.languageCode);
                            StringUtil stringUtil6 = StringUtil.INSTANCE;
                            CharSequence fromHtml = StringUtil.fromHtml(watchlistItem.parsedComment);
                            if (fromHtml.length() == 0) {
                                fromHtml = watchlistItemView.getContext().getString(R.string.page_edit_history_comment_placeholder);
                                fromHtml.getClass();
                                z = true;
                            } else {
                                z = false;
                            }
                            goneIfEmptyTextView3.setTypeface(Typeface.SANS_SERIF, z ? 2 : 0);
                            Context context2 = watchlistItemView.getContext();
                            context2.getClass();
                            goneIfEmptyTextView3.setTextColor(Cache.Companion.getThemedColor(context2, z ? R.attr.secondary_color : R.attr.primary_color));
                            TextView textView6 = itemWatchlistBinding.timeText;
                            ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                            Context context3 = watchlistItemView.getContext();
                            context3.getClass();
                            textView6.setText(DateUtil.getDateStringWithSkeletonPattern(DateFormat.is24HourFormat(context3) ? "HH:mm" : "hh:mm a", watchlistItem.getDate()));
                            materialButton.setContentDescription(watchlistItemView.getContext().getString(R.string.talk_user_title, str10));
                            materialButton.setIconResource(watchlistItem.isAnon ? R.drawable.ic_anonymous_ooui : R.drawable.ic_user_avatar);
                            if (str9.length() > 0) {
                                materialButton2.setVisibility(0);
                                if (str9.equals(watchlistItemView.getContext().getString(R.string.page_moved))) {
                                    String string = watchlistItemView.getContext().getString(R.string.watchlist_page_moved);
                                    string.getClass();
                                    watchlistItemView.setButtonTextAndIconColor(R.drawable.ic_info_outline_black_24dp, string);
                                } else if (str9.equals(watchlistItemView.getContext().getString(R.string.page_protected))) {
                                    String string2 = watchlistItemView.getContext().getString(R.string.watchlist_page_protected);
                                    string2.getClass();
                                    watchlistItemView.setButtonTextAndIconColor(R.drawable.ic_baseline_lock_24, string2);
                                } else if (str9.equals(watchlistItemView.getContext().getString(R.string.page_deleted))) {
                                    String string3 = watchlistItemView.getContext().getString(R.string.watchlist_page_deleted);
                                    string3.getClass();
                                    watchlistItemView.setButtonTextAndIconColor(R.drawable.ic_delete_white_24dp, string3);
                                } else {
                                    materialButton2.setVisibility(8);
                                    fromHtml = StringUtil.fromHtml(watchlistItem.logdisplay);
                                }
                                wikiCardView2.setAlpha(0.5f);
                                wikiCardView2.setClickable(false);
                            } else {
                                int i8 = watchlistItem.newlen - watchlistItem.oldlen;
                                Context context4 = watchlistItemView.getContext();
                                context4.getClass();
                                watchlistItemView.setButtonTextAndIconColor(0, StringUtil.getDiffBytesText(context4, i8));
                                if (i8 >= 0) {
                                    int i9 = i8 > 0 ? R.attr.success_color : R.attr.secondary_color;
                                    Context context5 = watchlistItemView.getContext();
                                    context5.getClass();
                                    materialButton2.setTextColor(Cache.Companion.getThemedColor(context5, i9));
                                } else {
                                    Context context6 = watchlistItemView.getContext();
                                    context6.getClass();
                                    materialButton2.setTextColor(Cache.Companion.getThemedColor(context6, R.attr.destructive_color));
                                }
                                materialButton2.setVisibility(0);
                                wikiCardView2.setAlpha(1.0f);
                                wikiCardView2.setClickable(true);
                            }
                            WikiSite wikiSite2 = watchlistItem.wiki;
                            wikiSite2.getClass();
                            BitmapsKt.setLayoutDirectionByLang(watchlistItemView, wikiSite2.languageCode);
                            StringUtil.setHighlightedAndBoldenedText(itemWatchlistBinding.titleText, watchlistItem.title, str8);
                            StringUtil.setHighlightedAndBoldenedText(materialButton, str10, str8);
                            StringUtil.setHighlightedAndBoldenedText(goneIfEmptyTextView3, fromHtml, str8);
                            watchlistItemView.setCallback(watchlistFragment);
                            break;
                        } else {
                            Object obj2 = list2.get(i);
                            obj2.getClass();
                            ((WatchlistFragment.WatchlistDateViewHolder) viewHolder).bindItem((Date) obj2);
                            break;
                        }
                    } else {
                        WatchlistFragment.WatchlistSearchBarHolder watchlistSearchBarHolder = (WatchlistFragment.WatchlistSearchBarHolder) viewHolder;
                        ViewWatchlistSearchBarBinding viewWatchlistSearchBarBinding2 = watchlistSearchBarHolder.itemBinding;
                        TextView textView7 = viewWatchlistSearchBarBinding2.filterCount;
                        WatchlistFragment watchlistFragment2 = watchlistSearchBarHolder.this$0;
                        watchlistFragment2.getViewModel();
                        boolean z2 = WatchlistViewModel.filtersCount() != 0;
                        if (!z2) {
                            i4 = R.attr.primary_color;
                        }
                        textView7.setVisibility(z2 ? 0 : 8);
                        watchlistFragment2.getViewModel();
                        textView7.setText(String.valueOf(WatchlistViewModel.filtersCount()));
                        viewWatchlistSearchBarBinding2.filterButton.setImageTintList(Cache.Companion.getThemedColorStateList(watchlistFragment2.requireContext(), i4));
                        break;
                    }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            int i2 = this.$r8$classId;
            int i3 = R.id.listItemTitle;
            switch (i2) {
                case 0:
                    View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_app_icon, viewGroup, false);
                    if (inflate != null) {
                        ShapeableImageView shapeableImageView = (ShapeableImageView) inflate;
                        return new AppIconViewHolder(new OkHttpCall.AnonymousClass1(10, shapeableImageView, shapeableImageView));
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("rootView");
                    return null;
                case 1:
                    PageItemView pageItemView = new PageItemView(((CategoryDialog) this.onItemClickListener).requireContext());
                    pageItemView.setImageVisible(false);
                    pageItemView.setTitleTypeface(0);
                    return new CategoryDialog.CategoryItemHolder(pageItemView);
                case 2:
                    View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_on_this_day_pages, viewGroup, false);
                    Context context = viewGroup.getContext();
                    context.getClass();
                    inflate2.getClass();
                    return new OnThisDayPagesViewHolder((AppCompatActivity) context, inflate2, (WikiSite) this.onItemClickListener);
                case 3:
                    GalleryThumbnailScrollView galleryThumbnailScrollView = (GalleryThumbnailScrollView) this.onItemClickListener;
                    View inflate3 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_gallery_thumbnail, viewGroup, false);
                    inflate3.getClass();
                    return galleryThumbnailScrollView.new GalleryItemHolder(inflate3);
                case 4:
                    OnThisDayGameResultFragment onThisDayGameResultFragment = (OnThisDayGameResultFragment) this.onItemClickListener;
                    View inflate4 = onThisDayGameResultFragment.getLayoutInflater().inflate(R.layout.item_on_this_day_game_share_topic, viewGroup, false);
                    GoneIfEmptyTextView goneIfEmptyTextView = (GoneIfEmptyTextView) Room.findChildViewById(inflate4, R.id.listItemDescription);
                    if (goneIfEmptyTextView != null) {
                        ShapeableImageView shapeableImageView2 = (ShapeableImageView) Room.findChildViewById(inflate4, R.id.listItemThumbnail);
                        if (shapeableImageView2 != null) {
                            TextView textView = (TextView) Room.findChildViewById(inflate4, R.id.listItemTitle);
                            if (textView != null) {
                                return onThisDayGameResultFragment.new ShareRecyclerViewItemHolder(new DefaultSocket((ConstraintLayout) inflate4, goneIfEmptyTextView, shapeableImageView2, textView, 20));
                            }
                        } else {
                            i3 = R.id.listItemThumbnail;
                        }
                    } else {
                        i3 = R.id.listItemDescription;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate4.getResources().getResourceName(i3)));
                    return null;
                case 5:
                    EditHistoryListActivity editHistoryListActivity = (EditHistoryListActivity) this.onItemClickListener;
                    EditHistoryListActivity.SearchBarViewHolder searchBarViewHolder = new EditHistoryListActivity.SearchBarViewHolder(editHistoryListActivity, ViewWatchlistSearchBarBinding.inflate(editHistoryListActivity.getLayoutInflater(), viewGroup));
                    this.list = searchBarViewHolder;
                    return searchBarViewHolder;
                case 6:
                    ReferenceDialog referenceDialog = (ReferenceDialog) this.onItemClickListener;
                    View inflate5 = LayoutInflater.from(referenceDialog.getContext()).inflate(R.layout.view_reference_pager_item, viewGroup, false);
                    int i4 = R.id.reference_ext_link;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) Room.findChildViewById(inflate5, R.id.reference_ext_link);
                    if (appCompatImageView != null) {
                        i4 = R.id.reference_id;
                        AppTextView appTextView = (AppTextView) Room.findChildViewById(inflate5, R.id.reference_id);
                        if (appTextView != null) {
                            i4 = R.id.reference_text;
                            AppTextView appTextView2 = (AppTextView) Room.findChildViewById(inflate5, R.id.reference_text);
                            if (appTextView2 != null) {
                                return referenceDialog.new ViewHolder(new DefaultSocket((LinearLayout) inflate5, appCompatImageView, appTextView, appTextView2, 24));
                            }
                        }
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate5.getResources().getResourceName(i4)));
                    return null;
                case 7:
                    PlacesFragment placesFragment = (PlacesFragment) this.onItemClickListener;
                    View inflate6 = placesFragment.getLayoutInflater().inflate(R.layout.item_places_list, viewGroup, false);
                    GoneIfEmptyTextView goneIfEmptyTextView2 = (GoneIfEmptyTextView) Room.findChildViewById(inflate6, R.id.listItemDescription);
                    if (goneIfEmptyTextView2 != null) {
                        TextView textView2 = (TextView) Room.findChildViewById(inflate6, R.id.listItemDistance);
                        if (textView2 != null) {
                            ShapeableImageView shapeableImageView3 = (ShapeableImageView) Room.findChildViewById(inflate6, R.id.listItemThumbnail);
                            if (shapeableImageView3 != null) {
                                TextView textView3 = (TextView) Room.findChildViewById(inflate6, R.id.listItemTitle);
                                if (textView3 != null) {
                                    return placesFragment.new RecyclerViewItemHolder(new Retrofit((ConstraintLayout) inflate6, goneIfEmptyTextView2, textView2, shapeableImageView3, textView3));
                                }
                            } else {
                                i3 = R.id.listItemThumbnail;
                            }
                        } else {
                            i3 = R.id.listItemDistance;
                        }
                    } else {
                        i3 = R.id.listItemDescription;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate6.getResources().getResourceName(i3)));
                    return null;
                case 8:
                    SuggestedEditsImageTagDialog suggestedEditsImageTagDialog = (SuggestedEditsImageTagDialog) this.onItemClickListener;
                    View inflate7 = suggestedEditsImageTagDialog.getLayoutInflater().inflate(R.layout.item_wikidata_label, viewGroup, false);
                    inflate7.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                    return suggestedEditsImageTagDialog.new ResultItemHolder(inflate7);
                default:
                    WatchlistFragment watchlistFragment = (WatchlistFragment) this.onItemClickListener;
                    if (i != 0) {
                        if (i != 1) {
                            return watchlistFragment.new WatchlistItemViewHolder(new WatchlistItemView(watchlistFragment.requireContext()));
                        }
                        View inflate8 = LayoutInflater.from(watchlistFragment.requireContext()).inflate(R.layout.item_watchlist_date, viewGroup, false);
                        inflate8.getClass();
                        return new WatchlistFragment.WatchlistDateViewHolder(inflate8);
                    }
                    View inflate9 = watchlistFragment.getLayoutInflater().inflate(R.layout.view_watchlist_search_bar, viewGroup, false);
                    int i5 = R.id.filter_button;
                    ImageView imageView = (ImageView) Room.findChildViewById(inflate9, R.id.filter_button);
                    if (imageView != null) {
                        i5 = R.id.filter_count;
                        TextView textView4 = (TextView) Room.findChildViewById(inflate9, R.id.filter_count);
                        if (textView4 != null) {
                            return new WatchlistFragment.WatchlistSearchBarHolder(watchlistFragment, new ViewWatchlistSearchBarBinding((WikiCardView) inflate9, imageView, textView4));
                        }
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate9.getResources().getResourceName(i5)));
                    return null;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            switch (this.$r8$classId) {
                case 1:
                    ((CategoryDialog.CategoryItemHolder) viewHolder).view.setCallback(((CategoryDialog) this.onItemClickListener).itemCallback);
                    break;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
            switch (this.$r8$classId) {
                case 1:
                    ((CategoryDialog.CategoryItemHolder) viewHolder).view.setCallback(null);
                    break;
            }
        }

        public AppIconAdapter(EnumEntries enumEntries) {
            this.$r8$classId = 0;
            enumEntries.getClass();
            this.list = enumEntries;
        }

        public AppIconAdapter(SuggestedEditsImageTagDialog suggestedEditsImageTagDialog) {
            this.$r8$classId = 8;
            this.onItemClickListener = suggestedEditsImageTagDialog;
            this.list = EmptyList.INSTANCE;
        }

        public AppIconAdapter(EditHistoryListActivity editHistoryListActivity) {
            this.$r8$classId = 5;
            this.onItemClickListener = editHistoryListActivity;
        }

        public /* synthetic */ AppIconAdapter(int i, Object obj, List list) {
            this.$r8$classId = i;
            this.onItemClickListener = obj;
            this.list = list;
        }

        public AppIconAdapter(List list, WikiSite wikiSite) {
            this.$r8$classId = 2;
            list.getClass();
            wikiSite.getClass();
            this.list = list;
            this.onItemClickListener = wikiSite;
        }

        public AppIconAdapter(PlacesFragment placesFragment, List list) {
            this.$r8$classId = 7;
            list.getClass();
            this.onItemClickListener = placesFragment;
            this.list = list;
        }
    }
}
