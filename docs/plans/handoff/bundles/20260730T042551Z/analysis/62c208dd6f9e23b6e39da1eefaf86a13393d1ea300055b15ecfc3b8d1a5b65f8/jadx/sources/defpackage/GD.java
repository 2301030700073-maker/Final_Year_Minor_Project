package defpackage;

import com.facebook.internal.DialogFeature;
import com.facebook.internal.NativeProtocol;
import java.util.Arrays;

/* loaded from: classes.dex */
public enum GD implements DialogFeature {
    SHARE_DIALOG(NativeProtocol.PROTOCOL_VERSION_20130618),
    PHOTOS(NativeProtocol.PROTOCOL_VERSION_20140204),
    VIDEO(NativeProtocol.PROTOCOL_VERSION_20141028),
    MULTIMEDIA(NativeProtocol.PROTOCOL_VERSION_20160327),
    HASHTAG(NativeProtocol.PROTOCOL_VERSION_20160327),
    LINK_SHARE_QUOTES(NativeProtocol.PROTOCOL_VERSION_20160327);


    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int f1155for;

    GD(int i) {
        this.f1155for = i;
    }

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static GD[] valuesCustom() {
        return (GD[]) Arrays.copyOf(values(), 6);
    }

    @Override // com.facebook.internal.DialogFeature
    public final String getAction() {
        return NativeProtocol.ACTION_FEED_DIALOG;
    }

    @Override // com.facebook.internal.DialogFeature
    public final int getMinVersion() {
        return this.f1155for;
    }
}
