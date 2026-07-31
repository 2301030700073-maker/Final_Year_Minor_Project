.class public interface abstract Lcom/fsck/k9/backend/api/Backend;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public abstract copyMessages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
.end method

.method public abstract createPusher(Lcom/fsck/k9/mailstore/LocalStore$7;)Lcom/fsck/k9/backend/imap/ImapBackendPusher;
.end method

.method public abstract deleteAllMessages(Ljava/lang/String;)V
.end method

.method public abstract deleteMessages(Ljava/lang/String;Ljava/util/List;)V
.end method

.method public abstract downloadCompleteMessage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract downloadMessage(Lcom/fsck/k9/backend/api/SyncConfig;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract downloadMessageStructure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract expunge(Ljava/lang/String;)V
.end method

.method public abstract fetchPart(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/controller/ProgressBodyFactory;)V
.end method

.method public abstract findByMessageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSupportsCopy()Z
.end method

.method public abstract getSupportsExpunge()Z
.end method

.method public abstract getSupportsFlags()Z
.end method

.method public abstract getSupportsFolderSubscriptions()Z
.end method

.method public abstract getSupportsMove()Z
.end method

.method public abstract getSupportsSearchByDate()Z
.end method

.method public abstract getSupportsTrashFolder()Z
.end method

.method public abstract getSupportsUpload()Z
.end method

.method public abstract isPushCapable()Z
.end method

.method public abstract markAllAsRead(Ljava/lang/String;)V
.end method

.method public abstract moveMessages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
.end method

.method public abstract moveMessagesAndMarkAsRead(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
.end method

.method public abstract refreshFolderList()Ljava/lang/String;
.end method

.method public abstract search(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract sendMessage(Lcom/fsck/k9/mail/internet/MimeMessage;)V
.end method

.method public abstract setFlag(Ljava/lang/String;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V
.end method

.method public abstract sync(Ljava/lang/String;Lcom/fsck/k9/backend/api/SyncConfig;Landroidx/room/RoomConnectionManager;)V
.end method

.method public abstract uploadMessage(Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalMessage;)Ljava/lang/String;
.end method
