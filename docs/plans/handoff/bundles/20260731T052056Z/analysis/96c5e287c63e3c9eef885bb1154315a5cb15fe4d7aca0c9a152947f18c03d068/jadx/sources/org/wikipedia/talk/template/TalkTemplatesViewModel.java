package org.wikipedia.talk.template;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import java.util.ArrayList;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.Cookie;
import org.jsoup.nodes.NodeUtils;
import org.wikipedia.R;
import org.wikipedia.database.AppDatabase;
import org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.page.PageTitle;
import org.wikipedia.talk.TalkReplyViewModel$loadTemplates$2;
import org.wikipedia.talk.db.TalkTemplate;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkTemplatesViewModel extends ViewModel {
    public final StateFlowImpl _actionState;
    public final StateFlowImpl _uiState;
    public final TalkTemplatesViewModel$special$$inlined$CoroutineExceptionHandler$1 actionExceptionHandler;
    public final ReadonlyStateFlow actionState;
    public final TalkTemplatesViewModel$special$$inlined$CoroutineExceptionHandler$1 exceptionHandler;
    public final long fromRevisionId;
    public final PageTitle pageTitle;
    public final ArrayList savedTemplatesList;
    public final ArrayList talkTemplatesList;
    public final AvPlayer talkTemplatesRepository;
    public final boolean templateManagementMode;
    public final long toRevisionId;
    public final ReadonlyStateFlow uiState;
    public static final List savedMessagesTitleList = Room.listOf((Object[]) new String[]{"", "vandalism", "edit_tests", "neutral", "translation", "conflict_interest", "final", "copyright", "leave_summary", "no_censor", "improvement"});
    public static final List savedMessagesSubjectList = Room.listOf((Object[]) new Integer[]{-1, Integer.valueOf(R.string.patroller_saved_message_title_vandalism), Integer.valueOf(R.string.patroller_saved_message_title_editing_tests), Integer.valueOf(R.string.patroller_saved_message_title_npov), Integer.valueOf(R.string.patroller_saved_message_title_auto_trans), Integer.valueOf(R.string.patroller_saved_message_title_coi_rem), Integer.valueOf(R.string.patroller_saved_message_title_final_warning), Integer.valueOf(R.string.patroller_saved_message_title_copy_vio), Integer.valueOf(R.string.patroller_saved_message_title_edit_summary_reminder), Integer.valueOf(R.string.patroller_saved_message_title_do_not_censor), Integer.valueOf(R.string.patroller_saved_message_title_art_imp)});
    public static final List savedMessagesBodyList = Room.listOf((Object[]) new Integer[]{Integer.valueOf(R.string.talk_warn_saved_messages_usage_instruction), Integer.valueOf(R.string.patroller_saved_message_body_vandalism), Integer.valueOf(R.string.patroller_saved_message_body_editing_tests), Integer.valueOf(R.string.patroller_saved_message_body_npov), Integer.valueOf(R.string.patroller_saved_message_body_auto_trans), Integer.valueOf(R.string.patroller_saved_message_body_coi_rem), Integer.valueOf(R.string.patroller_saved_message_body_final_warning), Integer.valueOf(R.string.patroller_saved_message_body_copy_vio), Integer.valueOf(R.string.patroller_saved_message_body_edit_summary), Integer.valueOf(R.string.patroller_saved_message_body_do_not_censor), Integer.valueOf(R.string.patroller_saved_message_body_art_imp)});

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class ActionState {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Added extends ActionState {
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Deleted extends ActionState {
            public final int size;

            public Deleted(int i) {
                this.size = i;
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Error extends ActionState {
            public final Throwable throwable;

            public Error(Throwable th) {
                th.getClass();
                this.throwable = th;
            }
        }
    }

    public TalkTemplatesViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
        this.talkTemplatesRepository = new AvPlayer(Cookie.Companion.getInstance().talkTemplateDao());
        int i = 0;
        this.exceptionHandler = new TalkTemplatesViewModel$special$$inlined$CoroutineExceptionHandler$1(this, 0);
        this.actionExceptionHandler = new TalkTemplatesViewModel$special$$inlined$CoroutineExceptionHandler$1(this, 1);
        this.talkTemplatesList = new ArrayList();
        this.savedTemplatesList = new ArrayList();
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiState = m786m;
        this.uiState = new ReadonlyStateFlow(m786m);
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(new ActionState());
        this._actionState = MutableStateFlow;
        this.actionState = new ReadonlyStateFlow(MutableStateFlow);
        Boolean bool = (Boolean) savedStateHandle.get("templateManagement");
        this.templateManagementMode = bool != null ? bool.booleanValue() : false;
        Object obj = savedStateHandle.get("title");
        obj.getClass();
        PageTitle pageTitle = (PageTitle) obj;
        this.pageTitle = pageTitle;
        Long l = (Long) savedStateHandle.get("fromRevisionId");
        this.fromRevisionId = l != null ? l.longValue() : 0L;
        Long l2 = (Long) savedStateHandle.get("toRevisionId");
        this.toRevisionId = l2 != null ? l2.longValue() : 0L;
        loadTalkTemplates();
        String str = pageTitle.wikiSite.languageCode;
        List list = savedMessagesSubjectList;
        int size = list.size();
        while (i < size) {
            this.savedTemplatesList.add(new TalkTemplate(0, 0, -1, (String) savedMessagesTitleList.get(i), i == 0 ? "" : NodeUtils.getString(((Number) list.get(i)).intValue(), str), NodeUtils.getString(((Number) savedMessagesBodyList.get(i)).intValue(), str)));
            i++;
        }
    }

    public final void loadTalkTemplates() {
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler, null, new TalkReplyViewModel$loadTemplates$2(9, this, (Continuation) null), 2);
    }
}
