package org.wikipedia.analytics.eventplatform;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class EditAttemptStepInteractionEvent {
    public static final Companion Companion = new Companion();
    public final String action;
    public final String app_install_id;
    public final String editing_session_id;
    public final String editor_interface;
    public final String integration;
    public final boolean is_anon;
    public final String mw_version;
    public final int page_ns;
    public final String page_title;
    public final String platform;
    public final int user_editcount;
    public final int user_id;
    public final boolean user_is_temp;
    public final int version;
    public final String wiki;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return EditAttemptStepInteractionEvent$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ EditAttemptStepInteractionEvent(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i2, int i3, boolean z, boolean z2, int i4, String str8, int i5, String str9) {
        if (32767 != (i & 32767)) {
            TuplesKt.throwMissingFieldException(i, 32767, EditAttemptStepInteractionEvent$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.action = str;
        this.app_install_id = str2;
        this.editing_session_id = str3;
        this.editor_interface = str4;
        this.integration = str5;
        this.mw_version = str6;
        this.platform = str7;
        this.user_editcount = i2;
        this.user_id = i3;
        this.is_anon = z;
        this.user_is_temp = z2;
        this.version = i4;
        this.page_title = str8;
        this.page_ns = i5;
        this.wiki = str9;
    }

    public EditAttemptStepInteractionEvent(String str, String str2, String str3, String str4, int i, boolean z, boolean z2, String str5, int i2, String str6) {
        str2.getClass();
        this.action = str;
        this.app_install_id = str2;
        this.editing_session_id = "";
        this.editor_interface = str3;
        this.integration = "app-android";
        this.mw_version = "";
        this.platform = str4;
        this.user_editcount = 0;
        this.user_id = i;
        this.is_anon = z;
        this.user_is_temp = z2;
        this.version = 1;
        this.page_title = str5;
        this.page_ns = i2;
        this.wiki = str6;
    }
}
