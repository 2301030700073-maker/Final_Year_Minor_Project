package androidx.navigation.internal;

import android.net.Uri;
import android.os.Bundle;
import androidx.navigation.NavDeepLink;
import androidx.navigation.NavDestination;
import androidx.room.RoomConnectionManager;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.mail.MessageDownloadState;
import com.fsck.k9.mail.MessageRetrievalListener;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mail.store.pop3.Pop3Message;
import com.fsck.k9.mailstore.K9BackendFolder;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.SynchronizedLazyImpl;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavDestinationImpl implements MessageRetrievalListener {
    public final Object arguments;
    public final Serializable deepLinks;
    public final Object destination;
    public int id;
    public String idName;
    public Serializable route;
    public Object routeDeepLink;

    public NavDestinationImpl(NavDestination navDestination) {
        this.destination = navDestination;
        this.deepLinks = new ArrayList();
        this.arguments = new LinkedHashMap();
    }

    public NavDestination.DeepLinkMatch matchRoute$navigation_common_release(String str) {
        NavDeepLink navDeepLink;
        str.getClass();
        SynchronizedLazyImpl synchronizedLazyImpl = (SynchronizedLazyImpl) this.routeDeepLink;
        if (synchronizedLazyImpl == null || (navDeepLink = (NavDeepLink) synchronizedLazyImpl.getValue()) == null) {
            return null;
        }
        int i = NavDestination.$r8$clinit;
        Uri parse = Uri.parse("android-app://androidx.navigation/".concat(str));
        parse.getClass();
        Bundle matchingArguments = navDeepLink.getMatchingArguments(parse, (LinkedHashMap) this.arguments);
        if (matchingArguments == null) {
            return null;
        }
        return new NavDestination.DeepLinkMatch((NavDestination) this.destination, matchingArguments, navDeepLink.isExactDeepLink, navDeepLink.calculateMatchingPathSegments$navigation_common_release(parse), false, -1);
    }

    @Override // com.fsck.k9.mail.MessageRetrievalListener
    public void messageFinished(MimeMessage mimeMessage) {
        Pop3Message pop3Message = (Pop3Message) mimeMessage;
        RoomConnectionManager roomConnectionManager = (RoomConnectionManager) this.routeDeepLink;
        ImapSync imapSync = (ImapSync) this.arguments;
        AtomicInteger atomicInteger = (AtomicInteger) this.route;
        K9BackendFolder k9BackendFolder = (K9BackendFolder) this.destination;
        String str = this.idName;
        pop3Message.getClass();
        try {
            k9BackendFolder.saveMessage(pop3Message, MessageDownloadState.FULL);
            atomicInteger.incrementAndGet();
            if (!pop3Message.mFlags.contains(Flag.SEEN)) {
                ((AtomicInteger) this.deepLinks).incrementAndGet();
            }
            String str2 = pop3Message.mUid;
            Log.v("About to notify listeners that we got a new small message %s:%s:%s", (String) imapSync.accountName, str, str2);
            str.getClass();
            roomConnectionManager.syncProgress(atomicInteger.get(), str, this.id);
            boolean olderThan = pop3Message.olderThan(ImapSync.getLatestOldMessageSeenTime(k9BackendFolder));
            str2.getClass();
            roomConnectionManager.syncNewMessage(str, str2, olderThan);
        } catch (Exception e) {
            Log.e(e, "SYNC: fetch small messages", new Object[0]);
        }
    }

    public NavDestinationImpl(K9BackendFolder k9BackendFolder, AtomicInteger atomicInteger, AtomicInteger atomicInteger2, ImapSync imapSync, String str, RoomConnectionManager roomConnectionManager, int i) {
        this.destination = k9BackendFolder;
        this.route = atomicInteger;
        this.deepLinks = atomicInteger2;
        this.arguments = imapSync;
        this.idName = str;
        this.routeDeepLink = roomConnectionManager;
        this.id = i;
    }
}
