package j$.io;

import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class InputStreamRetargetClass {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ long transferTo(InputStream inputStream, OutputStream outputStream) {
        return inputStream instanceof InputStreamRetargetInterface ? ((InputStreamRetargetInterface) inputStream).transferTo(outputStream) : DesugarInputStream.transferTo(inputStream, outputStream);
    }
}
