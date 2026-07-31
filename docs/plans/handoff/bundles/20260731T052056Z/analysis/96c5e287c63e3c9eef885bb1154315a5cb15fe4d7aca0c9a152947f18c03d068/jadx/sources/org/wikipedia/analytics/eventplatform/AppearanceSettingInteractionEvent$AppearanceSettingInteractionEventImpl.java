package org.wikipedia.analytics.eventplatform;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.analytics.eventplatform.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl extends MobileAppsEvent {
    public static final Companion Companion = new Companion();
    public final String action;
    public final String currentValue;
    public final String newValue;
    public final String source;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl(int i, Event.Meta meta, String str, boolean z, String str2, String str3, String str4, String str5, String str6, String str7) {
        super(i, meta, str, z, str2, str3);
        if (480 != (i & 480)) {
            TuplesKt.throwMissingFieldException(i, 480, AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.action = str4;
        this.currentValue = str5;
        this.newValue = str6;
        this.source = str7;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl(String str, String str2, String str3, String str4) {
        super("android.app_appearance_settings_interaction");
        str2.getClass();
        str3.getClass();
        str4.getClass();
        this.action = str;
        this.currentValue = str2;
        this.newValue = str3;
        this.source = str4;
    }
}
