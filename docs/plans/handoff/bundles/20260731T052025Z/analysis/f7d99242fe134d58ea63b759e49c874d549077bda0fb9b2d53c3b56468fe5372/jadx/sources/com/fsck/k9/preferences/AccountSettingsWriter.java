package com.fsck.k9.preferences;

import android.content.Context;
import com.fsck.k9.Preferences;
import com.fsck.k9.mailstore.SpecialLocalFoldersCreator;
import com.google.zxing.BinaryBitmap;
import java.util.Iterator;
import java.util.List;
import kotlin.time.Clock;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.feature.account.storage.legacy.serializer.ServerSettingsDtoSerializer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountSettingsWriter {
    public final Clock clock;
    public final Context context;
    public final FolderSettingsWriter folderSettingsWriter;
    public final GeneralSettingsManager generalSettingsManager;
    public final FolderSettingsWriter identitySettingsWriter;
    public final SpecialLocalFoldersCreator localFoldersCreator;
    public final Preferences preferences;
    public final BinaryBitmap serverSettingsWriter;

    public AccountSettingsWriter(Preferences preferences, SpecialLocalFoldersCreator specialLocalFoldersCreator, Clock clock, GeneralSettingsManager generalSettingsManager, ServerSettingsDtoSerializer serverSettingsDtoSerializer, Context context) {
        this.preferences = preferences;
        this.localFoldersCreator = specialLocalFoldersCreator;
        this.clock = clock;
        this.generalSettingsManager = generalSettingsManager;
        this.context = context;
        this.identitySettingsWriter = new FolderSettingsWriter(generalSettingsManager);
        this.folderSettingsWriter = new FolderSettingsWriter(generalSettingsManager);
        this.serverSettingsWriter = new BinaryBitmap(7, serverSettingsDtoSerializer, generalSettingsManager);
    }

    public static boolean isAccountNameUsed(String str, List list) {
        if (list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((LegacyAccountDto) it.next()).getDisplayName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.Serializable write(com.fsck.k9.preferences.ValidatedSettings$Account r22, kotlin.coroutines.jvm.internal.ContinuationImpl r23) {
        /*
            Method dump skipped, instructions count: 890
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.preferences.AccountSettingsWriter.write(com.fsck.k9.preferences.ValidatedSettings$Account, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }
}
