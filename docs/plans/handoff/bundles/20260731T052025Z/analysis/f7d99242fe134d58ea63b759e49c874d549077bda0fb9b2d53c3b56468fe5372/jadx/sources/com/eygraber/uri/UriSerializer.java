package com.eygraber.uri;

import com.eygraber.uri.Uri;
import com.eygraber.uri.uris.StringUri;
import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UriSerializer implements KSerializer {
    public static final UriSerializer INSTANCE = new UriSerializer();
    public static final PrimitiveSerialDescriptor descriptor = Handshake.Companion.PrimitiveSerialDescriptor("com.eygraber.uri.Uri");

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        Uri.Companion companion = Uri.Companion;
        String decodeString = decoder.decodeString();
        companion.getClass();
        decodeString.getClass();
        return new StringUri(decodeString);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        Uri uri = (Uri) obj;
        uri.getClass();
        charsKt__CharKt.encodeString(uri.toString());
    }
}
