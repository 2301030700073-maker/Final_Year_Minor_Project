package com.fsck.k9.storage.messages;

import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.view.TreeIterator;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.ui.KoinModuleKt$$ExternalSyntheticLambda0;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.TakeWhileSequence;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import kotlinx.coroutines.JobSupport$children$1;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class K9MessageStoreFactoryKt {
    public static final String[] FOLDER_COLUMNS = {"id", "name", "type", "server_id", "local_only", "top_group", "integrate", "sync_enabled", "visible", "notifications_enabled", "push_enabled", "visible_limit", "more_messages", "last_updated"};
    public static final String[] AGGREGATED_MESSAGES_COLUMNS = {"date", "internal_date", "attachment_count", "read", "flagged", "answered", "forwarded"};

    public static final boolean access$isGoogle(String str) {
        List listOf = IntOffsetKt.listOf((Object[]) new String[]{".gmail.com", ".googlemail.com"});
        if (listOf.isEmpty()) {
            return false;
        }
        Iterator it = listOf.iterator();
        while (it.hasNext()) {
            if (StringsKt__StringsJVMKt.endsWith(str, (String) it.next(), true)) {
                return true;
            }
        }
        return false;
    }

    public static void performChunkedOperation$default(Collection collection, Function1 function1, Function2 function2) {
        collection.getClass();
        if (collection.isEmpty()) {
            UriKt$$ExternalSyntheticBUOutline0.m("'arguments' must not be empty");
            return;
        }
        TreeIterator treeIterator = new TreeIterator(new TakeWhileSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(2, collection), function1, 2));
        Iterator it = !treeIterator.iterator.hasNext() ? EmptyIterator.INSTANCE : Base64.iterator(new JobSupport$children$1(treeIterator, null, 1));
        while (it.hasNext()) {
            List list = (List) it.next();
            function2.invoke(CollectionsKt.joinToString$default(IntOffsetKt.getIndices(list), ",", "IN (", ")", new KoinModuleKt$$ExternalSyntheticLambda0(20), 24), list.toArray(new String[0]));
        }
    }
}
