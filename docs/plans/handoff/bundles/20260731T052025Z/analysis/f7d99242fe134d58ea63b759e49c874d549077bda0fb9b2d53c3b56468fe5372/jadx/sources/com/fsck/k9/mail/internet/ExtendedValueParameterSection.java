package com.fsck.k9.mail.internet;

import okio.Buffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ExtendedValueParameterSection extends ParameterSection {
    public final Buffer data;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExtendedValueParameterSection(String str, String str2, Integer num, Buffer buffer) {
        super(str, str2, num);
        str.getClass();
        this.data = buffer;
    }
}
