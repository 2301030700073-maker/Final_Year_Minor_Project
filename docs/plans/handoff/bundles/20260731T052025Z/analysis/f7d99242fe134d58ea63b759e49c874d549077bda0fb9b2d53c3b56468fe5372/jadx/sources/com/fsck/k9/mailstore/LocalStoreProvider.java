package com.fsck.k9.mailstore;

import android.content.Context;
import j$.util.concurrent.ConcurrentHashMap;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.feature.account.storage.legacy.mapper.DefaultLegacyAccountDataMapper;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalMessageUidPrefixProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalStoreProvider {
    public final ConcurrentHashMap localStores = new ConcurrentHashMap();
    public final ConcurrentHashMap accountLocks = new ConcurrentHashMap();

    public final LocalStore getInstance(LegacyAccountDto legacyAccountDto) {
        legacyAccountDto.getClass();
        return getInstanceById(legacyAccountDto.uuid, new LocalStoreProvider$$ExternalSyntheticLambda0(legacyAccountDto, (Context) CloseableKt.get$default(Context.class), (GeneralSettingsManager) CloseableKt.get$default(GeneralSettingsManager.class), (DefaultLocalMessageUidPrefixProvider) CloseableKt.get$default(DefaultLocalMessageUidPrefixProvider.class), 1));
    }

    public final LocalStore getInstanceById(String str, Function0 function0) {
        LocalStore localStore;
        Object putIfAbsent;
        ConcurrentHashMap concurrentHashMap = this.accountLocks;
        Object obj = concurrentHashMap.get(str);
        if (obj == null && (putIfAbsent = concurrentHashMap.putIfAbsent(str, (obj = new Object()))) != null) {
            obj = putIfAbsent;
        }
        synchronized (obj) {
            try {
                ConcurrentHashMap concurrentHashMap2 = this.localStores;
                Object obj2 = concurrentHashMap2.get(str);
                if (obj2 == null) {
                    LocalStore localStore2 = (LocalStore) function0.invoke();
                    Object putIfAbsent2 = concurrentHashMap2.putIfAbsent(str, localStore2);
                    obj2 = putIfAbsent2 == null ? localStore2 : putIfAbsent2;
                }
                obj2.getClass();
                localStore = (LocalStore) obj2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return localStore;
    }

    public final LocalStore getInstanceByLegacyAccount(LegacyAccount legacyAccount) {
        legacyAccount.getClass();
        Context context = (Context) CloseableKt.get$default(Context.class);
        DefaultLegacyAccountDataMapper defaultLegacyAccountDataMapper = (DefaultLegacyAccountDataMapper) CloseableKt.get$default(DefaultLegacyAccountDataMapper.class);
        return getInstanceById(legacyAccount.uuid, new LocalStoreProvider$$ExternalSyntheticLambda0((LegacyAccountDto) defaultLegacyAccountDataMapper.toDto(legacyAccount), context, (GeneralSettingsManager) CloseableKt.get$default(GeneralSettingsManager.class), (DefaultLocalMessageUidPrefixProvider) CloseableKt.get$default(DefaultLocalMessageUidPrefixProvider.class), 0));
    }
}
