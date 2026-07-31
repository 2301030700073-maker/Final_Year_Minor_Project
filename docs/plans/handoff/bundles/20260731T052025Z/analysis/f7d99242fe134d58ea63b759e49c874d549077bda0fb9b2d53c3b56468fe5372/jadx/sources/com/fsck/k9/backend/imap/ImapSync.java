package com.fsck.k9.backend.imap;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.text.TextWatcher;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.core.util.Pools$Pool;
import androidx.core.util.Pools$SynchronizedPool;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.Fragment;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.window.layout.WindowLayoutInfo;
import androidx.window.layout.adapter.sidecar.SidecarWindowBackend;
import androidx.work.Configuration;
import androidx.work.OperationKt;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import app.k9mail.html.cleaner.HeadCleanerKt;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import app.k9mail.legacy.mailstore.SaveMessageData;
import coil3.size.ViewSizeResolver;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.InputStreamRewinder;
import com.bumptech.glide.load.engine.ActiveResources$1;
import com.bumptech.glide.load.engine.ActiveResources$ResourceWeakReference;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.EngineJob;
import com.bumptech.glide.load.engine.EngineResource;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.load.resource.transcode.UnitTranscoder;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.util.ByteBufferUtil;
import com.bumptech.glide.util.MarkEnforcingInputStream;
import com.bumptech.glide.util.Util;
import com.bumptech.glide.util.pool.FactoryPools;
import com.eygraber.uri.Uri;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.backend.api.BackendFolder$MoreMessages;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.controller.MessagingControllerCommands$PendingAppend;
import com.fsck.k9.controller.MessagingControllerCommands$PendingReplace;
import com.fsck.k9.helper.Utility;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.FetchProfile;
import com.fsck.k9.mail.FolderType;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.Message$RecipientType;
import com.fsck.k9.mail.MessageDownloadState;
import com.fsck.k9.mail.Multipart;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.internet.DecoderUtil$Encoding;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mail.internet.MimeBodyPart;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mail.internet.MimeMultipart;
import com.fsck.k9.mail.internet.Viewable;
import com.fsck.k9.mail.store.imap.RealImapFolder;
import com.fsck.k9.mail.store.imap.RealImapStore;
import com.fsck.k9.mailstore.K9BackendFolder;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalFolder$$ExternalSyntheticLambda1;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.mailstore.SaveMessageDataCreator;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.message.extractors.AttachmentInfoExtractor;
import com.fsck.k9.message.html.DisplayHtml;
import com.fsck.k9.resources.K9CoreResourceProvider;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.storage.messages.K9MessageStore;
import com.fsck.k9.view.RecipientSelectView;
import j$.util.function.Predicate$CC;
import j$.util.stream.Collectors;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.ReferenceQueue;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.locks.ReentrantLock;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.text.StringsKt;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.io.Sink$CC;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.Identity;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.cache.TimeLimitedCache;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalMessageUidPrefixProvider;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.AsyncTimeout;
import okio.ByteString;
import okio.PriorityQueue;
import org.apache.commons.io.IOUtils;
import org.apache.james.mime4j.MimeException;
import org.apache.james.mime4j.parser.ContentHandler;
import org.apache.james.mime4j.stream.Field;
import org.jsoup.Jsoup;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Functions;
import org.jsoup.internal.SoftPool;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.jsoup.nodes.LeafNode;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.NodeUtils;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.ParseSettings;
import org.jsoup.parser.Tag;
import org.jsoup.safety.Cleaner;
import org.jsoup.select.Elements;
import org.jsoup.select.Evaluator;
import org.jsoup.select.NodeVisitor;
import org.jsoup.select.QueryParser;
import org.openintents.openpgp.util.OpenPgpUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImapSync implements NodeVisitor, ResourceTranscoder, Pools$Pool, ContentHandler, LockableDatabase.DbCallback, LocalStore.BatchSetSelection {
    public final /* synthetic */ int $r8$classId;
    public Object accountName;
    public Object backendStorage;
    public Object imapStore;

    public ImapSync(int i) {
        this.$r8$classId = i;
        switch (i) {
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                break;
            default:
                ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new ActiveResources$1(0));
                this.accountName = new HashMap();
                this.backendStorage = new ReferenceQueue();
                newSingleThreadExecutor.execute(new Fragment.AnonymousClass1(28, this));
                break;
        }
    }

    public static void addTableRow(StringBuilder sb, String str, String str2) {
        sb.append("<tr><th style=\"text-align: left; vertical-align: top;\">");
        sb.append(TextUtils.htmlEncode(str));
        sb.append("</th>");
        sb.append("<td>");
        sb.append(TextUtils.htmlEncode(str2));
        sb.append("</td></tr>");
    }

    public static void addTextDivider(StringBuilder sb, Part part, boolean z) {
        String str;
        if (z) {
            String disposition = part.getDisposition();
            if (disposition == null || (str = JisSupport.getHeaderParameter(disposition, "filename")) == null) {
                str = "";
            }
            sb.append("\r\n\r\n");
            int length = str.length();
            if (length > 0) {
                if (length > 65) {
                    str = str.substring(0, 62).concat("...");
                }
                sb.append("----- ");
                sb.append(str);
                sb.append(" ");
                sb.append("------------------------------------------------------------------------".substring(0, 65 - str.length()));
            } else {
                sb.append("------------------------------------------------------------------------");
            }
            sb.append("\r\n\r\n");
        }
    }

    public static StringBuilder buildHtml(Viewable viewable, boolean z) {
        String str;
        StringBuilder sb = new StringBuilder();
        if (!(viewable instanceof Viewable.Textual)) {
            if (viewable instanceof Viewable.Alternative) {
                Viewable.Alternative alternative = (Viewable.Alternative) viewable;
                ArrayList arrayList = alternative.mHtml;
                if (arrayList.isEmpty()) {
                    arrayList = alternative.mText;
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    sb.append((CharSequence) buildHtml((Viewable) it.next(), z));
                    z = true;
                }
            }
            return sb;
        }
        Part part = ((Viewable.Textual) viewable).mPart;
        String str2 = "";
        if (z) {
            String disposition = part.getDisposition();
            if (disposition == null || (str = JisSupport.getHeaderParameter(disposition, "filename")) == null) {
                str = "";
            }
            sb.append("<p style=\"margin-top: 2.5em; margin-bottom: 1em; border-bottom: 1px solid #000\">");
            sb.append(TextUtils.htmlEncode(str));
            sb.append("</p>");
        }
        String textFromPart = getTextFromPart(part);
        if (textFromPart != null) {
            if (viewable instanceof Viewable.Text) {
                str2 = OperationKt.textToHtml(textFromPart);
            } else {
                if (!(viewable instanceof Viewable.Html)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unhandled case!");
                    return null;
                }
                str2 = textFromPart;
            }
        }
        sb.append(str2);
        return sb;
    }

    public static StringBuilder buildText(Viewable viewable, boolean z) {
        StringBuilder sb = new StringBuilder();
        if (!(viewable instanceof Viewable.Textual)) {
            if (viewable instanceof Viewable.Alternative) {
                Viewable.Alternative alternative = (Viewable.Alternative) viewable;
                ArrayList arrayList = alternative.mText;
                if (arrayList.isEmpty()) {
                    arrayList = alternative.mHtml;
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    sb.append((CharSequence) buildText((Viewable) it.next(), z));
                    z = true;
                }
            }
            return sb;
        }
        Part part = ((Viewable.Textual) viewable).mPart;
        addTextDivider(sb, part, z);
        String textFromPart = getTextFromPart(part);
        if (textFromPart == null) {
            textFromPart = "";
        } else if (viewable instanceof Viewable.Html) {
            textFromPart = OperationKt.htmlToText(textFromPart);
        } else if (!(viewable instanceof Viewable.Text)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unhandled case!");
            return null;
        }
        sb.append(textFromPart);
        return sb;
    }

    public static Date getLatestOldMessageSeenTime(K9BackendFolder k9BackendFolder) {
        Long folderExtraNumber = ((K9MessageStore) k9BackendFolder.messageStore.messageStore.val$folders).getFolderExtraNumber(k9BackendFolder.folderId, "latestOldMessageSeenTime");
        return new Date(folderExtraNumber != null ? folderExtraNumber.longValue() : 0L);
    }

    public static String getTextFromPart(Part part) {
        int indexOf;
        String textFromPart = JisSupport.getTextFromPart(part, -1L);
        Pattern pattern = OpenPgpUtils.USER_ID_PATTERN;
        String str = null;
        if (textFromPart != null && textFromPart.startsWith("-----BEGIN PGP SIGNED MESSAGE-----") && (indexOf = textFromPart.indexOf("\r\n\r\n") + 4) >= 0) {
            int indexOf2 = textFromPart.indexOf("-----BEGIN PGP SIGNATURE-----");
            if (indexOf2 < 0) {
                indexOf2 = textFromPart.length();
            }
            str = textFromPart.substring(indexOf, indexOf2);
        }
        return str != null ? str : textFromPart;
    }

    public static boolean isOldMessage(String str, Long l) {
        if (l != null) {
            try {
                if (Long.parseLong(str) <= l.longValue()) {
                    return true;
                }
            } catch (NumberFormatException e) {
                Log.w(e, "Couldn't parse UID: %s", str);
                return false;
            }
        }
        return false;
    }

    public static boolean isSafeTag(Node node) {
        boolean equals;
        if (node != null) {
            String nodeName = node.nodeName();
            nodeName.getClass();
            Locale locale = Locale.ROOT;
            String lowerCase = nodeName.toLowerCase(locale);
            lowerCase.getClass();
            if (lowerCase.equals("meta")) {
                String lowerCase2 = StringsKt.trim(node.attributes().getIgnoreCase("http-equiv")).toString().toLowerCase(locale);
                lowerCase2.getClass();
                equals = lowerCase2.equals("refresh");
            } else {
                equals = false;
            }
            if (!equals) {
                String nodeName2 = node.nodeName();
                nodeName2.getClass();
                String lowerCase3 = nodeName2.toLowerCase(locale);
                lowerCase3.getClass();
                return HeadCleanerKt.ALLOWED_TAGS.contains(lowerCase3);
            }
        }
        return false;
    }

    public static void updateMoreMessages(RealImapFolder realImapFolder, K9BackendFolder k9BackendFolder, Date date, int i) {
        BackendFolder$MoreMessages backendFolder$MoreMessages = BackendFolder$MoreMessages.FALSE;
        if (i == 1) {
            k9BackendFolder.setMoreMessages(backendFolder$MoreMessages);
            return;
        }
        realImapFolder.checkOpen();
        if (i != 1) {
            int i2 = i - 1;
            String dateSearchString = RealImapFolder.getDateSearchString(date);
            while (true) {
                if (i2 <= 0) {
                    break;
                }
                int i3 = i2 - 500;
                if (OAuthBearer.parse(realImapFolder.executeSimpleCommand(String.format(Locale.US, "SEARCH %d:%d%s NOT DELETED", Arrays.copyOf(new Object[]{Integer.valueOf(Math.max(0, i3) + 1), Integer.valueOf(i2), dateSearchString}, 3)))).namesAndValues.size() > 0) {
                    backendFolder$MoreMessages = BackendFolder$MoreMessages.TRUE;
                    break;
                }
                i2 = i3;
            }
        }
        k9BackendFolder.setMoreMessages(backendFolder$MoreMessages);
    }

    @Override // androidx.core.util.Pools$Pool
    public Object acquire() {
        Object acquire = ((Pools$SynchronizedPool) this.imapStore).acquire();
        if (acquire == null) {
            acquire = ((FactoryPools.Factory) this.accountName).create();
            if (android.util.Log.isLoggable("FactoryPools", 2)) {
                android.util.Log.v("FactoryPools", "Created new " + acquire.getClass());
            }
        }
        if (acquire instanceof FactoryPools.Poolable) {
            ((FactoryPools.Poolable) acquire).getVerifier().isReleased = false;
        }
        return acquire;
    }

    public synchronized void activate(Key key, EngineResource engineResource) {
        ActiveResources$ResourceWeakReference activeResources$ResourceWeakReference = (ActiveResources$ResourceWeakReference) ((HashMap) this.accountName).put(key, new ActiveResources$ResourceWeakReference(key, engineResource, (ReferenceQueue) this.backendStorage));
        if (activeResources$ResourceWeakReference != null) {
            activeResources$ResourceWeakReference.resource = null;
            activeResources$ResourceWeakReference.clear();
        }
    }

    public void addMessageHeaderHtml(StringBuilder sb, MimeMessage mimeMessage) {
        Context context = ((K9CoreResourceProvider) this.imapStore).context;
        sb.append("<table style=\"border: 0\">");
        Address[] from = mimeMessage.getFrom();
        if (from != null && from.length > 0) {
            String string = context.getString(R.string.message_compose_quote_header_from);
            string.getClass();
            Pattern pattern = Address.ATOM;
            addTableRow(sb, string, K9MailLib.toString(from));
        }
        Address[] recipients = mimeMessage.getRecipients(Message$RecipientType.TO);
        if (recipients != null && recipients.length > 0) {
            String string2 = context.getString(R.string.message_compose_quote_header_to);
            string2.getClass();
            Pattern pattern2 = Address.ATOM;
            addTableRow(sb, string2, K9MailLib.toString(recipients));
        }
        Address[] recipients2 = mimeMessage.getRecipients(Message$RecipientType.CC);
        if (recipients2 != null && recipients2.length > 0) {
            String string3 = context.getString(R.string.message_compose_quote_header_cc);
            string3.getClass();
            Pattern pattern3 = Address.ATOM;
            addTableRow(sb, string3, K9MailLib.toString(recipients2));
        }
        Date sentDate = mimeMessage.getSentDate();
        if (sentDate != null) {
            String string4 = context.getString(R.string.message_compose_quote_header_send_date);
            string4.getClass();
            addTableRow(sb, string4, sentDate.toString());
        }
        String subject = mimeMessage.getSubject();
        String string5 = context.getString(R.string.message_compose_quote_header_subject);
        string5.getClass();
        if (subject == null) {
            subject = context.getString(R.string.general_no_subject);
            subject.getClass();
        }
        addTableRow(sb, string5, subject);
        sb.append("</table>");
    }

    public void addMessageHeaderText(StringBuilder sb, MimeMessage mimeMessage) {
        Context context = ((K9CoreResourceProvider) this.imapStore).context;
        Address[] from = mimeMessage.getFrom();
        if (from != null && from.length > 0) {
            String string = context.getString(R.string.message_compose_quote_header_from);
            string.getClass();
            sb.append(string);
            sb.append(' ');
            Pattern pattern = Address.ATOM;
            sb.append(K9MailLib.toString(from));
            sb.append("\r\n");
        }
        Address[] recipients = mimeMessage.getRecipients(Message$RecipientType.TO);
        if (recipients != null && recipients.length > 0) {
            String string2 = context.getString(R.string.message_compose_quote_header_to);
            string2.getClass();
            sb.append(string2);
            sb.append(' ');
            Pattern pattern2 = Address.ATOM;
            sb.append(K9MailLib.toString(recipients));
            sb.append("\r\n");
        }
        Address[] recipients2 = mimeMessage.getRecipients(Message$RecipientType.CC);
        if (recipients2 != null && recipients2.length > 0) {
            String string3 = context.getString(R.string.message_compose_quote_header_cc);
            string3.getClass();
            sb.append(string3);
            sb.append(' ');
            Pattern pattern3 = Address.ATOM;
            sb.append(K9MailLib.toString(recipients2));
            sb.append("\r\n");
        }
        Date sentDate = mimeMessage.getSentDate();
        if (sentDate != null) {
            String string4 = context.getString(R.string.message_compose_quote_header_send_date);
            string4.getClass();
            sb.append(string4);
            sb.append(' ');
            sb.append(sentDate.toString());
            sb.append("\r\n");
        }
        String subject = mimeMessage.getSubject();
        String string5 = context.getString(R.string.message_compose_quote_header_subject);
        string5.getClass();
        sb.append(string5);
        sb.append(' ');
        if (subject == null) {
            String string6 = context.getString(R.string.general_no_subject);
            string6.getClass();
            sb.append(string6);
        } else {
            sb.append(subject);
        }
        sb.append("\r\n\r\n");
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void body(Uri.Builder builder, InputStream inputStream) {
        expect(Part.class);
        ((Part) ((LinkedList) this.accountName).peek()).setBody(((AsyncTimeout.Companion) this.backendStorage).createBody((String) builder.path, (String) builder.scheme, inputStream));
    }

    public void cleanupActiveReference(ActiveResources$ResourceWeakReference activeResources$ResourceWeakReference) {
        Resource resource;
        synchronized (this) {
            ((HashMap) this.accountName).remove(activeResources$ResourceWeakReference.key);
            if (activeResources$ResourceWeakReference.isCacheable && (resource = activeResources$ResourceWeakReference.resource) != null) {
                ((Engine) this.imapStore).onResourceReleased(activeResources$ResourceWeakReference.key, new EngineResource(resource, true, false, activeResources$ResourceWeakReference.key, (Engine) this.imapStore));
            }
        }
    }

    public Bitmap decodeBitmap(BitmapFactory.Options options) {
        switch (this.$r8$classId) {
            case 9:
                return BitmapFactory.decodeStream(new ByteBufferUtil.ByteBufferStream(ByteBufferUtil.rewind((ByteBuffer) this.accountName)), null, options);
            case 10:
                RecyclableBufferedInputStream recyclableBufferedInputStream = (RecyclableBufferedInputStream) ((InputStreamRewinder) this.accountName).bufferedStream;
                recyclableBufferedInputStream.reset();
                return BitmapFactory.decodeStream(recyclableBufferedInputStream, null, options);
            default:
                return BitmapFactory.decodeFileDescriptor(((InputStreamRewinder) this.imapStore).rewindAndGet().getFileDescriptor(), null, options);
        }
    }

    @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
    public Object doDbWork(SQLiteDatabase sQLiteDatabase) {
        Cursor query;
        switch (this.$r8$classId) {
            case 22:
                query = sQLiteDatabase.query("message_parts", new String[]{"id"}, "root = ? AND server_extra = ?", new String[]{Long.toString(((LocalMessage) this.accountName).messagePartId), ((Part) this.backendStorage).getServerExtra()}, null, null, null);
                try {
                    if (!query.moveToFirst()) {
                        throw new IllegalStateException("Message part not found");
                    }
                    try {
                        LocalFolder.m934$$Nest$mupdateOrInsertMessagePart((LocalFolder) this.imapStore, sQLiteDatabase, new ContentValues(), (Part) this.backendStorage, query.getLong(0));
                    } catch (Exception e) {
                        Log.e(e, "Error writing message part", new Object[0]);
                    }
                    return null;
                } finally {
                }
            case 23:
                LocalFolder localFolder = (LocalFolder) this.imapStore;
                localFolder.open();
                sQLiteDatabase.execSQL(CameraDevices$CC.m(new StringBuilder("UPDATE folders SET "), (String) this.accountName, " = ? WHERE id = ?"), new Object[]{this.backendStorage, Long.valueOf(localFolder.databaseId)});
                return null;
            case 24:
                LocalFolder localFolder2 = (LocalFolder) this.imapStore;
                localFolder2.open();
                if (((FetchProfile) this.accountName).contains(FetchProfile.Item.BODY)) {
                    for (LocalMessage localMessage : (List) this.backendStorage) {
                        HashMap hashMap = new HashMap();
                        query = sQLiteDatabase.query("message_parts", new String[]{"id", "type", "parent", "mime_type", "decoded_body_size", "display_name", "header", "encoding", "charset", "data_location", "data", "preamble", "epilogue", "boundary", "content_id", "server_extra"}, "root = ?", new String[]{String.valueOf(localMessage.messagePartId)}, null, null, "seq");
                        while (query.moveToNext()) {
                            try {
                                localFolder2.loadMessagePart(localMessage, hashMap, query);
                            } finally {
                            }
                        }
                    }
                }
                return null;
            case 25:
                query = sQLiteDatabase.query("message_parts", LocalStore.GET_ATTACHMENT_COLS, "id = ?", new String[]{(String) this.accountName}, null, null, null);
                try {
                    try {
                        LocalStore.m936$$Nest$mwriteCursorPartsToOutputStream((LocalStore) this.imapStore, sQLiteDatabase, query, (OutputStream) this.backendStorage);
                        Pattern pattern = Utility.RESPONSE_PATTERN;
                        return null;
                    } catch (Throwable th) {
                        Utility.closeQuietly(query);
                        throw th;
                    }
                } catch (IOException e2) {
                    throw new MessagingException(e2);
                }
            case 26:
                LocalStore.BatchSetSelection batchSetSelection = (LocalStore.BatchSetSelection) this.accountName;
                String sb = ((StringBuilder) this.backendStorage).toString();
                ArrayList arrayList = (ArrayList) this.imapStore;
                batchSetSelection.doDbWork(sQLiteDatabase, sb, (String[]) arrayList.toArray(new String[arrayList.size()]));
                return null;
            default:
                Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT id FROM folders WHERE type = ?", new String[]{SchemaInfoUtilKt.toDatabaseFolderType(FolderType.OUTBOX)});
                DefaultOutboxFolderManager defaultOutboxFolderManager = (DefaultOutboxFolderManager) this.accountName;
                AccountId accountId = (AccountId) this.backendStorage;
                CancellableContinuationImpl cancellableContinuationImpl = (CancellableContinuationImpl) this.imapStore;
                try {
                    Ref$LongRef ref$LongRef = new Ref$LongRef();
                    ref$LongRef.element = -1L;
                    if (rawQuery.moveToFirst()) {
                        ref$LongRef.element = rawQuery.getLong(0);
                        Sink$CC.debug$default(defaultOutboxFolderManager.logger, "DefaultOutboxFolderManager", null, new GapPending$keyMap$2(8, ref$LongRef), 2);
                    }
                    long j = ref$LongRef.element;
                    if (j != -1) {
                        TimeLimitedCache.m1025setSxA4cEA$default(defaultOutboxFolderManager.outboxFolderIdCache, accountId, Long.valueOf(j));
                        cancellableContinuationImpl.resumeWith(Long.valueOf(ref$LongRef.element));
                    } else {
                        cancellableContinuationImpl.resumeWith(new Result.Failure(new MessagingException("Outbox folder not found")));
                    }
                    rawQuery.close();
                    return Unit.INSTANCE;
                } finally {
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0388 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v33, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r27v0, types: [com.fsck.k9.mail.store.imap.RealImapFolder] */
    /* JADX WARN: Type inference failed for: r29v1 */
    /* JADX WARN: Type inference failed for: r29v2 */
    /* JADX WARN: Type inference failed for: r29v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void downloadMessages(com.fsck.k9.backend.api.SyncConfig r26, com.fsck.k9.mail.store.imap.RealImapFolder r27, com.fsck.k9.mailstore.K9BackendFolder r28, java.util.List r29, java.lang.Long r30, com.fsck.k9.backend.api.SyncListener r31) {
        /*
            Method dump skipped, instructions count: 948
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.backend.imap.ImapSync.downloadMessages(com.fsck.k9.backend.api.SyncConfig, com.fsck.k9.mail.store.imap.RealImapFolder, com.fsck.k9.mailstore.K9BackendFolder, java.util.List, java.lang.Long, com.fsck.k9.backend.api.SyncListener):void");
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void endBodyPart() {
        expect(MimeBodyPart.class);
        ((LinkedList) this.accountName).removeFirst();
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void endHeader() {
        expect(Part.class);
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void endMessage() {
        expect(MimeMessage.class);
        ((LinkedList) this.accountName).removeFirst();
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void endMultipart() {
        expect(Multipart.class);
        LinkedList linkedList = (LinkedList) this.accountName;
        Multipart multipart = (Multipart) linkedList.removeFirst();
        boolean z = multipart.mParts.size() == 0;
        boolean z2 = ((MimeMultipart) multipart).epilogue == null;
        if (z && z2) {
            expect(Part.class);
            ((Part) linkedList.peek()).setBody(null);
        }
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void epilogue(InputStream inputStream) {
        expect(MimeMultipart.class);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        IOUtils.copy(inputStream, byteArrayOutputStream);
        ((MimeMultipart) ((LinkedList) this.accountName).peek()).epilogue = byteArrayOutputStream.toByteArray();
    }

    public void expect(Class cls) {
        LinkedList linkedList = (LinkedList) this.accountName;
        if (cls.isInstance(linkedList.peek())) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(ViewSizeResolver.CC.m("Internal stack error: Expected '", cls.getName(), "' found '", linkedList.peek().getClass().getName(), "'"));
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fsck.k9.mailstore.MessageViewInfo extractMessageForView(com.fsck.k9.mail.internet.MimeMessage r34, com.bumptech.glide.load.engine.Jobs r35, boolean r36) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.backend.imap.ImapSync.extractMessageForView(com.fsck.k9.mail.internet.MimeMessage, com.bumptech.glide.load.engine.Jobs, boolean):com.fsck.k9.mailstore.MessageViewInfo");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0092 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fsck.k9.mailstore.MessageViewInfo extractSimpleMessageForView(com.fsck.k9.mail.internet.MimeMessage r15, com.fsck.k9.mail.Part r16) {
        /*
            r14 = this;
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            java.util.List r0 = java.util.Collections.singletonList(r16)
            com.fsck.k9.mailstore.LocalStore$1 r14 = r14.extractViewableAndAttachments(r8, r0)
            com.fsck.k9.mailstore.AttachmentResolver r10 = com.fsck.k9.mailstore.AttachmentResolver.createFromPart(r16)
            net.thunderbird.core.common.mail.Flag r0 = net.thunderbird.core.common.mail.Flag.X_DOWNLOADED_FULL
            java.util.EnumSet r2 = r15.mFlags
            boolean r0 = r2.contains(r0)
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L26
            boolean r0 = com.fsck.k9.mail.internet.JisSupport.hasMissingParts(r15)
            if (r0 == 0) goto L24
            goto L26
        L24:
            r0 = r3
            goto L27
        L26:
            r0 = r2
        L27:
            java.util.regex.Pattern r4 = com.fsck.k9.helper.ListUnsubscribeHelper.MAILTO_CONTAINER_PATTERN
            java.lang.String r4 = "List-Unsubscribe"
            com.fsck.k9.mailstore.LocalFolder$8 r5 = r15.mHeader
            java.lang.String[] r4 = r5.getHeader(r4)
            r4.getClass()
            int r5 = r4.length
            r6 = 0
            if (r5 != 0) goto L3b
        L38:
            r13 = r6
            goto La7
        L3b:
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            int r7 = r4.length
            r9 = r3
        L42:
            if (r9 >= r7) goto L95
            r11 = r4[r9]
            r11.getClass()
            int r12 = r11.length()
            if (r12 != 0) goto L51
        L4f:
            r11 = r6
            goto L7a
        L51:
            java.util.regex.Pattern r12 = com.fsck.k9.helper.ListUnsubscribeHelper.MAILTO_CONTAINER_PATTERN
            java.util.regex.Matcher r12 = r12.matcher(r11)
            boolean r13 = r12.find()
            if (r13 == 0) goto L66
            java.lang.String r11 = r12.group(r2)
            android.net.Uri r11 = android.net.Uri.parse(r11)
            goto L7a
        L66:
            java.util.regex.Pattern r12 = com.fsck.k9.helper.ListUnsubscribeHelper.HTTPS_CONTAINER_PATTERN
            java.util.regex.Matcher r11 = r12.matcher(r11)
            boolean r12 = r11.find()
            if (r12 == 0) goto L4f
            java.lang.String r11 = r11.group(r2)
            android.net.Uri r11 = android.net.Uri.parse(r11)
        L7a:
            if (r11 != 0) goto L7d
            goto L92
        L7d:
            java.lang.String r12 = r11.getScheme()
            java.lang.String r13 = "mailto"
            boolean r12 = kotlin.jvm.internal.Intrinsics.areEqual(r12, r13)
            if (r12 == 0) goto L8f
            com.fsck.k9.helper.MailtoUnsubscribeUri r6 = new com.fsck.k9.helper.MailtoUnsubscribeUri
            r6.<init>(r11)
            goto L38
        L8f:
            r5.add(r11)
        L92:
            int r9 = r9 + 1
            goto L42
        L95:
            boolean r2 = r5.isEmpty()
            if (r2 != 0) goto L38
            com.fsck.k9.helper.HttpsUnsubscribeUri r6 = new com.fsck.k9.helper.HttpsUnsubscribeUri
            java.lang.Object r2 = r5.get(r3)
            android.net.Uri r2 = (android.net.Uri) r2
            r6.<init>(r2)
            goto L38
        La7:
            java.lang.Object r2 = r14.this$0
            r6 = r2
            java.lang.String r6 = (java.lang.String) r6
            java.lang.Object r14 = r14.val$folders
            java.lang.String r14 = (java.lang.String) r14
            java.lang.String r7 = androidx.work.OperationKt.textToHtml(r14)
            r2 = r0
            com.fsck.k9.mailstore.MessageViewInfo r0 = new com.fsck.k9.mailstore.MessageViewInfo
            r11 = 0
            java.util.List r12 = java.util.Collections.EMPTY_LIST
            r4 = 0
            r5 = 0
            r9 = 0
            r1 = r15
            r3 = r16
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.backend.imap.ImapSync.extractSimpleMessageForView(com.fsck.k9.mail.internet.MimeMessage, com.fsck.k9.mail.Part):com.fsck.k9.mailstore.MessageViewInfo");
    }

    public LocalStore.AnonymousClass1 extractViewableAndAttachments(ArrayList arrayList, List list) {
        String headerParameter;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            JisSupport.findViewablesAndAttachments((Part) it.next(), arrayList2, arrayList3);
        }
        AttachmentInfoExtractor attachmentInfoExtractor = (AttachmentInfoExtractor) this.accountName;
        ArrayList arrayList4 = new ArrayList();
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            arrayList4.add(attachmentInfoExtractor.extractAttachmentInfo((Part) it2.next()));
        }
        arrayList.addAll(arrayList4);
        try {
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            Iterator it3 = arrayList2.iterator();
            while (true) {
                boolean z = true;
                while (it3.hasNext()) {
                    Viewable viewable = (Viewable) it3.next();
                    if (viewable instanceof Viewable.Textual) {
                        boolean z2 = !z;
                        sb.append((CharSequence) buildText(viewable, z2));
                        sb2.append((CharSequence) buildHtml(viewable, z2));
                    } else if (viewable instanceof Viewable.MessageHeader) {
                        Viewable.MessageHeader messageHeader = (Viewable.MessageHeader) viewable;
                        Part part = messageHeader.mContainerPart;
                        MimeMessage mimeMessage = messageHeader.mMessage;
                        addTextDivider(sb, part, !z);
                        addMessageHeaderText(sb, mimeMessage);
                        if (!z) {
                            String str = "";
                            String disposition = part.getDisposition();
                            if (disposition != null && (headerParameter = JisSupport.getHeaderParameter(disposition, "filename")) != null) {
                                str = headerParameter;
                            }
                            sb2.append("<p style=\"margin-top: 2.5em; margin-bottom: 1em; border-bottom: 1px solid #000\">");
                            sb2.append(TextUtils.htmlEncode(str));
                            sb2.append("</p>");
                        }
                        addMessageHeaderHtml(sb2, mimeMessage);
                    } else if (viewable instanceof Viewable.Alternative) {
                        Viewable.Alternative alternative = (Viewable.Alternative) viewable;
                        ArrayList arrayList5 = alternative.mHtml;
                        ArrayList arrayList6 = alternative.mText;
                        ArrayList arrayList7 = arrayList6.isEmpty() ? arrayList5 : arrayList6;
                        if (arrayList5.isEmpty()) {
                            arrayList5 = arrayList6;
                        }
                        boolean z3 = !z;
                        Iterator it4 = arrayList7.iterator();
                        boolean z4 = z3;
                        while (it4.hasNext()) {
                            sb.append((CharSequence) buildText((Viewable) it4.next(), z4));
                            z4 = true;
                        }
                        Iterator it5 = arrayList5.iterator();
                        while (it5.hasNext()) {
                            sb2.append((CharSequence) buildHtml((Viewable) it5.next(), z3));
                            z3 = true;
                        }
                    }
                    z = false;
                }
                return new LocalStore.AnonymousClass1(10, sb.toString(), ((ImapSync) this.backendStorage).processForDisplay(sb2.toString()));
            }
        } catch (Exception e) {
            throw new MessagingException("Couldn't extract viewable parts", false, e);
        }
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void field(Field field) {
        expect(Part.class);
        ((Part) ((LinkedList) this.accountName).peek()).addRawHeader(field.getName(), field.getRaw().toString());
    }

    public ImageHeaderParser.ImageType getImageType() {
        switch (this.$r8$classId) {
            case 9:
                return OperationKt.getType((List) this.backendStorage, ByteBufferUtil.rewind((ByteBuffer) this.accountName));
            case 10:
                List list = (List) this.imapStore;
                RecyclableBufferedInputStream recyclableBufferedInputStream = (RecyclableBufferedInputStream) ((InputStreamRewinder) this.accountName).bufferedStream;
                recyclableBufferedInputStream.reset();
                return OperationKt.getType(list, recyclableBufferedInputStream, (LruArrayPool) this.backendStorage);
            default:
                List list2 = (List) this.backendStorage;
                InputStreamRewinder inputStreamRewinder = (InputStreamRewinder) this.imapStore;
                LruArrayPool lruArrayPool = (LruArrayPool) this.accountName;
                int size = list2.size();
                for (int i = 0; i < size; i++) {
                    ImageHeaderParser imageHeaderParser = (ImageHeaderParser) list2.get(i);
                    RecyclableBufferedInputStream recyclableBufferedInputStream2 = null;
                    try {
                        RecyclableBufferedInputStream recyclableBufferedInputStream3 = new RecyclableBufferedInputStream(new FileInputStream(inputStreamRewinder.rewindAndGet().getFileDescriptor()), lruArrayPool);
                        try {
                            ImageHeaderParser.ImageType type = imageHeaderParser.getType(recyclableBufferedInputStream3);
                            recyclableBufferedInputStream3.release();
                            inputStreamRewinder.rewindAndGet();
                            if (type != ImageHeaderParser.ImageType.UNKNOWN) {
                                return type;
                            }
                        } catch (Throwable th) {
                            th = th;
                            recyclableBufferedInputStream2 = recyclableBufferedInputStream3;
                            if (recyclableBufferedInputStream2 != null) {
                                recyclableBufferedInputStream2.release();
                            }
                            inputStreamRewinder.rewindAndGet();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    @Override // com.fsck.k9.mailstore.LocalStore.BatchSetSelection
    public String getListItem(int i) {
        return Long.toString(((Long) ((List) this.accountName).get(i)).longValue());
    }

    @Override // com.fsck.k9.mailstore.LocalStore.BatchSetSelection
    public int getListSize() {
        return ((List) this.accountName).size();
    }

    public String getNormalizedServerId(LegacyFolderListItem legacyFolderListItem) {
        String combinedPrefix = ((RealImapStore) this.imapStore).getCombinedPrefix();
        return combinedPrefix != null ? StringsKt.removePrefix(legacyFolderListItem.serverId, combinedPrefix) : legacyFolderListItem.serverId;
    }

    @Override // org.jsoup.select.NodeVisitor
    public void head(Node node, int i) {
        if (((Element) this.imapStore) != null) {
            return;
        }
        if (!(node instanceof Element)) {
            if (node instanceof TextNode) {
                ((Element) this.backendStorage).appendChild(new TextNode(((TextNode) node).coreValue()));
                return;
            } else {
                if ((node instanceof DataNode) && isSafeTag(node.parentNode)) {
                    ((Element) this.backendStorage).appendChild(new DataNode(((DataNode) node).coreValue()));
                    return;
                }
                return;
            }
        }
        if (!isSafeTag(node)) {
            if (node != ((Element) this.accountName)) {
                this.imapStore = (Element) node;
                return;
            }
            return;
        }
        Element element = (Element) node;
        String str = element.tag.tagName;
        str.getClass();
        Element element2 = new Element(Tag.valueOf(str, "http://www.w3.org/1999/xhtml", ParseSettings.preserveCase), element.baseUri(), element.attributes().clone());
        ((Element) this.backendStorage).appendChild(element2);
        this.backendStorage = element2;
    }

    public void onWindowLayoutChanged(Activity activity, WindowLayoutInfo windowLayoutInfo) {
        WeakHashMap weakHashMap = (WeakHashMap) this.imapStore;
        activity.getClass();
        ReentrantLock reentrantLock = (ReentrantLock) this.backendStorage;
        reentrantLock.lock();
        try {
            if (windowLayoutInfo.equals((WindowLayoutInfo) weakHashMap.get(activity))) {
                return;
            }
            reentrantLock.unlock();
            Iterator it = ((SidecarWindowBackend) ((Configuration.Builder) this.accountName).workerFactory).windowLayoutChangeCallbacks.iterator();
            it.getClass();
            while (it.hasNext()) {
                SidecarWindowBackend.WindowLayoutChangeCallbackWrapper windowLayoutChangeCallbackWrapper = (SidecarWindowBackend.WindowLayoutChangeCallbackWrapper) it.next();
                if (windowLayoutChangeCallbackWrapper.activity.equals(activity)) {
                    windowLayoutChangeCallbackWrapper.lastInfo = windowLayoutInfo;
                    windowLayoutChangeCallbackWrapper.executor.execute(new Processor$$ExternalSyntheticLambda2(4, windowLayoutChangeCallbackWrapper, windowLayoutInfo));
                }
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // com.fsck.k9.mailstore.LocalStore.BatchSetSelection
    public void postDbWork() {
        ((LocalStore) this.imapStore).notifyChange();
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void preamble(InputStream inputStream) {
        expect(MimeMultipart.class);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        IOUtils.copy(inputStream, byteArrayOutputStream);
        ((MimeMultipart) ((LinkedList) this.accountName).peek()).preamble = byteArrayOutputStream.toByteArray();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v3, types: [org.jsoup.nodes.Node] */
    public String processForDisplay(String str) {
        DocumentType documentType;
        Configuration.Builder builder = (Configuration.Builder) this.imapStore;
        builder.getClass();
        Document parse = Jsoup.parse(str);
        parse.getClass();
        Base64Util base64Util = (Base64Util) builder.workerFactory;
        base64Util.getClass();
        Cleaner cleaner = (Cleaner) base64Util.alphabet;
        cleaner.getClass();
        final Document document = new Document(parse.baseUri());
        Element appendElement = document.appendElement("html");
        appendElement.appendElement("head");
        appendElement.appendElement("body");
        Element body = parse.body();
        UuidKt.traverse(new SoftPool(cleaner, body, document.body()), body);
        document.outputSettings = parse.outputSettings.clone();
        for (Node node : parse.childNodes) {
            if (node instanceof DocumentType) {
                documentType = (DocumentType) node;
                break;
            }
            if (!(node instanceof LeafNode)) {
                break;
            }
        }
        documentType = null;
        if (documentType != null) {
            Node[] nodeArr = {documentType};
            Validate.isTrue("Insert position out of bounds.", document.childNodes.size() >= 0);
            document.addChildren(0, nodeArr);
        }
        Element body2 = document.body();
        Attributes attributes = parse.body().attributes();
        attributes.getClass();
        Attributes.AnonymousClass1 anonymousClass1 = new Attributes.AnonymousClass1(attributes);
        while (anonymousClass1.hasNext()) {
            Attribute attribute = (Attribute) anonymousClass1.next();
            String str2 = attribute.key;
            if (((Set) base64Util.inverseAlphabet).contains(str2)) {
                String str3 = attribute.val;
                if (str3 != null) {
                    ParseSettings parseSettings = NodeUtils.parser(body2).settings;
                    parseSettings.getClass();
                    String trim = str2.trim();
                    if (!parseSettings.preserveAttributeCase) {
                        trim = Functions.lowerCase(trim);
                    }
                    body2.attributes().putIgnoreCase(trim, str3);
                } else {
                    body2.attributes().putIgnoreCase(str2, null);
                }
            }
        }
        Validate.notEmpty("a style");
        final Evaluator parse2 = QueryParser.parse("a style");
        Validate.notNull(parse2);
        parse2.reset();
        Elements elements = (Elements) NodeUtils.stream(document, Element.class).filter(new Predicate() { // from class: org.jsoup.select.Evaluator$$ExternalSyntheticLambda0
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            public /* synthetic */ Predicate or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Evaluator.this.matches(document, (Element) obj);
            }
        }).collect(Collectors.toCollection(new Entities$$ExternalSyntheticLambda0(8)));
        elements.getClass();
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            Element element = (Element) it.next();
            element.getClass();
            Evaluator parse3 = QueryParser.parse("a");
            Validate.notNull(parse3);
            Element element2 = element;
            while (true) {
                ?? r8 = element2.parentNode;
                if (r8 == 0) {
                    break;
                }
                element2 = r8;
            }
            Element element3 = element2;
            Element element4 = element;
            while (true) {
                if (parse3.matches(element3, element4)) {
                    break;
                }
                element4 = (Element) element4.parentNode;
                if (element4 == null) {
                    element4 = null;
                    break;
                }
            }
            if (element4 != null) {
                String outerHtml = element.outerHtml();
                outerHtml.getClass();
                element.remove();
                int i = element4.siblingIndex;
                Validate.notNull(element4.parentNode);
                Node node2 = element4.parentNode;
                element4.parentNode.addChildren(i, (Node[]) NodeUtils.parser(element4).parseFragmentInput(outerHtml, node2 instanceof Element ? (Element) node2 : null, element4.baseUri()).toArray(new Node[0]));
            }
        }
        Element head = parse.head();
        UuidKt.traverse(new ImapSync(head, document.head()), head);
        Element head2 = document.head();
        Node[] nodeArr2 = (Node[]) NodeUtils.parser(head2).parseFragmentInput(((DisplayHtml) this.backendStorage).getHeadHtml(), head2, head2.baseUri()).toArray(new Node[0]);
        List ensureChildNodes = head2.ensureChildNodes();
        for (Node node3 : nodeArr2) {
            node3.getClass();
            Node node4 = node3.parentNode;
            if (node4 != null) {
                node4.removeChild(node3);
            }
            node3.parentNode = head2;
            ensureChildNodes.add(node3);
            node3.siblingIndex = ensureChildNodes.size() - 1;
        }
        Set<String> set = (Set) this.accountName;
        if (!set.isEmpty()) {
            Element body3 = document.body();
            for (String str4 : set) {
                Validate.notNull(str4);
                LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(Element.ClassSplit.split(body3.attr("class").trim())));
                linkedHashSet.remove("");
                linkedHashSet.add(str4);
                if (linkedHashSet.isEmpty()) {
                    Attributes attributes2 = body3.attributes();
                    int indexOfKey = attributes2.indexOfKey("class");
                    if (indexOfKey != -1) {
                        attributes2.remove(indexOfKey);
                    }
                } else {
                    body3.attributes().put("class", StringUtil.join(linkedHashSet, " "));
                }
            }
        }
        Document.OutputSettings outputSettings = document.outputSettings;
        outputSettings.prettyPrint = false;
        outputSettings.indentAmount = 0;
        String html = document.html();
        html.getClass();
        return html;
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void raw() {
        throw new UnsupportedOperationException("Not supported");
    }

    @Override // androidx.core.util.Pools$Pool
    public boolean release(Object obj) {
        if (obj instanceof FactoryPools.Poolable) {
            ((FactoryPools.Poolable) obj).getVerifier().isReleased = true;
        }
        ((FactoryPools.Resetter) this.backendStorage).reset(obj);
        return ((Pools$SynchronizedPool) this.imapStore).release(obj);
    }

    public long saveAndUploadDraft(LegacyAccountDto legacyAccountDto, MimeMessage mimeMessage, long j, Long l, String str) {
        MessagingController messagingController = (MessagingController) this.accountName;
        ListenableMessageStore messageStore = ((MessageStoreManager) this.backendStorage).getMessageStore(legacyAccountDto);
        SaveMessageData createSaveMessageData = ((SaveMessageDataCreator) this.imapStore).createSaveMessageData(mimeMessage, MessageDownloadState.FULL, str);
        LocalStore.AnonymousClass1 anonymousClass1 = messageStore.messageStore;
        LocalMessage localMessage = null;
        long saveLocalMessage = ((K9MessageStore) anonymousClass1.val$folders).saveLocalMessage(j, createSaveMessageData, null);
        anonymousClass1.notifyChange();
        if (l != null) {
            LocalStore localStoreOrThrow = messagingController.getLocalStoreOrThrow(legacyAccountDto);
            LocalFolder localFolder = new LocalFolder(localStoreOrThrow, j);
            localFolder.open();
            localMessage = (LocalMessage) localStoreOrThrow.database.execute(false, new LocalFolder$$ExternalSyntheticLambda1(localFolder, l.longValue()));
        }
        if (localMessage != null) {
            LocalStore localStore = localMessage.localStore;
            localStore.database.execute(true, new ConnectionPool(1, localMessage));
            localStore.notifyChange();
            messagingController.queuePendingCommand(legacyAccountDto, MessagingControllerCommands$PendingReplace.create(j, saveLocalMessage, localMessage.databaseId));
        } else {
            String messageServerId = ((K9MessageStore) messageStore.messageStore.val$folders).getMessageServerId(saveLocalMessage);
            if (messageServerId != null) {
                messagingController.queuePendingCommand(legacyAccountDto, MessagingControllerCommands$PendingAppend.create(j, messageServerId));
            }
        }
        messagingController.processPendingCommands(legacyAccountDto);
        return saveLocalMessage;
    }

    public void setIdentity(Identity identity) {
        LocalStore.AnonymousClass7 anonymousClass7 = (LocalStore.AnonymousClass7) this.accountName;
        LinkedHashSet linkedHashSet = (LinkedHashSet) anonymousClass7.this$0;
        RecipientSelectView recipientSelectView = (RecipientSelectView) anonymousClass7.val$queryString;
        identity.getClass();
        this.backendStorage = identity;
        Address[] addressArr = (Address[]) this.imapStore;
        if (addressArr != null) {
            Set set = ArraysKt___ArraysKt.toSet(addressArr);
            List objects = recipientSelectView.getObjects();
            objects.getClass();
            ArrayList arrayList = new ArrayList();
            for (Object obj : objects) {
                if (set.contains(((RecipientSelectView.Recipient) obj).address)) {
                    arrayList.add(obj);
                }
            }
            if (!arrayList.isEmpty()) {
                Iterator it = linkedHashSet.iterator();
                while (it.hasNext()) {
                    recipientSelectView.removeTextChangedListener((TextWatcher) it.next());
                }
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    recipientSelectView.removeObjectSync((RecipientSelectView.Recipient) it2.next());
                }
                Iterator it3 = linkedHashSet.iterator();
                while (it3.hasNext()) {
                    recipientSelectView.addTextChangedListener((TextWatcher) it3.next());
                }
            }
        }
        Pattern pattern = Address.ATOM;
        Identity identity2 = (Identity) this.backendStorage;
        if (identity2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("identity");
            throw null;
        }
        Address[] m931parse = K9MailLib.m931parse(identity2.replyTo);
        Address[] addressArr2 = m931parse.length != 0 ? m931parse : null;
        this.imapStore = addressArr2;
        if (addressArr2 != null) {
            anonymousClass7.silentlyAddAddresses(addressArr2);
        }
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void startBodyPart() {
        LinkedList linkedList = (LinkedList) this.accountName;
        expect(MimeMultipart.class);
        try {
            MimeBodyPart mimeBodyPart = new MimeBodyPart(0);
            ((MimeMultipart) linkedList.peek()).addBodyPart(mimeBodyPart);
            linkedList.addFirst(mimeBodyPart);
        } catch (MessagingException e) {
            throw new MimeException(e);
        }
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void startHeader() {
        expect(Part.class);
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void startMessage() {
        LinkedList linkedList = (LinkedList) this.accountName;
        if (linkedList.isEmpty()) {
            linkedList.addFirst((MimeMessage) this.imapStore);
            return;
        }
        expect(Part.class);
        Part part = (Part) linkedList.peek();
        MimeMessage mimeMessage = new MimeMessage(false);
        part.setBody(mimeMessage);
        linkedList.addFirst(mimeMessage);
    }

    @Override // org.apache.james.mime4j.parser.ContentHandler
    public void startMultipart(Uri.Builder builder) {
        expect(Part.class);
        LinkedList linkedList = (LinkedList) this.accountName;
        Part part = (Part) linkedList.peek();
        MimeMultipart mimeMultipart = new MimeMultipart((String) builder.scheme, (String) builder.query);
        part.setBody(mimeMultipart);
        linkedList.addFirst(mimeMultipart);
    }

    @Override // org.jsoup.select.NodeVisitor
    public void tail(Node node, int i) {
        if (node == ((Element) this.imapStore)) {
            this.imapStore = null;
            return;
        }
        if ((node instanceof Element) && isSafeTag(node)) {
            Element element = (Element) ((Element) this.backendStorage).parentNode;
            if (element != null) {
                this.backendStorage = element;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing parent");
            }
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 1:
                String str = (String) this.imapStore;
                String str2 = (String) this.accountName;
                StringBuilder sb = new StringBuilder("NavDeepLinkRequest{");
                android.net.Uri uri = (android.net.Uri) this.backendStorage;
                if (uri != null) {
                    sb.append(" uri=");
                    sb.append(String.valueOf(uri));
                }
                if (str2 != null) {
                    sb.append(" action=");
                    sb.append(str2);
                }
                if (str != null) {
                    sb.append(" mimetype=");
                    sb.append(str);
                }
                sb.append(" }");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    @Override // com.bumptech.glide.load.resource.transcode.ResourceTranscoder
    public Resource transcode(Resource resource, Options options) {
        Drawable drawable = (Drawable) resource.get();
        if (drawable instanceof BitmapDrawable) {
            return ((PriorityQueue) this.backendStorage).transcode(BitmapResource.obtain(((BitmapDrawable) drawable).getBitmap(), (BitmapPool) this.accountName), options);
        }
        if (drawable instanceof GifDrawable) {
            return ((UnitTranscoder) this.imapStore).transcode(resource, options);
        }
        return null;
    }

    private final void stopGrowingBuffers$com$bumptech$glide$load$resource$bitmap$ImageReader$ByteBufferReader() {
    }

    private final void stopGrowingBuffers$com$bumptech$glide$load$resource$bitmap$ImageReader$ParcelFileDescriptorImageReader() {
    }

    public /* synthetic */ ImapSync(Object obj, Object obj2, Object obj3, boolean z, int i) {
        this.$r8$classId = i;
        this.imapStore = obj;
        this.accountName = obj2;
        this.backendStorage = obj3;
    }

    public ImapSync(Set set, DisplayHtml displayHtml) {
        this.$r8$classId = 4;
        this.accountName = set;
        this.backendStorage = displayHtml;
        this.imapStore = new Configuration.Builder(8);
    }

    public ImapSync(LocalStore.AnonymousClass7 anonymousClass7) {
        this.$r8$classId = 14;
        this.accountName = anonymousClass7;
    }

    public ImapSync(Preferences preferences, DefaultLegacyAccountManager defaultLegacyAccountManager, AccountId accountId) {
        this.$r8$classId = 21;
        accountId.getClass();
        this.accountName = preferences;
        this.backendStorage = defaultLegacyAccountManager;
        this.imapStore = accountId;
    }

    public ImapSync(Dispatcher dispatcher, RealImapStore realImapStore) {
        this.$r8$classId = 15;
        this.backendStorage = dispatcher;
        this.imapStore = realImapStore;
        this.accountName = Log.INSTANCE;
    }

    public ImapSync(MessagingController messagingController, MessageStoreManager messageStoreManager, SaveMessageDataCreator saveMessageDataCreator, DefaultLocalMessageUidPrefixProvider defaultLocalMessageUidPrefixProvider) {
        this.$r8$classId = 17;
        this.accountName = messagingController;
        this.backendStorage = messageStoreManager;
        this.imapStore = saveMessageDataCreator;
    }

    public ImapSync(Element element, Element element2) {
        this.$r8$classId = 3;
        this.accountName = element;
        this.backendStorage = element2;
    }

    public ImapSync(android.net.Uri uri, String str, String str2) {
        this.$r8$classId = 1;
        this.backendStorage = uri;
        this.accountName = str;
        this.imapStore = str2;
    }

    public /* synthetic */ ImapSync(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.accountName = obj;
        this.backendStorage = obj2;
        this.imapStore = obj3;
    }

    public ImapSync(MarkEnforcingInputStream markEnforcingInputStream, ArrayList arrayList, LruArrayPool lruArrayPool) {
        this.$r8$classId = 10;
        Util.checkNotNull(lruArrayPool, "Argument must not be null");
        this.backendStorage = lruArrayPool;
        Util.checkNotNull(arrayList, "Argument must not be null");
        this.imapStore = arrayList;
        this.accountName = new InputStreamRewinder(markEnforcingInputStream, lruArrayPool);
    }

    public ImapSync(String str, DecoderUtil$Encoding decoderUtil$Encoding, ByteString byteString) {
        this.$r8$classId = 19;
        byteString.getClass();
        this.accountName = str;
        this.backendStorage = decoderUtil$Encoding;
        this.imapStore = byteString;
    }

    public ImapSync(ParcelFileDescriptor parcelFileDescriptor, ArrayList arrayList, LruArrayPool lruArrayPool) {
        this.$r8$classId = 11;
        Util.checkNotNull(lruArrayPool, "Argument must not be null");
        this.accountName = lruArrayPool;
        Util.checkNotNull(arrayList, "Argument must not be null");
        this.backendStorage = arrayList;
        this.imapStore = new InputStreamRewinder(parcelFileDescriptor);
    }

    public ImapSync(Configuration.Builder builder) {
        this.$r8$classId = 2;
        this.accountName = builder;
        this.backendStorage = new ReentrantLock();
        this.imapStore = new WeakHashMap();
    }

    public ImapSync(Engine engine, SingleRequest singleRequest, EngineJob engineJob) {
        this.$r8$classId = 8;
        this.imapStore = engine;
        this.backendStorage = singleRequest;
        this.accountName = engineJob;
    }

    public ImapSync(MimeMessage mimeMessage, AsyncTimeout.Companion companion) {
        this.$r8$classId = 20;
        this.imapStore = mimeMessage;
        this.accountName = new LinkedList();
        this.backendStorage = companion;
    }

    @Override // com.fsck.k9.mailstore.LocalStore.BatchSetSelection
    public void doDbWork(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        sQLiteDatabase.update("messages", (ContentValues) this.backendStorage, "empty = 0 AND id".concat(str), strArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02ed A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v27, types: [com.fsck.k9.mailstore.LockableDatabase] */
    /* JADX WARN: Type inference failed for: r26v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v16, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int downloadMessages(com.fsck.k9.backend.api.SyncConfig r32, com.fsck.k9.mail.store.pop3.Pop3Folder r33, com.fsck.k9.mailstore.K9BackendFolder r34, java.util.ArrayList r35, androidx.room.RoomConnectionManager r36) {
        /*
            Method dump skipped, instructions count: 883
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.backend.imap.ImapSync.downloadMessages(com.fsck.k9.backend.api.SyncConfig, com.fsck.k9.mail.store.pop3.Pop3Folder, com.fsck.k9.mailstore.K9BackendFolder, java.util.ArrayList, androidx.room.RoomConnectionManager):int");
    }
}
