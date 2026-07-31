package com.fsck.k9.mailstore;

import app.k9mail.legacy.mailstore.ListenableMessageStore;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import app.k9mail.legacy.message.controller.MessageReference;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.Header;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.MessageDate;
import com.fsck.k9.mailstore.SendState;
import com.fsck.k9.storage.messages.K9MessageStore;
import com.fsck.k9.storage.messages.UpdateFolderOperations$$ExternalSyntheticLambda0;
import com.google.zxing.BinaryBitmap;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.james.mime4j.field.DateTimeFieldImpl;
import org.apache.james.mime4j.field.DefaultFieldParser;
import org.apache.james.mime4j.stream.RawFieldParser;
import org.apache.james.mime4j.util.ByteArrayBuffer;
import org.apache.james.mime4j.util.ContentUtil;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageRepository {
    public static final Set MESSAGE_DETAILS_HEADERS = ArraysKt___ArraysKt.toSet(new String[]{"date", "from", "sender", "reply-to", "to", "cc", "bcc"});
    public final MessageStoreManager messageStoreManager;

    public MessageRepository(MessageStoreManager messageStoreManager) {
        this.messageStoreManager = messageStoreManager;
    }

    public static String firstHeaderOrNull(String str, List list) {
        Object obj;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (StringsKt__StringsJVMKt.equals(((Header) obj).name, str, true)) {
                break;
            }
        }
        Header header = (Header) obj;
        if (header != null) {
            return header.value;
        }
        return null;
    }

    public static List parseAddresses(String str, List list) {
        Pattern pattern = Address.ATOM;
        return ArraysKt___ArraysKt.toList(K9MailLib.m931parse(JisSupport.unfold(firstHeaderOrNull(str, list))));
    }

    public final MessageDetails getMessageDetails(MessageReference messageReference) {
        MessageDate invalidDate;
        MessageDate validDate;
        messageReference.getClass();
        ListenableMessageStore messageStore = this.messageStoreManager.getMessageStore(messageReference.accountUuid);
        long j = messageReference.folderId;
        String str = messageReference.uid;
        str.getClass();
        Set set = MESSAGE_DETAILS_HEADERS;
        set.getClass();
        LocalStore.AnonymousClass1 anonymousClass1 = messageStore.messageStore;
        str.getClass();
        set.getClass();
        K9MessageStore k9MessageStore = (K9MessageStore) anonymousClass1.val$folders;
        str.getClass();
        set.getClass();
        BinaryBitmap binaryBitmap = k9MessageStore.retrieveMessageOperations;
        binaryBitmap.getClass();
        Object execute = ((LockableDatabase) binaryBitmap.binarizer).execute(false, new UpdateFolderOperations$$ExternalSyntheticLambda0(j, str, set, 2));
        execute.getClass();
        List list = (List) execute;
        String firstHeaderOrNull = firstHeaderOrNull("date", list);
        if (firstHeaderOrNull != null) {
            try {
                String concat = "Date: ".concat(firstHeaderOrNull);
                DefaultFieldParser defaultFieldParser = DefaultFieldParser.PARSER;
                ByteArrayBuffer encode = ContentUtil.encode(concat);
                RawFieldParser.DEFAULT.getClass();
                DnsQueryResult parse = DefaultFieldParser.PARSER.parse(RawFieldParser.parseField(encode));
                parse.getClass();
                Date date = ((DateTimeFieldImpl) parse).getDate();
                date.getClass();
                validDate = new MessageDate.ValidDate(date);
            } catch (Exception unused) {
                invalidDate = new MessageDate.InvalidDate(firstHeaderOrNull);
            }
            List parseAddresses = parseAddresses("from", list);
            List parseAddresses2 = parseAddresses("sender", list);
            return new MessageDetails(validDate, parseAddresses, (Address) CollectionsKt.firstOrNull(parseAddresses2), parseAddresses("reply-to", list), parseAddresses("to", list), parseAddresses("cc", list), parseAddresses("bcc", list));
        }
        invalidDate = SendState.Companion.INSTANCE;
        validDate = invalidDate;
        List parseAddresses3 = parseAddresses("from", list);
        List parseAddresses22 = parseAddresses("sender", list);
        return new MessageDetails(validDate, parseAddresses3, (Address) CollectionsKt.firstOrNull(parseAddresses22), parseAddresses("reply-to", list), parseAddresses("to", list), parseAddresses("cc", list), parseAddresses("bcc", list));
    }
}
