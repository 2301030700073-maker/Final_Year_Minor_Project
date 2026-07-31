package org.wikipedia.page.shareafact;

import android.location.Location;
import androidx.appcompat.app.AppCompatActivity;
import coil3.RealImageLoader$execute$result$1;
import java.nio.charset.Charset;
import java.util.List;
import kotlin.Pair;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.Json;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$3;
import okhttp3.internal._UtilCommonKt;
import org.wikipedia.Constants;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.bridge.CommunicationBridge;
import org.wikipedia.dataclient.Service;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.games.onthisday.OnThisDayGameResultFragment;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.LongPressMenu;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.readinglist.ReadingListTitleDialog$Callback;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.wiktionary.WiktionaryDialog;
import retrofit2.Converter;
import retrofit2.OptionalConverterFactory$OptionalConverter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ShareHandler implements LongPressMenu.Callback, ReadingListTitleDialog$Callback, Converter {
    public final /* synthetic */ int $r8$classId;
    public final Object bridge;
    public final Object fragment;
    public Object webViewActionMode;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class TextSelectResponse {
        public static final Companion Companion = new Companion();
        public final boolean isTitleDescription;
        public final int section;
        public final String text;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return ShareHandler$TextSelectResponse$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ TextSelectResponse(int i, int i2, String str, boolean z) {
            this.text = (i & 1) == 0 ? "" : str;
            if ((i & 2) == 0) {
                this.section = 0;
            } else {
                this.section = i2;
            }
            if ((i & 4) == 0) {
                this.isTitleDescription = false;
            } else {
                this.isTitleDescription = z;
            }
        }
    }

    public ShareHandler(PageFragment pageFragment) {
        this.$r8$classId = 2;
        this.fragment = pageFragment;
        PageTitle pageTitle = (PageTitle) pageFragment.model.title;
        this.bridge = pageTitle != null ? pageTitle.wikiSite : null;
        this.webViewActionMode = pageTitle != null ? pageTitle.getUri() : null;
    }

    @Override // retrofit2.Converter
    public Object convert(Object obj) {
        OptionalConverterFactory$OptionalConverter optionalConverterFactory$OptionalConverter = (OptionalConverterFactory$OptionalConverter) this.webViewActionMode;
        MediaType mediaType = (MediaType) this.fragment;
        String encodeToString = ((Json) optionalConverterFactory$OptionalConverter.delegate).encodeToString((KSerializer) this.bridge, obj);
        int i = RequestBody.$r8$clinit;
        Charset charset = Charsets.UTF_8;
        Regex regex = MediaType.TYPE_SUBTYPE;
        MediaType mediaType2 = null;
        Charset charset2 = mediaType.charset(null);
        if (charset2 == null) {
            try {
                mediaType2 = ReadingListFragment.MultiSelectCallback.get(mediaType + "; charset=utf-8");
            } catch (IllegalArgumentException unused) {
            }
            mediaType = mediaType2;
        } else {
            charset = charset2;
        }
        byte[] bytes = encodeToString.getBytes(charset);
        bytes.getClass();
        int length = bytes.length;
        _UtilCommonKt.checkOffsetAndCount(bytes.length, 0L, length);
        return new RequestBody$Companion$toRequestBody$3(mediaType, length, bytes);
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onAddRequest(HistoryEntry historyEntry, boolean z) {
        int i = this.$r8$classId;
        Object obj = this.fragment;
        historyEntry.getClass();
        switch (i) {
            case 1:
                OnThisDayGameResultFragment onThisDayGameResultFragment = (OnThisDayGameResultFragment) obj;
                onThisDayGameResultFragment.getViewModel$3().savedPages.add((PageSummary) this.bridge);
                WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameResultFragment.getViewModel$3().isArchiveGame), null, "save_click", "game_play", onThisDayGameResultFragment.getViewModel$3().getCurrentScreenName(), null, null);
                List list = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.addToDefaultList(onThisDayGameResultFragment.requireActivity(), (PageTitle) this.webViewActionMode, z, Constants.InvokeSource.ON_THIS_DAY_GAME_ACTIVITY, null);
                break;
            default:
                List list2 = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.addToDefaultList(((PageFragment) obj).requireActivity(), historyEntry.getTitle(), z, Constants.InvokeSource.CONTEXT_MENU, null);
                break;
        }
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onMoveRequest(ReadingListPage readingListPage, HistoryEntry historyEntry) {
        int i = this.$r8$classId;
        Object obj = this.fragment;
        historyEntry.getClass();
        switch (i) {
            case 1:
                if (readingListPage != null) {
                    PageTitle pageTitle = (PageTitle) this.webViewActionMode;
                    List list = ReadingListBehaviorsUtil.allReadingLists;
                    ReadingListBehaviorsUtil.moveToList(((OnThisDayGameResultFragment) obj).requireActivity(), readingListPage.listId, pageTitle, Constants.InvokeSource.ON_THIS_DAY_GAME_ACTIVITY, true, null);
                    break;
                }
                break;
            default:
                if (readingListPage != null) {
                    List list2 = ReadingListBehaviorsUtil.allReadingLists;
                    ReadingListBehaviorsUtil.moveToList(((PageFragment) obj).requireActivity(), readingListPage.listId, historyEntry.getTitle(), Constants.InvokeSource.CONTEXT_MENU, true, null);
                    break;
                }
                break;
        }
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onOpenInNewTab(HistoryEntry historyEntry) {
        int i = this.$r8$classId;
        Object obj = this.fragment;
        historyEntry.getClass();
        switch (i) {
            case 1:
                OnThisDayGameResultFragment onThisDayGameResultFragment = (OnThisDayGameResultFragment) obj;
                int i2 = PageActivity.$r8$clinit;
                onThisDayGameResultFragment.startActivity(LoginClient.newIntentForNewTab(onThisDayGameResultFragment.requireContext(), historyEntry, historyEntry.getTitle()), null);
                break;
            default:
                ((PageFragment) obj).openInNewBackgroundTab(historyEntry.getTitle(), historyEntry);
                break;
        }
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public /* bridge */ void onOpenInPlaces(HistoryEntry historyEntry, Location location) {
        switch (this.$r8$classId) {
            case 1:
                Service.CC.$default$onOpenInPlaces(historyEntry, location);
                break;
            default:
                Service.CC.$default$onOpenInPlaces(historyEntry, location);
                break;
        }
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onOpenLink(HistoryEntry historyEntry) {
        int i = this.$r8$classId;
        Object obj = this.fragment;
        historyEntry.getClass();
        switch (i) {
            case 1:
                OnThisDayGameResultFragment onThisDayGameResultFragment = (OnThisDayGameResultFragment) obj;
                int i2 = PageActivity.$r8$clinit;
                onThisDayGameResultFragment.startActivity(LoginClient.newIntentForCurrentTab(onThisDayGameResultFragment.requireContext(), historyEntry, historyEntry.getTitle(), false), null);
                break;
            default:
                PageTitle title = historyEntry.getTitle();
                PageFragment.Callback callback = ((PageFragment) obj).callback();
                if (callback != null) {
                    ((PageActivity) callback).loadPage(title, historyEntry, PageActivity.TabPosition.CURRENT_TAB);
                    break;
                }
                break;
        }
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onRemoveRequest() {
        switch (this.$r8$classId) {
            case 1:
                ((OnThisDayGameResultFragment) this.fragment).getViewModel$3().savedPages.remove((PageSummary) this.bridge);
                break;
        }
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onShareRequest() {
        switch (this.$r8$classId) {
            case 1:
                OnThisDayGameResultFragment onThisDayGameResultFragment = (OnThisDayGameResultFragment) this.fragment;
                WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameResultFragment.getViewModel$3().isArchiveGame), null, "share_click", "game_play", onThisDayGameResultFragment.getViewModel$3().getCurrentScreenName(), null, null);
                break;
        }
    }

    @Override // org.wikipedia.readinglist.ReadingListTitleDialog$Callback
    public void onSuccess(String str, String str2) {
        str.getClass();
        str2.getClass();
        AwaitKt.launch$default(AwaitKt.MainScope(), ReadingListBehaviorsUtil.exceptionHandler, null, new RealImageLoader$execute$result$1((ReadingList) this.fragment, str, str2, (AppCompatActivity) this.bridge, (ReadingListBehaviorsUtil.Callback) this.webViewActionMode, null, 17), 2);
    }

    public void showWiktionaryDefinition(String str) {
        str.getClass();
        PageFragment pageFragment = (PageFragment) this.fragment;
        PageTitle pageTitle = (PageTitle) pageFragment.model.title;
        if (pageTitle != null) {
            WiktionaryDialog wiktionaryDialog = new WiktionaryDialog();
            wiktionaryDialog.setArguments(UStringsKt.bundleOf(new Pair("title", pageTitle), new Pair("text", str)));
            pageFragment.showBottomSheet(wiktionaryDialog);
        }
    }

    private final void onRemoveRequest$org$wikipedia$page$PageContainerLongPressHandler() {
    }

    private final void onShareRequest$org$wikipedia$page$PageContainerLongPressHandler() {
    }

    public /* synthetic */ ShareHandler(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.fragment = obj;
        this.bridge = obj2;
        this.webViewActionMode = obj3;
    }

    public ShareHandler(PageFragment pageFragment, CommunicationBridge communicationBridge) {
        this.$r8$classId = 0;
        communicationBridge.getClass();
        this.fragment = pageFragment;
        this.bridge = communicationBridge;
    }
}
