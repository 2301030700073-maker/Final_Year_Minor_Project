package com.fsck.k9.preferences;

import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import com.fsck.k9.Preferences;
import com.fsck.k9.job.SyncDebugWorker$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.storage.InMemoryStorage;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9StorageEditor {
    public HashMap changes;
    public Logger logger;
    public ArrayList removals;
    public K9StoragePersister storagePersister;
    public OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 storageUpdater;

    public final boolean commit() {
        try {
            OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = this.storageUpdater;
            AbstractMap$$ExternalSyntheticLambda0 abstractMap$$ExternalSyntheticLambda0 = new AbstractMap$$ExternalSyntheticLambda0(8, this);
            Preferences preferences = (Preferences) onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0.f$0;
            synchronized (preferences.storageLock) {
                preferences.currentStorage = (InMemoryStorage) abstractMap$$ExternalSyntheticLambda0.invoke(preferences.getStorage());
            }
            return true;
        } catch (Exception e) {
            this.logger.error(null, e, new SyncDebugWorker$$ExternalSyntheticLambda0(19));
            return false;
        }
    }

    public final void putBoolean(String str, boolean z) {
        this.changes.put(str, "" + z);
    }

    public final void putInt(String str, int i) {
        this.changes.put(str, "" + i);
    }

    public final void putLong(long j, String str) {
        this.changes.put(str, "" + j);
    }

    public final void putString(String str, String str2) {
        if (str2 == null) {
            remove(str);
        } else {
            this.changes.put(str, str2);
        }
    }

    public final void remove(String str) {
        this.removals.add(str);
    }
}
