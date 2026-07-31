package org.wikipedia.talk;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.RealImageLoader$execute$result$1;
import java.util.ArrayList;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import okhttp3.Cookie;
import org.wikipedia.database.AppDatabase;
import org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.LongPressMenu$show$1$1;
import org.wikipedia.talk.db.TalkTemplate;
import org.wikipedia.util.SingleLiveData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkReplyViewModel extends ViewModel {
    public boolean doesPageExist;
    public final long fromRevisionId;
    public final boolean isExampleTemplate;
    public final boolean isFromDiff;
    public final boolean isNewTopic;
    public final MutableLiveData pageExistsData;
    public final PageTitle pageTitle;
    public final SingleLiveData postReplyData;
    public final SingleLiveData saveTemplateData;
    public final TalkTemplate selectedTemplate;
    public boolean talkTemplateSaved;
    public final ArrayList talkTemplatesList;
    public final AvPlayer talkTemplatesRepository;
    public boolean tempAccountsEnabled;
    public final boolean templateManagementMode;
    public final long toRevisionId;
    public final ThreadItem topic;

    public TalkReplyViewModel(SavedStateHandle savedStateHandle) {
        Job.Key key = Job.Key.$$INSTANCE$1;
        savedStateHandle.getClass();
        AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
        this.talkTemplatesRepository = new AvPlayer(Cookie.Companion.getInstance().talkTemplateDao());
        this.talkTemplatesList = new ArrayList();
        Object obj = savedStateHandle.get("title");
        obj.getClass();
        this.pageTitle = (PageTitle) obj;
        ThreadItem threadItem = (ThreadItem) savedStateHandle.get("topic");
        this.topic = threadItem;
        Boolean bool = (Boolean) savedStateHandle.get("fromDiff");
        int i = 0;
        boolean booleanValue = bool != null ? bool.booleanValue() : false;
        this.isFromDiff = booleanValue;
        this.selectedTemplate = (TalkTemplate) savedStateHandle.get("selectedTemplate");
        Boolean bool2 = (Boolean) savedStateHandle.get("exampleTemplate");
        this.isExampleTemplate = bool2 != null ? bool2.booleanValue() : false;
        Boolean bool3 = (Boolean) savedStateHandle.get("templateManagement");
        this.templateManagementMode = bool3 != null ? bool3.booleanValue() : false;
        Long l = (Long) savedStateHandle.get("fromRevisionId");
        this.fromRevisionId = l != null ? l.longValue() : -1L;
        Long l2 = (Long) savedStateHandle.get("toRevisionId");
        this.toRevisionId = l2 != null ? l2.longValue() : -1L;
        this.isNewTopic = threadItem == null && !booleanValue;
        this.postReplyData = new SingleLiveData();
        this.saveTemplateData = new SingleLiveData();
        this.pageExistsData = new MutableLiveData();
        this.tempAccountsEnabled = true;
        Continuation continuation = null;
        if (booleanValue) {
            AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(key, 18), null, new TalkReplyViewModel$loadTemplates$2(i, this, continuation), 2);
        }
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(key, 17), null, new SyntaxHighlighter.AnonymousClass2(16, this, continuation), 2);
    }

    public final void saveTemplate(String str, String str2) {
        str.getClass();
        str2.getClass();
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new TalkReplyViewModel$postReply$$inlined$CoroutineExceptionHandler$1(this, 1), null, new LongPressMenu$show$1$1(this, str, str2, (Continuation) null, 10), 2);
    }

    public final void updateTemplate(String str, String str2, String str3, TalkTemplate talkTemplate) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new TalkReplyViewModel$postReply$$inlined$CoroutineExceptionHandler$1(this, 2), null, new RealImageLoader$execute$result$1(talkTemplate, this, str, str2, str3, null, 20), 2);
    }
}
