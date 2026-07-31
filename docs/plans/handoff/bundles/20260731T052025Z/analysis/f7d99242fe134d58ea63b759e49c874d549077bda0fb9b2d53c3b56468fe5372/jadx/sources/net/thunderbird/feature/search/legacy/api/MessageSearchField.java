package net.thunderbird.feature.search.legacy.api;

import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import net.thunderbird.feature.search.legacy.LocalMessageSearch$$ExternalSyntheticLambda0;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'CC' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Serializable
/* loaded from: classes.dex */
public final class MessageSearchField implements SearchField {
    public static final /* synthetic */ MessageSearchField[] $VALUES;
    public static final Lazy $cachedSerializer$delegate;
    public static final MessageSearchField BCC;
    public static final MessageSearchField CC;
    public static final Companion Companion;
    public static final MessageSearchField FOLDER;
    public static final MessageSearchField INTEGRATE;
    public static final MessageSearchField MESSAGE_CONTENTS;
    public static final MessageSearchField NEW_MESSAGE;
    public static final MessageSearchField SENDER;
    public static final MessageSearchField SUBJECT;
    public static final MessageSearchField THREAD_ID;
    public static final MessageSearchField TO;
    public static final MessageSearchField VISIBLE;
    public final String customQueryTemplate;
    public final String fieldName;
    public final SearchFieldType fieldType;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public final KSerializer serializer() {
            return (KSerializer) MessageSearchField.$cachedSerializer$delegate.getValue();
        }
    }

    static {
        SearchFieldType searchFieldType = SearchFieldType.TEXT;
        MessageSearchField messageSearchField = new MessageSearchField("CC", 0, "cc_list", searchFieldType, null);
        CC = messageSearchField;
        SearchFieldType searchFieldType2 = SearchFieldType.NUMBER;
        MessageSearchField messageSearchField2 = new MessageSearchField("DATE", 1, "date", searchFieldType2, null);
        MessageSearchField messageSearchField3 = new MessageSearchField("FLAG", 2, "flags", searchFieldType, null);
        MessageSearchField messageSearchField4 = new MessageSearchField("ID", 3, "id", searchFieldType2, null);
        MessageSearchField messageSearchField5 = new MessageSearchField("SENDER", 4, "sender_list", searchFieldType, null);
        SENDER = messageSearchField5;
        MessageSearchField messageSearchField6 = new MessageSearchField("SUBJECT", 5, "subject", searchFieldType, null);
        SUBJECT = messageSearchField6;
        MessageSearchField messageSearchField7 = new MessageSearchField("UID", 6, "uid", searchFieldType, null);
        MessageSearchField messageSearchField8 = new MessageSearchField("TO", 7, "to_list", searchFieldType, null);
        TO = messageSearchField8;
        MessageSearchField messageSearchField9 = new MessageSearchField("FOLDER", 8, "folder_id", searchFieldType2, null);
        FOLDER = messageSearchField9;
        MessageSearchField messageSearchField10 = new MessageSearchField("BCC", 9, "bcc_list", searchFieldType, null);
        BCC = messageSearchField10;
        MessageSearchField messageSearchField11 = new MessageSearchField("REPLY_TO", 10, "reply_to_list", searchFieldType, null);
        MessageSearchField messageSearchField12 = new MessageSearchField("MESSAGE_CONTENTS", 11, "message_contents", SearchFieldType.CUSTOM, "messages.id IN (SELECT docid FROM messages_fulltext WHERE fulltext MATCH ?)");
        MESSAGE_CONTENTS = messageSearchField12;
        MessageSearchField messageSearchField13 = new MessageSearchField("ATTACHMENT_COUNT", 12, "attachment_count", searchFieldType2, null);
        MessageSearchField messageSearchField14 = new MessageSearchField("DELETED", 13, "deleted", searchFieldType2, null);
        MessageSearchField messageSearchField15 = new MessageSearchField("THREAD_ID", 14, "threads.root", searchFieldType2, null);
        THREAD_ID = messageSearchField15;
        MessageSearchField messageSearchField16 = new MessageSearchField("INTEGRATE", 15, "integrate", searchFieldType2, null);
        INTEGRATE = messageSearchField16;
        MessageSearchField messageSearchField17 = new MessageSearchField("NEW_MESSAGE", 16, "new_message", searchFieldType2, null);
        NEW_MESSAGE = messageSearchField17;
        MessageSearchField messageSearchField18 = new MessageSearchField("READ", 17, "read", searchFieldType2, null);
        MessageSearchField messageSearchField19 = new MessageSearchField("FLAGGED", 18, "flagged", searchFieldType2, null);
        MessageSearchField messageSearchField20 = new MessageSearchField("VISIBLE", 19, "visible", searchFieldType2, null);
        VISIBLE = messageSearchField20;
        $VALUES = new MessageSearchField[]{messageSearchField, messageSearchField2, messageSearchField3, messageSearchField4, messageSearchField5, messageSearchField6, messageSearchField7, messageSearchField8, messageSearchField9, messageSearchField10, messageSearchField11, messageSearchField12, messageSearchField13, messageSearchField14, messageSearchField15, messageSearchField16, messageSearchField17, messageSearchField18, messageSearchField19, messageSearchField20};
        Companion = new Companion();
        $cachedSerializer$delegate = ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new LocalMessageSearch$$ExternalSyntheticLambda0(23));
    }

    public MessageSearchField(String str, int i, String str2, SearchFieldType searchFieldType, String str3) {
        this.fieldName = str2;
        this.fieldType = searchFieldType;
        this.customQueryTemplate = str3;
    }

    public static MessageSearchField valueOf(String str) {
        return (MessageSearchField) Enum.valueOf(MessageSearchField.class, str);
    }

    public static MessageSearchField[] values() {
        return (MessageSearchField[]) $VALUES.clone();
    }
}
