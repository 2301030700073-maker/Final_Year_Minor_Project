package app.k9mail.feature.widget.message.list;

import androidx.compose.ui.semantics.SemanticsSortKt$special$$inlined$thenBy$1;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.viewpager.widget.ViewPager;
import com.fsck.k9.helper.MessageHelper;
import com.fsck.k9.mailstore.DefaultMessageListRepository;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.io.ByteStreamsKt;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.preference.display.visualSettings.message.list.DefaultMessageListPreferencesManager;
import net.thunderbird.feature.search.legacy.SearchConditionTreeNode;
import org.jsoup.internal.SoftPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListLoader {
    public final DefaultLegacyAccountManager accountManager;
    public final MessageHelper messageHelper;
    public final DefaultMessageListPreferencesManager messageListPreferencesManager;
    public final DefaultMessageListRepository messageListRepository;
    public final DefaultOutboxFolderManager outboxFolderManager;

    public MessageListLoader(DefaultLegacyAccountManager defaultLegacyAccountManager, DefaultMessageListRepository defaultMessageListRepository, MessageHelper messageHelper, DefaultMessageListPreferencesManager defaultMessageListPreferencesManager, DefaultOutboxFolderManager defaultOutboxFolderManager) {
        this.accountManager = defaultLegacyAccountManager;
        this.messageListRepository = defaultMessageListRepository;
        this.messageHelper = messageHelper;
        this.messageListPreferencesManager = defaultMessageListPreferencesManager;
        this.outboxFolderManager = defaultOutboxFolderManager;
    }

    public static Pair buildSelection(MessageListConfig messageListConfig) {
        SearchConditionTreeNode conditions = messageListConfig.search.getConditions();
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        ByteStreamsKt.buildWhereClause(conditions, sb, arrayList);
        SoftPool softPool = new SoftPool(1, sb.toString(), arrayList);
        return new Pair((String) softPool.threadLocalStack, ((ArrayList) softPool.initializer).toArray(new String[0]));
    }

    public final List getMessageListInfo(MessageListConfig messageListConfig) {
        List messages;
        ArrayList<LegacyAccount> legacyAccountsFromLocalSearch = SchemaInfoUtilKt.getLegacyAccountsFromLocalSearch(messageListConfig.search, this.accountManager);
        ArrayList arrayList = new ArrayList();
        for (LegacyAccount legacyAccount : legacyAccountsFromLocalSearch) {
            String str = legacyAccount.uuid;
            String str2 = "date DESC, id DESC";
            LocalStore.AnonymousClass7 anonymousClass7 = new LocalStore.AnonymousClass7(this.messageHelper, legacyAccount, this.messageListPreferencesManager, this.outboxFolderManager);
            boolean z = messageListConfig.showingThreadedList;
            DefaultMessageListRepository defaultMessageListRepository = this.messageListRepository;
            if (z) {
                Pair buildSelection = buildSelection(messageListConfig);
                messages = defaultMessageListRepository.getThreadedMessages(str, (String) buildSelection.first, (String[]) buildSelection.second, str2, anonymousClass7);
            } else {
                Pair buildSelection2 = buildSelection(messageListConfig);
                messages = defaultMessageListRepository.getMessages(str, (String) buildSelection2.first, (String[]) buildSelection2.second, str2, anonymousClass7);
            }
            CollectionsKt.addAll(messages, arrayList);
        }
        return CollectionsKt.sortedWith(arrayList, new SemanticsSortKt$special$$inlined$thenBy$1(new ViewPager.AnonymousClass1(13), 1));
    }
}
