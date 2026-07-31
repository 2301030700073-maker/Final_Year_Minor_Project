package org.apache.james.mime4j.stream;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.eygraber.uri.Uri;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.MimeException;
import org.apache.james.mime4j.codec.DecodeMonitor;
import org.apache.james.mime4j.io.BufferedLineReaderInputStream;
import org.apache.james.mime4j.io.LineReaderInputStreamAdaptor;
import org.apache.james.mime4j.io.MaxHeaderLimitException;
import org.apache.james.mime4j.io.MimeBoundaryInputStream;
import org.apache.james.mime4j.util.BufferRecycler;
import org.apache.james.mime4j.util.ByteArrayBuffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MimeEntity implements EntityStateMachine {
    public static final ThreadLocal _recyclerRef = new ThreadLocal();
    public Uri.Builder body;
    public final FallbackBodyDescriptorBuilder bodyDescBuilder;
    public final MimeConfig config;
    public MimeBoundaryInputStream currentMimePartStream;
    public LineReaderInputStreamAdaptor dataStream;
    public final int endState;
    public RawField field;
    public final DefaultFieldBuilder fieldBuilder;
    public final BufferedLineReaderInputStream inbuffer;
    public final DecodeMonitor monitor;
    public int recursionMode;
    public int state;
    public byte[] tmpbuf;
    public final ByteArrayBuffer linebuf = new ByteArrayBuffer(64);
    public int lineCount = 0;
    public boolean endOfHeader = false;
    public int headerCount = 0;

    public MimeEntity(InputStream inputStream, MimeConfig mimeConfig, int i, int i2, DecodeMonitor decodeMonitor, DefaultFieldBuilder defaultFieldBuilder, FallbackBodyDescriptorBuilder fallbackBodyDescriptorBuilder) {
        this.config = mimeConfig;
        this.state = i;
        this.endState = i2;
        this.monitor = decodeMonitor;
        this.fieldBuilder = defaultFieldBuilder;
        this.bodyDescBuilder = fallbackBodyDescriptorBuilder;
        BufferedLineReaderInputStream bufferedLineReaderInputStream = new BufferedLineReaderInputStream(inputStream, mimeConfig.maxLineLen);
        this.inbuffer = bufferedLineReaderInputStream;
        this.dataStream = new LineReaderInputStreamAdaptor(bufferedLineReaderInputStream, mimeConfig.maxLineLen);
    }

    public static BufferRecycler getBufferRecycler() {
        ThreadLocal threadLocal = _recyclerRef;
        SoftReference softReference = (SoftReference) threadLocal.get();
        BufferRecycler bufferRecycler = softReference == null ? null : (BufferRecycler) softReference.get();
        if (bufferRecycler != null) {
            return bufferRecycler;
        }
        BufferRecycler bufferRecycler2 = new BufferRecycler();
        threadLocal.set(new SoftReference(bufferRecycler2));
        return bufferRecycler2;
    }

    public static String stateToString(int i) {
        switch (ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i)) {
            case 0:
                return "Start message";
            case 1:
                return "End message";
            case 2:
                return "Raw entity";
            case 3:
                return "Start header";
            case 4:
                return "Field";
            case 5:
                return "End header";
            case 6:
                return "Start multipart";
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return "End multipart";
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return "Preamble";
            case 9:
                return "Epilogue";
            case 10:
                return "Start bodypart";
            case 11:
                return "End bodypart";
            case BasicTextKt.ShiftMeta /* 12 */:
                return "Body";
            case 13:
                return "End of stream";
            default:
                return "Unknown";
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0224, code lost:
    
        r20.state = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:?, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0057, code lost:
    
        if (r20.currentMimePartStream.initialLength == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a1, code lost:
    
        if (r8 == false) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01d9 A[Catch: MaxLineLimitException -> 0x0234, TryCatch #1 {MaxLineLimitException -> 0x0234, blocks: (B:95:0x019b, B:97:0x019f, B:100:0x01a6, B:102:0x01aa, B:105:0x01c0, B:106:0x01c8, B:142:0x01d1, B:108:0x01d9, B:110:0x01dd, B:112:0x01e5, B:114:0x01e9, B:116:0x01f1, B:140:0x01f5, B:118:0x01f8, B:120:0x01ff, B:144:0x01b2, B:145:0x01bd), top: B:94:0x019b }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01d1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0170 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0175  */
    @Override // org.apache.james.mime4j.stream.EntityStateMachine
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.apache.james.mime4j.stream.EntityStateMachine advance() {
        /*
            Method dump skipped, instructions count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.james.mime4j.stream.MimeEntity.advance():org.apache.james.mime4j.stream.EntityStateMachine");
    }

    public final void advanceToBoundary() {
        if (this.dataStream.eof) {
            return;
        }
        if (this.tmpbuf == null) {
            this.tmpbuf = getBufferRecycler().allocByteBuffer(0, 2048);
        }
        this.config.getClass();
        while (this.dataStream.read(this.tmpbuf) != -1) {
        }
    }

    public final void clearMimePartStream() {
        this.currentMimePartStream = null;
        this.dataStream = new LineReaderInputStreamAdaptor(this.inbuffer, this.config.maxLineLen);
    }

    public final void createMimePartStream() {
        MimeConfig mimeConfig = this.config;
        String str = (String) this.body.query;
        if (str == null) {
            throw new MimeException("Multipart body does not have a valid boundary");
        }
        try {
            BufferedLineReaderInputStream bufferedLineReaderInputStream = this.inbuffer;
            mimeConfig.getClass();
            this.currentMimePartStream = new MimeBoundaryInputStream(bufferedLineReaderInputStream, str);
            this.dataStream = new LineReaderInputStreamAdaptor(this.currentMimePartStream, mimeConfig.maxLineLen);
        } catch (IllegalArgumentException e) {
            throw new MimeException(e.getMessage(), e);
        }
    }

    @Override // org.apache.james.mime4j.stream.EntityStateMachine
    public final Uri.Builder getBodyDescriptor() {
        int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(this.state);
        if (ordinal == 6 || ordinal == 8 || ordinal == 9 || ordinal == 12 || ordinal == 13) {
            return this.body;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Invalid state :".concat(stateToString(this.state)));
        return null;
    }

    @Override // org.apache.james.mime4j.stream.EntityStateMachine
    public final InputStream getContentStream() {
        int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(this.state);
        if (ordinal == 6 || ordinal == 12 || ordinal == 8 || ordinal == 9) {
            this.config.getClass();
            return this.dataStream;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Invalid state: ".concat(stateToString(this.state)));
        return null;
    }

    @Override // org.apache.james.mime4j.stream.EntityStateMachine
    public final Field getField() {
        if (ImageAnalysis$$ExternalSyntheticLambda3.ordinal(this.state) == 4) {
            return this.field;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Invalid state :".concat(stateToString(this.state)));
        return null;
    }

    @Override // org.apache.james.mime4j.stream.EntityStateMachine
    public final int getState() {
        return this.state;
    }

    public final void monitor(Event event) {
        DecodeMonitor decodeMonitor = this.monitor;
        decodeMonitor.getClass();
        boolean z = decodeMonitor instanceof DecodeMonitor.AnonymousClass1;
        if (z && z) {
            throw new MaxHeaderLimitException(event.code);
        }
    }

    public final EntityStateMachine nextMimeEntity(int i, int i2, InputStream inputStream) {
        if (this.recursionMode == 3) {
            return new RawEntity(inputStream);
        }
        FallbackBodyDescriptorBuilder fallbackBodyDescriptorBuilder = this.bodyDescBuilder;
        MimeEntity mimeEntity = new MimeEntity(inputStream, this.config, i, i2, this.monitor, this.fieldBuilder, new FallbackBodyDescriptorBuilder(fallbackBodyDescriptorBuilder.mimeType, fallbackBodyDescriptorBuilder.monitor));
        mimeEntity.recursionMode = this.recursionMode;
        return mimeEntity;
    }

    @Override // org.apache.james.mime4j.stream.EntityStateMachine
    public final void setRecursionMode(int i) {
        this.recursionMode = i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(MimeEntity.class.getName());
        sb.append(" [");
        sb.append(stateToString(this.state));
        sb.append("][");
        sb.append((String) this.body.scheme);
        sb.append("][");
        return CameraDevices$CC.m(sb, (String) this.body.query, "]");
    }
}
