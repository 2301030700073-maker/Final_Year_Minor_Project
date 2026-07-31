package org.wikipedia.usercontrib;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.FlowExtKt;
import androidx.paging.PageFetcher;
import androidx.paging.Pager$pageFetcher$2;
import androidx.paging.PagingConfig;
import androidx.room.Room;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.UserContribution;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.Prefs$observeKeys$$inlined$filter$1;
import org.wikipedia.talk.TalkTopicsActivity$$ExternalSyntheticLambda4;
import org.wikipedia.talk.UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UserContribListViewModel extends ViewModel {
    public boolean actionModeActive;
    public String cachedContinueKey;
    public final ArrayList cachedContribs;
    public String currentQuery;
    public String langCode;
    public final ReadonlySharedFlow userContribFlow;
    public final MutableLiveData userContribStatsData;
    public final String userName;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class UserContribItem extends UserContribItemModel {
        public final UserContribution item;

        public UserContribItem(UserContribution userContribution) {
            userContribution.getClass();
            this.item = userContribution;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class UserContribItemModel {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class UserContribSeparator extends UserContribItemModel {
        public final String date;

        public UserContribSeparator(String str) {
            this.date = str;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class UserContribStats extends UserContribItemModel {
        public final String projectName;
        public final Date registrationDate;
        public final int totalEdits;

        public UserContribStats(int i, Date date, String str) {
            this.totalEdits = i;
            this.registrationDate = date;
            this.projectName = str;
        }
    }

    public UserContribListViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        this.userContribStatsData = new MutableLiveData();
        Object obj = savedStateHandle.get("userName");
        obj.getClass();
        this.userName = (String) obj;
        Prefs prefs = Prefs.INSTANCE;
        this.langCode = Prefs.getUserContribFilterLangCode();
        this.currentQuery = "";
        this.cachedContribs = new ArrayList();
        Continuation continuation = null;
        this.userContribFlow = FlowExtKt.cachedIn(new Prefs$observeKeys$$inlined$filter$1(10, new PageFetcher(new Pager$pageFetcher$2(0, new TalkTopicsActivity$$ExternalSyntheticLambda4(1, this), continuation), new PagingConfig(50, 62)).flow, this), ViewModelKt.getViewModelScope(this));
        int i = 19;
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, i), null, new SyntaxHighlighter.AnonymousClass2(i, this, continuation), 2);
    }

    public final int excludedFiltersCount() {
        Prefs prefs = Prefs.INSTANCE;
        Set userContribFilterExcludedNs = Prefs.getUserContribFilterExcludedNs();
        List list = UserContribFilterActivity.NAMESPACE_LIST;
        int i = 0;
        if (list != null && list.isEmpty()) {
            return 0;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (userContribFilterExcludedNs.contains(Integer.valueOf(((Number) it.next()).intValue())) && (i = i + 1) < 0) {
                Room.throwCountOverflow();
                throw null;
            }
        }
        return i;
    }

    public final WikiSite getWikiSite() {
        String str = this.langCode;
        if (Intrinsics.areEqual(str, "commons")) {
            return new WikiSite("https://commons.wikimedia.org/");
        }
        if (Intrinsics.areEqual(str, "wikidata")) {
            return new WikiSite("https://www.wikidata.org/");
        }
        WikiSite.Companion companion = WikiSite.Companion;
        String str2 = this.langCode;
        companion.getClass();
        return WikiSite.Companion.forLanguageCode(str2);
    }
}
