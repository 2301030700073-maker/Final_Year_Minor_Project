package com.fsck.k9.ui.messagelist;

import androidx.room.util.SchemaInfoUtilKt;
import com.fsck.k9.mailstore.DefaultMessageListRepository;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListLiveData$loadMessageListAsync$1$messageList$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageListLiveData this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MessageListLiveData$loadMessageListAsync$1$messageList$1(MessageListLiveData messageListLiveData, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = messageListLiveData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        MessageListLiveData messageListLiveData = this.this$0;
        switch (i) {
            case 0:
                return new MessageListLiveData$loadMessageListAsync$1$messageList$1(messageListLiveData, continuation, 0);
            default:
                return new MessageListLiveData$loadMessageListAsync$1$messageList$1(messageListLiveData, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                return ((MessageListLiveData$loadMessageListAsync$1$messageList$1) create(coroutineScope, continuation)).invokeSuspend(unit);
            default:
                ((MessageListLiveData$loadMessageListAsync$1$messageList$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                return unit;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        MessageListLiveData messageListLiveData = this.this$0;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                MessageListLoader messageListLoader = messageListLiveData.messageListLoader;
                MessageListConfig messageListConfig = messageListLiveData.config;
                messageListLoader.getClass();
                messageListConfig.getClass();
                try {
                    return messageListLoader.getMessageListInfo(messageListConfig);
                } catch (Exception e) {
                    Log.e(e, "Error while fetching message list", new Object[0]);
                    return new MessageListInfo(EmptyList.INSTANCE, false);
                }
            default:
                ResultKt.throwOnFailure(obj);
                LocalMessageSearch localMessageSearch = messageListLiveData.config.search;
                DefaultLegacyAccountManager defaultLegacyAccountManager = messageListLiveData.accountManager;
                defaultLegacyAccountManager.getClass();
                ArrayList legacyAccountsFromLocalSearch = SchemaInfoUtilKt.getLegacyAccountsFromLocalSearch(localMessageSearch, defaultLegacyAccountManager);
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(legacyAccountsFromLocalSearch, 10));
                Iterator it = legacyAccountsFromLocalSearch.iterator();
                while (it.hasNext()) {
                    arrayList.add(((LegacyAccount) it.next()).uuid);
                }
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    String str = (String) it2.next();
                    DefaultMessageListRepository defaultMessageListRepository = messageListLiveData.messageListRepository;
                    MessageListLiveData$$ExternalSyntheticLambda0 messageListLiveData$$ExternalSyntheticLambda0 = messageListLiveData.messageListChangedListener;
                    defaultMessageListRepository.getClass();
                    str.getClass();
                    messageListLiveData$$ExternalSyntheticLambda0.getClass();
                    defaultMessageListRepository.accountListeners.add(new Pair(str, messageListLiveData$$ExternalSyntheticLambda0));
                }
                return Unit.INSTANCE;
        }
    }
}
