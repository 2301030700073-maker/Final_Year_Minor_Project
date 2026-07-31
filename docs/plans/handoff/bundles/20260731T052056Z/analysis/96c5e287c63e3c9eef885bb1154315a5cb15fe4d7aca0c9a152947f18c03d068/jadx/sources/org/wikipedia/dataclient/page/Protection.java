package org.wikipedia.dataclient.page;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class Protection {
    public static final Companion Companion = new Companion();
    public final String edit;
    public final String expiry;
    public final String level;
    public final String type;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return Protection$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ Protection(int i, String str, String str2, String str3, String str4) {
        this.edit = (i & 1) == 0 ? null : str;
        if ((i & 2) == 0) {
            this.type = "";
        } else {
            this.type = str2;
        }
        if ((i & 4) == 0) {
            this.level = "";
        } else {
            this.level = str3;
        }
        if ((i & 8) == 0) {
            this.expiry = "";
        } else {
            this.expiry = str4;
        }
    }
}
