package app.k9mail.legacy.message.controller;

import com.fsck.k9.mailstore.LocalMessage;
import java.util.List;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SimpleMessagingListener {
    public void checkMailFinished() {
    }

    public void loadAttachmentFailed() {
    }

    public void loadAttachmentFinished() {
    }

    public void remoteSearchFailed() {
    }

    public void remoteSearchStarted() {
    }

    public void enableProgressIndicator(boolean z) {
    }

    public void folderStatusChanged(LegacyAccountDto legacyAccountDto) {
    }

    public void loadMessageRemoteFailed(Exception exc) {
    }

    public void updateProgress(int i) {
    }

    public void remoteSearchFinished(int i, List list) {
    }

    public void remoteSearchServerQueryComplete(int i, int i2) {
    }

    public void synchronizeMailboxFinished(LegacyAccountDto legacyAccountDto, long j) {
    }

    public void synchronizeMailboxHeadersFinished(LegacyAccountDto legacyAccountDto, String str) {
    }

    public void synchronizeMailboxStarted(LegacyAccountDto legacyAccountDto, long j) {
    }

    public void loadMessageRemoteFinished(LegacyAccountDto legacyAccountDto, long j, String str) {
    }

    public void synchronizeMailboxFailed(LegacyAccountDto legacyAccountDto, long j, String str) {
    }

    public void synchronizeMailboxNewMessage(LegacyAccountDto legacyAccountDto, String str, LocalMessage localMessage) {
    }

    public void synchronizeMailboxRemovedMessage(LegacyAccountDto legacyAccountDto, String str, String str2) {
    }

    public void messageUidChanged(LegacyAccountDto legacyAccountDto, long j, String str, String str2) {
    }

    public void synchronizeMailboxHeadersProgress(LegacyAccountDto legacyAccountDto, String str, int i, int i2) {
    }

    public void synchronizeMailboxProgress(LegacyAccountDto legacyAccountDto, long j, int i, int i2) {
    }
}
