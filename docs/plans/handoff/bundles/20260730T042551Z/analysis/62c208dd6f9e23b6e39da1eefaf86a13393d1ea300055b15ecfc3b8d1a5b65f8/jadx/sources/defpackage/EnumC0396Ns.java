package defpackage;

import com.facebook.internal.DialogFeature;
import com.facebook.internal.NativeProtocol;

/* renamed from: Ns, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public enum EnumC0396Ns implements DialogFeature {
    MESSAGE_DIALOG(NativeProtocol.PROTOCOL_VERSION_20140204),
    /* JADX INFO: Fake field, exist only in values array */
    PHOTOS(NativeProtocol.PROTOCOL_VERSION_20140324),
    /* JADX INFO: Fake field, exist only in values array */
    VIDEO(NativeProtocol.PROTOCOL_VERSION_20141218),
    MESSENGER_GENERIC_TEMPLATE(NativeProtocol.PROTOCOL_VERSION_20171115),
    /* JADX INFO: Fake field, exist only in values array */
    MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE(NativeProtocol.PROTOCOL_VERSION_20171115),
    MESSENGER_MEDIA_TEMPLATE(NativeProtocol.PROTOCOL_VERSION_20171115);


    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int f2448for;

    EnumC0396Ns(int i) {
        this.f2448for = i;
    }

    @Override // com.facebook.internal.DialogFeature
    public final String getAction() {
        return NativeProtocol.ACTION_MESSAGE_DIALOG;
    }

    @Override // com.facebook.internal.DialogFeature
    public final int getMinVersion() {
        return this.f2448for;
    }
}
