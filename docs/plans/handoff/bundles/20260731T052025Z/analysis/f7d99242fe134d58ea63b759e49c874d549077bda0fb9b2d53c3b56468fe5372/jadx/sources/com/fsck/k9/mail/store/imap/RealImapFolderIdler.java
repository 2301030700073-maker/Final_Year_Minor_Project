package com.fsck.k9.mail.store.imap;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.material.ripple.StateLayer;
import androidx.work.Configuration;
import com.fsck.k9.backend.imap.BackendIdleRefreshManager;
import com.fsck.k9.power.AndroidPowerManager;
import java.io.IOException;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealImapFolderIdler {
    public boolean doneSent;
    public RealImapFolder folder;
    public final String folderServerId;
    public final IdleRefreshManager idleRefreshManager;
    public final Configuration.Builder idleRefreshTimeoutProvider;
    public BackendIdleRefreshManager.BackendIdleRefreshTimer idleRefreshTimer;
    public boolean idleSent;
    public final RealImapStore imapStore;
    public final String logTag;
    public volatile boolean stopIdle;
    public final AndroidPowerManager.AndroidWakeLock wakeLock;

    public RealImapFolderIdler(IdleRefreshManager idleRefreshManager, AndroidPowerManager.AndroidWakeLock androidWakeLock, RealImapStore realImapStore, String str, Configuration.Builder builder) {
        idleRefreshManager.getClass();
        realImapStore.getClass();
        str.getClass();
        builder.getClass();
        this.idleRefreshManager = idleRefreshManager;
        this.wakeLock = androidWakeLock;
        this.imapStore = realImapStore;
        this.folderServerId = str;
        this.idleRefreshTimeoutProvider = builder;
        this.logTag = CameraDevices$CC.m("ImapFolderIdler[", str, "]");
    }

    public static boolean isRelevant(ImapResponse imapResponse) {
        if (imapResponse.isTagged() || imapResponse.size() < 2) {
            return false;
        }
        return StateLayer.equalsIgnoreCase(imapResponse.get(1), "EXISTS") || StateLayer.equalsIgnoreCase(imapResponse.get(1), "EXPUNGE") || StateLayer.equalsIgnoreCase(imapResponse.get(1), "FETCH");
    }

    public final void endIdle() {
        if (!this.idleSent || this.doneSent) {
            return;
        }
        BackendIdleRefreshManager.BackendIdleRefreshTimer backendIdleRefreshTimer = this.idleRefreshTimer;
        if (backendIdleRefreshTimer != null) {
            backendIdleRefreshTimer.cancel();
        }
        try {
            sendDone();
        } catch (IOException e) {
            Log.v(e, "%s: IOException while sending DONE", this.logTag);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0151, code lost:
    
        throw new net.thunderbird.core.common.exception.MessagingException("Received non-OK response to IDLE command");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fsck.k9.mail.store.imap.IdleResult idle(com.fsck.k9.mail.store.imap.RealImapFolder r21) {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mail.store.imap.RealImapFolderIdler.idle(com.fsck.k9.mail.store.imap.RealImapFolder):com.fsck.k9.mail.store.imap.IdleResult");
    }

    public final synchronized void sendDone() {
        RealImapFolder realImapFolder = this.folder;
        if (realImapFolder == null) {
            return;
        }
        RealImapConnection realImapConnection = realImapFolder.connection;
        if (realImapConnection == null) {
            return;
        }
        synchronized (realImapConnection) {
            if (realImapConnection.isConnected()) {
                this.doneSent = true;
                realImapConnection.setSocketDefaultReadTimeout();
                try {
                    realImapConnection.sendContinuation();
                } catch (IOException e) {
                    Log.v(e, "%s: IOException while sending DONE", this.logTag);
                    throw e;
                }
            }
        }
    }

    public final IdleResult idle() {
        String str = this.logTag;
        Log.v("%s.idle()", str);
        RealImapFolder folder = this.imapStore.getFolder(this.folderServerId);
        this.folder = folder;
        folder.open(OpenMode.READ_ONLY);
        try {
            IdleResult idle = idle(folder);
            Log.v("%s.idle(): result=%s", str, idle);
            return idle;
        } finally {
            folder.close();
        }
    }
}
