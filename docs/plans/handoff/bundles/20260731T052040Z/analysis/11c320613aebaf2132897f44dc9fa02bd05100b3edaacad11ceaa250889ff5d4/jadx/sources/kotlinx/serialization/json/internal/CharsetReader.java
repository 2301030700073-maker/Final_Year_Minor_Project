package kotlinx.serialization.json.internal;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CharsetReader {
    public final ByteBuffer byteBuffer;
    public final CharsetDecoder decoder;
    public boolean hasLeftoverPotentiallySurrogateChar;
    public final InputStream inputStream;
    public char leftoverChar;

    public CharsetReader(InputStream inputStream, Charset charset) {
        charset.getClass();
        this.inputStream = inputStream;
        CharsetDecoder newDecoder = charset.newDecoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        CharsetDecoder onUnmappableCharacter = newDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
        onUnmappableCharacter.getClass();
        this.decoder = onUnmappableCharacter;
        ByteBuffer wrap = ByteBuffer.wrap(ByteArrayPool8k.INSTANCE.take(8196));
        wrap.getClass();
        this.byteBuffer = wrap;
        wrap.flip();
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d3, code lost:
    
        r2 = r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int read(char[] r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.CharsetReader.read(char[], int, int):int");
    }
}
