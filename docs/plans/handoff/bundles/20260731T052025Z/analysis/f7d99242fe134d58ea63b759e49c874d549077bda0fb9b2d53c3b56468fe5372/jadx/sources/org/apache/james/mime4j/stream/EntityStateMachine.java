package org.apache.james.mime4j.stream;

import com.eygraber.uri.Uri;
import java.io.InputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface EntityStateMachine {
    EntityStateMachine advance();

    Uri.Builder getBodyDescriptor();

    InputStream getContentStream();

    Field getField();

    int getState();

    void setRecursionMode(int i);
}
