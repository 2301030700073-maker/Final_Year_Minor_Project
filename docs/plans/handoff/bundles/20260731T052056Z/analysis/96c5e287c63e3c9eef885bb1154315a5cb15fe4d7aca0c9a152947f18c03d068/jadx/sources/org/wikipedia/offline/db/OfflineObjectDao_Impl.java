package org.wikipedia.offline.db;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkTagDao_Impl;
import java.io.File;
import org.wikipedia.talk.db.TalkTemplateDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OfflineObjectDao_Impl {
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfOfflineObject = new WorkTagDao_Impl.AnonymousClass1(13);
    public final TalkTemplateDao_Impl.AnonymousClass2 __deleteAdapterOfOfflineObject = new TalkTemplateDao_Impl.AnonymousClass2(5);
    public final TalkTemplateDao_Impl.AnonymousClass2 __updateAdapterOfOfflineObject = new TalkTemplateDao_Impl.AnonymousClass2(6);

    public OfflineObjectDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    public static void deleteFilesForObject(OfflineObject offlineObject) {
        offlineObject.getClass();
        String str = offlineObject.path;
        try {
            File file = new File(str + ".0");
            File file2 = new File(str + ".1");
            file.delete();
            file2.delete();
        } catch (Exception unused) {
        }
    }
}
