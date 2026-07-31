package app.k9mail.legacy.mailstore;

import java.util.List;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface MessageDetailsAccessor {
    long getFolderId();

    List getFromAddresses();

    boolean getHasAttachments();

    long getId();

    long getInternalDate();

    long getMessageDate();

    String getMessageServerId();

    PriorityQueue getPreview();

    String getSubject();

    int getThreadCount();

    long getThreadRoot();

    List getToAddresses();

    boolean isAnswered();

    boolean isForwarded();

    boolean isRead();

    boolean isStarred();
}
