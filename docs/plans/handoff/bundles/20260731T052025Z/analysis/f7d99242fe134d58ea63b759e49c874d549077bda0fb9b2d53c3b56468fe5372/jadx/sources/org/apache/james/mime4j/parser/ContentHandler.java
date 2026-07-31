package org.apache.james.mime4j.parser;

import com.eygraber.uri.Uri;
import java.io.InputStream;
import org.apache.james.mime4j.stream.Field;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ContentHandler {
    void body(Uri.Builder builder, InputStream inputStream);

    void endBodyPart();

    void endHeader();

    void endMessage();

    void endMultipart();

    void epilogue(InputStream inputStream);

    void field(Field field);

    void preamble(InputStream inputStream);

    void raw();

    void startBodyPart();

    void startHeader();

    void startMessage();

    void startMultipart(Uri.Builder builder);
}
