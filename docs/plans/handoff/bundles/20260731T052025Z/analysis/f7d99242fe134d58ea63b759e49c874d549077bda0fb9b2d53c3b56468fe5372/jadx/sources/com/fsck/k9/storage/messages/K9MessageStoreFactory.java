package com.fsck.k9.storage.messages;

import com.fsck.k9.mailstore.AndroidStorageFilesProviderFactory;
import com.fsck.k9.mailstore.LocalStoreProvider;
import com.fsck.k9.message.extractors.BasicPartInfoExtractor;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalMessageUidPrefixProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9MessageStoreFactory {
    public final BasicPartInfoExtractor basicPartInfoExtractor;
    public final GeneralSettingsManager generalSettingsManager;
    public final DefaultLocalMessageUidPrefixProvider localMessageUidPrefixProvider;
    public final LocalStoreProvider localStoreProvider;
    public final AndroidStorageFilesProviderFactory storageFilesProviderFactory;

    public K9MessageStoreFactory(LocalStoreProvider localStoreProvider, AndroidStorageFilesProviderFactory androidStorageFilesProviderFactory, BasicPartInfoExtractor basicPartInfoExtractor, GeneralSettingsManager generalSettingsManager, DefaultLocalMessageUidPrefixProvider defaultLocalMessageUidPrefixProvider) {
        this.localStoreProvider = localStoreProvider;
        this.storageFilesProviderFactory = androidStorageFilesProviderFactory;
        this.basicPartInfoExtractor = basicPartInfoExtractor;
        this.generalSettingsManager = generalSettingsManager;
        this.localMessageUidPrefixProvider = defaultLocalMessageUidPrefixProvider;
    }
}
