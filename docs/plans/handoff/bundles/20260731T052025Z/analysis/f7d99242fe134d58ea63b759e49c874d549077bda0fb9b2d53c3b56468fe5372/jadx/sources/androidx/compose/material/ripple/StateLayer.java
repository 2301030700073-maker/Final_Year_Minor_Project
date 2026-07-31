package androidx.compose.material.ripple;

import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.camera.view.PreviewView;
import androidx.collection.LongSparseArray;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.HitPathTracker;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.HitTestResult;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.WeakCache;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.filter.FixedLengthInputStream;
import com.fsck.k9.mail.filter.PeekableInputStream;
import com.fsck.k9.mail.oauth.XOAuth2ChallengeParser;
import com.fsck.k9.mail.store.imap.ImapList;
import com.fsck.k9.mail.store.imap.ImapResponse;
import com.fsck.k9.mail.store.imap.ImapResponseCallback;
import com.fsck.k9.mail.store.imap.ImapResponseParserException;
import com.fsck.k9.mail.store.imap.NegativeImapResponseException;
import com.fsck.k9.mail.store.imap.RealImapConnection;
import com.fsck.k9.mailstore.LocalFolder;
import j$.util.Objects;
import java.io.BufferedOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Buffer;
import org.apache.commons.io.IOUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StateLayer {
    public Object animatedAlpha;
    public boolean bounded;
    public Object currentInteraction;
    public Object interactions;
    public Object rippleAlpha;

    public static boolean equalsIgnoreCase(Object obj, String str) {
        return (obj instanceof String) && str.equalsIgnoreCase((String) obj);
    }

    public void expect(char c) {
        int read = ((PeekableInputStream) this.rippleAlpha).read();
        if (read != c) {
            throw new IOException(String.format("Expected %04x (%c) but got %04x (%c)", Integer.valueOf(c), Character.valueOf(c), Integer.valueOf(read), Character.valueOf((char) read)));
        }
    }

    public String parseBareString(boolean z) {
        int peek;
        PeekableInputStream peekableInputStream = (PeekableInputStream) this.rippleAlpha;
        StringBuilder sb = new StringBuilder();
        while (true) {
            peek = peekableInputStream.peek();
            if (peek == -1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$4("parseBareString(): end of stream reached");
                return null;
            }
            if (peek == 40 || peek == 41 || ((z && (peek == 91 || peek == 93)) || peek == 123 || peek == 32 || peek == 34 || ((peek >= 0 && peek <= 31) || peek == 127))) {
                break;
            }
            sb.append((char) peekableInputStream.read());
        }
        if (sb.length() != 0) {
            return sb.toString();
        }
        throw new IOException(String.format("parseBareString(): (%04x %c)", Integer.valueOf(peek), Integer.valueOf(peek)));
    }

    public ImapList parseList(ImapList imapList, char c, char c2) {
        expect(c);
        ImapList imapList2 = new ImapList();
        imapList.add(imapList2);
        String valueOf = String.valueOf(c2);
        while (true) {
            Object parseToken = parseToken(imapList2);
            if (parseToken == null) {
                return null;
            }
            if (parseToken.equals(valueOf)) {
                return imapList2;
            }
            if (!(parseToken instanceof ImapList)) {
                imapList2.add(parseToken);
            }
        }
    }

    public Object parseLiteral() {
        Exception exc;
        Object obj;
        IOUtils.ScratchBytes scratchBytes;
        PeekableInputStream peekableInputStream = (PeekableInputStream) this.rippleAlpha;
        expect('{');
        try {
            int parseInt = Integer.parseInt(readStringUntil('}'));
            if (parseInt < 0) {
                throw new ImapResponseParserException("Invalid value for size of literal string", null);
            }
            expect('\r');
            expect('\n');
            if (parseInt == 0) {
                return "";
            }
            int i = 0;
            if (((ImapResponse) this.animatedAlpha).callback != null) {
                FixedLengthInputStream fixedLengthInputStream = new FixedLengthInputStream(peekableInputStream, parseInt);
                try {
                    ImapResponse imapResponse = (ImapResponse) this.animatedAlpha;
                    obj = imapResponse.callback.foundLiteral(imapResponse, fixedLengthInputStream);
                    exc = null;
                } catch (IOException e) {
                    throw e;
                } catch (Exception e2) {
                    exc = e2;
                    obj = null;
                }
                if (fixedLengthInputStream.remainingBytes() != parseInt) {
                    if (obj == null && exc == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "Callback consumed some data but returned no result");
                        return null;
                    }
                    long remainingBytes = fixedLengthInputStream.remainingBytes();
                    int i2 = IOUtils.$r8$clinit;
                    Object[] objArr = (Object[]) IOUtils.ScratchBytes.LOCAL.get();
                    if (((Boolean) objArr[0]).booleanValue()) {
                        scratchBytes = new IOUtils.ScratchBytes(new byte[8192]);
                    } else {
                        objArr[0] = Boolean.TRUE;
                        scratchBytes = IOUtils.ScratchBytes.INSTANCE;
                    }
                    try {
                        Objects.requireNonNull(scratchBytes);
                        long j = 0;
                        if (remainingBytes < 0) {
                            throw new IllegalArgumentException("Skip count must be non-negative, actual: " + remainingBytes);
                        }
                        long j2 = remainingBytes;
                        while (j2 > j) {
                            byte[] bArr = scratchBytes.buffer;
                            if (bArr == null) {
                                bArr = (byte[]) ((Object[]) IOUtils.ScratchBytes.LOCAL.get())[1];
                            }
                            long j3 = j;
                            long read = fixedLengthInputStream.read(bArr, 0, (int) Math.min(j2, bArr.length));
                            if (read < j3) {
                                break;
                            }
                            j2 -= read;
                            j = j3;
                        }
                        long j4 = remainingBytes - j2;
                        scratchBytes.close();
                        if (j4 != remainingBytes) {
                            throw new EOFException("Bytes to skip: " + remainingBytes + " actual: " + j4);
                        }
                    } finally {
                    }
                }
                if (exc != null) {
                    if (((Exception) this.interactions) != null) {
                        return "EXCEPTION";
                    }
                    this.interactions = exc;
                    return "EXCEPTION";
                }
                if (obj != null) {
                    return obj;
                }
            }
            byte[] bArr2 = new byte[parseInt];
            while (i != parseInt) {
                int read2 = peekableInputStream.read(bArr2, i, parseInt - i);
                if (read2 == -1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$4("parseLiteral(): end of stream reached");
                    return null;
                }
                i += read2;
            }
            return new String(bArr2, "UTF8");
        } catch (NumberFormatException e3) {
            throw new ImapResponseParserException("Invalid value for size of literal string", e3);
        }
    }

    public String parseQuoted() {
        int read;
        expect('\"');
        Buffer buffer = new Buffer();
        while (true) {
            boolean z = false;
            while (true) {
                read = ((PeekableInputStream) this.rippleAlpha).read();
                if (read == -1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$4("parseQuoted(): end of stream reached");
                    return null;
                }
                if (z || read != 92) {
                    break;
                }
                z = true;
            }
            if (!z && read == 34) {
                return buffer.readUtf8();
            }
            buffer.m1053writeByte(read);
        }
    }

    public Object parseToken(ImapList imapList) {
        while (true) {
            int peek = ((PeekableInputStream) this.rippleAlpha).peek();
            if (peek == 40) {
                return parseList(imapList, '(', ')');
            }
            if (peek == 91) {
                return parseList(imapList, '[', ']');
            }
            if (peek == 41) {
                expect(')');
                return ")";
            }
            if (peek == 93) {
                expect(']');
                return "]";
            }
            if (peek == 34) {
                return parseQuoted();
            }
            if (peek == 123) {
                return parseLiteral();
            }
            if (peek == 32) {
                expect(' ');
            } else {
                if (peek == 13) {
                    expect('\r');
                    expect('\n');
                    return null;
                }
                if (peek == 10) {
                    expect('\n');
                    return null;
                }
                if (peek != 9) {
                    return parseBareString(true);
                }
                expect('\t');
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: process-BIzXfog, reason: not valid java name */
    public int m316processBIzXfog(WeakCache weakCache, AndroidComposeView androidComposeView, boolean z) {
        Object[] objArr;
        int i;
        int i2;
        HitPathTracker hitPathTracker = (HitPathTracker) this.animatedAlpha;
        HitTestResult hitTestResult = (HitTestResult) this.currentInteraction;
        if (this.bounded) {
            return 0;
        }
        try {
            this.bounded = true;
            LocalFolder.AnonymousClass12 produce = ((PreviewView.AnonymousClass1) this.interactions).produce(weakCache, androidComposeView);
            LongSparseArray longSparseArray = (LongSparseArray) produce.val$messages;
            int size = longSparseArray.size();
            for (int i3 = 0; i3 < size; i3++) {
                PointerInputChange pointerInputChange = (PointerInputChange) longSparseArray.valueAt(i3);
                if (!pointerInputChange.pressed && !pointerInputChange.previousPressed) {
                }
                objArr = false;
                break;
            }
            objArr = true;
            int size2 = longSparseArray.size();
            for (int i4 = 0; i4 < size2; i4++) {
                PointerInputChange pointerInputChange2 = (PointerInputChange) longSparseArray.valueAt(i4);
                if (objArr != false || PointerId.changedToDownIgnoreConsumed(pointerInputChange2)) {
                    ((LayoutNode) this.rippleAlpha).m606hitTest6fMxITs$ui(pointerInputChange2.position, (HitTestResult) this.currentInteraction, pointerInputChange2.type, true);
                    if (!hitTestResult.values.isEmpty()) {
                        hitPathTracker.m561addHitPathQJqDSyo(pointerInputChange2.id, hitTestResult, PointerId.changedToDownIgnoreConsumed(pointerInputChange2));
                        hitTestResult.clear();
                    }
                }
            }
            boolean dispatchChanges = hitPathTracker.dispatchChanges(produce, z);
            if (!produce.val$value) {
                int size3 = longSparseArray.size();
                for (int i5 = 0; i5 < size3; i5++) {
                    PointerInputChange pointerInputChange3 = (PointerInputChange) longSparseArray.valueAt(i5);
                    if (!Offset.m437equalsimpl0(PointerId.positionChangeInternal(pointerInputChange3, true), 0L) && pointerInputChange3.isConsumed()) {
                        i = 1;
                        break;
                    }
                }
            }
            i = 0;
            int size4 = longSparseArray.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size4) {
                    i2 = 0;
                    break;
                }
                if (((PointerInputChange) longSparseArray.valueAt(i6)).isConsumed()) {
                    i2 = 1;
                    break;
                }
                i6++;
            }
            int i7 = (dispatchChanges ? 1 : 0) | (i << 1) | (i2 << 2);
            this.bounded = false;
            return i7;
        } catch (Throwable th) {
            this.bounded = false;
            throw th;
        }
    }

    public ImapResponse readResponse(ImapResponseCallback imapResponseCallback) {
        PeekableInputStream peekableInputStream = (PeekableInputStream) this.rippleAlpha;
        try {
            int peek = peekableInputStream.peek();
            if (peek == 43) {
                expect('+');
                this.animatedAlpha = new ImapResponse(imapResponseCallback, true, null);
                if (peekableInputStream.peek() == 32) {
                    expect(' ');
                }
                String readStringUntil = readStringUntil('\r');
                expect('\n');
                ((ImapResponse) this.animatedAlpha).add(readStringUntil);
            } else if (peek == 42) {
                expect('*');
                expect(' ');
                ImapResponse imapResponse = new ImapResponse(imapResponseCallback, false, null);
                this.animatedAlpha = imapResponse;
                readTokens(imapResponse);
            } else {
                ImapResponse imapResponse2 = new ImapResponse(imapResponseCallback, false, readStringUntil(' '));
                this.animatedAlpha = imapResponse2;
                readTokens(imapResponse2);
            }
            Exception exc = (Exception) this.interactions;
            if (exc == null) {
                return (ImapResponse) this.animatedAlpha;
            }
            throw new ImapResponseParserException("readResponse(): Exception in callback method", exc);
        } finally {
            this.animatedAlpha = null;
            this.interactions = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArrayList readStatusResponse(String str, String str2, String str3, OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            ImapResponse imapResponse = null;
            ImapResponse readResponse = readResponse(null);
            if (K9MailLib.debugStatus.enabled()) {
                Log.v("%s<<<%s", str3, readResponse);
            }
            String str4 = readResponse.tag;
            if (str4 == null || str4.equalsIgnoreCase(str)) {
                if (readResponse.tag == null && onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 != null) {
                    RealImapConnection realImapConnection = (RealImapConnection) onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0.f$0;
                    if (readResponse.isContinuationRequested) {
                        BufferedOutputStream bufferedOutputStream = realImapConnection.imapOutputStream;
                        if (bufferedOutputStream == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
                            return null;
                        }
                        if (readResponse.isString(0)) {
                            realImapConnection.retryOAuthWithNewToken = XOAuth2ChallengeParser.shouldRetry((String) readResponse.get(0), realImapConnection.settings.host);
                        }
                        bufferedOutputStream.write(13);
                        bufferedOutputStream.write(10);
                        bufferedOutputStream.flush();
                    }
                }
                arrayList.add(readResponse);
                imapResponse = readResponse;
            } else {
                Log.w("After sending tag %s, got tag response from previous command %s for %s", str, readResponse, str3);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ImapResponse imapResponse2 = (ImapResponse) it.next();
                    if (imapResponse2.tag != null || imapResponse2.size() < 2 || (!equalsIgnoreCase(imapResponse2.get(1), "EXISTS") && !equalsIgnoreCase(imapResponse2.get(1), "EXPUNGE"))) {
                        it.remove();
                    }
                }
            }
            if (imapResponse != null && imapResponse.tag != null) {
                if (imapResponse.size() < 1 || !equalsIgnoreCase(imapResponse.get(0), "OK")) {
                    throw new NegativeImapResponseException(ImageAnalysis$$ExternalSyntheticLambda3.m("Command: ", str2, "; response: ", imapResponse.toString()), arrayList);
                }
                return arrayList;
            }
        }
    }

    public String readStringUntil(char c) {
        String str;
        StringBuilder sb = new StringBuilder();
        while (true) {
            int read = ((PeekableInputStream) this.rippleAlpha).read();
            if (read == -1) {
                String sb2 = sb.toString();
                if (c < ' ') {
                    str = CameraDevices$CC.m("[", Integer.toString(c), "]");
                } else {
                    str = "'" + c + "'";
                }
                throw new IOException(ImageAnalysis$$ExternalSyntheticLambda3.m("readStringUntil(): end of stream reached. Read: \"", sb2, "\" while waiting for ", str));
            }
            if (read == c) {
                return sb.toString();
            }
            sb.append((char) read);
        }
    }

    public void readTokens(ImapResponse imapResponse) {
        Object parseToken;
        PeekableInputStream peekableInputStream = (PeekableInputStream) this.rippleAlpha;
        imapResponse.clear();
        while (true) {
            parseToken = parseToken(imapResponse);
            if (parseToken == null || (!parseToken.equals(")") && !parseToken.equals("]"))) {
                break;
            }
        }
        String str = null;
        if (!(parseToken instanceof String)) {
            throw new ImapResponseParserException("Unexpected non-string token", null);
        }
        String str2 = (String) parseToken;
        imapResponse.add(str2);
        if (str2.equalsIgnoreCase("OK") || str2.equalsIgnoreCase("NO") || str2.equalsIgnoreCase("BAD") || str2.equalsIgnoreCase("PREAUTH") || str2.equalsIgnoreCase("BYE")) {
            if (peekableInputStream.peek() == 32) {
                expect(' ');
            }
            if (peekableInputStream.peek() == 91) {
                parseList(imapResponse, '[', ']');
                if (peekableInputStream.peek() == 32) {
                    expect(' ');
                }
            }
            String readStringUntil = readStringUntil('\r');
            expect('\n');
            if (readStringUntil.isEmpty()) {
                return;
            }
            imapResponse.add(readStringUntil);
            return;
        }
        if (equalsIgnoreCase(str2, "LIST") || equalsIgnoreCase(str2, "LSUB")) {
            expect(' ');
            parseList(imapResponse, '(', ')');
            expect(' ');
            if (peekableInputStream.peek() == 34) {
                str = parseQuoted();
            } else {
                expect('N');
                expect('I');
                expect('L');
            }
            imapResponse.add(str);
            expect(' ');
            int peek = peekableInputStream.peek();
            String parseQuoted = peek == 34 ? parseQuoted() : peek == 123 ? (String) parseLiteral() : parseBareString(false);
            if (!this.bounded) {
                parseQuoted = ((LocalFolder.AnonymousClass12) this.currentInteraction).decode(parseQuoted);
            }
            imapResponse.add(parseQuoted);
            expect('\r');
            expect('\n');
            return;
        }
        while (true) {
            Object parseToken2 = parseToken(imapResponse);
            if (parseToken2 == null || (!parseToken2.equals(")") && !parseToken2.equals("]"))) {
                if (parseToken2 == null) {
                    return;
                }
                if (!(parseToken2 instanceof ImapList)) {
                    imapResponse.add(parseToken2);
                }
            }
        }
    }
}
