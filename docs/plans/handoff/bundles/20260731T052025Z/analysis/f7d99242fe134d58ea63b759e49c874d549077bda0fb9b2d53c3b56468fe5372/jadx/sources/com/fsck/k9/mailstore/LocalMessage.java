package com.fsck.k9.mailstore;

import android.database.Cursor;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.network.internal.UtilsKt;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.MimeType;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.SendState;
import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.regex.Pattern;
import kotlin.text.Regex;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.GeneralSettingsManager;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalMessage extends MimeMessage {
    public int attachmentCount;
    public long databaseId;
    public boolean headerNeedsUpdating;
    public final LocalStore localStore;
    public LocalFolder mFolder;
    public long messagePartId;
    public MessageReference messageReference;
    public String mimeType;
    public String preview;
    public int previewType;
    public long rootId;
    public String subject;
    public long threadId;

    public LocalMessage(LocalStore localStore, long j, LocalFolder localFolder, GeneralSettingsManager generalSettingsManager) {
        super(false);
        this.preview = "";
        this.headerNeedsUpdating = false;
        this.localStore = localStore;
        this.databaseId = j;
        this.mFolder = localFolder;
    }

    public final void destroy() {
        LocalFolder localFolder = this.mFolder;
        localFolder.getClass();
        long j = this.databaseId;
        long j2 = this.messagePartId;
        String messageId = getMessageId();
        LocalStore localStore = localFolder.localStore;
        localStore.database.execute(true, new LocalFolder.AnonymousClass14(localFolder, j2, j, messageId));
        localStore.notifyChange();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LocalMessage.class != obj.getClass()) {
            return false;
        }
        LocalMessage localMessage = (LocalMessage) obj;
        return Objects.equals(this.mUid, localMessage.mUid) && Objects.equals(this.mFolder, localMessage.mFolder) && Objects.equals(this.localStore.account.uuid, localMessage.localStore.account.uuid);
    }

    @Override // com.fsck.k9.mail.internet.MimeMessage, com.fsck.k9.mail.Part
    public final String getMimeType() {
        return this.mimeType;
    }

    @Override // com.fsck.k9.mail.internet.MimeMessage
    public final String getSubject() {
        return this.subject;
    }

    @Override // com.fsck.k9.mail.internet.MimeMessage
    public final boolean hasAttachments() {
        return this.attachmentCount > 0;
    }

    public final int hashCode() {
        String str = this.localStore.account.uuid;
        int hashCode = ((str != null ? str.hashCode() : 0) + 31) * 31;
        LocalFolder localFolder = this.mFolder;
        return this.mUid.hashCode() + ((hashCode + (localFolder != null ? localFolder.hashCode() : 0)) * 31);
    }

    public final MessageReference makeMessageReference() {
        if (this.messageReference == null) {
            LocalFolder localFolder = this.mFolder;
            this.messageReference = new MessageReference(localFolder.databaseId, localFolder.localStore.account.uuid, this.mUid);
        }
        return this.messageReference;
    }

    public final void populateFromGetMessageCursor(Cursor cursor) {
        String string = cursor.getString(0);
        if (string == null) {
            string = "";
        }
        setSubject(string);
        String string2 = cursor.getString(1);
        Pattern pattern = Address.ATOM;
        Address[] unpack = K9MailLib.unpack(string2);
        if (unpack.length > 0) {
            setFrom(unpack[0]);
        }
        this.mSentDate = new Date(cursor.getLong(2));
        setUid(cursor.getString(3));
        String string3 = cursor.getString(4);
        if (string3 != null && string3.length() > 0) {
            for (String str : string3.split(",")) {
                try {
                    super.setFlag(Flag.valueOf(str), true);
                } catch (Exception unused) {
                    if (!"X_BAD_FLAG".equals(str)) {
                        Log.w("Unable to parse flag %s", str);
                    }
                }
            }
        }
        this.databaseId = cursor.getLong(5);
        String string4 = cursor.getString(6);
        Pattern pattern2 = Address.ATOM;
        Address[] unpack2 = K9MailLib.unpack(string4);
        if (unpack2 == null || unpack2.length == 0) {
            unpack2 = null;
        }
        this.mTo = unpack2;
        Address[] unpack3 = K9MailLib.unpack(cursor.getString(7));
        if (unpack3 == null || unpack3.length == 0) {
            unpack3 = null;
        }
        this.mCc = unpack3;
        Address[] unpack4 = K9MailLib.unpack(cursor.getString(8));
        if (unpack4 == null || unpack4.length == 0) {
            unpack4 = null;
        }
        this.mBcc = unpack4;
        this.headerNeedsUpdating = true;
        Address[] unpack5 = K9MailLib.unpack(cursor.getString(9));
        if (unpack5 == null || unpack5.length == 0) {
            this.mReplyTo = null;
        } else {
            this.mReplyTo = unpack5;
        }
        this.headerNeedsUpdating = true;
        this.attachmentCount = cursor.getInt(10);
        this.mInternalDate = new Date(cursor.getLong(11));
        this.mMessageId = cursor.getString(12);
        this.headerNeedsUpdating = true;
        int i = 24;
        String string5 = cursor.getString(24);
        DatabasePreviewType.Companion.getClass();
        int i2 = SendState.Companion.fromDatabaseValue(string5).previewType;
        this.previewType = i2;
        if (i2 == 2) {
            this.preview = cursor.getString(14);
        } else {
            this.preview = "";
        }
        if (this.mFolder == null) {
            LocalFolder localFolder = new LocalFolder(this.localStore, cursor.getInt(13));
            localFolder.open();
            this.mFolder = localFolder;
        }
        this.threadId = cursor.isNull(15) ? -1L : cursor.getLong(15);
        this.rootId = cursor.isNull(16) ? -1L : cursor.getLong(16);
        boolean z = cursor.getInt(17) == 1;
        boolean z2 = cursor.getInt(18) == 1;
        boolean z3 = cursor.getInt(19) == 1;
        boolean z4 = cursor.getInt(20) == 1;
        boolean z5 = cursor.getInt(21) == 1;
        super.setFlag(Flag.DELETED, z);
        super.setFlag(Flag.SEEN, z2);
        super.setFlag(Flag.FLAGGED, z3);
        super.setFlag(Flag.ANSWERED, z4);
        super.setFlag(Flag.FORWARDED, z5);
        this.messagePartId = cursor.getLong(22);
        String string6 = cursor.getString(23);
        Regex regex = MimeType.MIME_TYPE;
        MimeType parseOrNull = K9MailLib.parseOrNull(string6);
        this.mimeType = parseOrNull != null ? parseOrNull.toString() : UtilsKt.MIME_TYPE_TEXT_PLAIN;
        byte[] blob = cursor.getBlob(25);
        if (blob != null) {
            Validate.parse(new ByteArrayInputStream(blob), new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(i, this));
        } else {
            Log.d("No headers available for this message!", new Object[0]);
        }
        this.headerNeedsUpdating = false;
    }

    @Override // com.fsck.k9.mail.internet.MimeMessage
    public final void setFlag(Flag flag, boolean z) {
        LocalStore localStore = this.localStore;
        localStore.database.execute(true, new LocalFolder.AnonymousClass12(this, flag, z));
        localStore.notifyChange();
    }

    public final void setFlagInternal(Flag flag) {
        super.setFlag(flag, true);
    }

    @Override // com.fsck.k9.mail.internet.MimeMessage
    public final void setFrom(Address address) {
        this.mFrom = new Address[]{address};
        this.headerNeedsUpdating = true;
    }

    @Override // com.fsck.k9.mail.internet.MimeMessage
    public final void setSubject(String str) {
        this.subject = str;
        this.headerNeedsUpdating = true;
    }

    @Override // com.fsck.k9.mail.internet.MimeMessage
    public final void setUid(String str) {
        this.mUid = str;
        this.messageReference = null;
    }

    @Override // com.fsck.k9.mail.internet.MimeMessage, com.fsck.k9.mail.Part
    public final void writeTo(OutputStream outputStream) {
        if (this.headerNeedsUpdating) {
            super.setSubject(this.subject);
            Address[] addressArr = this.mReplyTo;
            LocalFolder.AnonymousClass8 anonymousClass8 = this.mHeader;
            if (addressArr == null || addressArr.length == 0) {
                anonymousClass8.removeHeader("Reply-to");
                this.mReplyTo = null;
            } else {
                anonymousClass8.setHeader("Reply-to", JisSupport.createHeaderValue(addressArr));
                this.mReplyTo = addressArr;
            }
            Address[] addressArr2 = this.mTo;
            if (addressArr2 == null || addressArr2.length == 0) {
                anonymousClass8.removeHeader("To");
            } else {
                anonymousClass8.setHeader("To", JisSupport.createHeaderValue(addressArr2));
            }
            Address[] addressArr3 = this.mCc;
            if (addressArr3 == null || addressArr3.length == 0) {
                anonymousClass8.removeHeader("CC");
            } else {
                anonymousClass8.setHeader("CC", JisSupport.createHeaderValue(addressArr3));
            }
            Address[] addressArr4 = this.mBcc;
            if (addressArr4 == null || addressArr4.length == 0) {
                anonymousClass8.removeHeader("BCC");
            } else {
                anonymousClass8.setHeader("BCC", JisSupport.createHeaderValue(addressArr4));
            }
            Address[] addressArr5 = this.mFrom;
            if (addressArr5 != null && addressArr5.length > 0) {
                super.setFrom(addressArr5[0]);
            }
            String str = this.mMessageId;
            if (str != null) {
                anonymousClass8.setHeader("Message-ID", str);
                this.mMessageId = str;
            }
            this.headerNeedsUpdating = false;
        }
        super.writeTo(outputStream);
    }

    public LocalMessage(LocalStore localStore, String str, LocalFolder localFolder, GeneralSettingsManager generalSettingsManager) {
        super(false);
        this.preview = "";
        this.headerNeedsUpdating = false;
        this.localStore = localStore;
        this.mUid = str;
        this.mFolder = localFolder;
    }
}
