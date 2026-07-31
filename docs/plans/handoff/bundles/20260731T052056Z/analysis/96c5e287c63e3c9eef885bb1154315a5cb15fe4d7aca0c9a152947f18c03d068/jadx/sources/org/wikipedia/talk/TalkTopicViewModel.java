package org.wikipedia.talk;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.DiffUtil;
import coil3.size.ViewSizeResolver$CC;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceBuilderIterator;
import kotlinx.coroutines.AwaitKt;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.SingleLiveData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkTopicViewModel extends ViewModel {
    public String currentSearchQuery;
    public final ArrayList flattenedThreadItems;
    public final PageTitle pageTitle;
    public String scrollTargetId;
    public final SingleLiveData subscribeData;
    public boolean subscribed;
    public final ArrayList threadItems;
    public final MutableLiveData threadItemsData;
    public ThreadItem topic;
    public final String topicId;
    public final String topicName;
    public CharSequence undoBody;
    public final SingleLiveData undoResponseData;
    public CharSequence undoSubject;
    public String undoTopicId;

    public TalkTopicViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        Object obj = savedStateHandle.get("topicName");
        obj.getClass();
        this.topicName = (String) obj;
        Object obj2 = savedStateHandle.get("topicId");
        obj2.getClass();
        this.topicId = (String) obj2;
        Object obj3 = savedStateHandle.get("title");
        obj3.getClass();
        this.pageTitle = (PageTitle) obj3;
        this.currentSearchQuery = (String) savedStateHandle.get("searchQuery");
        this.scrollTargetId = (String) savedStateHandle.get("replyId");
        this.threadItems = new ArrayList();
        this.flattenedThreadItems = new ArrayList();
        this.threadItemsData = new MutableLiveData();
        this.subscribeData = new SingleLiveData();
        this.undoResponseData = new SingleLiveData();
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new TalkTopicViewModel$undo$$inlined$CoroutineExceptionHandler$1(this, 1), null, new TalkTopicViewModel$loadTopic$2(this, null, 0), 2);
    }

    public static void flattenThreadLevel(List list, List list2) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ThreadItem threadItem = (ThreadItem) it.next();
            list2.add(threadItem);
            if (threadItem.isExpanded) {
                flattenThreadLevel(threadItem.replies, list2);
            }
        }
    }

    public final DiffUtil.DiffResult expandOrCollapseAll() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.flattenedThreadItems;
        arrayList.addAll(arrayList2);
        Prefs prefs = Prefs.INSTANCE;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        boolean m = ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_talk_topic_expand_all), true);
        ThreadItem threadItem = this.topic;
        if (threadItem != null) {
            SequenceBuilderIterator it = UnsignedKt.iterator((Function2) threadItem.getAllReplies().reader);
            while (it.hasNext()) {
                ThreadItem threadItem2 = (ThreadItem) it.next();
                if (threadItem2.level > 1) {
                    threadItem2.isExpanded = m;
                }
            }
        }
        updateFlattenedThreadItems();
        return DiffUtil.calculateDiff$1(new TalkTopicViewModel$getDiffResult$1(arrayList, arrayList2));
    }

    public final void updateFlattenedThreadItems() {
        Object obj;
        ArrayList arrayList = this.flattenedThreadItems;
        arrayList.clear();
        flattenThreadLevel(this.threadItems, arrayList);
        int size = arrayList.size();
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= size) {
                break;
            }
            ((ThreadItem) arrayList.get(i)).isFirstTopLevel = false;
            ThreadItem threadItem = (ThreadItem) arrayList.get(i);
            if (i <= 0 || ((ThreadItem) arrayList.get(i)).level <= 1 || (i < arrayList.size() - 1 && ((ThreadItem) arrayList.get(i + 1)).level >= ((ThreadItem) arrayList.get(i)).level)) {
                z = false;
            }
            threadItem.isLastSibling = z;
            i++;
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it.next();
                if (((ThreadItem) obj).level == 1) {
                    break;
                }
            }
        }
        ThreadItem threadItem2 = (ThreadItem) obj;
        if (threadItem2 != null) {
            threadItem2.isFirstTopLevel = true;
        }
    }
}
