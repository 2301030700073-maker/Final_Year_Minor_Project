package com.fsck.k9.storage.messages;

import android.database.sqlite.SQLiteDatabase;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import java.util.Collection;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CheckFolderOperations$$ExternalSyntheticLambda1 implements LockableDatabase.DbCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Collection f$0;

    public /* synthetic */ CheckFolderOperations$$ExternalSyntheticLambda1(int i, Collection collection) {
        this.$r8$classId = i;
        this.f$0 = collection;
    }

    @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
    public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
        int i = this.$r8$classId;
        Collection collection = this.f$0;
        switch (i) {
            case 0:
                Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
                ref$BooleanRef.element = true;
                K9MessageStoreFactoryKt.performChunkedOperation$default(collection, CheckFolderOperations$areAllIncludedInUnifiedInbox$1$1.INSTANCE, new AboutFragmentKt$$ExternalSyntheticLambda7(5, ref$BooleanRef, sQLiteDatabase));
                return Boolean.valueOf(ref$BooleanRef.element);
            default:
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                K9MessageStoreFactoryKt.performChunkedOperation$default(collection, RetrieveMessageOperations$getMessageServerIds$1$1.INSTANCE, new AboutFragmentKt$$ExternalSyntheticLambda7(7, sQLiteDatabase, linkedHashMap));
                return linkedHashMap;
        }
    }
}
