package org.wikipedia.talk;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.lifecycle.viewmodel.ViewModelInitializer;
import androidx.work.Operation$State;
import coil3.size.ViewSizeResolver$CC;
import j$.util.Collection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.sequences.SequenceBuilderIterator;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.nodes.Element$$ExternalSyntheticLambda1;
import org.wikipedia.R;
import org.wikipedia.database.AppDatabase;
import org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.edit.Edit;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.staticdata.TalkAliasData;
import org.wikipedia.staticdata.UserTalkAliasData;
import org.wikipedia.talk.db.TalkPageSeenDao_Impl;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkTopicsViewModel extends ViewModel {
    public final TalkTopicsViewModel$special$$inlined$CoroutineExceptionHandler$1 actionHandler;
    public final StateFlowImpl actionState;
    public String currentSearchQuery;
    public int currentSortMode;
    public final TalkTopicsViewModel$special$$inlined$CoroutineExceptionHandler$1 handler;
    public boolean hasWatchlistExpiry;
    public boolean isWatched;
    public PageTitle pageTitle;
    public final LinkedHashSet seenThreadItemsSha;
    public List sortedThreadItems;
    public final TalkPageSeenDao_Impl talkPageDao;
    public final ArrayList threadItems;
    public final StateFlowImpl uiState;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class ActionState {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class DoWatch extends ActionState {
            public final boolean hasWatchlistExpiry;
            public final boolean isWatched;
            public final String message;

            public DoWatch(String str, boolean z, boolean z2) {
                str.getClass();
                this.isWatched = z;
                this.message = str;
                this.hasWatchlistExpiry = z2;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof DoWatch)) {
                    return false;
                }
                DoWatch doWatch = (DoWatch) obj;
                return this.isWatched == doWatch.isWatched && Intrinsics.areEqual(this.message, doWatch.message) && this.hasWatchlistExpiry == doWatch.hasWatchlistExpiry;
            }

            public final int hashCode() {
                return Animation.CC.m((this.isWatched ? 1231 : 1237) * 31, 31, this.message) + (this.hasWatchlistExpiry ? 1231 : 1237);
            }

            public final String toString() {
                return "DoWatch(isWatched=" + this.isWatched + ", message=" + this.message + ", hasWatchlistExpiry=" + this.hasWatchlistExpiry + ")";
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class OnError extends ActionState {
            public final Throwable throwable;

            public OnError(Throwable th) {
                th.getClass();
                this.throwable = th;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OnError) && Intrinsics.areEqual(this.throwable, ((OnError) obj).throwable);
            }

            public final int hashCode() {
                return this.throwable.hashCode();
            }

            public final String toString() {
                return "OnError(throwable=" + this.throwable + ")";
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class UndoEdit extends ActionState {
            public final Edit edit;
            public final CharSequence undoneBody;
            public final CharSequence undoneSubject;

            public UndoEdit(Edit edit, CharSequence charSequence, CharSequence charSequence2) {
                edit.getClass();
                this.edit = edit;
                this.undoneSubject = charSequence;
                this.undoneBody = charSequence2;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof UndoEdit)) {
                    return false;
                }
                UndoEdit undoEdit = (UndoEdit) obj;
                return Intrinsics.areEqual(this.edit, undoEdit.edit) && this.undoneSubject.equals(undoEdit.undoneSubject) && this.undoneBody.equals(undoEdit.undoneBody);
            }

            public final int hashCode() {
                return this.undoneBody.hashCode() + ((this.undoneSubject.hashCode() + (this.edit.hashCode() * 31)) * 31);
            }

            public final String toString() {
                return "UndoEdit(edit=" + this.edit + ", undoneSubject=" + ((Object) this.undoneSubject) + ", undoneBody=" + ((Object) this.undoneBody) + ")";
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class UiState {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class LoadError extends UiState {
            public final Throwable throwable;

            public LoadError(Throwable th) {
                th.getClass();
                this.throwable = th;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadError) && Intrinsics.areEqual(this.throwable, ((LoadError) obj).throwable);
            }

            public final int hashCode() {
                return this.throwable.hashCode();
            }

            public final String toString() {
                return "LoadError(throwable=" + this.throwable + ")";
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class LoadTopic extends UiState {
            public final PageTitle pageTitle;
            public final List threadItems;

            public LoadTopic(PageTitle pageTitle, ArrayList arrayList) {
                pageTitle.getClass();
                arrayList.getClass();
                this.pageTitle = pageTitle;
                this.threadItems = arrayList;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof LoadTopic)) {
                    return false;
                }
                LoadTopic loadTopic = (LoadTopic) obj;
                return Intrinsics.areEqual(this.pageTitle, loadTopic.pageTitle) && this.threadItems.equals(loadTopic.threadItems);
            }

            public final int hashCode() {
                return this.threadItems.hashCode() + (this.pageTitle.hashCode() * 31);
            }

            public final String toString() {
                return "LoadTopic(pageTitle=" + this.pageTitle + ", threadItems=" + this.threadItems + ")";
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class UpdateNamespace extends UiState {
            public final PageTitle pageTitle;

            public UpdateNamespace(PageTitle pageTitle) {
                pageTitle.getClass();
                this.pageTitle = pageTitle;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof UpdateNamespace) && Intrinsics.areEqual(this.pageTitle, ((UpdateNamespace) obj).pageTitle);
            }

            public final int hashCode() {
                return this.pageTitle.hashCode();
            }

            public final String toString() {
                return "UpdateNamespace(pageTitle=" + this.pageTitle + ")";
            }
        }
    }

    public TalkTopicsViewModel(PageTitle pageTitle) {
        this.pageTitle = pageTitle;
        AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
        this.talkPageDao = Cookie.Companion.getInstance().talkPageSeenDao();
        this.handler = new TalkTopicsViewModel$special$$inlined$CoroutineExceptionHandler$1(this, 0);
        this.actionHandler = new TalkTopicsViewModel$special$$inlined$CoroutineExceptionHandler$1(this, 1);
        this.threadItems = new ArrayList();
        this.seenThreadItemsSha = new LinkedHashSet();
        this.sortedThreadItems = EmptyList.INSTANCE;
        Prefs prefs = Prefs.INSTANCE;
        this.currentSortMode = PrefsIoUtil.getInt(R.string.preference_key_talk_topics_sort_mode, 0);
        this.uiState = StateFlowKt.MutableStateFlow(new UiState());
        this.actionState = StateFlowKt.MutableStateFlow(new ActionState());
        loadTopics();
    }

    public static String threadSha$1(ThreadItem threadItem) {
        String str = null;
        if (threadItem == null) {
            return null;
        }
        String str2 = threadItem.id;
        SequenceBuilderIterator it = UnsignedKt.iterator((Function2) threadItem.getAllReplies().reader);
        if (it.hasNext()) {
            str = ((ThreadItem) it.next()).timestamp;
            while (it.hasNext()) {
                String str3 = ((ThreadItem) it.next()).timestamp;
                if (str.compareTo(str3) < 0) {
                    str = str3;
                }
            }
        }
        return str2 + "|" + ((Object) str);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object isSubscribed(java.lang.String r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof org.wikipedia.talk.TalkTopicsViewModel$isSubscribed$1
            if (r0 == 0) goto L13
            r0 = r6
            org.wikipedia.talk.TalkTopicsViewModel$isSubscribed$1 r0 = (org.wikipedia.talk.TalkTopicsViewModel$isSubscribed$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.talk.TalkTopicsViewModel$isSubscribed$1 r0 = new org.wikipedia.talk.TalkTopicsViewModel$isSubscribed$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L30
            if (r2 != r3) goto L29
            java.lang.String r5 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L57
        L29:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r4 = 0
            return r4
        L30:
            kotlin.ResultKt.throwOnFailure(r6)
            org.wikipedia.WikipediaApp r6 = org.wikipedia.WikipediaApp.instance
            org.wikipedia.WikipediaApp r6 = org.jsoup.Jsoup.getInstance()
            boolean r6 = r6.isOnline()
            if (r6 != 0) goto L42
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
            return r4
        L42:
            org.wikipedia.dataclient.ServiceFactory r6 = org.wikipedia.dataclient.ServiceFactory.INSTANCE
            org.wikipedia.page.PageTitle r4 = r4.pageTitle
            org.wikipedia.dataclient.WikiSite r4 = r4.wikiSite
            org.wikipedia.dataclient.Service r4 = org.wikipedia.dataclient.ServiceFactory.get(r4)
            r0.L$0 = r5
            r0.label = r3
            java.lang.Object r6 = r4.getTalkPageTopicSubscriptions(r5, r0)
            if (r6 != r1) goto L57
            return r1
        L57:
            org.wikipedia.dataclient.discussiontools.DiscussionToolsSubscriptionList r6 = (org.wikipedia.dataclient.discussiontools.DiscussionToolsSubscriptionList) r6
            java.util.Map r4 = r6.subscriptions
            java.lang.Object r4 = r4.get(r5)
            java.lang.Integer r4 = (java.lang.Integer) r4
            if (r4 != 0) goto L64
            goto L6b
        L64:
            int r4 = r4.intValue()
            if (r4 != r3) goto L6b
            goto L6c
        L6b:
            r3 = 0
        L6c:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r3)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.talk.TalkTopicsViewModel.isSubscribed(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void loadTopics() {
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        int length = this.pageTitle.getNamespace().length();
        PageTitle pageTitle = this.pageTitle;
        int i = 1;
        if (length == 0) {
            pageTitle.setNamespace(TalkAliasData.valueFor(pageTitle.wikiSite.languageCode));
        } else {
            Namespace namespace = pageTitle.namespace();
            namespace.getClass();
            Namespace namespace2 = Namespace.USER;
            boolean z = namespace == namespace2;
            PageTitle pageTitle2 = this.pageTitle;
            if (z) {
                if (pageTitle2.namespace() == namespace2) {
                    PageTitle pageTitle3 = this.pageTitle;
                    StringUtil stringUtil = StringUtil.INSTANCE;
                    pageTitle3._displayText = StringUtil.removeNamespace(StringUtil.removeHTMLTags(pageTitle3.getDisplayText()));
                }
                PageTitle pageTitle4 = this.pageTitle;
                pageTitle4.setNamespace(UserTalkAliasData.valueFor(pageTitle4.wikiSite.languageCode));
            } else if (pageTitle2.namespace() != Namespace.TALK && this.pageTitle.namespace() != Namespace.USER_TALK) {
                ref$BooleanRef.element = true;
            }
        }
        UiState.UpdateNamespace updateNamespace = new UiState.UpdateNamespace(this.pageTitle);
        StateFlowImpl stateFlowImpl = this.uiState;
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, updateNamespace);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), this.handler, null, new TalkTopicViewModel$loadTopic$2(ref$BooleanRef, this, (Continuation) null, i), 2);
    }

    public final void sortAndFilterThreadItems() {
        Object obj;
        int i = this.currentSortMode;
        final int i2 = 3;
        final int i3 = 0;
        final int i4 = 2;
        ArrayList arrayList = this.threadItems;
        final int i5 = 1;
        if (i != 0) {
            if (i != 1) {
                final int i6 = 4;
                if (i != 2) {
                    if (i != 3) {
                        final int i7 = 5;
                        if (i != 4) {
                            if (i == 5 && arrayList.size() > 1) {
                                CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator() { // from class: org.wikipedia.talk.TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1
                                    @Override // java.util.Comparator
                                    public final int compare(Object obj2, Object obj3) {
                                        switch (i4) {
                                            case 0:
                                                ThreadItem threadItem = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj2).replies);
                                                Date date = threadItem != null ? threadItem.date : null;
                                                ThreadItem threadItem2 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj3).replies);
                                                return Operation$State.compareValues(date, threadItem2 != null ? threadItem2.date : null);
                                            case 1:
                                                String str = ((ThreadItem) obj2).html;
                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                if (str == null) {
                                                    str = "";
                                                }
                                                String obj4 = StringUtil.fromHtml(StringUtil.removeStyleTags(str)).toString();
                                                String str2 = ((ThreadItem) obj3).html;
                                                return Operation$State.compareValues(obj4, StringUtil.fromHtml(StringUtil.removeStyleTags(str2 != null ? str2 : "")).toString());
                                            case 2:
                                                ThreadItem threadItem3 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj2).replies);
                                                Date date2 = threadItem3 != null ? threadItem3.date : null;
                                                ThreadItem threadItem4 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj3).replies);
                                                return Operation$State.compareValues(date2, threadItem4 != null ? threadItem4.date : null);
                                            case 3:
                                                ThreadItem threadItem5 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj3).replies);
                                                Date date3 = threadItem5 != null ? threadItem5.date : null;
                                                ThreadItem threadItem6 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj2).replies);
                                                return Operation$State.compareValues(date3, threadItem6 != null ? threadItem6.date : null);
                                            case 4:
                                                String str3 = ((ThreadItem) obj3).html;
                                                StringUtil stringUtil2 = StringUtil.INSTANCE;
                                                if (str3 == null) {
                                                    str3 = "";
                                                }
                                                String obj5 = StringUtil.fromHtml(StringUtil.removeStyleTags(str3)).toString();
                                                String str4 = ((ThreadItem) obj2).html;
                                                return Operation$State.compareValues(obj5, StringUtil.fromHtml(StringUtil.removeStyleTags(str4 != null ? str4 : "")).toString());
                                            default:
                                                ThreadItem threadItem7 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj3).replies);
                                                Date date4 = threadItem7 != null ? threadItem7.date : null;
                                                ThreadItem threadItem8 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj2).replies);
                                                return Operation$State.compareValues(date4, threadItem8 != null ? threadItem8.date : null);
                                        }
                                    }
                                });
                            }
                        } else if (arrayList.size() > 1) {
                            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator() { // from class: org.wikipedia.talk.TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1
                                @Override // java.util.Comparator
                                public final int compare(Object obj2, Object obj3) {
                                    switch (i7) {
                                        case 0:
                                            ThreadItem threadItem = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj2).replies);
                                            Date date = threadItem != null ? threadItem.date : null;
                                            ThreadItem threadItem2 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj3).replies);
                                            return Operation$State.compareValues(date, threadItem2 != null ? threadItem2.date : null);
                                        case 1:
                                            String str = ((ThreadItem) obj2).html;
                                            StringUtil stringUtil = StringUtil.INSTANCE;
                                            if (str == null) {
                                                str = "";
                                            }
                                            String obj4 = StringUtil.fromHtml(StringUtil.removeStyleTags(str)).toString();
                                            String str2 = ((ThreadItem) obj3).html;
                                            return Operation$State.compareValues(obj4, StringUtil.fromHtml(StringUtil.removeStyleTags(str2 != null ? str2 : "")).toString());
                                        case 2:
                                            ThreadItem threadItem3 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj2).replies);
                                            Date date2 = threadItem3 != null ? threadItem3.date : null;
                                            ThreadItem threadItem4 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj3).replies);
                                            return Operation$State.compareValues(date2, threadItem4 != null ? threadItem4.date : null);
                                        case 3:
                                            ThreadItem threadItem5 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj3).replies);
                                            Date date3 = threadItem5 != null ? threadItem5.date : null;
                                            ThreadItem threadItem6 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj2).replies);
                                            return Operation$State.compareValues(date3, threadItem6 != null ? threadItem6.date : null);
                                        case 4:
                                            String str3 = ((ThreadItem) obj3).html;
                                            StringUtil stringUtil2 = StringUtil.INSTANCE;
                                            if (str3 == null) {
                                                str3 = "";
                                            }
                                            String obj5 = StringUtil.fromHtml(StringUtil.removeStyleTags(str3)).toString();
                                            String str4 = ((ThreadItem) obj2).html;
                                            return Operation$State.compareValues(obj5, StringUtil.fromHtml(StringUtil.removeStyleTags(str4 != null ? str4 : "")).toString());
                                        default:
                                            ThreadItem threadItem7 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj3).replies);
                                            Date date4 = threadItem7 != null ? threadItem7.date : null;
                                            ThreadItem threadItem8 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj2).replies);
                                            return Operation$State.compareValues(date4, threadItem8 != null ? threadItem8.date : null);
                                    }
                                }
                            });
                        }
                    } else if (arrayList.size() > 1) {
                        CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator() { // from class: org.wikipedia.talk.TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1
                            @Override // java.util.Comparator
                            public final int compare(Object obj2, Object obj3) {
                                switch (i5) {
                                    case 0:
                                        ThreadItem threadItem = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj2).replies);
                                        Date date = threadItem != null ? threadItem.date : null;
                                        ThreadItem threadItem2 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj3).replies);
                                        return Operation$State.compareValues(date, threadItem2 != null ? threadItem2.date : null);
                                    case 1:
                                        String str = ((ThreadItem) obj2).html;
                                        StringUtil stringUtil = StringUtil.INSTANCE;
                                        if (str == null) {
                                            str = "";
                                        }
                                        String obj4 = StringUtil.fromHtml(StringUtil.removeStyleTags(str)).toString();
                                        String str2 = ((ThreadItem) obj3).html;
                                        return Operation$State.compareValues(obj4, StringUtil.fromHtml(StringUtil.removeStyleTags(str2 != null ? str2 : "")).toString());
                                    case 2:
                                        ThreadItem threadItem3 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj2).replies);
                                        Date date2 = threadItem3 != null ? threadItem3.date : null;
                                        ThreadItem threadItem4 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj3).replies);
                                        return Operation$State.compareValues(date2, threadItem4 != null ? threadItem4.date : null);
                                    case 3:
                                        ThreadItem threadItem5 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj3).replies);
                                        Date date3 = threadItem5 != null ? threadItem5.date : null;
                                        ThreadItem threadItem6 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj2).replies);
                                        return Operation$State.compareValues(date3, threadItem6 != null ? threadItem6.date : null);
                                    case 4:
                                        String str3 = ((ThreadItem) obj3).html;
                                        StringUtil stringUtil2 = StringUtil.INSTANCE;
                                        if (str3 == null) {
                                            str3 = "";
                                        }
                                        String obj5 = StringUtil.fromHtml(StringUtil.removeStyleTags(str3)).toString();
                                        String str4 = ((ThreadItem) obj2).html;
                                        return Operation$State.compareValues(obj5, StringUtil.fromHtml(StringUtil.removeStyleTags(str4 != null ? str4 : "")).toString());
                                    default:
                                        ThreadItem threadItem7 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj3).replies);
                                        Date date4 = threadItem7 != null ? threadItem7.date : null;
                                        ThreadItem threadItem8 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj2).replies);
                                        return Operation$State.compareValues(date4, threadItem8 != null ? threadItem8.date : null);
                                }
                            }
                        });
                    }
                } else if (arrayList.size() > 1) {
                    CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator() { // from class: org.wikipedia.talk.TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1
                        @Override // java.util.Comparator
                        public final int compare(Object obj2, Object obj3) {
                            switch (i6) {
                                case 0:
                                    ThreadItem threadItem = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj2).replies);
                                    Date date = threadItem != null ? threadItem.date : null;
                                    ThreadItem threadItem2 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj3).replies);
                                    return Operation$State.compareValues(date, threadItem2 != null ? threadItem2.date : null);
                                case 1:
                                    String str = ((ThreadItem) obj2).html;
                                    StringUtil stringUtil = StringUtil.INSTANCE;
                                    if (str == null) {
                                        str = "";
                                    }
                                    String obj4 = StringUtil.fromHtml(StringUtil.removeStyleTags(str)).toString();
                                    String str2 = ((ThreadItem) obj3).html;
                                    return Operation$State.compareValues(obj4, StringUtil.fromHtml(StringUtil.removeStyleTags(str2 != null ? str2 : "")).toString());
                                case 2:
                                    ThreadItem threadItem3 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj2).replies);
                                    Date date2 = threadItem3 != null ? threadItem3.date : null;
                                    ThreadItem threadItem4 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj3).replies);
                                    return Operation$State.compareValues(date2, threadItem4 != null ? threadItem4.date : null);
                                case 3:
                                    ThreadItem threadItem5 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj3).replies);
                                    Date date3 = threadItem5 != null ? threadItem5.date : null;
                                    ThreadItem threadItem6 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj2).replies);
                                    return Operation$State.compareValues(date3, threadItem6 != null ? threadItem6.date : null);
                                case 4:
                                    String str3 = ((ThreadItem) obj3).html;
                                    StringUtil stringUtil2 = StringUtil.INSTANCE;
                                    if (str3 == null) {
                                        str3 = "";
                                    }
                                    String obj5 = StringUtil.fromHtml(StringUtil.removeStyleTags(str3)).toString();
                                    String str4 = ((ThreadItem) obj2).html;
                                    return Operation$State.compareValues(obj5, StringUtil.fromHtml(StringUtil.removeStyleTags(str4 != null ? str4 : "")).toString());
                                default:
                                    ThreadItem threadItem7 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj3).replies);
                                    Date date4 = threadItem7 != null ? threadItem7.date : null;
                                    ThreadItem threadItem8 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj2).replies);
                                    return Operation$State.compareValues(date4, threadItem8 != null ? threadItem8.date : null);
                            }
                        }
                    });
                }
            } else if (arrayList.size() > 1) {
                CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator() { // from class: org.wikipedia.talk.TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1
                    @Override // java.util.Comparator
                    public final int compare(Object obj2, Object obj3) {
                        switch (i3) {
                            case 0:
                                ThreadItem threadItem = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj2).replies);
                                Date date = threadItem != null ? threadItem.date : null;
                                ThreadItem threadItem2 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj3).replies);
                                return Operation$State.compareValues(date, threadItem2 != null ? threadItem2.date : null);
                            case 1:
                                String str = ((ThreadItem) obj2).html;
                                StringUtil stringUtil = StringUtil.INSTANCE;
                                if (str == null) {
                                    str = "";
                                }
                                String obj4 = StringUtil.fromHtml(StringUtil.removeStyleTags(str)).toString();
                                String str2 = ((ThreadItem) obj3).html;
                                return Operation$State.compareValues(obj4, StringUtil.fromHtml(StringUtil.removeStyleTags(str2 != null ? str2 : "")).toString());
                            case 2:
                                ThreadItem threadItem3 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj2).replies);
                                Date date2 = threadItem3 != null ? threadItem3.date : null;
                                ThreadItem threadItem4 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj3).replies);
                                return Operation$State.compareValues(date2, threadItem4 != null ? threadItem4.date : null);
                            case 3:
                                ThreadItem threadItem5 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj3).replies);
                                Date date3 = threadItem5 != null ? threadItem5.date : null;
                                ThreadItem threadItem6 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj2).replies);
                                return Operation$State.compareValues(date3, threadItem6 != null ? threadItem6.date : null);
                            case 4:
                                String str3 = ((ThreadItem) obj3).html;
                                StringUtil stringUtil2 = StringUtil.INSTANCE;
                                if (str3 == null) {
                                    str3 = "";
                                }
                                String obj5 = StringUtil.fromHtml(StringUtil.removeStyleTags(str3)).toString();
                                String str4 = ((ThreadItem) obj2).html;
                                return Operation$State.compareValues(obj5, StringUtil.fromHtml(StringUtil.removeStyleTags(str4 != null ? str4 : "")).toString());
                            default:
                                ThreadItem threadItem7 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj3).replies);
                                Date date4 = threadItem7 != null ? threadItem7.date : null;
                                ThreadItem threadItem8 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj2).replies);
                                return Operation$State.compareValues(date4, threadItem8 != null ? threadItem8.date : null);
                        }
                    }
                });
            }
        } else if (arrayList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator() { // from class: org.wikipedia.talk.TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(Object obj2, Object obj3) {
                    switch (i2) {
                        case 0:
                            ThreadItem threadItem = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj2).replies);
                            Date date = threadItem != null ? threadItem.date : null;
                            ThreadItem threadItem2 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj3).replies);
                            return Operation$State.compareValues(date, threadItem2 != null ? threadItem2.date : null);
                        case 1:
                            String str = ((ThreadItem) obj2).html;
                            StringUtil stringUtil = StringUtil.INSTANCE;
                            if (str == null) {
                                str = "";
                            }
                            String obj4 = StringUtil.fromHtml(StringUtil.removeStyleTags(str)).toString();
                            String str2 = ((ThreadItem) obj3).html;
                            return Operation$State.compareValues(obj4, StringUtil.fromHtml(StringUtil.removeStyleTags(str2 != null ? str2 : "")).toString());
                        case 2:
                            ThreadItem threadItem3 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj2).replies);
                            Date date2 = threadItem3 != null ? threadItem3.date : null;
                            ThreadItem threadItem4 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj3).replies);
                            return Operation$State.compareValues(date2, threadItem4 != null ? threadItem4.date : null);
                        case 3:
                            ThreadItem threadItem5 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj3).replies);
                            Date date3 = threadItem5 != null ? threadItem5.date : null;
                            ThreadItem threadItem6 = (ThreadItem) CollectionsKt.firstOrNull(((ThreadItem) obj2).replies);
                            return Operation$State.compareValues(date3, threadItem6 != null ? threadItem6.date : null);
                        case 4:
                            String str3 = ((ThreadItem) obj3).html;
                            StringUtil stringUtil2 = StringUtil.INSTANCE;
                            if (str3 == null) {
                                str3 = "";
                            }
                            String obj5 = StringUtil.fromHtml(StringUtil.removeStyleTags(str3)).toString();
                            String str4 = ((ThreadItem) obj2).html;
                            return Operation$State.compareValues(obj5, StringUtil.fromHtml(StringUtil.removeStyleTags(str4 != null ? str4 : "")).toString());
                        default:
                            ThreadItem threadItem7 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj3).replies);
                            Date date4 = threadItem7 != null ? threadItem7.date : null;
                            ThreadItem threadItem8 = (ThreadItem) CollectionsKt.lastOrNull(((ThreadItem) obj2).replies);
                            return Operation$State.compareValues(date4, threadItem8 != null ? threadItem8.date : null);
                    }
                }
            });
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            ThreadItem threadItem = (ThreadItem) obj;
            if (threadItem.othercontent.length() > 0) {
                int i8 = TalkTopicActivity.$r8$clinit;
                if (UriUtil.isHeaderTemplate(threadItem)) {
                    break;
                }
            }
        }
        ThreadItem threadItem2 = (ThreadItem) obj;
        if (threadItem2 != null) {
            arrayList.remove(threadItem2);
            arrayList.add(0, threadItem2);
        }
        Collection.EL.removeIf(arrayList, new Element$$ExternalSyntheticLambda1(i4, new TalkTopicsViewModel$$ExternalSyntheticLambda0(i3)));
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            ThreadItem threadItem3 = (ThreadItem) next;
            String str = threadItem3.plainText;
            String str2 = this.currentSearchQuery;
            if (str2 == null) {
                str2 = "";
            }
            if (!StringsKt.contains(str, str2, true)) {
                String str3 = threadItem3.plainOtherContent;
                String str4 = this.currentSearchQuery;
                if (str4 == null) {
                    str4 = "";
                }
                if (!StringsKt.contains(str3, str4, true)) {
                    SequenceBuilderIterator it3 = UnsignedKt.iterator((Function2) threadItem3.getAllReplies().reader);
                    while (it3.hasNext()) {
                        ThreadItem threadItem4 = (ThreadItem) it3.next();
                        String str5 = threadItem4.plainText;
                        String str6 = this.currentSearchQuery;
                        if (str6 == null) {
                            str6 = "";
                        }
                        if (!StringsKt.contains(str5, str6, true)) {
                            String str7 = threadItem4.author;
                            String str8 = this.currentSearchQuery;
                            if (str8 == null) {
                                str8 = "";
                            }
                            if (StringsKt.contains(str7, str8, true)) {
                            }
                        }
                    }
                }
            }
            arrayList2.add(next);
        }
        this.sortedThreadItems = arrayList2;
    }

    public final boolean topicSeen(ThreadItem threadItem) {
        String threadSha$1 = threadSha$1(threadItem);
        if (threadSha$1 == null) {
            return false;
        }
        LinkedHashSet linkedHashSet = this.seenThreadItemsSha;
        if (linkedHashSet != null && linkedHashSet.isEmpty()) {
            return false;
        }
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual((String) it.next(), threadSha$1)) {
                return true;
            }
        }
        return false;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Factory implements ViewModelProvider$Factory {
        public final /* synthetic */ int $r8$classId;
        public final Object pageTitle;

        public /* synthetic */ Factory(int i, Object obj) {
            this.$r8$classId = i;
            this.pageTitle = obj;
        }

        @Override // androidx.lifecycle.ViewModelProvider$Factory
        public final ViewModel create(Class cls, MutableCreationExtras mutableCreationExtras) {
            ViewModelInitializer viewModelInitializer;
            Function1 function1;
            switch (this.$r8$classId) {
                case 0:
                    return create(cls);
                default:
                    KClass orCreateKotlinClass = Reflection.factory.getOrCreateKotlinClass(cls);
                    ViewModelInitializer[] viewModelInitializerArr = (ViewModelInitializer[]) this.pageTitle;
                    ViewModelInitializer[] viewModelInitializerArr2 = (ViewModelInitializer[]) Arrays.copyOf(viewModelInitializerArr, viewModelInitializerArr.length);
                    int length = viewModelInitializerArr2.length;
                    int i = 0;
                    while (true) {
                        if (i < length) {
                            viewModelInitializer = viewModelInitializerArr2[i];
                            if (!Intrinsics.areEqual(viewModelInitializer.clazz, orCreateKotlinClass)) {
                                i++;
                            }
                        } else {
                            viewModelInitializer = null;
                        }
                    }
                    ViewModel viewModel = (viewModelInitializer == null || (function1 = viewModelInitializer.initializer) == null) ? null : (ViewModel) function1.invoke(mutableCreationExtras);
                    if (viewModel != null) {
                        return viewModel;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Modifier.CC.m("No initializer set for given class ", orCreateKotlinClass.getQualifiedName()));
                    return null;
            }
        }

        @Override // androidx.lifecycle.ViewModelProvider$Factory
        public final ViewModel create(Class cls) {
            switch (this.$r8$classId) {
                case 0:
                    return new TalkTopicsViewModel(PageTitle.copy$default((PageTitle) this.pageTitle));
                default:
                    throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
            }
        }

        @Override // androidx.lifecycle.ViewModelProvider$Factory
        public final ViewModel create(KClass kClass, MutableCreationExtras mutableCreationExtras) {
            switch (this.$r8$classId) {
            }
            return ViewSizeResolver$CC.$default$create(this, kClass, mutableCreationExtras);
        }
    }
}
