package org.wikipedia.analytics.eventplatform;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.analytics.eventplatform.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class AppInteractionEvent extends MobileAppsEventWithTemp {
    public static final Companion Companion = new Companion();
    public final String action;
    public final String action_data;
    public final String active_interface;
    public final String platform;
    public final String primary_language;
    public final String wiki_id;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return AppInteractionEvent$$serializer.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AppInteractionEvent(int i, Event.Meta meta, String str, boolean z, String str2, String str3, boolean z2, String str4, String str5, String str6, String str7, String str8, String str9) {
        super(i, meta, str, z, str2, str3, z2);
        if (1984 != (i & 1984)) {
            TuplesKt.throwMissingFieldException(i, 1984, AppInteractionEvent$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.action = str4;
        this.active_interface = str5;
        this.action_data = str6;
        this.primary_language = str7;
        this.wiki_id = str8;
        if ((i & 2048) == 0) {
            this.platform = "android";
        } else {
            this.platform = str9;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppInteractionEvent(String str, String str2, String str3, String str4, String str5, String str6) {
        super(str6);
        str.getClass();
        str2.getClass();
        str4.getClass();
        str5.getClass();
        this.action = str;
        this.active_interface = str2;
        this.action_data = str3;
        this.primary_language = str4;
        this.wiki_id = str5;
        this.platform = "android";
    }
}
