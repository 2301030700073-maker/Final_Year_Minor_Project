package com.fsck.k9.mail.internet;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.CircularArray;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.network.internal.UtilsKt;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.Body;
import com.fsck.k9.mail.Multipart;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.internet.BinaryTempFileBody;
import com.fsck.k9.mail.internet.Viewable;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.ui.KoinModuleKt$$ExternalSyntheticLambda0;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlin.text.StringsKt;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;
import okio.Buffer;
import okio.Buffer$inputStream$1;
import okio.ByteString;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.input.BoundedInputStream;
import org.apache.commons.io.output.StringBuilderWriter;
import org.jsoup.nodes.Entities$$ExternalSyntheticThreadLocal1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class JisSupport {
    public static final String[][] CHARSET_FALLBACK_MAP = {new String[]{"koi8-u", "koi8-r"}, new String[]{"iso-2022-jp-[\\d]+", "iso-2022-jp"}};
    public static final byte[] ASCII_ESCAPE_SEQUENCE = {27, 40, 66};
    public static final char[] TSPECIALS = {'(', ')', '<', '>', '@', ',', ';', ':', '\\', '\"', '/', '[', ']', '?', '='};
    public static final char[] ATEXT_SPECIAL = {'!', '#', '$', '%', '&', '\'', '*', '+', '-', '/', '=', '?', '^', '_', '`', '{', '|', '}', '~'};

    public static String charsetDecode(ImapSync imapSync) {
        try {
            Buffer buffer = new Buffer();
            buffer.m1052write((ByteString) imapSync.imapStore);
            return readToString(new Buffer$inputStream$1(buffer), (String) imapSync.accountName);
        } catch (IOException unused) {
            return null;
        }
    }

    public static void checkHeader(String str, String str2) {
        str.getClass();
        str2.getClass();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (!isVChar(charAt) || charAt == ':') {
                throw new MimeHeaderParserException("Header name contains characters not allowed: ".concat(str), -1);
            }
        }
        CircularArray circularArray = new CircularArray(str2, str.length() + 2);
        while (!circularArray.endReached()) {
            char peek = circularArray.peek();
            if (peek == '\r') {
                circularArray.expect('\r', "CR");
                circularArray.expect('\n', "LF");
                if (circularArray.capacityBitmask > 1000) {
                    throw new MimeHeaderParserException("Line exceeds 998 characters", circularArray.tail - 1);
                }
                circularArray.capacityBitmask = 0;
                if (circularArray.endReached() || !isWsp(circularArray.peek())) {
                    throw new MimeHeaderParserException("Expected WSP", circularArray.tail);
                }
                circularArray.skip();
                while (!circularArray.endReached() && isWsp(circularArray.peek())) {
                    circularArray.skip();
                }
                if (circularArray.endReached() || !isVChar(circularArray.peek())) {
                    throw new MimeHeaderParserException("Expected VCHAR", circularArray.tail);
                }
                circularArray.skip();
            } else {
                if (!isVChar(peek) && !isWsp(peek)) {
                    throw new MimeHeaderParserException(CameraDevices$CC.m((int) peek, "Unexpected character (", ")"), circularArray.tail);
                }
                while (!circularArray.endReached()) {
                    char peek2 = circularArray.peek();
                    if (isVChar(peek2) || isWsp(peek2)) {
                        circularArray.skip();
                    }
                }
            }
        }
        if (circularArray.capacityBitmask > 998) {
            throw new MimeHeaderParserException("Line exceeds 998 characters", circularArray.tail);
        }
    }

    public static void closeInputStreamWithoutDeletingTemporaryFiles(InputStream inputStream) {
        if (inputStream instanceof BinaryTempFileBody.BinaryTempFileBodyInputStream) {
            ((BinaryTempFileBody.BinaryTempFileBodyInputStream) inputStream).closeWithoutDeleting();
        } else {
            inputStream.close();
        }
    }

    public static final String createHeaderValue(Address[] addressArr) {
        addressArr.getClass();
        if (addressArr.length == 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("addresses must not be empty");
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int length = addressArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            String encodedString = addressArr[i2].toEncodedString();
            int length2 = encodedString.length();
            if (i2 <= 0 || i + 2 + length2 + 1 <= 78) {
                if (i2 > 0) {
                    sb.append(", ");
                    i += 2;
                }
                sb.append(encodedString);
                i += length2;
            } else {
                sb.append(",\r\n ");
                sb.append(encodedString);
                i = length2 + 1;
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:95:0x01c9, code lost:
    
        if (r10.intValue() != 0) goto L102;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0286  */
    /* JADX WARN: Type inference failed for: r12v5, types: [com.fsck.k9.mail.internet.RegularValueParameterSection] */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v8, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r18v1, types: [com.fsck.k9.mail.internet.MimeMessage, com.fsck.k9.mail.internet.MimeValue, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v37, types: [com.fsck.k9.mail.internet.RegularValueParameterSection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.fsck.k9.mail.internet.MimeValue decode(java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 768
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mail.internet.JisSupport.decode(java.lang.String):com.fsck.k9.mail.internet.MimeValue");
    }

    public static InputStream decodeBody(Body body) {
        if (!(body instanceof RawDataBody)) {
            return body.getInputStream();
        }
        RawDataBody rawDataBody = (RawDataBody) body;
        String encoding = rawDataBody.getEncoding();
        InputStream inputStream = rawDataBody.getInputStream();
        if (!"7bit".equalsIgnoreCase(encoding) && !"8bit".equalsIgnoreCase(encoding) && !"binary".equalsIgnoreCase(encoding)) {
            int i = 1;
            if ("base64".equalsIgnoreCase(encoding)) {
                return new LocalStore.AnonymousClass11(inputStream, inputStream, i);
            }
            if ("quoted-printable".equalsIgnoreCase(encoding)) {
                return new LocalStore.AnonymousClass12(inputStream, inputStream, i);
            }
            Log.w("Unsupported encoding: %s", encoding);
        }
        return inputStream;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x01ad, code lost:
    
        if (r2 != false) goto L88;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0156  */
    /* JADX WARN: Type inference failed for: r10v9, types: [int] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r2v29, types: [java.lang.Object, okio.ByteString] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String decodeEncodedWords(java.lang.String r17, com.fsck.k9.mail.internet.MimeMessage r18) {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mail.internet.JisSupport.decodeEncodedWords(java.lang.String, com.fsck.k9.mail.internet.MimeMessage):java.lang.String");
    }

    public static void decodePreviousAndAppendSuffix(StringBuilder sb, ImapSync imapSync, String str, int i) {
        if (imapSync != null) {
            sb.append(charsetDecode(imapSync));
        }
        sb.append((CharSequence) str, i, str.length());
    }

    /* JADX WARN: Code restructure failed: missing block: B:150:0x0198, code lost:
    
        if (isAttributeChar((char) ((byte) (128 | (r14 & '?')))) != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0175, code lost:
    
        r12 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0172, code lost:
    
        r12 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0170, code lost:
    
        if (isAttributeChar((char) ((byte) r14)) != false) goto L88;
     */
    /* JADX WARN: Removed duplicated region for block: B:273:0x04f8  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x05fe  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0614 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0148  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String encode(java.lang.String r26, java.util.Map r27) {
        /*
            Method dump skipped, instructions count: 1569
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mail.internet.JisSupport.encode(java.lang.String, java.util.Map):java.lang.String");
    }

    public static void findAttachments(Multipart multipart, HashSet hashSet, ArrayList arrayList) {
        for (Part part : DesugarCollections.unmodifiableList(multipart.mParts)) {
            Body body = part.getBody();
            if (body instanceof Multipart) {
                findAttachments((Multipart) body, hashSet, arrayList);
            } else if (!hashSet.contains(part)) {
                arrayList.add(part);
            }
        }
    }

    public static Part findFirstPartByMimeType(Part part, String str) {
        if (!(part.getBody() instanceof Multipart)) {
            if (isSameMimeType(part.getMimeType(), str)) {
                return part;
            }
            return null;
        }
        Iterator it = DesugarCollections.unmodifiableList(((Multipart) part.getBody()).mParts).iterator();
        while (it.hasNext()) {
            Part findFirstPartByMimeType = findFirstPartByMimeType((MimeBodyPart) it.next(), str);
            if (findFirstPartByMimeType != null) {
                return findFirstPartByMimeType;
            }
        }
        return null;
    }

    public static ArrayList findHtmlPart(Multipart multipart, HashSet hashSet, ArrayList arrayList, boolean z) {
        ArrayList arrayList2 = new ArrayList();
        boolean z2 = false;
        for (Part part : DesugarCollections.unmodifiableList(multipart.mParts)) {
            Body body = part.getBody();
            if (body instanceof Multipart) {
                Multipart multipart2 = (Multipart) body;
                if (z && z2) {
                    findAttachments(multipart2, hashSet, arrayList);
                } else {
                    ArrayList findHtmlPart = findHtmlPart(multipart2, hashSet, arrayList, false);
                    if (!findHtmlPart.isEmpty()) {
                        arrayList2.addAll(findHtmlPart);
                        z2 = true;
                    }
                }
            } else if (!(z && z2) && isPartTextualBody(part).booleanValue() && isSameMimeType(part.getMimeType(), "text/html")) {
                arrayList2.add(new Viewable.Html(part));
                z2 = true;
            } else if (!hashSet.contains(part)) {
                arrayList.add(part);
            }
        }
        return arrayList2;
    }

    public static ArrayList findTextPart(Multipart multipart, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (Part part : DesugarCollections.unmodifiableList(multipart.mParts)) {
            Body body = part.getBody();
            if (!(body instanceof Multipart)) {
                if (isPartTextualBody(part).booleanValue() && isSameMimeType(part.getMimeType(), UtilsKt.MIME_TYPE_TEXT_PLAIN)) {
                    arrayList.add(new Viewable.Text(part));
                    if (z) {
                        break;
                    }
                }
            } else {
                ArrayList findTextPart = findTextPart((Multipart) body, false);
                if (!findTextPart.isEmpty()) {
                    arrayList.addAll(findTextPart);
                    if (z) {
                        break;
                    }
                } else {
                    continue;
                }
            }
        }
        return arrayList;
    }

    public static void findViewablesAndAttachments(Part part, List list, ArrayList arrayList) {
        boolean z = list == null;
        Body body = part.getBody();
        if (!(body instanceof Multipart)) {
            if (body instanceof MimeMessage) {
                String disposition = part.getDisposition();
                if (!"attachment".equalsIgnoreCase(disposition != null ? getHeaderParameter(disposition, null) : null)) {
                    if (z) {
                        return;
                    }
                    MimeMessage mimeMessage = (MimeMessage) body;
                    Viewable.MessageHeader messageHeader = new Viewable.MessageHeader();
                    messageHeader.mContainerPart = part;
                    messageHeader.mMessage = mimeMessage;
                    list.add(messageHeader);
                    findViewablesAndAttachments(mimeMessage, list, arrayList);
                    return;
                }
            }
            if (isPartTextualBody(part).booleanValue()) {
                if (z) {
                    return;
                }
                list.add(isSameMimeType(part.getMimeType(), UtilsKt.MIME_TYPE_TEXT_PLAIN) ? new Viewable.Text(part) : new Viewable.Html(part));
                return;
            } else {
                if (isSameMimeType(part.getMimeType(), "application/pgp-signature") || isSameMimeType(part.getMimeType(), "text/rfc822-headers")) {
                    return;
                }
                arrayList.add(part);
                return;
            }
        }
        Multipart multipart = (Multipart) body;
        if (!isSameMimeType(part.getMimeType(), "multipart/alternative")) {
            boolean isSameMimeType = isSameMimeType(part.getMimeType(), "multipart/signed");
            ArrayList arrayList2 = multipart.mParts;
            if (isSameMimeType) {
                if (arrayList2.size() > 0) {
                    findViewablesAndAttachments(multipart.getBodyPart(0), list, arrayList);
                    return;
                }
                return;
            } else {
                Iterator it = DesugarCollections.unmodifiableList(arrayList2).iterator();
                while (it.hasNext()) {
                    findViewablesAndAttachments((Part) it.next(), list, arrayList);
                }
                return;
            }
        }
        ArrayList findTextPart = findTextPart(multipart, true);
        ArrayList findHtmlPart = findHtmlPart(multipart, getParts(findTextPart), arrayList, true);
        if (z) {
            return;
        }
        if (findTextPart.isEmpty() && findHtmlPart.isEmpty()) {
            return;
        }
        Viewable.Alternative alternative = new Viewable.Alternative();
        alternative.mText = findTextPart;
        alternative.mHtml = findHtmlPart;
        list.add(alternative);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String fixupCharset(java.lang.String r7, com.fsck.k9.mail.internet.MimeMessage r8) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mail.internet.JisSupport.fixupCharset(java.lang.String, com.fsck.k9.mail.internet.MimeMessage):java.lang.String");
    }

    public static HashMap getAllHeaderParameters(String str) {
        HashMap hashMap = new HashMap();
        for (String str2 : str.replaceAll("\r|\n", "").split(";")) {
            String[] split = str2.split("=", 2);
            if (split.length == 2) {
                hashMap.put(split[0].trim().toLowerCase(Locale.US), split[1].trim());
            }
        }
        return hashMap;
    }

    public static String getHeaderParameter(String str, String str2) {
        if (str == null) {
            return null;
        }
        return str2 == null ? new MessageIdParser(str, 1).readHeaderValue() : (String) decode(str).parameters.get(str2.toLowerCase(Locale.ROOT));
    }

    public static HashSet getParts(ArrayList arrayList) {
        HashSet hashSet = new HashSet();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Viewable viewable = (Viewable) it.next();
            if (viewable instanceof Viewable.Textual) {
                hashSet.add(((Viewable.Textual) viewable).mPart);
            } else if (viewable instanceof Viewable.Alternative) {
                Viewable.Alternative alternative = (Viewable.Alternative) viewable;
                hashSet.addAll(getParts(alternative.mText));
                hashSet.addAll(getParts(alternative.mHtml));
            }
        }
        return hashSet;
    }

    public static String getTextFromPart(Part part, long j) {
        if (part == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("Argument 'part' must not be null");
            return null;
        }
        try {
            Body body = part.getBody();
            if (body == null) {
                Log.v("No body present for this message part", new Object[0]);
                return null;
            }
            if (body instanceof TextBody) {
                return ((TextBody) body).text;
            }
            String mimeType = part.getMimeType();
            if ((mimeType != null && Pattern.compile("text/*".replaceAll("\\*", "\\.\\*"), 2).matcher(mimeType).matches()) || part.isMimeType("application/pgp")) {
                return getTextFromTextPart(part, body, mimeType, j);
            }
            Log.w("Provided non-text part: %s", mimeType);
            return null;
        } catch (IOException e) {
            e = e;
            Log.e(e, "Unable to getTextFromPart", new Object[0]);
            return null;
        } catch (MessagingException e2) {
            e = e2;
            Log.e(e, "Unable to getTextFromPart", new Object[0]);
            return null;
        }
    }

    public static String getTextFromTextPart(Part part, Body body, String str, long j) {
        MimeValue mimeValue;
        MimeMessage mimeMessage;
        InputStream decodeBody;
        String str2;
        FormatFlowedResult formatFlowedResult;
        boolean z;
        Multipart multipart;
        part.getClass();
        MessageIdParser messageIdParser = new MessageIdParser(part.getContentType(), 1);
        String readHeaderValue = messageIdParser.readHeaderValue();
        messageIdParser.skipCFWS();
        String str3 = null;
        if (messageIdParser.endReached()) {
            mimeValue = new MimeValue(readHeaderValue, EmptyMap.INSTANCE, EmptyList.INSTANCE, null);
        } else {
            BasicParameterResults readBasicParameters = readBasicParameters(messageIdParser);
            LinkedHashMap linkedHashMap = readBasicParameters.parameters;
            ArrayList arrayList = readBasicParameters.ignoredParameters;
            Integer num = readBasicParameters.parserErrorIndex;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap.size()));
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                linkedHashMap2.put(entry.getKey(), ((ParameterValue) entry.getValue()).value);
            }
            mimeValue = new MimeValue(readHeaderValue, linkedHashMap2, arrayList, num);
        }
        String str4 = (String) mimeValue.parameters.get("charset");
        if (str4 == null) {
            Set set = SequencesKt.toSet(new TakeWhileSequence(new FilteringSequence(CollectionsKt.asSequence(mimeValue.ignoredParameters), true, new KoinModuleKt$$ExternalSyntheticLambda0(7)), new KoinModuleKt$$ExternalSyntheticLambda0(8), 2));
            str4 = set.size() == 1 ? (String) CollectionsKt.first(set) : null;
        }
        if (isSameMimeType(str, "text/html") && str4 == null) {
            decodeBody = decodeBody(body);
            try {
                byte[] bArr = new byte[256];
                decodeBody.read(bArr, 0, 256);
                String str5 = new String(bArr, "US-ASCII");
                if (str5.isEmpty()) {
                    return "";
                }
                Matcher matcher = Pattern.compile("<meta http-equiv=\"?Content-Type\"? content=\"text/html; charset=(.+?)\">", 2).matcher(str5);
                if (matcher.find()) {
                    str4 = matcher.group(1);
                }
                try {
                    closeInputStreamWithoutDeletingTemporaryFiles(decodeBody);
                } catch (IOException unused) {
                }
            } finally {
                try {
                    closeInputStreamWithoutDeletingTemporaryFiles(decodeBody);
                } catch (IOException unused2) {
                }
            }
        }
        Part part2 = part;
        while (part2 != null) {
            if (part2 instanceof MimeMessage) {
                mimeMessage = (MimeMessage) part2;
                break;
            }
            if (!(part2 instanceof MimeBodyPart) || (multipart = ((MimeBodyPart) part2).parent) == null) {
                break;
            }
            part2 = multipart.mParent;
        }
        mimeMessage = null;
        String fixupCharset = fixupCharset(str4, mimeMessage);
        decodeBody = decodeBody(body);
        try {
            String readToString = readToString(j != -1 ? new BoundedInputStream(decodeBody, j) : decodeBody, fixupCharset);
            try {
                closeInputStreamWithoutDeletingTemporaryFiles(decodeBody);
            } catch (IOException unused3) {
            }
            MimeValue decode = decode(part.getContentType());
            Map map = decode.parameters;
            if (isSameMimeType(UtilsKt.MIME_TYPE_TEXT_PLAIN, decode.value)) {
                String str6 = (String) map.get("format");
                if (str6 != null) {
                    str2 = str6.toLowerCase(Locale.ROOT);
                    str2.getClass();
                } else {
                    str2 = null;
                }
                if (Intrinsics.areEqual(str2, "flowed")) {
                    String str7 = (String) map.get("delsp");
                    if (str7 != null) {
                        str3 = str7.toLowerCase(Locale.ROOT);
                        str3.getClass();
                    }
                    formatFlowedResult = new FormatFlowedResult(true, Intrinsics.areEqual(str3, "yes"));
                } else {
                    formatFlowedResult = new FormatFlowedResult(false, false);
                }
            } else {
                formatFlowedResult = new FormatFlowedResult(false, false);
            }
            if (!formatFlowedResult.isFormatFlowed) {
                return readToString;
            }
            StringBuilder sb = new StringBuilder();
            int i = 0;
            int i2 = 0;
            boolean z2 = false;
            while (i <= readToString.length() - 1) {
                int i3 = 0;
                while (i <= readToString.length() - 1 && readToString.charAt(i) == '>') {
                    i3++;
                    i++;
                }
                if (i <= readToString.length() - 1 && readToString.charAt(i) == ' ') {
                    i++;
                }
                int indexOf$default = StringsKt.indexOf$default(readToString, '\n', i, 4);
                boolean z3 = indexOf$default != -1;
                int length = z3 ? indexOf$default : readToString.length();
                if (length > 0 && readToString.charAt(length - 1) == '\r') {
                    length--;
                }
                if (z2 && i3 != i2) {
                    sb.append("\r\n");
                    z2 = false;
                }
                if (length - i == 3 && readToString.regionMatches(i, "-- ", 0, 3)) {
                    if (z2) {
                        sb.append("\r\n");
                        z = false;
                        z2 = false;
                    }
                    z = false;
                } else {
                    if (length > i && readToString.charAt(length - 1) == ' ') {
                        if (formatFlowedResult.isDelSp) {
                            length--;
                        }
                        z = true;
                    }
                    z = false;
                }
                if (!z2 && i3 > 0) {
                    for (int i4 = 0; i4 < i3; i4++) {
                        sb.append('>');
                    }
                    sb.append(' ');
                }
                sb.append((CharSequence) readToString, i, length);
                if (!z && z3) {
                    sb.append("\r\n");
                }
                i = z3 ? indexOf$default + 1 : readToString.length();
                z2 = z;
                i2 = i3;
            }
            return sb.toString();
        } finally {
            try {
                closeInputStreamWithoutDeletingTemporaryFiles(decodeBody);
            } catch (IOException unused4) {
            }
        }
    }

    public static boolean hasMissingParts(Part part) {
        Body body = part.getBody();
        if (body == null) {
            return true;
        }
        if (!(body instanceof Multipart)) {
            return false;
        }
        Iterator it = DesugarCollections.unmodifiableList(((Multipart) body).mParts).iterator();
        while (it.hasNext()) {
            if (hasMissingParts((Part) it.next())) {
                return true;
            }
        }
        return false;
    }

    public static final boolean isAText(char c) {
        if ('A' <= c && c < '[') {
            return true;
        }
        if ('a' > c || c >= '{') {
            return ('0' <= c && c < ':') || ArraysKt___ArraysKt.contains(ATEXT_SPECIAL, c);
        }
        return true;
    }

    public static final boolean isAttributeChar(char c) {
        return (!isVChar(c) || c == '*' || c == '\'' || c == '%' || ArraysKt___ArraysKt.contains(TSPECIALS, c)) ? false : true;
    }

    public static boolean isInDomain(String str, String str2) {
        int length = (str.length() - str2.length()) - 1;
        if (length < 0) {
            return false;
        }
        char charAt = str.charAt(length);
        return (charAt == '@' || charAt == '.') && str.endsWith(str2);
    }

    public static boolean isMultipart(String str) {
        return str != null && str.toLowerCase(Locale.US).startsWith("multipart/");
    }

    public static Boolean isPartTextualBody(Part part) {
        String str;
        String disposition = part.getDisposition();
        String str2 = null;
        if (disposition != null) {
            str2 = getHeaderParameter(disposition, null);
            str = getHeaderParameter(disposition, "filename");
        } else {
            str = null;
        }
        return Boolean.valueOf(!"attachment".equalsIgnoreCase(str2) && str == null && (part.isMimeType("text/html") || part.isMimeType(UtilsKt.MIME_TYPE_TEXT_PLAIN) || part.isMimeType("application/pgp")));
    }

    public static boolean isSameMimeType(String str, String str2) {
        return str != null && str.equalsIgnoreCase(str2);
    }

    public static boolean isToken(String str) {
        if (str.length() == 0) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (!isVChar(charAt) || ArraysKt___ArraysKt.contains(TSPECIALS, charAt)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean isVChar(char c) {
        return '!' <= c && c < 127;
    }

    public static final boolean isWsp(char c) {
        return c == ' ' || c == '\t';
    }

    public static String quotedUtf8(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 16);
        sb.append('\"');
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '\"' || charAt == '\\') {
                sb.append('\\');
                sb.append(charAt);
            } else {
                sb.append(charAt);
            }
        }
        sb.append('\"');
        return sb.toString();
    }

    public static BasicParameterResults readBasicParameters(MessageIdParser messageIdParser) {
        Integer valueOf;
        ParameterValue parameterValue;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        do {
            try {
                messageIdParser.expect(';');
                String lowerCase = messageIdParser.readToken().toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                messageIdParser.skipCFWS();
                messageIdParser.expect('=');
                messageIdParser.skipCFWS();
                if (messageIdParser.peek() == '\"') {
                    messageIdParser.expect('\"');
                    StringBuilder sb = new StringBuilder();
                    while (!messageIdParser.endReached() && messageIdParser.peek() != '\"') {
                        char read = messageIdParser.read();
                        if (read != '\n' && read != '\r') {
                            if (read != '\\') {
                                sb.append(read);
                            } else {
                                sb.append(messageIdParser.read());
                            }
                        }
                    }
                    String sb2 = sb.toString();
                    messageIdParser.expect('\"');
                    parameterValue = new ParameterValue(sb2, false);
                } else {
                    parameterValue = new ParameterValue(messageIdParser.readToken(), true);
                }
                String str = parameterValue.value;
                ParameterValue parameterValue2 = (ParameterValue) linkedHashMap.remove(lowerCase);
                if (parameterValue2 != null) {
                    linkedHashSet.add(lowerCase);
                    arrayList.add(new Pair(lowerCase, parameterValue2.value));
                    arrayList.add(new Pair(lowerCase, str));
                } else if (linkedHashSet.contains(lowerCase)) {
                    arrayList.add(new Pair(lowerCase, str));
                } else {
                    linkedHashMap.put(lowerCase, parameterValue);
                }
                messageIdParser.skipCFWS();
            } catch (MimeHeaderParserException e) {
                valueOf = Integer.valueOf(e.errorIndex);
            }
        } while (!messageIdParser.endReached());
        valueOf = null;
        return new BasicParameterResults(linkedHashMap, arrayList, valueOf);
    }

    public static String readToString(InputStream inputStream, String str) {
        boolean z;
        boolean z2;
        IOUtils.ScratchChars scratchChars;
        if (str.length() > 19 && str.startsWith("x-") && str.endsWith("-iso-2022-jp-2007") && !Charset.isSupported(str)) {
            Iso2022JpToShiftJisInputStream iso2022JpToShiftJisInputStream = new Iso2022JpToShiftJisInputStream();
            iso2022JpToShiftJisInputStream.charset = 1;
            iso2022JpToShiftJisInputStream.hasOut = false;
            iso2022JpToShiftJisInputStream.mIn = inputStream;
            str = CameraDevices$CC.m("x-", str.substring(2, str.length() - 17), "-shift_jis-2007");
            inputStream = iso2022JpToShiftJisInputStream;
        }
        if (str.length() <= 17 || !str.startsWith("x-") || !str.endsWith("-shift_jis-2007") || Charset.isSupported(str)) {
            z = false;
        } else {
            z = str.substring(2, str.length() - 15).equals("iphone");
            str = "shift_jis";
        }
        try {
            z2 = Charset.isSupported(str);
        } catch (IllegalCharsetNameException unused) {
            z2 = false;
        }
        for (int i = 0; i < 2; i++) {
            String[] strArr = CHARSET_FALLBACK_MAP[i];
            if (z2) {
                break;
            }
            if (str.matches(strArr[0])) {
                Log.e("I don't know how to deal with the charset %s. Falling back to %s", str, strArr[1]);
                str = strArr[1];
                try {
                    z2 = Charset.isSupported(str);
                } catch (IllegalCharsetNameException unused2) {
                    z2 = false;
                }
            }
        }
        if (!z2) {
            str = "US-ASCII";
        }
        int i2 = IOUtils.$r8$clinit;
        int i3 = Charsets.$r8$clinit;
        Charset defaultCharset = Charset.defaultCharset();
        if (str != null) {
            defaultCharset = Charset.forName(str);
        }
        StringBuilderWriter stringBuilderWriter = new StringBuilderWriter();
        if (defaultCharset == null) {
            defaultCharset = Charset.defaultCharset();
        }
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, defaultCharset);
        Entities$$ExternalSyntheticThreadLocal1 entities$$ExternalSyntheticThreadLocal1 = IOUtils.ScratchChars.LOCAL;
        Object[] objArr = (Object[]) entities$$ExternalSyntheticThreadLocal1.get();
        if (((Boolean) objArr[0]).booleanValue()) {
            scratchChars = new IOUtils.ScratchChars(new char[8192]);
        } else {
            objArr[0] = Boolean.TRUE;
            scratchChars = IOUtils.ScratchChars.INSTANCE;
        }
        try {
            char[] cArr = scratchChars.buffer;
            if (cArr == null) {
                cArr = (char[]) ((Object[]) entities$$ExternalSyntheticThreadLocal1.get())[1];
            }
            while (true) {
                int read = inputStreamReader.read(cArr);
                if (-1 == read) {
                    break;
                }
                stringBuilderWriter.write(cArr, 0, read);
            }
            scratchChars.close();
            String sb = stringBuilderWriter.builder.toString();
            if (!z) {
                return sb;
            }
            StringBuilder sb2 = new StringBuilder(sb.length());
            for (int i4 = 0; i4 < sb.length(); i4 = sb.offsetByCodePoints(i4, 1)) {
                int codePointAt = sb.codePointAt(i4);
                switch (codePointAt) {
                    case 57345:
                        codePointAt = 1040795;
                        break;
                    case 57346:
                        codePointAt = 1040796;
                        break;
                    case 57347:
                        codePointAt = 1042467;
                        break;
                    case 57348:
                        codePointAt = 1040797;
                        break;
                    case 57349:
                        codePointAt = 1040798;
                        break;
                    case 57350:
                        codePointAt = 1041615;
                        break;
                    case 57351:
                        codePointAt = 1041613;
                        break;
                    case 57352:
                        codePointAt = 1041647;
                        break;
                    case 57353:
                        codePointAt = 1041699;
                        break;
                    case 57354:
                        codePointAt = 1041701;
                        break;
                    case 57355:
                        codePointAt = 1041704;
                        break;
                    case 57356:
                        codePointAt = 1041720;
                        break;
                    case 57357:
                        codePointAt = 1043350;
                        break;
                    case 57358:
                        codePointAt = 1043351;
                        break;
                    case 57359:
                        codePointAt = 1043352;
                        break;
                    case 57360:
                        codePointAt = 1043347;
                        break;
                    case 57361:
                        codePointAt = 1043348;
                        break;
                    case 57362:
                        codePointAt = 1043349;
                        break;
                    case 57363:
                        codePointAt = 1042389;
                        break;
                    case 57364:
                        codePointAt = 1042386;
                        break;
                    case 57365:
                        codePointAt = 1042387;
                        break;
                    case 57366:
                        codePointAt = 1042385;
                        break;
                    case 57367:
                        codePointAt = 1042394;
                        break;
                    case 57368:
                        codePointAt = 1042388;
                        break;
                    case 57369:
                        codePointAt = 1040829;
                        break;
                    case 57370:
                        codePointAt = 1040830;
                        break;
                    case 57371:
                        codePointAt = 1042404;
                        break;
                    case 57372:
                        codePointAt = 1042410;
                        break;
                    case 57373:
                        codePointAt = 1042409;
                        break;
                    case 57374:
                        codePointAt = 1042399;
                        break;
                    case 57375:
                        codePointAt = 1042403;
                        break;
                    case 57376:
                        codePointAt = 1043209;
                        break;
                    case 57377:
                        codePointAt = 1043204;
                        break;
                    case 57378:
                        codePointAt = 1043212;
                        break;
                    case 57379:
                        codePointAt = 1043214;
                        break;
                    case 57380:
                        codePointAt = 1040414;
                        break;
                    case 57381:
                        codePointAt = 1040415;
                        break;
                    case 57382:
                        codePointAt = 1040416;
                        break;
                    case 57383:
                        codePointAt = 1040417;
                        break;
                    case 57384:
                        codePointAt = 1040418;
                        break;
                    case 57385:
                        codePointAt = 1040419;
                        break;
                    case 57386:
                        codePointAt = 1040420;
                        break;
                    case 57387:
                        codePointAt = 1040421;
                        break;
                    case 57388:
                        codePointAt = 1040422;
                        break;
                    case 57389:
                        codePointAt = 1040423;
                        break;
                    case 57390:
                        codePointAt = 1040424;
                        break;
                    case 57391:
                        codePointAt = 1040425;
                        break;
                    case 57392:
                        codePointAt = 1040448;
                        break;
                    case 57393:
                        codePointAt = 1041618;
                        break;
                    case 57394:
                        codePointAt = 1040449;
                        break;
                    case 57395:
                        codePointAt = 1041682;
                        break;
                    case 57396:
                        codePointAt = 1042469;
                        break;
                    case 57397:
                        codePointAt = 1042470;
                        break;
                    case 57398:
                        codePointAt = 1041584;
                        break;
                    case 57399:
                        codePointAt = 1041595;
                        break;
                    case 57400:
                        codePointAt = 1041586;
                        break;
                    case 57401:
                        codePointAt = 1042412;
                        break;
                    case 57402:
                        codePointAt = 1042421;
                        break;
                    case 57403:
                        codePointAt = 1041603;
                        break;
                    case 57404:
                        codePointAt = 1042432;
                        break;
                    case 57405:
                        codePointAt = 1042433;
                        break;
                    case 57406:
                        codePointAt = 1042451;
                        break;
                    case 57407:
                        codePointAt = 1043330;
                        break;
                    case 57408:
                        codePointAt = 1042453;
                        break;
                    case 57409:
                        codePointAt = 1042454;
                        break;
                    case 57410:
                        codePointAt = 1042456;
                        break;
                    case 57411:
                        codePointAt = 1042816;
                        break;
                    case 57412:
                        codePointAt = 1042818;
                        break;
                    case 57413:
                        codePointAt = 1042817;
                        break;
                    case 57414:
                        codePointAt = 1042786;
                        break;
                    case 57415:
                        codePointAt = 1042819;
                        break;
                    case 57416:
                        codePointAt = 1040387;
                        break;
                    case 57417:
                        codePointAt = 1040385;
                        break;
                    case 57418:
                        codePointAt = 1040384;
                        break;
                    case 57419:
                        codePointAt = 1040386;
                        break;
                    case 57420:
                        codePointAt = 1040404;
                        break;
                    case 57421:
                        codePointAt = 1040393;
                        break;
                    case 57422:
                        codePointAt = 1040815;
                        break;
                    case 57423:
                        codePointAt = 1040824;
                        break;
                    case 57424:
                        codePointAt = 1040832;
                        break;
                    case 57425:
                        codePointAt = 1040833;
                        break;
                    case 57426:
                        codePointAt = 1040823;
                        break;
                    case 57427:
                        codePointAt = 1040834;
                        break;
                    case 57428:
                        codePointAt = 1040835;
                        break;
                    case 57429:
                        codePointAt = 1040828;
                        break;
                    case 57430:
                        codePointAt = 1041205;
                        break;
                    case 57431:
                        codePointAt = 1041200;
                        break;
                    case 57432:
                        codePointAt = 1041187;
                        break;
                    case 57433:
                        codePointAt = 1041184;
                        break;
                    case 57434:
                        codePointAt = 1041652;
                        break;
                    default:
                        switch (codePointAt) {
                            case 57601:
                                codePointAt = 1041709;
                                break;
                            case 57602:
                                codePointAt = 1041710;
                                break;
                            case 57603:
                                codePointAt = 1041707;
                                break;
                            case 57604:
                                codePointAt = 1041702;
                                break;
                            case 57605:
                                codePointAt = 1041193;
                                break;
                            case 57606:
                                codePointAt = 1041191;
                                break;
                            case 57607:
                                codePointAt = 1041217;
                                break;
                            case 57608:
                                codePointAt = 1041220;
                                break;
                            case 57609:
                                codePointAt = 1040836;
                                break;
                            case 57610:
                                codePointAt = 1040837;
                                break;
                            case 57611:
                                codePointAt = 1040831;
                                break;
                            case 57612:
                                codePointAt = 1040816;
                                break;
                            case 57613:
                                codePointAt = 1042413;
                                break;
                            case 57614:
                                codePointAt = 1041617;
                                break;
                            case 57615:
                                codePointAt = 1043286;
                                break;
                            case 57616:
                                codePointAt = 1040444;
                                break;
                            case 57617:
                                codePointAt = 1042471;
                                break;
                            case 57618:
                                codePointAt = 1041680;
                                break;
                            case 57619:
                                codePointAt = 1041653;
                                break;
                            case 57620:
                                codePointAt = 1043333;
                                break;
                            case 57621:
                                codePointAt = 1042393;
                                break;
                            case 57622:
                                codePointAt = 1041610;
                                break;
                            case 57623:
                                codePointAt = 1041685;
                                break;
                            case 57624:
                                codePointAt = 1040447;
                                break;
                            case 57625:
                                codePointAt = 1040450;
                                break;
                            case 57626:
                                codePointAt = 1040818;
                                break;
                            case 57627:
                                codePointAt = 1040814;
                                break;
                            case 57628:
                                codePointAt = 1040819;
                                break;
                            case 57629:
                                codePointAt = 1041654;
                                break;
                            case 57630:
                                codePointAt = 1041723;
                                break;
                            case 57631:
                                codePointAt = 1041719;
                                break;
                            case 57632:
                                codePointAt = 1042784;
                                break;
                            case 57633:
                                codePointAt = 1041596;
                                break;
                            case 57634:
                                codePointAt = 1042427;
                                break;
                            case 57635:
                                codePointAt = 1042426;
                                break;
                            case 57636:
                                codePointAt = 1042429;
                                break;
                            case 57637:
                                codePointAt = 1042439;
                                break;
                            case 57638:
                                codePointAt = 1042461;
                                break;
                            case 57639:
                                codePointAt = 1042462;
                                break;
                            case 57640:
                                codePointAt = 1042463;
                                break;
                            case 57641:
                                codePointAt = 1042464;
                                break;
                            case 57642:
                                codePointAt = 1042460;
                                break;
                            case 57643:
                                codePointAt = 1040817;
                                break;
                            case 57644:
                                codePointAt = 1042459;
                                break;
                            case 57645:
                                codePointAt = 1042443;
                                break;
                            case 57646:
                                codePointAt = 1043250;
                                break;
                            case 57647:
                                codePointAt = 1041629;
                                break;
                            case 57648:
                                codePointAt = 1042444;
                                break;
                            case 57649:
                                codePointAt = 1042395;
                                break;
                            case 57650:
                                codePointAt = 1042391;
                                break;
                            case 57651:
                                codePointAt = 1042445;
                                break;
                            case 57652:
                                codePointAt = 1042396;
                                break;
                            case 57653:
                                codePointAt = 1042414;
                                break;
                            case 57654:
                                codePointAt = 1042411;
                                break;
                            case 57655:
                                codePointAt = 1042424;
                                break;
                            case 57656:
                                codePointAt = 1043251;
                                break;
                            case 57657:
                                codePointAt = 1043252;
                                break;
                            case 57658:
                                codePointAt = 1043253;
                                break;
                            case 57659:
                                codePointAt = 1041673;
                                break;
                            case 57660:
                                codePointAt = 1043289;
                                break;
                            case 57661:
                                codePointAt = 1040388;
                                break;
                            case 57662:
                                codePointAt = 1041622;
                                break;
                            case 57663:
                                codePointAt = 1041669;
                                break;
                            case 57664:
                                codePointAt = 1041671;
                                break;
                            case 57665:
                                codePointAt = 1042465;
                                break;
                            case 57666:
                                codePointAt = 1041711;
                                break;
                            case 57667:
                                codePointAt = 1041684;
                                break;
                            case 57668:
                                codePointAt = 1043334;
                                break;
                            case 57669:
                                codePointAt = 1043335;
                                break;
                            case 57670:
                                codePointAt = 1040395;
                                break;
                            case 57671:
                                codePointAt = 1042789;
                                break;
                            case 57672:
                                codePointAt = 1041734;
                                break;
                            case 57673:
                                codePointAt = 1041630;
                                break;
                            case 57674:
                                codePointAt = 1041631;
                                break;
                            case 57675:
                                codePointAt = 1041713;
                                break;
                            case 57676:
                                codePointAt = 1043294;
                                break;
                            case 57677:
                                codePointAt = 1041589;
                                break;
                            case 57678:
                                codePointAt = 1042423;
                                break;
                            case 57679:
                                codePointAt = 1042422;
                                break;
                            case 57680:
                                codePointAt = 1042407;
                                break;
                            case 57681:
                                codePointAt = 1041670;
                                break;
                            case 57682:
                                codePointAt = 1040801;
                                break;
                            case 57683:
                                codePointAt = 1041587;
                                break;
                            case 57684:
                                codePointAt = 1041590;
                                break;
                            case 57685:
                                codePointAt = 1041588;
                                break;
                            case 57686:
                                codePointAt = 1041593;
                                break;
                            case 57687:
                                codePointAt = 1041594;
                                break;
                            case 57688:
                                codePointAt = 1041591;
                                break;
                            case 57689:
                                codePointAt = 1042406;
                                break;
                            case 57690:
                                codePointAt = 1042415;
                                break;
                            default:
                                switch (codePointAt) {
                                    case 57857:
                                        codePointAt = 1042416;
                                        break;
                                    case 57858:
                                        codePointAt = 1042408;
                                        break;
                                    case 57859:
                                        codePointAt = 1043236;
                                        break;
                                    case 57860:
                                        codePointAt = 1043225;
                                        break;
                                    case 57861:
                                        codePointAt = 1043297;
                                        break;
                                    case 57862:
                                        codePointAt = 1043298;
                                        break;
                                    case 57863:
                                        codePointAt = 1043237;
                                        break;
                                    case 57864:
                                        codePointAt = 1043231;
                                        break;
                                    case 57865:
                                        codePointAt = 1040452;
                                        break;
                                    case 57866:
                                        codePointAt = 1043232;
                                        break;
                                    case 57867:
                                        codePointAt = 1042488;
                                        break;
                                    case 57868:
                                        codePointAt = 1043226;
                                        break;
                                    case 57869:
                                        codePointAt = 1043228;
                                        break;
                                    case 57870:
                                        codePointAt = 1043227;
                                        break;
                                    case 57871:
                                        codePointAt = 1043229;
                                        break;
                                    case 57872:
                                        codePointAt = 1042476;
                                        break;
                                    case 57873:
                                        codePointAt = 1042475;
                                        break;
                                    case 57874:
                                        codePointAt = 1043254;
                                        break;
                                    case 57875:
                                        codePointAt = 1043255;
                                        break;
                                    case 57876:
                                        codePointAt = 1043256;
                                        break;
                                    case 57877:
                                        codePointAt = 1043257;
                                        break;
                                    case 57878:
                                        codePointAt = 1043258;
                                        break;
                                    case 57879:
                                        codePointAt = 1043259;
                                        break;
                                    case 57880:
                                        codePointAt = 1043260;
                                        break;
                                    case 57881:
                                        codePointAt = 1043299;
                                        break;
                                    case 57882:
                                        codePointAt = 1043300;
                                        break;
                                    case 57883:
                                        codePointAt = 1043303;
                                        break;
                                    case 57884:
                                        codePointAt = 1042478;
                                        break;
                                    case 57885:
                                        codePointAt = 1042479;
                                        break;
                                    case 57886:
                                        codePointAt = 1042480;
                                        break;
                                    case 57887:
                                        codePointAt = 1042481;
                                        break;
                                    case 57888:
                                        codePointAt = 1042482;
                                        break;
                                    case 57889:
                                        codePointAt = 1042483;
                                        break;
                                    case 57890:
                                        codePointAt = 1042484;
                                        break;
                                    case 57891:
                                        codePointAt = 1042485;
                                        break;
                                    case 57892:
                                        codePointAt = 1042486;
                                        break;
                                    case 57893:
                                        codePointAt = 1042487;
                                        break;
                                    case 57894:
                                        codePointAt = 1043261;
                                        break;
                                    case 57895:
                                        codePointAt = 1043262;
                                        break;
                                    case 57896:
                                        codePointAt = 1043263;
                                        break;
                                    case 57897:
                                        codePointAt = 1043329;
                                        break;
                                    case 57898:
                                        codePointAt = 1043249;
                                        break;
                                    case 57899:
                                        codePointAt = 1043247;
                                        break;
                                    case 57900:
                                        codePointAt = 1043264;
                                        break;
                                    case 57901:
                                        codePointAt = 1043265;
                                        break;
                                    case 57902:
                                        codePointAt = 1043353;
                                        break;
                                    case 57903:
                                        codePointAt = 1043354;
                                        break;
                                    case 57904:
                                        codePointAt = 1043355;
                                        break;
                                    case 57905:
                                        codePointAt = 1043356;
                                        break;
                                    case 57906:
                                        codePointAt = 1043192;
                                        break;
                                    case 57907:
                                        codePointAt = 1043193;
                                        break;
                                    case 57908:
                                        codePointAt = 1043194;
                                        break;
                                    case 57909:
                                        codePointAt = 1043195;
                                        break;
                                    case 57910:
                                        codePointAt = 1043184;
                                        break;
                                    case 57911:
                                        codePointAt = 1043186;
                                        break;
                                    case 57912:
                                        codePointAt = 1043185;
                                        break;
                                    case 57913:
                                        codePointAt = 1043187;
                                        break;
                                    case 57914:
                                        codePointAt = 1043196;
                                        break;
                                    case 57915:
                                        codePointAt = 1043197;
                                        break;
                                    case 57916:
                                        codePointAt = 1043198;
                                        break;
                                    case 57917:
                                        codePointAt = 1043199;
                                        break;
                                    case 57918:
                                        codePointAt = 1041656;
                                        break;
                                    case 57919:
                                        codePointAt = 1040427;
                                        break;
                                    case 57920:
                                        codePointAt = 1040428;
                                        break;
                                    case 57921:
                                        codePointAt = 1040429;
                                        break;
                                    case 57922:
                                        codePointAt = 1040430;
                                        break;
                                    case 57923:
                                        codePointAt = 1040431;
                                        break;
                                    case 57924:
                                        codePointAt = 1040432;
                                        break;
                                    case 57925:
                                        codePointAt = 1040433;
                                        break;
                                    case 57926:
                                        codePointAt = 1040434;
                                        break;
                                    case 57927:
                                        codePointAt = 1040435;
                                        break;
                                    case 57928:
                                        codePointAt = 1040436;
                                        break;
                                    case 57929:
                                        codePointAt = 1040437;
                                        break;
                                    case 57930:
                                        codePointAt = 1040438;
                                        break;
                                    case 57931:
                                        codePointAt = 1040439;
                                        break;
                                    case 57932:
                                        codePointAt = 1043266;
                                        break;
                                    case 57933:
                                        codePointAt = 1043239;
                                        break;
                                    case 57934:
                                        codePointAt = 1043241;
                                        break;
                                    case 57935:
                                        codePointAt = 1043245;
                                        break;
                                    case 57936:
                                        codePointAt = 1042489;
                                        break;
                                    case 57937:
                                        codePointAt = 1042490;
                                        break;
                                    case 57938:
                                        codePointAt = 1043235;
                                        break;
                                    case 57939:
                                        codePointAt = 1040820;
                                        break;
                                    case 57940:
                                        codePointAt = 1044087;
                                        break;
                                    case 57941:
                                        codePointAt = 1044088;
                                        break;
                                    case 57942:
                                        codePointAt = 1044089;
                                        break;
                                    case 57943:
                                        codePointAt = 1044090;
                                        break;
                                    case 57944:
                                        codePointAt = 1044091;
                                        break;
                                    case 57945:
                                        codePointAt = 1044092;
                                        break;
                                    case 57946:
                                        codePointAt = 1044093;
                                        break;
                                    default:
                                        switch (codePointAt) {
                                            case 58113:
                                                codePointAt = 1041703;
                                                break;
                                            case 58114:
                                                codePointAt = 1041619;
                                                break;
                                            case 58115:
                                                codePointAt = 1040453;
                                                break;
                                            case 58116:
                                                codePointAt = 1040445;
                                                break;
                                            case 58117:
                                                codePointAt = 1040454;
                                                break;
                                            case 58118:
                                                codePointAt = 1042472;
                                                break;
                                            case 58119:
                                                codePointAt = 1040455;
                                                break;
                                            case 58120:
                                                codePointAt = 1040456;
                                                break;
                                            case 58121:
                                                codePointAt = 1041672;
                                                break;
                                            case 58122:
                                                codePointAt = 1042435;
                                                break;
                                            case 58123:
                                                codePointAt = 1042821;
                                                break;
                                            case 58124:
                                                codePointAt = 1042823;
                                                break;
                                            case 58125:
                                                codePointAt = 1043267;
                                                break;
                                            case 58126:
                                                codePointAt = 1043230;
                                                break;
                                            case 58127:
                                                codePointAt = 1041674;
                                                break;
                                            case 58128:
                                                codePointAt = 1041686;
                                                break;
                                            case 58129:
                                                codePointAt = 1043288;
                                                break;
                                            case 58130:
                                                codePointAt = 1041687;
                                                break;
                                            case 58131:
                                                codePointAt = 1041726;
                                                break;
                                            case 58132:
                                                codePointAt = 1041679;
                                                break;
                                            case 58133:
                                                codePointAt = 1043243;
                                                break;
                                            case 58134:
                                                codePointAt = 1041724;
                                                break;
                                            case 58135:
                                                codePointAt = 1041712;
                                                break;
                                            case 58136:
                                                codePointAt = 1041620;
                                                break;
                                            case 58137:
                                                codePointAt = 1041621;
                                                break;
                                            case 58138:
                                                codePointAt = 1041623;
                                                break;
                                            case 58139:
                                                codePointAt = 1041624;
                                                break;
                                            case 58140:
                                                codePointAt = 1040789;
                                                break;
                                            case 58141:
                                                codePointAt = 1040790;
                                                break;
                                            case 58142:
                                                codePointAt = 1040791;
                                                break;
                                            case 58143:
                                                codePointAt = 1040792;
                                                break;
                                            case 58144:
                                                codePointAt = 1040793;
                                                break;
                                            case 58145:
                                                codePointAt = 1041625;
                                                break;
                                            case 58146:
                                                codePointAt = 1041626;
                                                break;
                                            case 58147:
                                                codePointAt = 1041648;
                                                break;
                                            case 58148:
                                                codePointAt = 1042440;
                                                break;
                                            case 58149:
                                                codePointAt = 1041650;
                                                break;
                                            case 58150:
                                                codePointAt = 1042452;
                                                break;
                                            case 58151:
                                                codePointAt = 1043213;
                                                break;
                                            case 58152:
                                                codePointAt = 1043217;
                                                break;
                                            case 58153:
                                                codePointAt = 1043218;
                                                break;
                                            case 58154:
                                                codePointAt = 1043219;
                                                break;
                                            case 58155:
                                                codePointAt = 1043220;
                                                break;
                                            case 58156:
                                                codePointAt = 1043221;
                                                break;
                                            case 58157:
                                                codePointAt = 1043222;
                                                break;
                                            case 58158:
                                                codePointAt = 1043296;
                                                break;
                                            case 58159:
                                                codePointAt = 1043304;
                                                break;
                                            case 58160:
                                                codePointAt = 1043293;
                                                break;
                                            case 58161:
                                                codePointAt = 1043291;
                                                break;
                                            case 58162:
                                                codePointAt = 1043268;
                                                break;
                                            case 58163:
                                                codePointAt = 1043269;
                                                break;
                                            case 58164:
                                                codePointAt = 1043287;
                                                break;
                                            case 58165:
                                                codePointAt = 1043305;
                                                break;
                                            case 58166:
                                                codePointAt = 1043210;
                                                break;
                                            case 58167:
                                                codePointAt = 1043211;
                                                break;
                                            case 58168:
                                                codePointAt = 1042820;
                                                break;
                                            case 58169:
                                                codePointAt = 1042788;
                                                break;
                                            case 58170:
                                                codePointAt = 1042790;
                                                break;
                                            case 58171:
                                                codePointAt = 1042791;
                                                break;
                                            case 58172:
                                                codePointAt = 1042792;
                                                break;
                                            case 58173:
                                                codePointAt = 1042793;
                                                break;
                                            case 58174:
                                                codePointAt = 1042794;
                                                break;
                                            case 58175:
                                                codePointAt = 1042795;
                                                break;
                                            case 58176:
                                                codePointAt = 1042787;
                                                break;
                                            case 58177:
                                                codePointAt = 1042796;
                                                break;
                                            case 58178:
                                                codePointAt = 1042785;
                                                break;
                                            case 58179:
                                                codePointAt = 1042797;
                                                break;
                                            case 58180:
                                                codePointAt = 1042798;
                                                break;
                                            case 58181:
                                                codePointAt = 1040465;
                                                break;
                                            case 58182:
                                                codePointAt = 1040466;
                                                break;
                                            case 58183:
                                                codePointAt = 1040467;
                                                break;
                                            case 58184:
                                                codePointAt = 1040468;
                                                break;
                                            case 58185:
                                                codePointAt = 1040469;
                                                break;
                                            case 58186:
                                                codePointAt = 1040470;
                                                break;
                                            case 58187:
                                                codePointAt = 1041681;
                                                break;
                                            case 58188:
                                                codePointAt = 1042799;
                                                break;
                                            case 58189:
                                                codePointAt = 1042800;
                                                break;
                                            default:
                                                switch (codePointAt) {
                                                    case 58369:
                                                        codePointAt = 1041221;
                                                        break;
                                                    case 58370:
                                                        codePointAt = 1041219;
                                                        break;
                                                    case 58371:
                                                        codePointAt = 1041216;
                                                        break;
                                                    case 58372:
                                                        codePointAt = 1041203;
                                                        break;
                                                    case 58373:
                                                        codePointAt = 1041223;
                                                        break;
                                                    case 58374:
                                                        codePointAt = 1041212;
                                                        break;
                                                    case 58375:
                                                        codePointAt = 1041215;
                                                        break;
                                                    case 58376:
                                                        codePointAt = 1041218;
                                                        break;
                                                    case 58377:
                                                        codePointAt = 1041194;
                                                        break;
                                                    case 58378:
                                                        codePointAt = 1041214;
                                                        break;
                                                    case 58379:
                                                        codePointAt = 1041211;
                                                        break;
                                                    case 58380:
                                                        codePointAt = 1041198;
                                                        break;
                                                    case 58381:
                                                        codePointAt = 1041199;
                                                        break;
                                                    case 58382:
                                                        codePointAt = 1041190;
                                                        break;
                                                    case 58383:
                                                        codePointAt = 1041189;
                                                        break;
                                                    case 58384:
                                                        codePointAt = 1041186;
                                                        break;
                                                    case 58385:
                                                        codePointAt = 1041210;
                                                        break;
                                                    case 58386:
                                                        codePointAt = 1041204;
                                                        break;
                                                    case 58387:
                                                        codePointAt = 1041209;
                                                        break;
                                                    case 58388:
                                                        codePointAt = 1041206;
                                                        break;
                                                    case 58389:
                                                        codePointAt = 1041208;
                                                        break;
                                                    case 58390:
                                                        codePointAt = 1041213;
                                                        break;
                                                    case 58391:
                                                        codePointAt = 1041197;
                                                        break;
                                                    case 58392:
                                                        codePointAt = 1041196;
                                                        break;
                                                    case 58393:
                                                        codePointAt = 1040784;
                                                        break;
                                                    case 58394:
                                                        codePointAt = 1040786;
                                                        break;
                                                    case 58395:
                                                        codePointAt = 1040785;
                                                        break;
                                                    case 58396:
                                                        codePointAt = 1040787;
                                                        break;
                                                    case 58397:
                                                        codePointAt = 1041243;
                                                        break;
                                                    case 58398:
                                                        codePointAt = 1043357;
                                                        break;
                                                    case 58399:
                                                        codePointAt = 1043358;
                                                        break;
                                                    case 58400:
                                                        codePointAt = 1043359;
                                                        break;
                                                    case 58401:
                                                        codePointAt = 1043360;
                                                        break;
                                                    case 58402:
                                                        codePointAt = 1043361;
                                                        break;
                                                    case 58403:
                                                        codePointAt = 1041233;
                                                        break;
                                                    case 58404:
                                                        codePointAt = 1041234;
                                                        break;
                                                    case 58405:
                                                        codePointAt = 1042473;
                                                        break;
                                                    case 58406:
                                                        codePointAt = 1041235;
                                                        break;
                                                    case 58407:
                                                        codePointAt = 1041240;
                                                        break;
                                                    case 58408:
                                                        codePointAt = 1040800;
                                                        break;
                                                    case 58409:
                                                        codePointAt = 1040802;
                                                        break;
                                                    case 58410:
                                                        codePointAt = 1042390;
                                                        break;
                                                    case 58411:
                                                        codePointAt = 1042397;
                                                        break;
                                                    case 58412:
                                                        codePointAt = 1042446;
                                                        break;
                                                    case 58413:
                                                        codePointAt = 1042398;
                                                        break;
                                                    case 58414:
                                                        codePointAt = 1042405;
                                                        break;
                                                    case 58415:
                                                        codePointAt = 1042417;
                                                        break;
                                                    case 58416:
                                                        codePointAt = 1042418;
                                                        break;
                                                    case 58417:
                                                        codePointAt = 1042419;
                                                        break;
                                                    case 58418:
                                                        codePointAt = 1042420;
                                                        break;
                                                    case 58419:
                                                        codePointAt = 1042430;
                                                        break;
                                                    case 58420:
                                                        codePointAt = 1042400;
                                                        break;
                                                    case 58421:
                                                        codePointAt = 1042402;
                                                        break;
                                                    case 58422:
                                                        codePointAt = 1041688;
                                                        break;
                                                    case 58423:
                                                        codePointAt = 1043223;
                                                        break;
                                                    case 58424:
                                                        codePointAt = 1041689;
                                                        break;
                                                    case 58425:
                                                        codePointAt = 1041690;
                                                        break;
                                                    case 58426:
                                                        codePointAt = 1041691;
                                                        break;
                                                    case 58427:
                                                        codePointAt = 1041692;
                                                        break;
                                                    case 58428:
                                                        codePointAt = 1040391;
                                                        break;
                                                    case 58429:
                                                        codePointAt = 1042474;
                                                        break;
                                                    case 58430:
                                                        codePointAt = 1040440;
                                                        break;
                                                    case 58431:
                                                        codePointAt = 1042801;
                                                        break;
                                                    case 58432:
                                                        codePointAt = 1041693;
                                                        break;
                                                    case 58433:
                                                        codePointAt = 1040838;
                                                        break;
                                                    case 58434:
                                                        codePointAt = 1041694;
                                                        break;
                                                    case 58435:
                                                        codePointAt = 1040389;
                                                        break;
                                                    case 58436:
                                                        codePointAt = 1040457;
                                                        break;
                                                    case 58437:
                                                        codePointAt = 1041695;
                                                        break;
                                                    case 58438:
                                                        codePointAt = 1040407;
                                                        break;
                                                    case 58439:
                                                        codePointAt = 1040451;
                                                        break;
                                                    case 58440:
                                                        codePointAt = 1041683;
                                                        break;
                                                    case 58441:
                                                        codePointAt = 1040394;
                                                        break;
                                                    case 58442:
                                                        codePointAt = 1040396;
                                                        break;
                                                    case 58443:
                                                        codePointAt = 1040392;
                                                        break;
                                                    case 58444:
                                                        codePointAt = 1040397;
                                                        break;
                                                    default:
                                                        switch (codePointAt) {
                                                            case 58625:
                                                                codePointAt = 1041592;
                                                                break;
                                                            case 58626:
                                                                codePointAt = 1042436;
                                                                break;
                                                            case 58627:
                                                                codePointAt = 1042437;
                                                                break;
                                                            case 58628:
                                                                codePointAt = 1041597;
                                                                break;
                                                            case 58629:
                                                                codePointAt = 1041598;
                                                                break;
                                                            case 58630:
                                                                codePointAt = 1041599;
                                                                break;
                                                            case 58631:
                                                                codePointAt = 1042434;
                                                                break;
                                                            case 58632:
                                                                codePointAt = 1041600;
                                                                break;
                                                            case 58633:
                                                                codePointAt = 1041604;
                                                                break;
                                                            case 58634:
                                                                codePointAt = 1041605;
                                                                break;
                                                            case 58635:
                                                                codePointAt = 1041637;
                                                                break;
                                                            case 58636:
                                                                codePointAt = 1041638;
                                                                break;
                                                            case 58637:
                                                                codePointAt = 1041639;
                                                                break;
                                                            case 58638:
                                                                codePointAt = 1041640;
                                                                break;
                                                            case 58639:
                                                                codePointAt = 1041641;
                                                                break;
                                                            case 58640:
                                                                codePointAt = 1041642;
                                                                break;
                                                            case 58641:
                                                                codePointAt = 1041643;
                                                                break;
                                                            case 58642:
                                                                codePointAt = 1041644;
                                                                break;
                                                            case 58643:
                                                                codePointAt = 1041645;
                                                                break;
                                                            case 58644:
                                                                codePointAt = 1041646;
                                                                break;
                                                            case 58645:
                                                                codePointAt = 1040804;
                                                                break;
                                                            case 58646:
                                                                codePointAt = 1040805;
                                                                break;
                                                            case 58647:
                                                                codePointAt = 1040806;
                                                                break;
                                                            case 58648:
                                                                codePointAt = 1040807;
                                                                break;
                                                            case 58649:
                                                                codePointAt = 1040808;
                                                                break;
                                                            case 58650:
                                                                codePointAt = 1040809;
                                                                break;
                                                            case 58651:
                                                                codePointAt = 1040810;
                                                                break;
                                                            case 58652:
                                                                codePointAt = 1040811;
                                                                break;
                                                            case 58653:
                                                                codePointAt = 1041606;
                                                                break;
                                                            case 58654:
                                                                codePointAt = 1040821;
                                                                break;
                                                            case 58655:
                                                                codePointAt = 1040822;
                                                                break;
                                                            case 58656:
                                                                codePointAt = 1040839;
                                                                break;
                                                            case 58657:
                                                                codePointAt = 1040840;
                                                                break;
                                                            case 58658:
                                                                codePointAt = 1040841;
                                                                break;
                                                            case 58659:
                                                                codePointAt = 1040826;
                                                                break;
                                                            case 58660:
                                                                codePointAt = 1040842;
                                                                break;
                                                            case 58661:
                                                                codePointAt = 1040843;
                                                                break;
                                                            case 58662:
                                                                codePointAt = 1040844;
                                                                break;
                                                            case 58663:
                                                                codePointAt = 1040845;
                                                                break;
                                                            case 58664:
                                                                codePointAt = 1040846;
                                                                break;
                                                            case 58665:
                                                                codePointAt = 1040847;
                                                                break;
                                                            case 58666:
                                                                codePointAt = 1040848;
                                                                break;
                                                            case 58667:
                                                                codePointAt = 1040849;
                                                                break;
                                                            case 58668:
                                                                codePointAt = 1040850;
                                                                break;
                                                            case 58669:
                                                                codePointAt = 1040851;
                                                                break;
                                                            case 58670:
                                                                codePointAt = 1040852;
                                                                break;
                                                            case 58671:
                                                                codePointAt = 1040853;
                                                                break;
                                                            case 58672:
                                                                codePointAt = 1040854;
                                                                break;
                                                            case 58673:
                                                                codePointAt = 1040855;
                                                                break;
                                                            case 58674:
                                                                codePointAt = 1041675;
                                                                break;
                                                            case 58675:
                                                                codePointAt = 1041676;
                                                                break;
                                                            case 58676:
                                                                codePointAt = 1041677;
                                                                break;
                                                            case 58677:
                                                                codePointAt = 1041678;
                                                                break;
                                                            case 58678:
                                                                codePointAt = 1041747;
                                                                break;
                                                            case 58679:
                                                                codePointAt = 1043242;
                                                                break;
                                                            case 58680:
                                                                codePointAt = 1044080;
                                                                break;
                                                            case 58681:
                                                                codePointAt = 1044081;
                                                                break;
                                                            case 58682:
                                                                codePointAt = 1044082;
                                                                break;
                                                            case 58683:
                                                                codePointAt = 1044083;
                                                                break;
                                                            case 58684:
                                                                codePointAt = 1044084;
                                                                break;
                                                            case 58685:
                                                                codePointAt = 1044085;
                                                                break;
                                                            case 58686:
                                                                codePointAt = 1044086;
                                                                break;
                                                        }
                                                }
                                        }
                                }
                        }
                }
                sb2.appendCodePoint(codePointAt);
            }
            return sb2.toString();
        } catch (Throwable th) {
            if (scratchChars != null) {
                try {
                    scratchChars.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static void setBody(Part part, Body body) {
        Map mapOf;
        part.setBody(body);
        if (part instanceof MimeMessage) {
            ((MimeMessage) part).mHeader.setHeader("MIME-Version", "1.0");
        }
        if (body instanceof Multipart) {
            Multipart multipart = (Multipart) body;
            multipart.mParent = part;
            MimeMultipart mimeMultipart = (MimeMultipart) multipart;
            String str = mimeMultipart.mimeType;
            String str2 = mimeMultipart.boundary;
            str.getClass();
            str2.getClass();
            Map singletonMap = Collections.singletonMap("boundary", str2);
            singletonMap.getClass();
            part.setHeader(UtilsKt.CONTENT_TYPE, encode(str, singletonMap));
            Body body2 = part.getBody();
            if (body2 != null) {
                body2.setEncoding("7bit");
            }
            part.setHeader("Content-Transfer-Encoding", "7bit");
            return;
        }
        if (!(body instanceof TextBody)) {
            if (body instanceof RawDataBody) {
                part.setHeader("Content-Transfer-Encoding", ((RawDataBody) body).getEncoding());
                return;
            }
            return;
        }
        MimeValue decode = decode(part.getContentType());
        String str3 = decode.value;
        if (Pattern.compile("text/*".replaceAll("\\*", "\\.\\*"), 2).matcher(str3).matches()) {
            String str4 = (String) decode.parameters.get("name");
            str3.getClass();
            if (str4 == null) {
                mapOf = Collections.singletonMap("charset", "utf-8");
                mapOf.getClass();
            } else {
                mapOf = MapsKt__MapsKt.mapOf(new Pair("charset", "utf-8"), new Pair("name", str4));
            }
            part.setHeader(UtilsKt.CONTENT_TYPE, encode(str3, mapOf));
        } else {
            part.setHeader(UtilsKt.CONTENT_TYPE, str3);
        }
        Body body3 = part.getBody();
        if (body3 != null) {
            body3.setEncoding("quoted-printable");
        }
        part.setHeader("Content-Transfer-Encoding", "quoted-printable");
    }

    public static String unfold(String str) {
        if (str == null) {
            return null;
        }
        return str.replaceAll("\r|\n", "");
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00a1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String encode(java.lang.String r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mail.internet.JisSupport.encode(java.lang.String, java.lang.String):java.lang.String");
    }
}
