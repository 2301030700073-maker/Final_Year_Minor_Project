package com.fsck.k9;

import android.content.ContentValues;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import app.k9mail.legacy.mailstore.MessageStoreManager$$ExternalSyntheticLambda0;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LocalStoreProvider;
import com.fsck.k9.preferences.K9StorageEditor;
import com.fsck.k9.preferences.K9StoragePersister;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.app.common.account.DefaultAccountDefaultsProvider;
import net.thunderbird.core.android.account.AccountDefaultsProvider;
import net.thunderbird.core.android.account.AccountsChangeListener;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.storage.InMemoryStorage;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.storage.legacy.LegacyAccountStorageHandler;
import org.koin.java.KoinJavaComponent$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Preferences implements LegacyAccountDtoManager {
    public final AccountDefaultsProvider accountDefaultsProvider;
    public final Object accountLock;
    public final CopyOnWriteArraySet accountRemovedListeners;
    public final CopyOnWriteArraySet accountsChangeListeners;
    public ArrayList accountsInOrder;
    public LinkedHashMap accountsMap;
    public final CoroutineDispatcher backgroundDispatcher;
    public InMemoryStorage currentStorage;
    public final Lazy generalSettingsManager$delegate;
    public final LegacyAccountStorageHandler legacyAccountStorageHandler;
    public final LocalStoreProvider localStoreProvider;
    public LegacyAccountDto newAccount;
    public final Object storageLock;
    public final K9StoragePersister storagePersister;

    public Preferences(K9StoragePersister k9StoragePersister, LocalStoreProvider localStoreProvider, LegacyAccountStorageHandler legacyAccountStorageHandler, AccountDefaultsProvider accountDefaultsProvider) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.storagePersister = k9StoragePersister;
        this.localStoreProvider = localStoreProvider;
        this.legacyAccountStorageHandler = legacyAccountStorageHandler;
        this.backgroundDispatcher = defaultIoScheduler;
        this.accountDefaultsProvider = accountDefaultsProvider;
        this.generalSettingsManager$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new KoinJavaComponent$$ExternalSyntheticLambda0(0));
        this.accountLock = new Object();
        this.storageLock = new Object();
        this.accountsInOrder = new ArrayList();
        this.accountsChangeListeners = new CopyOnWriteArraySet();
        this.accountRemovedListeners = new CopyOnWriteArraySet();
    }

    public static final ArrayList access$getCompleteAccounts(Preferences preferences) {
        List accounts = preferences.getAccounts();
        ArrayList arrayList = new ArrayList();
        for (Object obj : accounts) {
            if (((LegacyAccountDto) obj).isFinishedSetup()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static void moveToPosition(LegacyAccountDto legacyAccountDto, InMemoryStorage inMemoryStorage, K9StorageEditor k9StorageEditor, int i) {
        String str = legacyAccountDto.uuid;
        String stringOrNull = inMemoryStorage.getStringOrNull("accountUuids");
        if (stringOrNull == null) {
            stringOrNull = "";
        }
        List split$default = StringsKt.split$default(stringOrNull, new String[]{","}, 6);
        ArrayList arrayList = new ArrayList();
        for (Object obj : split$default) {
            if (((String) obj).length() > 0) {
                arrayList.add(obj);
            }
        }
        int indexOf = arrayList.indexOf(str);
        if (indexOf == -1 || indexOf == i) {
            return;
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        arrayList2.remove(indexOf);
        arrayList2.add(i, str);
        k9StorageEditor.putString("accountUuids", CollectionsKt.joinToString$default(arrayList2, ",", null, null, null, 62));
    }

    public final K9StorageEditor createStorageEditor() {
        OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(19, this);
        K9StoragePersister k9StoragePersister = this.storagePersister;
        Logger logger = k9StoragePersister.logger;
        K9StorageEditor k9StorageEditor = new K9StorageEditor();
        k9StorageEditor.changes = new HashMap();
        k9StorageEditor.removals = new ArrayList();
        k9StorageEditor.storageUpdater = onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
        k9StorageEditor.storagePersister = k9StoragePersister;
        k9StorageEditor.logger = logger;
        return k9StorageEditor;
    }

    public final void deleteAccount(LegacyAccountDto legacyAccountDto) {
        synchronized (this.accountLock) {
            try {
                LinkedHashMap linkedHashMap = this.accountsMap;
                if (linkedHashMap != null) {
                }
                this.accountsInOrder.remove(legacyAccountDto);
                K9StorageEditor createStorageEditor = createStorageEditor();
                this.legacyAccountStorageHandler.delete(legacyAccountDto, getStorage(), createStorageEditor);
                createStorageEditor.commit();
                if (legacyAccountDto == this.newAccount) {
                    this.newAccount = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it = this.accountRemovedListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            MessageStoreManager$$ExternalSyntheticLambda0 messageStoreManager$$ExternalSyntheticLambda0 = (MessageStoreManager$$ExternalSyntheticLambda0) it.next();
            AccountId accountId = legacyAccountDto.id;
            MessageStoreManager messageStoreManager = messageStoreManager$$ExternalSyntheticLambda0.f$0;
            accountId.getClass();
            messageStoreManager.messageStores.remove(accountId);
        }
        notifyAccountsChangeListeners();
    }

    public final int generateAccountNumber() {
        int intValue;
        List accounts = getAccounts();
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(accounts, 10));
        Iterator it = accounts.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((LegacyAccountDto) it.next()).getAccountNumber()));
        }
        Iterator it2 = CollectionsKt.sorted(arrayList).iterator();
        int i = -1;
        while (it2.hasNext() && (intValue = ((Number) it2.next()).intValue()) <= i + 1) {
            i = intValue;
        }
        return i + 1;
    }

    public final LegacyAccountDto getAccount(String str) {
        LegacyAccountDto legacyAccountDto;
        str.getClass();
        synchronized (this.accountLock) {
            try {
                if (this.accountsMap == null) {
                    loadAccounts();
                }
                LinkedHashMap linkedHashMap = this.accountsMap;
                linkedHashMap.getClass();
                legacyAccountDto = (LegacyAccountDto) linkedHashMap.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return legacyAccountDto;
    }

    public final List getAccounts() {
        List list;
        synchronized (this.accountLock) {
            try {
                if (this.accountsMap == null) {
                    loadAccounts();
                }
                list = CollectionsKt.toList(this.accountsInOrder);
            } catch (Throwable th) {
                throw th;
            }
        }
        return list;
    }

    public final Flow getAccountsFlow() {
        return FlowKt.flowOn(FlowKt.buffer$default(FlowKt.callbackFlow(new Preferences$getAccountsFlow$1(this, null, 0)), -1), this.backgroundDispatcher);
    }

    public final InMemoryStorage getStorage() {
        InMemoryStorage inMemoryStorage;
        synchronized (this.storageLock) {
            inMemoryStorage = this.currentStorage;
            if (inMemoryStorage == null) {
                inMemoryStorage = this.storagePersister.loadValues();
                this.currentStorage = inMemoryStorage;
            }
        }
        return inMemoryStorage;
    }

    public final void loadAccounts() {
        synchronized (this.accountLock) {
            try {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                ArrayList arrayList = new ArrayList();
                String stringOrNull = getStorage().getStringOrNull("accountUuids");
                if (stringOrNull != null && stringOrNull.length() != 0) {
                    for (String str : StringsKt.split$default(stringOrNull, new String[]{","}, 6)) {
                        LinkedHashMap linkedHashMap2 = this.accountsMap;
                        LegacyAccountDto legacyAccountDto = linkedHashMap2 != null ? (LegacyAccountDto) linkedHashMap2.get(str) : null;
                        if (legacyAccountDto == null) {
                            legacyAccountDto = new LegacyAccountDto(str, new Preferences$$ExternalSyntheticLambda1(this, 0));
                        }
                        LegacyAccountStorageHandler legacyAccountStorageHandler = this.legacyAccountStorageHandler;
                        InMemoryStorage storage = getStorage();
                        legacyAccountStorageHandler.getClass();
                        legacyAccountStorageHandler.load(legacyAccountDto, storage);
                        linkedHashMap.put(str, legacyAccountDto);
                        arrayList.add(legacyAccountDto);
                        ((DefaultAccountDefaultsProvider) this.accountDefaultsProvider).applyOverwrites(legacyAccountDto, getStorage());
                    }
                }
                LegacyAccountDto legacyAccountDto2 = this.newAccount;
                if (legacyAccountDto2 != null) {
                    if (legacyAccountDto2.getAccountNumber() == -1) {
                        legacyAccountDto2 = null;
                    }
                    if (legacyAccountDto2 != null) {
                        linkedHashMap.put(legacyAccountDto2.uuid, legacyAccountDto2);
                        if (!arrayList.contains(legacyAccountDto2)) {
                            arrayList.add(legacyAccountDto2);
                        }
                        this.newAccount = null;
                    }
                }
                this.accountsMap = linkedHashMap;
                this.accountsInOrder = arrayList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void notifyAccountsChangeListeners() {
        Iterator it = this.accountsChangeListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((AccountsChangeListener) it.next()).onAccountsChanged();
        }
    }

    public final void saveAccount(LegacyAccountDto legacyAccountDto) {
        legacyAccountDto.getClass();
        if (legacyAccountDto.getAccountNumber() == -1) {
            legacyAccountDto.setAccountNumber(generateAccountNumber());
        }
        if (legacyAccountDto.isChangedVisibleLimits()) {
            int i = 0;
            try {
                LocalStore localStoreProvider = this.localStoreProvider.getInstance(legacyAccountDto);
                int displayCount = legacyAccountDto.getDisplayCount();
                ContentValues contentValues = new ContentValues();
                contentValues.put("visible_limit", Integer.toString(displayCount));
                contentValues.put("more_messages", "unknown");
                localStoreProvider.database.execute(false, new LocalStore.AnonymousClass2(contentValues, i));
            } catch (MessagingException e) {
                Log.e(e, "Failed to load LocalStore!", new Object[0]);
            }
        }
        legacyAccountDto.resetChangeMarkers();
        synchronized (this.accountLock) {
            K9StorageEditor createStorageEditor = createStorageEditor();
            this.legacyAccountStorageHandler.save(legacyAccountDto, getStorage(), createStorageEditor);
            createStorageEditor.commit();
            loadAccounts();
        }
        notifyAccountsChangeListeners();
    }
}
