package net.thunderbird.feature.search.legacy.serialization;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import net.thunderbird.feature.search.legacy.api.MessageSearchField;
import net.thunderbird.feature.search.legacy.api.SearchField;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageSearchFieldAsSearchFieldSerializer implements KSerializer {
    public static final MessageSearchFieldAsSearchFieldSerializer INSTANCE = new MessageSearchFieldAsSearchFieldSerializer();
    public static final PrimitiveSerialDescriptor descriptor = Handshake.Companion.PrimitiveSerialDescriptor("SearchField");

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        return MessageSearchField.valueOf(decoder.decodeString());
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        SearchField searchField = (SearchField) obj;
        searchField.getClass();
        MessageSearchField messageSearchField = searchField instanceof MessageSearchField ? (MessageSearchField) searchField : null;
        if (messageSearchField != null) {
            charsKt__CharKt.encodeString(messageSearchField.name());
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m("Only MessageSearchField is supported");
        }
    }
}
