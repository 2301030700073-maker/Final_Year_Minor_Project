package com.fsck.k9.storage.messages;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.IntOffsetKt;
import app.k9mail.legacy.mailstore.MessageMapper;
import com.fsck.k9.mail.Header;
import com.fsck.k9.mail.internet.MimeHeader$Field;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LockableDatabase;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.builders.ListBuilder;
import org.jsoup.SerializationException;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class UpdateFolderOperations$$ExternalSyntheticLambda0 implements LockableDatabase.DbCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ UpdateFolderOperations$$ExternalSyntheticLambda0(String str, long j, MessageMapper messageMapper) {
        this.$r8$classId = 1;
        this.f$1 = str;
        this.f$0 = j;
        this.f$2 = messageMapper;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
    public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
        Cursor rawQuery;
        LinkedHashSet linkedHashSet;
        int i = this.$r8$classId;
        boolean z = false;
        Object obj = this.f$2;
        String str = this.f$1;
        long j = this.f$0;
        switch (i) {
            case 0:
                String str2 = (String) obj;
                ContentValues contentValues = new ContentValues();
                if (str == null) {
                    contentValues.putNull(str2);
                } else {
                    contentValues.put(str2, str);
                }
                return Integer.valueOf(sQLiteDatabase.update("folders", contentValues, "id = ?", new String[]{String.valueOf(j)}));
            case 1:
                MessageMapper messageMapper = (MessageMapper) obj;
                rawQuery = sQLiteDatabase.rawQuery(CameraDevices$CC.m("\nSELECT \n  messages.id AS id, \n  uid, \n  folder_id, \n  sender_list, \n  to_list, \n  cc_list, \n  date, \n  internal_date, \n  subject, \n  preview_type,\n  preview, \n  read, \n  flagged, \n  answered, \n  forwarded, \n  attachment_count, \n  root\nFROM threads \nJOIN messages ON (messages.id = threads.message_id)\nLEFT JOIN FOLDERS ON (folders.id = messages.folder_id)\nWHERE\n  root = ?\n  AND empty = 0 AND deleted = 0\nORDER BY ", str, "\n                "), new String[]{String.valueOf(j)});
                try {
                    rawQuery.getClass();
                    LocalFolder.AnonymousClass8 anonymousClass8 = new LocalFolder.AnonymousClass8(9, rawQuery, z);
                    ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
                    while (rawQuery.moveToNext()) {
                        Object map = messageMapper.map(anonymousClass8);
                        if (map != null) {
                            createListBuilder.add(map);
                        }
                    }
                    ListBuilder build = IntOffsetKt.build(createListBuilder);
                    rawQuery.close();
                    return build;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } finally {
                    }
                }
            default:
                Set set = (Set) obj;
                rawQuery = sQLiteDatabase.rawQuery("SELECT message_parts.header FROM messages LEFT JOIN message_parts ON (messages.message_part_id = message_parts.id) WHERE messages.folder_id = ? AND messages.uid = ?", new String[]{String.valueOf(j), str});
                try {
                    if (!rawQuery.moveToFirst()) {
                        str.getClass();
                        throw new SerializationException("Message not found: " + j + ":" + str);
                    }
                    byte[] blob = rawQuery.getBlob(0);
                    if (set != null) {
                        Set set2 = set;
                        int size = set.size();
                        if (size >= 0) {
                            size = size < 3 ? size + 1 : size < 1073741824 ? (int) ((size / 0.75f) + 1.0f) : Integer.MAX_VALUE;
                        }
                        linkedHashSet = new LinkedHashSet(size);
                        Iterator it = set2.iterator();
                        while (it.hasNext()) {
                            String lowerCase = ((String) it.next()).toLowerCase(Locale.ROOT);
                            lowerCase.getClass();
                            linkedHashSet.add(lowerCase);
                        }
                    } else {
                        linkedHashSet = null;
                    }
                    LocalFolder.AnonymousClass8 anonymousClass82 = new LocalFolder.AnonymousClass8(7);
                    blob.getClass();
                    Validate.parse(new ByteArrayInputStream(blob), new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(15, linkedHashSet, anonymousClass82));
                    ArrayList arrayList = (ArrayList) anonymousClass82.this$0;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        MimeHeader$Field mimeHeader$Field = (MimeHeader$Field) it2.next();
                        arrayList2.add(new Header(mimeHeader$Field.name, mimeHeader$Field.getValue()));
                    }
                    rawQuery.close();
                    return arrayList2;
                } finally {
                }
        }
    }

    public /* synthetic */ UpdateFolderOperations$$ExternalSyntheticLambda0(long j, String str, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = j;
        this.f$1 = str;
        this.f$2 = obj;
    }
}
