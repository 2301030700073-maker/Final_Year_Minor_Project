package org.apache.james.mime4j.stream;

import com.eygraber.uri.Uri;
import java.io.InputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RawEntity implements EntityStateMachine {
    public int state = 3;
    public final InputStream stream;

    public RawEntity(InputStream inputStream) {
        this.stream = inputStream;
    }

    @Override // org.apache.james.mime4j.stream.EntityStateMachine
    public final EntityStateMachine advance() {
        this.state = 14;
        return null;
    }

    @Override // org.apache.james.mime4j.stream.EntityStateMachine
    public final Uri.Builder getBodyDescriptor() {
        return null;
    }

    @Override // org.apache.james.mime4j.stream.EntityStateMachine
    public final InputStream getContentStream() {
        return this.stream;
    }

    @Override // org.apache.james.mime4j.stream.EntityStateMachine
    public final /* bridge */ /* synthetic */ Field getField() {
        return null;
    }

    @Override // org.apache.james.mime4j.stream.EntityStateMachine
    public final int getState() {
        return this.state;
    }

    @Override // org.apache.james.mime4j.stream.EntityStateMachine
    public final void setRecursionMode(int i) {
    }
}
