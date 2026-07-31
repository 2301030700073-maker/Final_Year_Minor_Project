package com.fsck.k9.controller;

import com.squareup.moshi.Moshi;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.Headers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PendingCommandSerializer {
    public static final PendingCommandSerializer INSTANCE = new PendingCommandSerializer();
    public final Map adapters;

    public PendingCommandSerializer() {
        Moshi moshi = new Moshi(new Headers.Builder(8));
        HashMap hashMap = new HashMap();
        hashMap.put("move_or_copy", moshi.adapter(MessagingControllerCommands$PendingMoveOrCopy.class));
        hashMap.put("move_and_mark_as_read", moshi.adapter(MessagingControllerCommands$PendingMoveAndMarkAsRead.class));
        hashMap.put("append", moshi.adapter(MessagingControllerCommands$PendingAppend.class));
        hashMap.put("replace", moshi.adapter(MessagingControllerCommands$PendingReplace.class));
        hashMap.put("empty_spam", moshi.adapter(MessagingControllerCommands$PendingEmptySpam.class));
        hashMap.put("empty_trash", moshi.adapter(MessagingControllerCommands$PendingEmptyTrash.class));
        hashMap.put("expunge", moshi.adapter(MessagingControllerCommands$PendingExpunge.class));
        hashMap.put("mark_all_as_read", moshi.adapter(MessagingControllerCommands$PendingMarkAllAsRead.class));
        hashMap.put("set_flag", moshi.adapter(MessagingControllerCommands$PendingSetFlag.class));
        hashMap.put("delete", moshi.adapter(MessagingControllerCommands$PendingDelete.class));
        this.adapters = DesugarCollections.unmodifiableMap(hashMap);
    }
}
