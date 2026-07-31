package com.fsck.k9.mailstore;

import androidx.collection.internal.Lock;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import app.k9mail.legacy.mailstore.SaveMessageData;
import com.fsck.k9.crypto.EncryptionResult;
import com.fsck.k9.mail.MessageDownloadState;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.message.extractors.PreviewExtractionException;
import com.fsck.k9.message.extractors.PreviewTextExtractor;
import com.fsck.k9.message.extractors.TextPartFinder;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import net.thunderbird.core.logging.legacy.Log;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SaveMessageDataCreator {
    public final SaveMessageData createSaveMessageData(MimeMessage mimeMessage, MessageDownloadState messageDownloadState, String str) {
        PriorityQueue priorityQueue;
        mimeMessage.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        Date sentDate = mimeMessage.getSentDate();
        long time = sentDate != null ? sentDate.getTime() : currentTimeMillis;
        Date date = mimeMessage.mInternalDate;
        if (date != null) {
            currentTimeMillis = date.getTime();
        }
        long j = currentTimeMillis;
        String subject = str == null ? mimeMessage.getSubject() : str;
        String str2 = null;
        EncryptionResult encryptionResult = (Lock.containsPartWithMimeType(mimeMessage, "multipart/encrypted", "application/pkcs7-mime") || Operation$State.isPartPgpInlineEncrypted(TextPartFinder.findFirstTextPart(mimeMessage))) ? new EncryptionResult() : null;
        if (encryptionResult != null) {
            return new SaveMessageData(mimeMessage, subject, time, j, messageDownloadState, 0, encryptionResult.previewResult, null, encryptionResult.encryptionType);
        }
        ArrayList arrayList = new ArrayList();
        JisSupport.findViewablesAndAttachments(mimeMessage, null, arrayList);
        int size = arrayList.size();
        Part findFirstTextPart = TextPartFinder.findFirstTextPart(mimeMessage);
        if (findFirstTextPart == null || findFirstTextPart.getBody() == null) {
            priorityQueue = new PriorityQueue(1, (Serializable) null, 8);
        } else {
            try {
                priorityQueue = new PriorityQueue(2, PreviewTextExtractor.extractPreview(findFirstTextPart), 8);
            } catch (PreviewExtractionException e) {
                Log.w(e, "Failed to extract preview text", new Object[0]);
                priorityQueue = new PriorityQueue(4, (Serializable) null, 8);
            } catch (Exception e2) {
                Log.e(e2, "Unexpected error while trying to extract preview text", new Object[0]);
                priorityQueue = new PriorityQueue(4, (Serializable) null, 8);
            }
        }
        PriorityQueue priorityQueue2 = priorityQueue;
        Part findFirstTextPart2 = TextPartFinder.findFirstTextPart(mimeMessage);
        if (findFirstTextPart2 != null && findFirstTextPart2.getBody() != null) {
            str2 = JisSupport.getTextFromPart(findFirstTextPart2, 204800L);
            if (JisSupport.isSameMimeType(findFirstTextPart2.getMimeType(), "text/html")) {
                str2.getClass();
                str2 = OperationKt.htmlToText(str2);
            }
        }
        return new SaveMessageData(mimeMessage, subject, time, j, messageDownloadState, size, priorityQueue2, str2, null);
    }
}
