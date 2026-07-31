package com.fsck.k9.mailstore;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import app.k9mail.legacy.mailstore.MessageListChangedListener;
import app.k9mail.legacy.mailstore.MessageMapper;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.storage.messages.CheckFolderOperations;
import com.fsck.k9.storage.messages.K9MessageStore;
import com.fsck.k9.storage.messages.K9MessageStoreFactoryKt;
import com.fsck.k9.storage.messages.RetrieveMessageListOperations$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.regex.Pattern;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultMessageListRepository {
    public final MessageStoreManager messageStoreManager;
    public final CopyOnWriteArraySet globalListeners = new CopyOnWriteArraySet();
    public final CopyOnWriteArraySet accountListeners = new CopyOnWriteArraySet();

    public DefaultMessageListRepository(MessageStoreManager messageStoreManager) {
        this.messageStoreManager = messageStoreManager;
    }

    public final List getMessages(String str, String str2, String[] strArr, String str3, MessageMapper messageMapper) {
        str.getClass();
        str2.getClass();
        strArr.getClass();
        ListenableMessageStore messageStore = this.messageStoreManager.getMessageStore(str);
        MessageListCache cache = MessageListCache.Companion.getCache(str);
        MessageMapper anonymousClass1 = cache.isEmpty() ? messageMapper : new LocalStore.AnonymousClass1(4, cache, messageMapper);
        str2.getClass();
        strArr.getClass();
        LocalStore.AnonymousClass1 anonymousClass12 = messageStore.messageStore;
        str2.getClass();
        strArr.getClass();
        K9MessageStore k9MessageStore = (K9MessageStore) anonymousClass12.val$folders;
        str2.getClass();
        strArr.getClass();
        CheckFolderOperations checkFolderOperations = k9MessageStore.retrieveMessageListOperations;
        checkFolderOperations.getClass();
        Object execute = checkFolderOperations.lockableDatabase.execute(false, new RetrieveMessageListOperations$$ExternalSyntheticLambda0(str2, str3, strArr, anonymousClass1, 0));
        execute.getClass();
        return (List) execute;
    }

    public final List getThreadedMessages(String str, String str2, String[] strArr, String str3, MessageMapper messageMapper) {
        str.getClass();
        str2.getClass();
        strArr.getClass();
        ListenableMessageStore messageStore = this.messageStoreManager.getMessageStore(str);
        MessageListCache cache = MessageListCache.Companion.getCache(str);
        MessageMapper anonymousClass1 = cache.isEmpty() ? messageMapper : new LocalStore.AnonymousClass1(4, cache, messageMapper);
        str2.getClass();
        strArr.getClass();
        LocalStore.AnonymousClass1 anonymousClass12 = messageStore.messageStore;
        str2.getClass();
        strArr.getClass();
        K9MessageStore k9MessageStore = (K9MessageStore) anonymousClass12.val$folders;
        str2.getClass();
        strArr.getClass();
        CheckFolderOperations checkFolderOperations = k9MessageStore.retrieveMessageListOperations;
        checkFolderOperations.getClass();
        String[] strArr2 = K9MessageStoreFactoryKt.AGGREGATED_MESSAGES_COLUMNS;
        String str4 = str3;
        for (int i = 0; i < 7; i++) {
            String str5 = strArr2[i];
            Pattern compile = Pattern.compile("(?<=^|[^\\.])\\b" + str5 + "\\b");
            compile.getClass();
            str4 = compile.matcher(str4).replaceAll(CameraDevices$CC.m("aggregated.", str5));
            str4.getClass();
        }
        Object execute = checkFolderOperations.lockableDatabase.execute(false, new RetrieveMessageListOperations$$ExternalSyntheticLambda0(str2, str4, strArr, anonymousClass1, 1));
        execute.getClass();
        return (List) execute;
    }

    public final void notifyMessageListChanged(String str) {
        str.getClass();
        Iterator it = this.globalListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((MessageListChangedListener) it.next()).onMessageListChanged();
        }
        Iterator it2 = this.accountListeners.iterator();
        it2.getClass();
        while (it2.hasNext()) {
            Pair pair = (Pair) it2.next();
            if (Intrinsics.areEqual(pair.first, str)) {
                ((MessageListChangedListener) pair.second).onMessageListChanged();
            }
        }
    }

    public final void removeListener(MessageListChangedListener messageListChangedListener) {
        messageListChangedListener.getClass();
        this.globalListeners.remove(messageListChangedListener);
        ArrayList arrayList = new ArrayList();
        CopyOnWriteArraySet copyOnWriteArraySet = this.accountListeners;
        for (Object obj : copyOnWriteArraySet) {
            if (Intrinsics.areEqual(((Pair) obj).second, messageListChangedListener)) {
                arrayList.add(obj);
            }
        }
        Set set = CollectionsKt.toSet(arrayList);
        if (set.isEmpty()) {
            return;
        }
        copyOnWriteArraySet.removeAll(set);
    }
}
